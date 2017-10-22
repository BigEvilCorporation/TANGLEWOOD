;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Boulder.asm - Pushable/rolling boulder
;==============================================================

; Constants
Boulder_Width				equ 0x38
Boulder_Height				equ 0x38
Boulder_Mass				equ 0x5
Boulder_MaxVelYUp			equ 0x06*subpixels_per_pixel
Boulder_MaxVelYDown			equ 0x08*subpixels_per_pixel
Boulder_StepHeight			equ 0x4
Boulder_ProbeFloorX			equ (Boulder_Width/2)	; Floor detection probe position X
Boulder_ProbeFloorY			equ (Boulder_Height-8)	; Floor detection probe position X
Boulder_MaxVelX				equ 0x080000
Boulder_Decel				equ 0x003000

Boulder_AnimSpeedVelDiv		equ 0x0800

Boulder_RollSFXVel			equ 0x002000
Boulder_HitGroundSFXVel		equ 0x050000	; Min downward velocity to play thud SFX
Boulder_MinDamageYVel		equ 0x050000	; Min downward velocity to deal damage to characters
Boulder_HitDamage			equ 0xFF	; Damage dealt to characters

Boulder_MinCrackYVel		equ 0x050000	; Min downward velocity to crack open on floor collision 

Boulder_PlatformWidth		equ Boulder_Width/2	; Physics platform width
Boulder_PlatformXOffset		equ (Boulder_Width-Boulder_PlatformWidth)/2	; Offset to platform from top of boulder
Boulder_PlatformYOffset		equ 0x0008	; Offset to platform from top of boulder

;==============================================================

; Animations
BoulderAnimIdx_Roll    equ 0
BoulderAnimIdx_crack   equ 1
; --------------------------
BoulderAnimIdx_Max     equ 2

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Boulder_Animations		rs.b (Animation_Struct_Size*BoulderAnimIdx_Max)
Boulder_Platform		rs.b Platform_Struct_Size ; Moving platform on top of boulder
Boulder_SpawnX			rs.l 1	; Spawn pos, for resetting after being cracked
Boulder_SpawnY			rs.l 1
Boulder_LastVelY		rs.l 1	; Last recorded velocity
Boulder_LastOnFloor		rs.b 1	; Last recorded OnFloor flag
Boulder_CanCrack		rs.b 1 ; Can be cracked/respawned
Boulder_Cracked			rs.b 1	; Cracked open, awaiting respawn
Boulder_RollSFXPlaying	rs.b 1
Boulder_PlatformActive	rs.b 1
;-----------------------------
Boulder_Struct_Pad		rs.b 3   ; Alignment padding
Boulder_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

BoulderInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_boulder, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Boulder
	
	; Set update and render routines
	move.l #BoulderUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #BoulderSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Boulder_Width, Entity_Width(a0)
	move.w  #Boulder_Height, Entity_Height(a0)
	move.b  #Boulder_Mass, PhysicsObj_Mass(a0)
	move.l  #Boulder_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.w  #Boulder_Decel, PhysicsObj_DecelX(a0)
	move.w  #Boulder_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Boulder_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Boulder_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Boulder_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #(Boulder_Width/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(Boulder_Width/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.l  #Boulder_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Boulder_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, PhysicsObj_SnapToMovingPlatform(a0)
	move.l  #0x0, Boulder_SpawnX(a0)
	move.l  #0x0, Boulder_SpawnY(a0)
	move.l  #0x0, Boulder_LastVelY(a0)
	move.b  #0x1, Boulder_LastOnFloor(a0)
	move.b  #0x0, Boulder_Cracked(a0)
	move.b  #0x1, Boulder_CanCrack(a0)
	move.b  #0x0, Boulder_RollSFXPlaying(a0)
	move.b  #0x0, Boulder_PlatformActive(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	;==============================================================
	
	; Setup platform
	lea    Boulder_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Boulder_PlatformWidth, Platform_Width(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	
	; Add to physics platforms list
	jsr    BoulderActivatePlatform
	
	;==============================================================
	; Setup animations

	; Roll
	ANIM_LOAD_DEFAULT boulder_roll,boulder_roll,Boulder_Animations,BoulderAnimIdx_Roll,1,0,0
	
	; Crack
	ANIM_LOAD_DEFAULT boulder_crack,boulder_crack,Boulder_Animations,BoulderAnimIdx_Crack,0,0,0
	
	; Start roll animation
	PUSHL  a1
	lea    Boulder_Animations+(Animation_Struct_Size*BoulderAnimIdx_Roll)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

BoulderLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	SPRITE_LOAD_DEFAULT boulder,PaletteId_World0,0x0

	jsr    PhysicsObjSnapToFloor
	
	; If already cracked, set cracked anim
	tst.b  Boulder_Cracked(a0)
	beq    @Uncracked
	
	PUSHL  a1
	lea    Boulder_Animations+(Animation_Struct_Size*BoulderAnimIdx_Crack)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	bra    @End
	
	@Uncracked:
	
	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3
	
	@End:

	rts
	
BoulderUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If unbreakable
	tst.b  Boulder_CanCrack(a0)
	beq    @Unbreakable
	
	; If not already cracked
	tst.b  Boulder_Cracked(a0)
	beq    @NotCracked
	
	; Cracked, check if out of view
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @InView

	;==============================================================
	
	; Out of view, move back to spawn pos
	move.l Boulder_SpawnX(a0), Entity_WorldPosX(a0)
	move.l Boulder_SpawnY(a0), Entity_WorldPosY(a0)
	
	; Start rolling animation
	PUSHL  a1
	lea    Boulder_Animations+(Animation_Struct_Size*BoulderAnimIdx_Roll)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Reset
	move.l #0x0, Boulder_LastVelY(a0)
	move.b #0x1, Boulder_LastOnFloor(a0)
	move.b #0x0, Boulder_Cracked(a0)
	move.b #0x1, PhysicsObj_CanBePushed(a0)

	; Enable platform
	jsr    BoulderActivatePlatform

	;==============================================================
	
	@NotCracked:
	
	; If spawn pos not already recorded, take it
	; TODO: Use post-init?
	cmp.l  #0x0, Boulder_SpawnX(a0)
	bne    @SpawnPosRecorded
	move.l Entity_WorldPosX(a0), Boulder_SpawnX(a0)
	move.l Entity_WorldPosY(a0), Boulder_SpawnY(a0)
	@SpawnPosRecorded:

	;==============================================================
	
	; If on floor
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @InAir
	
	; On floor, check if not previously on floor
	tst.b  Boulder_LastOnFloor(a0)
	bne    @PrevOnFloor
	
	; Just hit the floor, check the last recorded Y velocity
	cmp.l  #-Boulder_MinDamageYVel, Boulder_LastVelY(a0)
	bge    @LowVel
	
	; Crack open
	jsr    BoulderCrack
	
	; Bail
	bra    @Cracked

	;==============================================================
	
	@Unbreakable:
	@InAir:
	@PrevOnFloor:
	@LowVel:
	
	; Record current Y vel and on OnFloor flag
	move.l PhysicsObj_VelY(a0), Boulder_LastVelY(a0)
	move.b PhysicsObj_OnFloor(a0), Boulder_LastOnFloor(a0)
	
	; Get roll animation
	lea    Boulder_Animations+(Animation_Struct_Size*BoulderAnimIdx_Roll)(a0), a2

	; Roll anim speed based on velocity
	clr.l  d0
	move.l PhysicsObj_VelX(a0), d0
	tst.l  d0
	beq    @ZeroVel
	divs.w #Boulder_AnimSpeedVelDiv, d0
	@ZeroVel:
	move.w d0, Animation_Speed(a2)
	
	; If Y vel > min damage vel
	cmp.l  #-Boulder_MinDamageYVel, PhysicsObj_VelY(a0)
	bge    @NotFalling

	;==============================================================
	
	move.l a1, -(sp)
	
	; Check if squishing a monster
	move.l (EntityPoolStart_Monster), a1
	move.w (EntityCount_Monster), d6
	tst.w  d6
	beq    @NoMonsters
	subq.w  #0x1, d6
	@MonsterLoop:
	move.l d6, -(sp)
	
	; Check monster active
	tst.b  Entity_Active(a1)
	beq    @NextMonster
	
	; Check monster alive
	tst.b  Character_Dead(a1)
	bne    @NextMonster
	
	; Bounds check
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr   PHYS_TestBoxIntersectBox
	tst.b d0
	beq   @NextMonster
	
	; Boulder hit a monster, deal damage
	PUSHL  a0
	move.l a1, a0
	move.l #Boulder_HitDamage, d0
	jsr    CharacterDealDamage
	POPL   a0

	; Crack open
	jsr    BoulderCrack
	
	; Disable crack/respawn
	move.b #0x0, Boulder_CanCrack(a0)
	
	@NextMonster:
	move.l (sp)+, d6
	lea   Monster_Struct_Size(a1), a1
	dbra  d6, @MonsterLoop
	
	@NoMonsters:
	@EndMonsterLoop:
	
	move.l (sp)+, a1

	;==============================================================
	
	@InView:
	@Cracked:
	@NotFalling:
	
	; Base functionality
	jsr    PhysicsObjUpdate

	;==============================================================
	
	; Reposition platform
	lea    Boulder_Platform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Boulder_PlatformXOffset*subpixels_per_pixel, d0
	addi.l #Boulder_PlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	
	; Set platform velocity
	move.l PhysicsObj_VelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_VelY(a0), Platform_VelY(a2)
	
	@SFXEnd:
	@SFXInAir:
	@SFXPrevOnFloor:
	@SFXLowVel:

	;==============================================================

	; Play roll SFX
	tst.b   Boulder_Cracked(a0)
	bne     @EndRollSFX
	move.l  PhysicsObj_VelX(a0), d0
	cmp.l   #Boulder_RollSFXVel, d0
	bgt     @PlayRollSFX
	cmp.l   #-Boulder_RollSFXVel, d0
	blt     @PlayRollSFX
	bra     @NoRollSFX
	@PlayRollSFX:
	PLAYSFX #SFX_BoulderRoll
	move.b  #0x1, Boulder_RollSFXPlaying(a0)
	bra     @EndRollSFX

	@NoRollSFX:
	tst.b   Boulder_RollSFXPlaying(a0)
	beq     @EndRollSFX
	jsr     SND_StopSFX
	move.b  #0x0, Boulder_RollSFXPlaying(a0)
	@EndRollSFX:

	rts

BoulderActivatePlatform:

	tst.b  Boulder_PlatformActive(a0)
	bne    @AlreadyActive
	lea    Boulder_Platform(a0), a2
	LIST_APPEND_TAIL Platforms, a2, a3
	move.b #0x1, Boulder_PlatformActive(a0)
	@AlreadyActive:

	rts

BoulderDeactivatePlatform:

	tst.b  Boulder_PlatformActive(a0)
	beq    @AlreadyInactive
	lea    Boulder_Platform(a0), a2
	LIST_REMOVE Platforms, a2, a3, a4
	move.b #0x0, Boulder_PlatformActive(a0)
	@AlreadyInactive:

	rts

BoulderCrack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Cancel X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)

	; Set as cracked
	move.b #0x1, Boulder_Cracked(a0)

	; Can no longer be pushed
	move.b #0x0, PhysicsObj_CanBePushed(a0)

	; Disable platform
	jsr    BoulderDeactivatePlatform

	; Start crack animation
	PUSHL  a1
	lea    Boulder_Animations+(Animation_Struct_Size*BoulderAnimIdx_Crack)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	; Play crack SFX
	PLAYSFX #SFX_BoulderBreak
	
	rts
	
BoulderSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	SAVEB Boulder_Cracked(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB Boulder_Cracked(a0)
	
	;==============================================================
	
	@End:
	
	rts
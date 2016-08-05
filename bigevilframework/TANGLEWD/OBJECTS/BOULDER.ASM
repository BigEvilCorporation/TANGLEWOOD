;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Boulder.asm - Pushable/rolling boulder
;==============================================================

; Constants
Boulder_MaxEntities			equ 0x2
Boulder_Width				equ 0x40
Boulder_Height				equ 0x40
Boulder_MaxVelYUp			equ 0x0600
Boulder_MaxVelYDown			equ 0x0600
Boulder_StepHeight			equ 0x4
Boulder_ProbeFloorX			equ (Boulder_Width/2)	; Floor detection probe position X
Boulder_ProbeFloorY			equ (Boulder_Height-8)	; Floor detection probe position X
Boulder_MaxVelX				equ 0x0800
Boulder_Decel				equ 0x0008

Boulder_AnimSpeedVelDiv		equ 0x0008

Boulder_HitGroundSFXVel		equ 0x0500	; Min downward velocity to play thud SFX
Boulder_MinDamageYVel		equ 0x0500	; Min downward velocity to deal damage to characters
Boulder_HitDamage			equ 0xFF	; Damage dealt to characters

Boulder_MinCrackYVel		equ 0x0500	; Min downward velocity to crack open on floor collision 

;==============================================================

; Animations
BoulderAnimIdx_Roll    equ 0
BoulderAnimIdx_crack   equ 1
; --------------------------
BoulderAnimIdx_Max     equ 2

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Boulder_Animations	 rs.b (Animation_Struct_Size*BoulderAnimIdx_Max)
Boulder_SpawnX		 rs.l 1	; Spawn pos, for resetting after being cracked
Boulder_SpawnY		 rs.l 1
Boulder_LastVelY     rs.w 1	; Last recorded velocity
Boulder_LastOnFloor  rs.b 1	; Last recorded OnFloor flag
Boulder_CanCrack	 rs.b 1 ; Can be cracked/respawned
Boulder_Cracked		 rs.b 1	; Cracked open, awaiting respawn
;--------------------------
Boulder_Struct_Pad   rs.b 3   ; Alignment padding
Boulder_Struct_Size  rs.b 0
;--------------------------

;==============================================================

BoulderInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addi.l #entity_type_boulder, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Boulders
	
	; Set update and render routines
	move.l #BoulderUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Boulder_Width, Entity_Width(a0)
	move.w  #Boulder_Height, Entity_Height(a0)
	move.w  #Boulder_MaxVelX, PhysicsObj_MaxVelX(a0)
	move.w  #Boulder_Decel, PhysicsObj_DecelX(a0)
	move.w  #Boulder_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Boulder_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Boulder_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Boulder_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.w  #Boulder_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #0x0, Boulder_LastVelY(a0)
	move.b  #0x1, Boulder_LastOnFloor(a0)
	move.b  #0x0, Boulder_Cracked(a0)
	move.b  #0x1, Boulder_CanCrack(a0)
	
	; Setup animations
	move.l a0, a2
	add.l  #Boulder_Animations, a2
	
	; Roll
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Roll), a3
	move.w #spritesheet_boulder_roll_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_boulder_roll_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_boulder_roll_speed, Animation_Speed(a3)
	move.b #spriteanim_boulder_roll_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Crack
	move.l a2, a3
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Crack), a3
	move.w #spritesheet_boulder_crack_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_boulder_crack_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_boulder_crack_speed, Animation_Speed(a3)
	move.b #spriteanim_boulder_crack_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Start roll animation
	PUSHL  a1
	move.l a2, a1
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Roll), a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
	
BoulderUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If unbreakable
	cmp.b  #0x0, Boulder_CanCrack(a0)
	beq    @Unbreakable
	
	; If not already cracked
	cmp.b  #0x0, Boulder_Cracked(a0)
	beq    @NotCracked
	
	; Cracked, check if out of view
	cmp.b  #0x0, SpriteObj_SpriteLinked(a0)
	bne    @InView
	
	; Out of view, move back to spawn pos
	move.l Boulder_SpawnX(a0), Entity_WorldPosX(a0)
	move.l Boulder_SpawnY(a0), Entity_WorldPosY(a0)
	
	; Start rolling animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Boulder_Animations, a1
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Roll), a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Reset
	move.w #0x0, Boulder_LastVelY(a0)
	move.b #0x1, Boulder_LastOnFloor(a0)
	move.b #0x0, Boulder_Cracked(a0)
	
	@NotCracked:
	
	; If spawn pos not already recorded, take it
	; TODO: Use post-init?
	cmp.l  #0x0, Boulder_SpawnX(a0)
	bne    @SpawnPosRecorded
	move.l Entity_WorldPosX(a0), Boulder_SpawnX(a0)
	move.l Entity_WorldPosY(a0), Boulder_SpawnY(a0)
	@SpawnPosRecorded:
	
	; If on floor
	cmp.b  #0x0, PhysicsObj_OnFloor(a0)
	beq    @InAir
	
	; On floor, check if not previously on floor
	cmp.b  #0x0, Boulder_LastOnFloor(a0)
	bne    @PrevOnFloor
	
	; Just hit the floor, check the last recorded Y velocity
	cmp.w  #-Boulder_MinDamageYVel, Boulder_LastVelY(a0)
	bge    @LowVel
	
	; Hit the floor at a large enough velocity to crack open, start crack animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Boulder_Animations, a1
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Crack), a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Set as cracked
	move.b #0x1, Boulder_Cracked(a0)
	
	; Cancel X velocity
	move.w #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	
	; Bail
	bra    @Cracked
	
	@Unbreakable:
	@InAir:
	@PrevOnFloor:
	@LowVel:
	
	; Record current Y vel and on OnFloor flag
	move.w PhysicsObj_VelY(a0), Boulder_LastVelY(a0)
	move.b PhysicsObj_OnFloor(a0), Boulder_LastOnFloor(a0)
	
	; Get roll animation
	move.l a0, a2
	add.l  #Boulder_Animations, a2
	add.l  #(Animation_Struct_Size*BoulderAnimIdx_Roll), a2

	; Roll anim speed based on velocity
	clr.l  d0
	move.w PhysicsObj_VelX(a0), d0
	divs.w #Boulder_AnimSpeedVelDiv, d0
	move.b d0, Animation_Speed(a2)
	
	; If Y vel > min damage vel
	cmp.w  #-Boulder_MinDamageYVel, PhysicsObj_VelY(a0)
	bge    @NotFalling
	
	move.l a1, -(sp)
	
	; Check if squishing a monster
	move.l #EntityArray_Monsters, a1
	move.w (EntityCount_Monsters), d6
	cmp.w  #0x0, d6
	beq    @NoMonsters
	sub.w  #0x1, d6
	@MonsterLoop:
	move.l d6, -(sp)
	
	; Check monster active
	cmp.b  #0x0, Entity_Active(a1)
	beq    @NextMonster
	
	; Check monster alive
	cmp.b  #0x0, Character_Dead(a1)
	bne    @NextMonster
	
	; Bounds check
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr   PHYS_TestBoxIntersectBox
	cmp.b #0x0, d0
	beq   @NextMonster
	
	; Boulder hit a monster, deal damage
	move.l a0, -(sp)
	move.l a1, a0
	move.l #Boulder_HitDamage, d0
	jsr    CharacterDealDamage
	move.l (sp)+, a0
	
	@NextMonster:
	move.l (sp)+, d6
	add.l #Monster_Struct_Size, a1
	dbra  d6, @MonsterLoop
	
	@NoMonsters:
	@EndMonsterLoop:
	
	move.l (sp)+, a1
	
	@InView:
	@Cracked:
	@NotFalling:

	; Store current floor flag and Y velocity to check landing
	move.b PhysicsObj_OnFloor(a0), d0
	move.w PhysicsObj_VelY(a0), d1
	PUSHL  d0
	PUSHL  d1
	
	; Base functionality
	jsr    PhysicsObjUpdate
	
	; Retrieve floor flag and Y velocity
	POPL   d1
	POPL   d0
	
	; Check if on floor
	cmp.b  #0x0, PhysicsObj_OnFloor(a0)
	beq    @SFXInAir
	
	; Check if previously on floor
	cmp.b  #0x0, d0
	bne    @SFXPrevOnFloor
	
	; If hit floor at landing velocity
	cmp.w  #-Boulder_HitGroundSFXVel, d1
	bge    @SFXLowVel
	
	; Play land SFX
	cmp.b  #0x0, Boulder_CanCrack(a0)
	beq    @PlayLandSFX
	; Smash SFX
	PLAYSFX_LOWPRIO #SFX_BoulderBreak
	bra    @SFXEnd
	@PlayLandSFX:
	; Land SFX - TODO
	PLAYSFX_LOWPRIO #SFX_BoulderBreak
	
	@SFXEnd:
	@SFXInAir:
	@SFXPrevOnFloor:
	@SFXLowVel:

	rts
	
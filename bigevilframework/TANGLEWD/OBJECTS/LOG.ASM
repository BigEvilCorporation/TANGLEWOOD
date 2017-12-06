;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Log.asm - Pushable/rolling log, can crush at high speed
;==============================================================

; Constants
Log_Width				equ 0x38
Log_Height				equ 0x38
Log_Mass				equ 0x8
Log_MaxVelX				equ 0x050000
Log_MaxVelYUp			equ 0x06*subpixels_per_pixel
Log_MaxVelYDown			equ 0x08*subpixels_per_pixel
Log_Decel				equ 0x000800
Log_StepHeight			equ 0x4
Log_ProbeFloorX			equ (Log_Width/2)	; Floor detection probe position X
Log_ProbeFloorY			equ (Log_Height-8)	; Floor detection probe position X

Log_AnimSpeedVelDiv		equ 0x0800

Log_RollSFXVel			equ 0x002000
Log_HitGroundSFXVel		equ 0x050000	; Min Y velocity to play thud SFX
Log_MinDamageXVel		equ 0x020000	; Min X velocity to deal damage to characters
Log_MinDamageYVel		equ 0x050000	; Min Y velocity to deal damage to characters
Log_HitDamage			equ 0xFF		; Damage dealt to characters

Log_PlatformWidth		equ Log_Width-0x10	; Physics platform width
Log_PlatformXOffset		equ (Log_Width-Log_PlatformWidth)/2	; Offset to platform from top of Log
Log_PlatformYOffset		equ 0x0000		; Offset to platform from top of Log

Log_CamShakeVel			equ 0x4000
Log_CamShakeAmp			equ 0x0100

;==============================================================

; Animations
LogAnimIdx_Roll    equ 0
; --------------------------
LogAnimIdx_Max     equ 1

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Log_Animations		rs.b (Animation_Struct_Size*LogAnimIdx_Max)
Log_Platform		rs.b Platform_Struct_Size ; Moving platform on top of Log
Log_FloorRollAccel	rs.w 1
Log_RollSFXPlaying	rs.b 1
Log_Hazardous		rs.b 1
Log_NoAI			rs.b 1
;-----------------------------
	RS_ALIGN
Log_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

LogInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Log
	
	; Set update and render routines
	move.l #LogUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #LogSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Log_Width, Entity_Width(a0)
	move.w  #Log_Height, Entity_Height(a0)
	move.b  #Log_Mass, PhysicsObj_Mass(a0)
	MOVE_NTSC_L Log_MaxVelX, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_ACCEL_W Log_Decel, PhysicsObj_DecelX(a0), d0
	move.w  #Log_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Log_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Log_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Log_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Log_Width, PhysicsObj_WallProbeRight(a0)
	MOVE_NTSC_L Log_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Log_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, PhysicsObj_SnapToMovingPlatform(a0)
	move.w  #0x0, Log_FloorRollAccel(a0)
	move.b  #0x0, Log_RollSFXPlaying(a0)
	move.b  #0x0, Log_Hazardous(a0)
	move.b  #0x0, Log_NoAI(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3

	;==============================================================
	
	; Setup platform
	lea    Log_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.b #PlatformType_Rolling, Platform_Type(a2)
	move.w #Log_PlatformWidth, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================
	; Setup animations

	; Roll
	ANIM_LOAD_DEFAULT Log,roll,roll,Log_Animations,LogAnimIdx_Roll,1,0,0
	
	; Start roll animation
	PUSHL  a1
	lea    Log_Animations+(Animation_Struct_Size*LogAnimIdx_Roll)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

LogLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED Log,roll,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
	
LogUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get roll animation
	lea    Log_Animations+(Animation_Struct_Size*LogAnimIdx_Roll)(a0), a2

	; Roll anim speed based on velocity
	moveq #0x0, d0
	move.l PhysicsObj_LastAppliedVelX(a0), d0
	beq    @ZeroVel
	divs.w #Log_AnimSpeedVelDiv, d0
	@ZeroVel:
	move.w d0, Animation_Speed(a2)

	;==============================================================

	; If on floor, set roll accel
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir
	move.w Log_FloorRollAccel(a0), PhysicsObj_AccelX(a0)
	@InAir:

	; If hit a wall, clear accel, can be pushed, not hazardous
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	beq    @NotHitWall
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, Log_FloorRollAccel(a0)
	move.b #0x1, PhysicsObj_CanBePushed(a0)
	move.b #0x0, AnimObj_UpdateOutOfView(a0)

	; If hazardous, disable camera shake
	tst.b  Log_Hazardous(a0)
	beq    @NotHitWall

	move.b #0x0, Log_Hazardous(a0)
	jsr    CAM_StopCameraShake

	@NotHitWall:
	
	; Base functionality
	jsr    PhysicsObjUpdate

	;==============================================================
	
	; Reposition platform
	lea    Log_Platform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Log_PlatformXOffset*subpixels_per_pixel, d0
	addi.l #Log_PlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	
	; Set platform velocity
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	move.l PhysicsObj_VelX(a0), d3
	move.l PhysicsObj_VelY(a0), d4
	DIVS1616_LOSSY d2, d3
	DIVS1616_LOSSY d2, d4
	move.l d3, Platform_VelX(a2)
	move.l d4, Platform_VelY(a2)

	;==============================================================

	; If hazardous
	tst.b  Log_Hazardous(a0)
	beq    @NotHazardous

	; Camera shake if rolling on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @ShakeOff

	; Shake on
	move.w #0x0, d0
	move.w #Log_CamShakeVel, d1
	move.w #0x0, d2
	move.w #Log_CamShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake

	bra    @EndShake

	@ShakeOff:

	; Shake off
	jsr    CAM_StopCameraShake

	@EndShake:

	;==============================================================

	; If X vel over threshold, check if damaging player
	move.l PhysicsObj_VelX(a0), d0
	MOVE_NTSC_L Log_MinDamageXVel, d1, d2
	cmp.l  d1, d0
	bge    @DealDamage
	neg.l  d1
	cmp.l  d1, d0
	ble    @DealDamage
	bra    @NoDamage

	@DealDamage:
	
	; Check if touching player
	move.l (Player1), a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoDamage

	; Deal damage
	PUSHL  a0
	move.l (Player1), a0
	move.l #Log_HitDamage, d0
	jsr    CharacterDealDamage
	POPL   a0

	@NoDamage:
	@NotHazardous:

	;==============================================================

	; Play roll SFX
	move.l  PhysicsObj_VelX(a0), d0
	cmp.l   #Boulder_RollSFXVel, d0
	bgt     @PlayRollSFX
	cmp.l   #-Boulder_RollSFXVel, d0
	blt     @PlayRollSFX
	bra     @NoRollSFX
	@PlayRollSFX:
	tst.b   Log_Hazardous(a0)
	bne     @Hazardous
	PLAYSFX #SFX_BoulderRoll
	move.b  #0x1, Log_RollSFXPlaying(a0)
	bra     @EndRollSFX
	@Hazardous:
	PLAYSFX #SFX_BridgeFall
	move.b  #0x1, Log_RollSFXPlaying(a0)
	bra     @EndRollSFX

	@NoRollSFX:
	tst.b   Log_RollSFXPlaying(a0)
	beq     @EndRollSFX
	jsr     SND_StopSFX
	move.b  #0x0, Log_RollSFXPlaying(a0)
	@EndRollSFX:

	rts

LogSerialise:
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
	SAVEW Log_FloorRollAccel(a0)
	SAVEB Log_Hazardous(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADW Log_FloorRollAccel(a0)
	LOADB Log_Hazardous(a0)
	
	;==============================================================
	
	@End:
	
	rts

LogBeginHazardousRoll:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) Accel

	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.w d0, Log_FloorRollAccel(a0)
	move.b #0x1, Log_Hazardous(a0)

	; Remove from world grid
	jsr    EntityRemoveFromWorldGrid

	; Ensure updating, rendering, and physicsing
	btst   #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a0)
	bne    @Updating
	jsr    EntityAddToUpdateList
	@Updating:

	btst   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)
	bne    @Rendering
	jsr    EntityAddToRenderList
	@Rendering:

	btst   #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	bne    @Physicalised
	jsr    PhysicsWorldAddObject
	@Physicalised:

	rts

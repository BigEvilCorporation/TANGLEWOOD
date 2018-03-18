;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lift.asm - Lift/hoist platform with rope
;==============================================================

; Constants
Lift_Width				equ 0x40
Lift_Height				equ 0x20
Lift_ProbeFloorX		equ (Lift_Width/2)  ; Floor detection probe position X
Lift_ProbeFloorY   		equ (Lift_Height-8) ; Floor detection probe position Y
Lift_AccelY				equ 0x2000+DefaultGravity
Lift_DecelX				equ 0x0800

Lift_MaxSpeedUp			equ 0x010000+DefaultGravity	; Max speed hoisting up
Lift_MaxSpeedDown		equ 0x010000				; Max speed falling down
Lift_FloorHeight		equ 0x000C			; Height from platform bottom to treat as floor for characters
Lift_PendulumMaxCorrectionVel	equ 0x0080	; Max velocity to initiate correction acceleration
Lift_MinMass			equ 0x2				; Min mass to fall under weight
Lift_FallSpeedNoCounterweight	equ 0x00070000	; Fall speed with no counterweight

Lift_RopeLengthDefault	equ (38*8)			; TEMP - fetch from lift destination obj
Lift_RopeNumSprites		equ (Lift_RopeLengthDefault/Rope_Height)

Lift_MaxRopeAnimFrameDist	equ Rope_Width
Lift_RopeMaxDrawSprites		equ 0x10

Lift_WinchSFXFastVel	equ 0x00020000

	rsset (PhysicsObj_Struct_Size)
;---------------------------------
Lift_Platform				rs.b Platform_Struct_Size
Lift_RopeSegment			rs.b SpriteObj_Struct_Size
Lift_CounterWeight			rs.l 1	; Another lift used as counterweight platform
Lift_TopLimit				rs.w 1
Lift_BottomLimit			rs.w 1
Lift_PlatformOffsetY		rs.w 1
Lift_RestrictHeight			rs.b 1	; Restrict fall height to origin
;---------------------------------
	RS_ALIGN
Lift_Struct_Size  			rs.b 0
;---------------------------------

;==============================================================

LiftInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_lift, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Lift
	
	; Set update and render routines
	move.l #LiftUpdate, Entity_UpdateRoutine(a0)
	move.l #LiftDraw, Entity_RenderRoutine(a0)
	move.l #LiftSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.b  #0x0, PhysicsObj_CollidePlatforms(a0)
	move.w  #Lift_Width, Entity_Width(a0)
	move.w  #Lift_Height, Entity_Height(a0)
	move.b  #0x0, AnimObj_UpdateOutOfView(a0)
	move.w  #Lift_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Lift_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Lift_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Lift_Width, PhysicsObj_WallProbeRight(a0)
	MOVE_NTSC_L Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Lift_MaxSpeedDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.b  #0x1, PhysicsObj_MaxVelClamp(a0)
	move.l  #0x0, Lift_CounterWeight(a0)
	move.w  #Lift_FloorHeight, Lift_PlatformOffsetY(a0)
	move.b  #0x1, Lift_RestrictHeight(a0)
	move.b  #0x0, PhysicsObj_CollideWalls(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)
	
	;==============================================================
	
	; Setup platform
	lea    Lift_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Lift_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================
	
	; Allocate rope segments
	PUSHM  a0-a1

	; Single, static, reusable rope segment
	lea    Lift_RopeSegment(a0), a0
	jsr    SpriteObjInit
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.w #Rope_Width, Entity_Width(a0)
	move.w #Rope_Height, Entity_Height(a0)

	POPM   a0-a1

	rts

LiftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	SPRITE_LOAD_SHARED lift,lift,0,PaletteId_World0,0x0

	; Load rope segment
	PUSHL a0
	lea   Lift_RopeSegment(a0), a0
	SPRITE_LOAD_SHARED rope,rope,0,PaletteId_World0,0x0
	POPL  a0

	POPL   a1

	; Set default rope length
	move.w Entity_WorldPosY(a0), Lift_TopLimit(a0)
	move.w Entity_WorldPosY(a0), Lift_BottomLimit(a0)
	sub.w  #Lift_RopeLengthDefault, Lift_TopLimit(a0)

	rts

LiftAttachCounterweightLift:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Counterweight lift addr

	; Set counterweight
	move.l  a2, Lift_CounterWeight(a0)

	; Disable gravity
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a2)

	; Match up/down speeds
	MOVE_NTSC_L Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Lift_MaxSpeedUp, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_L Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a2), d0
	MOVE_NTSC_L Lift_MaxSpeedUp, PhysicsObj_MaxVelYDown(a2), d0

	; Enable height restriction
	move.b  #0x1, Lift_RestrictHeight(a0)
	move.b  #0x1, Lift_RestrictHeight(a2)

	; Use current positions as min/max
	move.w  Entity_WorldPosY(a0), d0
	move.w  Entity_WorldPosY(a2), d1
	cmp.w   d0, d1
	bgt     @LiftATop
	move.w  d1, Lift_TopLimit(a0)
	move.w  d1, Lift_TopLimit(a2)
	move.w  d0, Lift_BottomLimit(a0)
	move.w  d0, Lift_BottomLimit(a2)
	bra @LiftBTop
	@LiftATop:
	move.w  d0, Lift_TopLimit(a0)
	move.w  d0, Lift_TopLimit(a2)
	move.w  d1, Lift_BottomLimit(a0)
	move.w  d1, Lift_BottomLimit(a2)
	@LiftBTop:

	; Remove counterweight from update list
	PUSHL   a0
	move.l  a2, a0
	jsr     EntityRemoveFromUpdateList
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	POPL    a0

	rts

LiftActivateUp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Move lift up
	MOVE_NTSC_ACCEL_W Lift_AccelY, d1, d0
	move.w d1, PhysicsObj_AccelY(a0)

	rts

LiftActivateDown:

	; Move lift down
	MOVE_NTSC_ACCEL_W Lift_AccelY, d1, d0
	neg.w  d1
	move.w d1, PhysicsObj_AccelY(a0)

	rts

LiftStop:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	rts

LiftProcessCounterweight:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Counterweight lift addr

	; Get total mass of both platforms
	lea    Lift_Platform(a0), a3
	moveq #0x0, d0
	move.w Platform_TotalMass(a3), d0

	lea    Lift_Platform(a2), a3
	moveq #0x0, d1
	move.w Platform_TotalMass(a3), d1

	; Get diff
	move.w d1, d3
	sub.w  d0, d3

	; Check reaches threshold
	cmp.w  #Lift_MinMass, d3
	bge    @HeavyEnough
	cmp.w  #-Lift_MinMass, d3
	ble    @HeavyEnough

	move.w #0x0, d3
	
	@HeavyEnough:

	; If one side unoccupied, use hard-coded fall velocity
	tst.w  d3
	beq    @UnoccupiedBoth
	tst.w  d0
	beq    @UnoccupiedA
	tst.w  d1
	beq    @UnoccupiedB

	; else if both occupied, use mass diff as velocity
	TOSUBPIXELS d3
	move.l d3, PhysicsObj_VelY(a0)

	; Negate for other platform
	neg.l  d3
	move.l d3, PhysicsObj_VelY(a2)

	bra    @EndWeightDiff

	@UnoccupiedA:
	MOVE_NTSC_L Lift_FallSpeedNoCounterweight, d0, d1
	move.l d0, PhysicsObj_VelY(a0)
	neg.l  d0
	move.l d0, PhysicsObj_VelY(a2)
	bra    @EndWeightDiff
	@UnoccupiedB:
	MOVE_NTSC_L Lift_FallSpeedNoCounterweight, d0, d1
	move.l d0, PhysicsObj_VelY(a2)
	neg.l  d0
	move.l d0, PhysicsObj_VelY(a0)
	bra    @EndWeightDiff
	@UnoccupiedBoth:
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_VelY(a2)

	; Get total force affecting both playforms
	;moveq #0x0, d0
	;moveq #0x0, d1
	;lea    Lift_Platform(a0), a3
	;lea    Lift_Platform(a2), a4
	;move.l Platform_LastOccupant(a3), a5
	;move.l Platform_LastOccupant(a4), a6
	;cmpa.w #0x0, a5
	;beq    @NoOccupant1
	;move.w PhysicsObj_LastAppliedVelY(a5), d0
	;@NoOccupant1:
	;cmpa.w #0x0, a6
	;beq    @NoOccupant2
	;move.w PhysicsObj_LastAppliedVelY(a6), d1
	;@NoOccupant2:

	;; Apply diff
	;sub.w  d1, d0

	;swap   d0
	;move.l d0, PhysicsObj_VelY(a0)

	;; Negate for other platform
	;neg.l  d0
	;move.l d0, PhysicsObj_VelY(a2)

	@EndWeightDiff:

	;==============================================================

	; Check this lift platform for floor
	tst.l  PhysicsObj_VelY(a0)
	bgt    @ThisLiftHeadingUp

	; Check if on floor
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @ThisLiftInAir

	; On floor, stop both lifts
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_VelY(a2)
	bra    @EndCounterweight

	@ThisLiftInAir:

	; In air, start moving lifts in opposite directions
	bra    @EndCounterweight

	@ThisLiftHeadingUp:

	;==============================================================

	; Check other lift platform for floor
	tst.l  PhysicsObj_VelY(a2)
	bgt    @OtherLiftHeadingUp

	; Check if on floor
	tst.b  PhysicsObj_OnFloor(a2)
	beq    @OtherLiftInAir

	; On floor, stop both lifts
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_VelY(a2)
	bra    @EndCounterweight

	@OtherLiftInAir:
	
	; In air, start moving lifts in opposite directions
	bra    @EndCounterweight

	@OtherLiftHeadingUp:

	; Both lifts unoccupied

	@EndCounterweight:

	; Sync speed divs
	move.b AnimObj_SpeedDiv(a0), AnimObj_SpeedDiv(a2)

	rts

LiftRestrictHeight:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Lift_RestrictHeight(a0)
	beq    @NoRestrictHeight
	
	; Don't fall beyond rope length
	move.w Entity_WorldPosY(a0), d0
	move.w Lift_TopLimit(a0), d1
	cmp.w  d0, d1
	ble    @WithinTop
	move.w d1, Entity_WorldPosY(a0)
	jsr    LiftStop
	@WithinTop:

	;move.w Entity_WorldPosY(a0), d0
	;move.w Lift_BottomLimit(a0), d1
	;cmp.w  d0, d1
	;bge    @WithinBottom
	;move.w d1, Entity_WorldPosY(a0)
	;jsr    LiftStop
	;@WithinBottom:

	@NoRestrictHeight:

	rts

LiftUpdatePlatform:
	; a0 --- GameObj addr
	; a1 --- Level addr

	lea    Lift_Platform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	move.w Entity_Height(a0), d2
	TOSUBPIXELS d2
	add.l  d2, d1
	move.w Lift_PlatformOffsetY(a0), d3
	TOSUBPIXELS d3
	sub.l  d3, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	
	; Set platform velocity
	moveq  #0x0, d2
	move.b AnimObj_SpeedDiv(a0), d2
	move.l PhysicsObj_VelY(a0), d4
	DIVS1616_LOSSY d2, d4
	move.l d4, Platform_VelY(a2)

	; HACK - set dirty if prev vel set, or objects won't detect lift
	; in same frame that it hits the floor
	tst.l  PhysicsObj_LastAppliedVelY(a0)
	beq    @NotDirty
	move.b #0x1, Platform_Dirty(a2)
	@NotDirty:

	rts

LiftUpdateAudio:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Don't play SFX during time slow
	cmp.b   #0x1, (GlobalTimeDiv)
	bne     @NoWinchSFX

	move.l  PhysicsObj_VelY(a0), d0
	beq     @NoWinchSFX
	cmp.l   #Lift_WinchSFXFastVel, d0
	bgt     @FastWinchSFX
	cmp.l   #-Lift_WinchSFXFastVel, d0
	bgt     @SlowWinchSFX

	@FastWinchSFX:
	PLAYSFX #SFX_LiftWinchFast
	bra     @EndWinchSFX

	@SlowWinchSFX:
	PLAYSFX #SFX_LiftWinchSlow

	@EndWinchSFX:
	@NoWinchSFX:

	rts

LiftUpdateAsCounterweight:
	; a0 --- GameObj addr
	; a1 --- Level addr

	jsr    PhysicsObjUpdate
	jsr    LiftRestrictHeight
	jsr    LiftUpdatePlatform

	rts
	
LiftUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Process counterweight
	move.l Lift_CounterWeight(a0), a2
	cmpa.w #0x0, a2
	beq    @NoCounterweight
	jsr    LiftProcessCounterweight
	@NoCounterweight:

	; Process audio
	jsr    LiftUpdateAudio
	
	; Base functionality
	jsr    PhysicsObjUpdate

	; Restrict height
	jsr    LiftRestrictHeight

	; Update counterweight
	PUSHL  a0
	move.l Lift_CounterWeight(a0), a0
	cmpa.w #0x0, a0
	beq    @NoCounterweightUpdate
	jsr    LiftUpdateAsCounterweight
	@NoCounterweightUpdate:
	POPL   a0
	
	; Reposition platform
	jsr    LiftUpdatePlatform
	
	rts

LiftDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	; Base functionality
	jsr    AnimObjDraw

	;==============================================================

	PUSHMW d2-d5

	; Get rope
	lea    Lift_RopeSegment(a0), a5

	; Get rope pos X
	move.w Entity_WorldPosX(a0), d0
	
	; Check if out of bounds
	cmp.w  d3, d0						; Check left edge against right screen border
	bgt    @OutOfBounds
	move.w d0, d1
	addi.w #Lift_Width, d1				; Get rope right
	cmp.w  d2, d1						; Check right edge against left screen border
	blt    @OutOfBounds
	
	; Get rope pos Y
	move.w Entity_WorldPosY(a0), d1
	sub.w  Entity_Height(a5), d1

	; Re-draw rope segment until off screen
	@RopeDrawLp:
	
	; If off top of screen, bail out
	move.w d1, d7
	add.w  Entity_Height(a5), d7
	cmp.w  d7, d4
	bgt    @RopeDrawEnd

	; If off bottom of screen, just skip this segment
	cmp.w  d1, d5
	blt    @Next

	; If out of sprites, bail
	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites

	; Draw rope segment
	PUSHM  d0-d5/a0/a5
	move.l a5, a0
	move.b #0x0, d2
	sub.w  WorldScrollX, d0				; To sprite space
	sub.w  WorldScrollY, d1				; To sprite space
	jsr    SpriteObjAllocSprite
	POPM   d0-d5/a0/a5

	@Next:

	; Next Y pos
	sub.w  Entity_Height(a5), d1

	; Loop
	bra    @RopeDrawLp

	@OutOfSprites:
	@RopeDrawEnd:
	@OutOfBounds:

	POPMW d2-d5

	rts
	
LiftSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	jsr   EntitySerialise

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEW PhysicsObj_AccelY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADW PhysicsObj_AccelY(a0)
	
	;==============================================================
	
	@End:
	
	rts
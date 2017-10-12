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
Lift_MaxVelX			equ 0x010000
Lift_AccelY				equ 0x2000+DefaultGravity
Lift_DecelX				equ 0x0800

Lift_MaxSpeedUp			equ 0x010000+DefaultGravity	; Max speed hoisting up
Lift_MaxSpeedDown		equ 0x010000				; Max speed falling down
Lift_FloorHeight		equ 0x000C			; Height from platform bottom to treat as floor for characters
Lift_PendulumMaxCorrectionVel	equ 0x0080	; Max velocity to initiate correction acceleration

Lift_RopeLength			equ (38*8*subpixels_per_pixel)	; TEMP - fetch from lift destination obj
Lift_RopeNumSprites		equ (Lift_RopeLength/Rope_Height)

Lift_RopePosOffsetX		equ (-(Rope_Width/2)+(Lift_Width/2))*subpixels_per_pixel
Lift_RopePosOffsetY		equ -(Rope_Height)*subpixels_per_pixel

Lift_MaxRopeAnimFrameDist	equ Rope_Width

Lift_WinchSFXFastVel	equ 0x00020000

	rsset (PhysicsObj_Struct_Size)
;---------------------------------
Lift_Platform				rs.b Platform_Struct_Size
	IF LIFT_ROPE_SUPPORT_SWING
Lift_RopeSegments			rs.l Lift_RopeNumSprites
	ELSE
Lift_RopeSegment			rs.b SpriteObj_Struct_Size
	ENDIF
Lift_CounterWeight			rs.l 1	; Another lift used as counterweight platform
Lift_OriginX				rs.l 1	; Origin (won't lower beyond this point)
Lift_OriginY				rs.l 1
Lift_LastOccupant			rs.l 1
Lift_RestrictHeight			rs.b 1	; Restrict fall height to origin
Lift_Direction				rs.b 1	; Up/down powered direction
;---------------------------------
Lift_Struct_Pad   			rs.b 2  ; Alignment padding
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
	move.w  #Lift_Height, PhysicsObj_WallProbeBottom(a0)
	move.w  #(Lift_Width/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(Lift_Width/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.l  #Lift_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Lift_MaxSpeedDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Lift_DecelX, PhysicsObj_DecelX(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.l  #0x0, Lift_CounterWeight(a0)
	move.l  #0x0, Lift_LastOccupant(a0)
	move.b  #0x1, Lift_RestrictHeight(a0)
	move.b  #0x0, Lift_Direction(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	IF LIFT_ROPE_SUPPORT_SWING
	LIST_APPEND_TAIL PushableObjs, a0, a3
	ENDIF ; LIFT_ROPE_SUPPORT_SWING
	
	;==============================================================
	
	; Setup platform
	lea    Lift_Platform(a0), a2
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Lift_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================
	
	; Allocate rope segments
	PUSHM  a0-a1

	IF LIFT_ROPE_SUPPORT_SWING

	; Animated swinging rope segments
	move.w #(Lift_RopeNumSprites-1), d1
	lea    Lift_RopeSegments(a0), a2
	@RopeInitLp:
	
	move.l (NextFreeRopeSegment), a0
	move.l a0, (a2)+
	
	PUSHM  a2/d1
	jsr    RopeSegmentInit
	POPM   a2/d1
	
	addi.l #RopeSegment_Struct_Size, NextFreeRopeSegment
	dbra   d1, @RopeInitLp

	ELSE ; LIFT_ROPE_SUPPORT_SWING

	; Single, static, reusable rope segment
	lea    Lift_RopeSegment(a0), a0
	jsr    SpriteObjInit
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.w #Rope_Width, Entity_Width(a0)
	move.w #Rope_Height, Entity_Height(a0)

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	POPM   a0-a1

	rts

LiftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	SPRITE_LOAD_SHARED lift,PaletteId_World0,0x0

	; Load rope segments
	IF LIFT_ROPE_SUPPORT_SWING

	; Animated swinging rope segments
	PUSHM  a0-a1
	move.w #(Lift_RopeNumSprites-1), d1
	lea    Lift_RopeSegments(a0), a2
	@RopeLp:
	move.l (a2)+, a0
	PUSHM  a2/d1
	jsr    RopeSegmentLoadGfx
	POPM   a2/d1
	dbra   d1, @RopeLp
	POPM   a0-a1

	ELSE ; LIFT_ROPE_SUPPORT_SWING

	; Single, static, reusable rope segment
	PUSHL a0
	lea   Lift_RopeSegment(a0), a0
	SPRITE_LOAD_DEFAULT rope,PaletteId_World0,0x0
	POPL  a0

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	POPL   a1

	; Get origin
	move.l Entity_WorldPosX(a0), Lift_OriginX(a0)
	move.l Entity_WorldPosY(a0), Lift_OriginY(a0)

	; If heading down, offset origin to top, disable gravity
	tst.b  Lift_Direction(a0)
	beq    @Up
	addi.l #Lift_RopeLength, Lift_OriginY(a0)
	move.b #0x0, PhysicsObj_AffectedByGravity(a0)
	@Up:

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
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYDown(a0)
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a2)
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYDown(a2)

	; Disable height restriction
	move.b  #0x0, Lift_RestrictHeight(a0)
	move.b  #0x0, Lift_RestrictHeight(a2)

	; Remove counterweight from update list
	PUSHL   a0
	move.l  a2, a0
	jsr     EntityRemoveFromUpdateList
	POPL    a0

	; Physics cannot sleep
	;move.b #0x0, PhysicsObj_CanSleep(a0)
	;move.b #0x0, PhysicsObj_CanSleep(a2)

	; HACK: Fixes off-screen counterweights
	; TODO: Update each other
	;move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	;move.b  #0x1, AnimObj_UpdateOutOfView(a2)

	rts

	IF LIFT_ROPE_SUPPORT_SWING
LiftPositionRopeSegments:

	; Get lift pos
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	
	; Get lift origin X
	move.l Lift_OriginX(a0), d2
	
	; Get X distance from origin
	move.l d0, d3
	sub.l  d2, d3
	
	; Add rope offset
	addi.l #Lift_RopePosOffsetX, d0
	addi.l #Lift_RopePosOffsetY, d1
	
	lea    Lift_RopeSegments(a0), a2
	
	move.w #(Lift_RopeNumSprites-1), d2
	@RopePosLp:
	
	; Div rope segment offset
	TOPIXELS d3
	ext.l  d3
	divs.w #0x2, d3
	ext.l  d3
	TOSUBPIXELS d3
	
	; Subtract from X pos
	sub.l  d3, d0
	
	move.l (a2)+, a3
	move.l d0, Entity_WorldPosX(a3)
	move.l d1, Entity_WorldPosY(a3)
	sub.l  #(Rope_Height*subpixels_per_pixel), d1
	
	; If +ve, flip sprite
	move.l d3, d4
	tst.l  d4
	bgt    @NoFlip
	neg.l  d4
	move.b #0x0, SpriteObj_FlippedX(a3)
	bra    @EndFlip
	@NoFlip:
	move.b #0x1, SpriteObj_FlippedX(a3)
	@EndFlip:
	
	; Clamp to max dist (-1 frame) for animation
	CLAMP  d4, #0x0, #(Lift_MaxRopeAnimFrameDist-(Lift_MaxRopeAnimFrameDist/spriteanim_rope_swing_numframes))
	
	; Set frame
	DIVS1616_LOSSY_FIXED #(Lift_MaxRopeAnimFrameDist/spriteanim_rope_swing_numframes), d4
	lsl.l  #0x8, d4
	move.l d4, AnimObj_AnimSubFrame(a3)
	move.b #0x1, AnimObj_Dirty(a3)
	
	dbra   d2, @RopePosLp
	
	rts

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

LiftActivate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Lift_Direction(a0)
	bne    @Down

	; Move lift up
	move.w #Lift_AccelY, PhysicsObj_AccelY(a0)
	bra    @End

	@Down:

	; Move lift down
	move.w #-Lift_AccelY, PhysicsObj_AccelY(a0)

	@End:

	rts

LiftStop:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.w #0x0, PhysicsObj_AccelY(a0)

	rts

LiftProcessCounterweight:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Counterweight lift addr

	; Get total mass of both platforms
	lea    Lift_Platform(a0), a3
	clr.l  d0
	move.w Platform_TotalMass(a3), d0

	lea    Lift_Platform(a2), a3
	clr.l  d1
	move.w Platform_TotalMass(a3), d1

	; Apply diff as velocity
	sub.w  d0, d1
	swap   d1
	move.l d1, PhysicsObj_VelY(a0)

	; Negate for other platform
	neg.l  d1
	move.l d1, PhysicsObj_VelY(a2)

	;==============================================================

	; Check this lift platform for floor
	cmp.l  #0x0, PhysicsObj_VelY(a0)
	bgt    @ThisLiftHeadingUp

	; Check if on floor
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @ThisLiftInAir

	; On floor, stop both lifts
	;move.w #0x0, PhysicsObj_AccelY(a0)
	;move.w #0x0, PhysicsObj_AccelY(a2)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_VelY(a2)
	bra    @EndCounterweight

	@ThisLiftInAir:

	; In air, start moving lifts in opposite directions
	;move.w #-Lift_AccelY, PhysicsObj_AccelY(a0)
	;move.w #Lift_AccelY, PhysicsObj_AccelY(a2)
	bra    @EndCounterweight

	@ThisLiftHeadingUp:

	;==============================================================

	; Check other lift platform for floor
	cmp.l  #0x0, PhysicsObj_VelY(a2)
	bgt    @OtherLiftHeadingUp

	; Check if on floor
	tst.b  PhysicsObj_OnFloor(a2)
	beq    @OtherLiftInAir

	; On floor, stop both lifts
	;move.w #0x0, PhysicsObj_AccelY(a0)
	;move.w #0x0, PhysicsObj_AccelY(a2)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_VelY(a2)
	bra    @EndCounterweight

	@OtherLiftInAir:
	
	; In air, start moving lifts in opposite directions
	;move.w #Lift_AccelY, PhysicsObj_AccelY(a0)
	;move.w #-Lift_AccelY, PhysicsObj_AccelY(a2)
	bra    @EndCounterweight

	@OtherLiftHeadingUp:

	;==============================================================

	; Both lifts unoccupied, stop
	;move.w #0x0, PhysicsObj_AccelY(a0)
	;move.w #0x0, PhysicsObj_AccelY(a2)
	;move.l #0x0, PhysicsObj_VelY(a0)
	;move.l #0x0, PhysicsObj_VelY(a2)

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
	move.l Entity_WorldPosY(a0), d0
	move.l Lift_OriginY(a0), d1
	cmp.l  d0, d1
	bgt    @WithinRopeBottom
	move.l d1, Entity_WorldPosY(a0)
	@WithinRopeBottom:

	sub.l  #Lift_RopeLength, d1
	cmp.l  d0, d1
	blt    @WithinRopeTop
	move.l d1, Entity_WorldPosY(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	@WithinRopeTop:

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
	sub.l  #Lift_FloorHeight*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	
	; Set platform velocity
	move.l PhysicsObj_VelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_VelY(a0), Platform_VelY(a2)

	rts

LiftUpdatePhysicsWake:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wake physics and force offscreen update for all objects involved, if:
	;  - Moving
	;  - or platform occupant has changed
	;  - or in air and has occupant or prev occupant
	;  - or counterweight moving
	;  - or counterweight occupant changed
	;  - or counterweight in air and counterweight has occupant or prev occupant

	; Get objects for this lift
	move.l Lift_CounterWeight(a0), a2	; Get counterweight
	lea    Lift_Platform(a0), a3		; Get platform
	move.l Platform_LastOccupant(a3), a3; Get current occupant
	move.l Lift_LastOccupant(a0), a4	; Get previous occupant
	
	; Get objects for counterweight
	cmp.l  #0x0, a2
	beq    @NoCounterweight
	lea    Lift_Platform(a2), a5		; Get counterweight's platform
	move.l Platform_LastOccupant(a5), a5; Get counterweight's current occupant
	move.l Lift_LastOccupant(a2), a6	; Get counterweight's previous occupant
	
	@NoCounterweight:
	
	; Check this lift
	tst.l  PhysicsObj_VelY(a0)			; Check Y vel
	bne    @WakePhysics					; Wake if moving
	cmp.l  a3, a4						; Wake if occupant changed
	bne    @WakePhysics
	tst.b  PhysicsObj_CloseToFloor(a0)	; Wake if in air...
	bne    @OnFloor
	cmp.l  #0x0, a3						; ...and has occupant...
	bne    @WakePhysics
	cmp.l  #0x0, a4						; ...or has prev occupant
	bne    @WakePhysics
	@OnFloor:

	; Check counterweight
	cmp.l  #0x0, a2
	beq    @EndSleepCheck
	tst.l  PhysicsObj_VelY(a2)			; Check Y vel
	bne    @WakePhysics					; Wake if moving
	cmp.l  a5, a6						; Wake if occupant changed
	bne    @WakePhysics
	tst.b  PhysicsObj_CloseToFloor(a2)	; Wake if in air...
	bne    @CounterweightOnFloor
	cmp.l  #0x0, a5						; ...and has occupant...
	bne    @WakePhysics
	cmp.l  #0x0, a6						; ...or has prev occupant
	bne    @WakePhysics
	@CounterweightOnFloor:
	
	bra    @EndSleepCheck

	@WakePhysics:
	
	; Wake physics and force update

	; This lift
	move.b #0x0, PhysicsObj_Asleep(a0)
	move.b #0x1, PhysicsObj_ForceUpdate(a0)

	; This lift's occupant
	cmp.l  #0x0, a3
	beq    @NoOccupant
	move.b #0x0, PhysicsObj_Asleep(a3)
	move.b #0x1, PhysicsObj_ForceUpdate(a3)
	@NoOccupant:

	; This lift's prev occupant
	cmp.l  #0x0, a4
	beq    @NoPrevOccupant
	move.b #0x0, PhysicsObj_Asleep(a4)
	move.b #0x1, PhysicsObj_ForceUpdate(a4)
	@NoPrevOccupant:

	; Cache prev occupant
	cmp.l  #0x0, a3
	beq    @NoNewOccupant
	move.l a3, Lift_LastOccupant(a0)
	@NoNewOccupant:

	; Counterweight
	cmp.l  #0x0, a2
	beq    @NoCounterweightWake
	move.b #0x0, PhysicsObj_Asleep(a2)
	move.b #0x1, PhysicsObj_ForceUpdate(a2)

	; Counterweight's occupant
	cmp.l  #0x0, a5
	beq    @NoCWOccupant
	move.b #0x0, PhysicsObj_Asleep(a5)
	move.b #0x1, PhysicsObj_ForceUpdate(a5)
	@NoCWOccupant:

	; Counterweight's prev occupant
	cmp.l  #0x0, a6
	beq    @NoCWPrevOccupant
	move.b #0x0, PhysicsObj_Asleep(a6)
	move.b #0x1, PhysicsObj_ForceUpdate(a6)
	@NoCWPrevOccupant:

	; Cache prev occupant
	cmp.l  #0x0, a5
	beq    @NoNewCWOccupant
	move.l a5, Lift_LastOccupant(a2)
	@NoNewCWOccupant:

	@NoCounterweightWake:

	@EndSleepCheck:

	rts

LiftUpdateAudio:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Don't play SFX during time slow
	cmp.b   #0x1, (GlobalTimeDiv)
	bne     @NoWinchSFX

	move.l  PhysicsObj_VelY(a0), d0
	tst.l   d0
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

	jsr    LiftRestrictHeight
	jsr    PhysicsObjUpdate
	jsr    LiftUpdatePlatform

	rts
	
LiftUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	clr.l  d3

	IF LIFT_ROPE_SUPPORT_SWING

	PUSHL  a1
	
	; If not on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor
	
	; Swing towards origin
	move.l Lift_OriginX(a0), d0
	move.l Entity_WorldPosX(a0), d1
	sub.l  d1, d0
	tst.l  d0
	blt    @SwingRight
	bgt    @SwingLeft
	bra    @Resting
	
	@SwingLeft:
	
	; Only if vel < -Lift_PendulumMaxCorrectionVel
	move.l PhysicsObj_VelX(a0), d1
	cmp.l  #-Lift_PendulumMaxCorrectionVel, PhysicsObj_VelX(a0)
	bgt    @NoDecelLeft
	
	addi.l #Lift_DecelX, PhysicsObj_VelX(a0)
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	ble    @Resting
	move.l #0x0, PhysicsObj_VelX(a0)
	bra    @Resting
	
	@NoDecelLeft:
	
	lsr.l  #0x8, d0
	lsr.l  #0x4, d0
	move.w d0, d3
	bra    @Resting
	
	@SwingRight:
	
	; Only if vel < Lift_PendulumMaxCorrectionVel
	move.l PhysicsObj_VelX(a0), d1
	cmp.l  #Lift_PendulumMaxCorrectionVel, PhysicsObj_VelX(a0)
	blt    @NoDecelRight
	
	sub.l  #Lift_DecelX, PhysicsObj_VelX(a0)
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bge    @Resting
	move.l #0x0, PhysicsObj_VelX(a0)
	bra    @Resting
	
	@NoDecelRight:
	
	neg.l  d0
	lsr.l  #0x8, d0
	lsr.l  #0x4, d0
	neg.w  d0
	move.w d0, d3
	
	@OnFloor:
	@Resting:
	move.w d3, PhysicsObj_AccelX(a0)

	POPL   a1

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	;==============================================================

	; Process counterweight
	move.l Lift_CounterWeight(a0), a2
	cmp.l  #0x0, a2
	beq    @NoCounterweight
	jsr    LiftProcessCounterweight
	@NoCounterweight:

	; Wake physics if something's changed
	jsr    LiftUpdatePhysicsWake

	; Restrict height
	jsr    LiftRestrictHeight

	; Process audio
	jsr    LiftUpdateAudio
	
	; Base functionality
	jsr    PhysicsObjUpdate

	; Update counterweight
	PUSHL  a0
	move.l Lift_CounterWeight(a0), a0
	cmp.l  #0x0, a0
	beq    @NoCounterweightUpdate
	jsr    LiftUpdateAsCounterweight
	@NoCounterweightUpdate:
	POPL   a0
	
	; Reposition platform
	jsr    LiftUpdatePlatform
	
	; Reposition rope segments
	IF LIFT_ROPE_SUPPORT_SWING
	jsr    LiftPositionRopeSegments
	ENDIF ; LIFT_ROPE_SUPPORT_SWING
	
	rts

LiftDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    AnimObjDraw

	;==============================================================

	IF LIFT_ROPE_SUPPORT_SWING=0

	; Get rope pos X
	move.l Entity_WorldPosX(a0), d0
	addi.l #Lift_RopePosOffsetX, d0
	
	; Check if visible
	move.l d0, d1
	TOPIXELS d1
	sub.w  (WorldScrollX), d1				; Apply camera pos X (incl. camera shake + peek offset)

	; Check if out of bounds
	cmp.w  #vdp_sprite_border_x+screen_width, d1	; Check against left screen border
	bgt    @OutOfBounds
	addi.w #Lift_Width, d1				; Get rope right
	cmp.w  #vdp_sprite_border_x, d1		; Check against right screen border
	blt    @OutOfBounds
	
	; Get rope pos Y
	move.l Entity_WorldPosY(a0), d1
	addi.l #Lift_RopePosOffsetY, d1

	; Re-draw rope segment until off screen
	move.l (WorldScrollY), d4

	PUSHL  a0

	; Get rope obj
	lea    Lift_RopeSegment(a0), a0

	@RopeDrawLp:

	; If out of sprites, bail
	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites

	; Set pos
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	; Draw
	PUSHM  d0-d4/a0-a2
	jsr    SpriteObjDraw
	POPM   d0-d4/a0-a2

	; Next Y pos
	sub.l  #Rope_Height*subpixels_per_pixel, d1

	; If off screen, bail
	cmp.l  d1, d4
	bgt    @RopeDrawEnd

	; Loop
	bra    @RopeDrawLp

	@OutOfSprites:
	@RopeDrawEnd:

	POPL   a0

	@OutOfBounds:

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	rts
	
LiftSerialise:
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
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	
	;==============================================================
	
	@End:
	
	rts
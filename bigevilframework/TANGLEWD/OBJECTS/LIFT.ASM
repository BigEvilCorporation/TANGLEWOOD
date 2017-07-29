;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lift.asm - Lift/hoist platform with rope
;==============================================================

; Constants
Lift_MaxEntities		equ 0x8
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
Lift_RestrictHeight			rs.b 1	; Restrict fall height to origin
;---------------------------------
Lift_Struct_Pad   			rs.b 3  ; Alignment padding
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
	addi.w #0x1, EntityCount_Lift
	
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
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	move.w  #Lift_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Lift_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.l  #Lift_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Lift_MaxSpeedDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Lift_DecelX, PhysicsObj_DecelX(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.l  #0x0, Lift_CounterWeight(a0)
	move.b  #0x1, Lift_RestrictHeight(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	IF LIFT_ROPE_SUPPORT_SWING
	LIST_APPEND_TAIL PushableObjs, a0, a3
	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	;==============================================================
	
	; Setup platform
	move.l a0, a2
	add.l  #Lift_Platform, a2
	move.w #Lift_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================
	
	; Allocate rope segments
	PUSHM  a0-a1

	IF LIFT_ROPE_SUPPORT_SWING

	; Animated swinging rope segments
	move.w #(Lift_RopeNumSprites-1), d1
	move.l a0, a2
	add.l  #Lift_RopeSegments, a2
	@RopeInitLp:
	
	move.l (NextFreeRopeSegment), a0
	move.l a0, (a2)+
	
	PUSHM  a2/d1
	jsr    RopeSegmentInit
	POPM   a2/d1
	
	add.l  #RopeSegment_Struct_Size, NextFreeRopeSegment
	dbra   d1, @RopeInitLp

	ELSE ; LIFT_ROPE_SUPPORT_SWING

	; Single, static, reusable rope segment
	add.l  #Lift_RopeSegment, a0
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

	SPRITE_LOAD_DEFAULT lift,PaletteId_World0,0x0

	; Load rope segments
	IF LIFT_ROPE_SUPPORT_SWING

	; Animated swinging rope segments
	PUSHM  a0-a1
	move.w #(Lift_RopeNumSprites-1), d1
	move.l a0, a2
	add.l  #Lift_RopeSegments, a2
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
	add.l #Lift_RopeSegment, a0
	SPRITE_LOAD_DEFAULT rope,PaletteId_World0,0x0
	POPL  a0

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	POPL   a1

	; Get origin
	move.l Entity_WorldPosX(a0), Lift_OriginX(a0)
	move.l Entity_WorldPosY(a0), Lift_OriginY(a0)

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

	; Physics cannot sleep
	move.b #0x0, PhysicsObj_CanSleep(a0)
	move.b #0x0, PhysicsObj_CanSleep(a2)

	; HACK: Fixes off-screen counterweights
	; TODO: Update each other
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	move.b  #0x1, AnimObj_UpdateOutOfView(a2)

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
	add.l  #Lift_RopePosOffsetX, d0
	add.l  #Lift_RopePosOffsetY, d1
	
	move.l a0, a2
	add.l  #Lift_RopeSegments, a2
	
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
	cmp.l  #0x0, d4
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

	; Move lift up
	move.w #Lift_AccelY, PhysicsObj_AccelY(a0)

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
	move.l a0, a3
	add.l  #Lift_Platform, a3
	clr.l  d0
	move.w Platform_TotalMass(a3), d0

	move.l a2, a3
	add.l  #Lift_Platform, a3
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
	cmp.b  #0x0, PhysicsObj_OnFloor(a0)
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
	cmp.b  #0x0, PhysicsObj_OnFloor(a2)
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

	; Set platform Y velocities
	move.l a0, a3
	add.l  #Lift_Platform, a3
	move.l PhysicsObj_VelY(a0), Platform_VelY(a3)

	move.l a2, a3
	add.l  #Lift_Platform, a3
	move.l PhysicsObj_VelY(a2), Platform_VelY(a3)

	rts
	
LiftUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1
	
	clr.l  d3

	IF LIFT_ROPE_SUPPORT_SWING
	
	; If not on floor
	cmp.b  #0x0, PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor
	
	; Swing towards origin
	move.l Lift_OriginX(a0), d0
	move.l Entity_WorldPosX(a0), d1
	sub.l  d1, d0
	cmp.l  #0x0, d0
	blt    @SwingRight
	bgt    @SwingLeft
	bra    @Resting
	
	@SwingLeft:
	
	; Only if vel < -Lift_PendulumMaxCorrectionVel
	move.l PhysicsObj_VelX(a0), d1
	cmp.l  #-Lift_PendulumMaxCorrectionVel, PhysicsObj_VelX(a0)
	bgt    @NoDecelLeft
	
	add.l  #Lift_DecelX, PhysicsObj_VelX(a0)
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

	ENDIF ; LIFT_ROPE_SUPPORT_SWING

	;==============================================================

	; Get counterweight
	move.l Lift_CounterWeight(a0), a2
	cmp.l  #0x0, a2
	beq    @NoCounterweight

	; Process counterweights
	jsr    LiftProcessCounterweight
	bra    @EndCounterweight

	@NoCounterweight:
	
	;==============================================================

	cmp.b  #0x0, Lift_RestrictHeight(a0)
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
	
	;==============================================================

	@EndCounterweight:

	;==============================================================

	; Don't play SFX during time slow
	cmp.b   #0x1, (GlobalTimeDiv)
	bne     @NoWinchSFX

	; If has a counterweight, let the counterweight process audio
	tst.l   Lift_CounterWeight(a0)
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
	
	POPL   a1
	
	; Base functionality
	jsr    PhysicsObjUpdate
	
	;==============================================================
	
	; Reposition platform
	move.l a0, a2
	add.l  #Lift_Platform, a2
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
	
	;==============================================================
	
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
	add.l  #Lift_RopePosOffsetX, d0
	
	; Check if visible
	move.l d0, d1
	TOPIXELS d1
	sub.w  (WorldScrollX), d1				; Apply camera pos X (incl. camera shake + peek offset)

	; Check if out of bounds
	cmp.w  #vdp_sprite_border_x+screen_width, d1	; Check against left screen border
	bgt    @OutOfBounds
	add.w  #Lift_Width, d1				; Get rope right
	cmp.w  #vdp_sprite_border_x, d1		; Check against right screen border
	blt    @OutOfBounds
	
	; Get rope pos Y
	move.l Entity_WorldPosY(a0), d1
	add.l  #Lift_RopePosOffsetY, d1

	; Re-draw rope segment until off screen
	move.l (WorldScrollY), d4

	PUSHL  a0

	; Get rope obj
	add.l  #Lift_RopeSegment, a0

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
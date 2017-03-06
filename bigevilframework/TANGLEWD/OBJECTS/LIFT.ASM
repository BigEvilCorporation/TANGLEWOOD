;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lift.asm - Lift/hoist platform with rope
;==============================================================

; Constants
Lift_MaxEntities		equ 0x2
Lift_Width				equ 0x20
Lift_Height				equ 0x20
Lift_ProbeFloorX		equ (Lift_Width/2)  ; Floor detection probe position X
Lift_ProbeFloorY   		equ (Lift_Height-8) ; Floor detection probe position Y
Lift_MaxVelX			equ 0x0100
Lift_AccelY				equ 0x20+Gravity
Lift_DecelX				equ 0x08

Lift_MaxSpeedUp			equ 0x0100+Gravity	; Max speed hoisting up
Lift_MaxSpeedDown		equ 0x0300			; Max speed falling down
Lift_FloorHeight		equ 0x0007			; Height from platform bottom to treat as floor for characters
Lift_PendulumMaxCorrectionVel	equ 0x0080	; Max velocity to initiate correction acceleration

Lift_RopeLength			equ 0x0100
Lift_RopeNumSprites		equ (Lift_RopeLength/Rope_Height)

Lift_RopePosOffsetX		equ (-(Rope_Width/2)+(Lift_Width/2))*SubPixelsPerPixel
Lift_RopePosOffsetY		equ -(Rope_Height)*SubPixelsPerPixel

Lift_MaxRopeAnimFrameDist	equ Rope_Width*SubPixelsPerPixel

	rsset (PhysicsObj_Struct_Size)
;---------------------------------
Lift_Platform				rs.b Platform_Struct_Size
Lift_RopeSegments			rs.l Lift_RopeNumSprites
Lift_OriginX				rs.l 1
Lift_OriginY				rs.l 1
Lift_RopeSpriteFirstID     	rs.w 1
Lift_RopeSpritesCount  		rs.w 1
;---------------------------------
Lift_Struct_Pad   			rs.b 2   ; Alignment padding
Lift_Struct_Size  			rs.b 0
;---------------------------------

	rsset (Entity_Struct_Size)
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
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
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
	move.w  #Lift_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Lift_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Lift_MaxVelX, PhysicsObj_MaxVelX(a0)
	move.w  #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0)
	move.w  #Lift_MaxSpeedDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Lift_DecelX, PhysicsObj_DecelX(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3
	
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
	POPM   a0-a1

	rts

LiftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #sprite_lift_size_b, d0
	jsr    VRAM_PoolAlloc

	; Load sprite
	lea    spritesheets_Lift, a1
	lea    sprite_Lift_subsprite_dimensions_bits, a2
	lea    sprite_Lift_subsprite_pos_offsets, a3
	lea    sprite_Lift_numtiles_per_subsprite, a4
	move.l #sprite_Lift_size_t, d1
	move.b #sprite_Lift_size_subsprites, d2
	move.w #sprite_Lift_widthheight_subsprites, d3
	move.b #PaletteId_World0, d4
	move.b #0x0, d5
	jsr    SpriteObjLoad

	; Load rope segments
	PUSHM  a0-a1
	move.w #(Lift_RopeNumSprites-1), d1
	move.l a0, a2
	add.l  #Lift_RopeSegments, a2
	@RopeLp:
	move.l (a2)+, a0
	PUSHL  a2/d1
	jsr    RopeSegmentLoadGfx
	POPL   a2/d1
	dbra   d1, @RopeLp
	POPM   a0-a1

	POPL   a1

	rts
	
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
	lsr.l  #0x8, d3
	ext.l  d3
	divs.w #0x2, d3
	ext.l  d3
	lsl.l  #0x8, d3
	
	; Subtract from X pos
	sub.l  d3, d0
	
	move.l (a2)+, a3
	move.l d0, Entity_WorldPosX(a3)
	move.l d1, Entity_WorldPosY(a3)
	sub.l  #(Rope_Height*SubPixelsPerPixel), d1
	
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
	divs.w #(Lift_MaxRopeAnimFrameDist/spriteanim_rope_swing_numframes), d4
	lsl.l  #0x8, d4
	move.l d4, AnimObj_AnimSubFrame(a3)
	move.b #0x1, AnimObj_Dirty(a3)
	
	dbra   d2, @RopePosLp
	
	rts
	
LiftUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1
	
	; If origin not already recorded, take it
	; TODO: Use post-init?
	cmp.l  #0x0, Lift_OriginX(a0)
	bne    @OriginRecorded
	move.l Entity_WorldPosX(a0), Lift_OriginX(a0)
	move.l Entity_WorldPosY(a0), Lift_OriginY(a0)
	@OriginRecorded:
	
	;==============================================================
	
	; Cancel movement by default
	move.w #0x0, PhysicsObj_AccelY(a0)
	
	; Can push by default
	move.b #0x1, PhysicsObj_CanBePushed(a0)
	
	; Check if player heading down
	move.l #Player1, a1
	cmp.w  #0x0, PhysicsObj_VelY(a1)
	bgt    @PlayerHeadingUp
	
	; Check if player touching
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETCENTREX d3, a1
	ENTITY_GETBOTTOM d4, a1
	lsr.l  #0x8, d3
	lsr.l  #0x8, d4
	swap   d3
	move.w d4, d3
	jsr    PHYS_TestPointInsideBox
	
	cmp.b  #0x0, d0
	beq    @NotTouching
	
	; Player touching lift, move up
	move.w #Lift_AccelY, PhysicsObj_AccelY(a0)
	
	; Can't push
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	
	@PlayerHeadingUp:
	@NotTouching:
	
	;==============================================================
	
	clr.l  d3
	
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
	move.w PhysicsObj_VelX(a0), d1
	cmp.w  #-Lift_PendulumMaxCorrectionVel, PhysicsObj_VelX(a0)
	bgt    @NoDecelLeft
	
	add.w  #Lift_DecelX, PhysicsObj_VelX(a0)
	cmp.w  #0x0, PhysicsObj_VelX(a0)
	ble    @Resting
	move.w #0x0, PhysicsObj_VelX(a0)
	bra    @Resting
	
	@NoDecelLeft:
	
	lsr.l  #0x8, d0
	lsr.l  #0x4, d0
	move.w d0, d3
	bra    @Resting
	
	@SwingRight:
	
	; Only if vel < Lift_PendulumMaxCorrectionVel
	move.w PhysicsObj_VelX(a0), d1
	cmp.w  #Lift_PendulumMaxCorrectionVel, PhysicsObj_VelX(a0)
	blt    @NoDecelRight
	
	sub.w  #Lift_DecelX, PhysicsObj_VelX(a0)
	cmp.w  #0x0, PhysicsObj_VelX(a0)
	bge    @Resting
	move.w #0x0, PhysicsObj_VelX(a0)
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
	
	;==============================================================
	
	; Don't fall beyond rope length
	move.l Entity_WorldPosY(a0), d0
	move.l Lift_OriginY(a0), d1
	cmp.l  d0, d1
	bge    @WithinRopeLength
	move.l d1, Entity_WorldPosY(a0)
	@WithinRopeLength:
	
	;==============================================================
	
	POPL   a1
	
	; Base functionality
	jsr    PhysicsObjUpdate
	
	;==============================================================
	
	; Reposition platform
	move.l a0, a2
	add.l  #Lift_Platform, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	lsr.l  #0x8, d0
	lsr.l  #0x8, d1
	add.w  Entity_Height(a0), d1
	sub.w  #Lift_FloorHeight, d1
	move.w d0, Platform_PosX(a2)
	move.w d1, Platform_PosY(a2)
	
	; Set platform velocity
	move.w PhysicsObj_VelX(a0), Platform_VelX(a2)
	move.w PhysicsObj_VelY(a0), Platform_VelY(a2)
	
	;==============================================================
	
	; Reposition rope segments
	jsr    LiftPositionRopeSegments
	
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
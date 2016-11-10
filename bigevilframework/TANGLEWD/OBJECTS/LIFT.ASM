;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   lift.asm - Lift/hoist platform
;==============================================================

; Constants
Lift_MaxEntities		equ 0x2
Lift_Width				equ 0x20
Lift_Height				equ 0x20
Lift_ProbeFloorX		equ (Lift_Width/2)  ; Floor detection probe position X
Lift_ProbeFloorY   		equ (Lift_Height-8) ; Floor detection probe position Y
Lift_MaxVelX			equ 0x0100
Lift_AccelY				equ 0x20+Gravity
Lift_Decel				equ 0x02
Lift_SwingAccelX		equ 0x10

Lift_MaxSpeedUp			equ 0x0100+Gravity
Lift_MaxSpeedDown		equ 0x0300
Lift_FloorHeight		equ 0x0008

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Lift_OriginX		rs.l 1
Lift_OriginY		rs.l 1
;--------------------------
Lift_Struct_Pad   	rs.b 2   ; Alignment padding
Lift_Struct_Size  	rs.b 0
;--------------------------

;==============================================================

LiftInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_lift, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Lifts
	
	; Set update and render routines
	move.l #LiftUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #LiftSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.w #Lift_Width, Entity_Width(a0)
	move.w #Lift_Height, Entity_Height(a0)
	move.w #Lift_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #Lift_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w #Lift_MaxVelX, PhysicsObj_MaxVelX(a0)
	move.w #Lift_MaxSpeedUp, PhysicsObj_MaxVelYUp(a0)
	move.w #Lift_MaxSpeedDown, PhysicsObj_MaxVelYDown(a0)

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
	add.l  #0x1000, Entity_WorldPosX(a0)
	@OriginRecorded:
	
	; Cancel movement by default
	move.w #0x0, PhysicsObj_AccelY(a0)
	
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
	
	; Player touching lift, calc floor height
	clr.l  d0
	ENTITY_GETBOTTOM d0, a0
	sub.l  #((Lift_FloorHeight-Player1StepHeight)*SubPixelsPerPixel), d0
	
	; Snap to new floor
	clr.l  d3
	move.l Entity_WorldPosY(a1), d1				; Get Y pos
	move.w Entity_Height(a1), d3				; Get height
	lsl.l  #0x8, d3								; Height to world space
	sub.l  d3, d0								; Floor to floor probe space
	move.l d0, Entity_WorldPosY(a1) 			; Set Y pos
	move.w #0x0, PhysicsObj_VelY(a1)			; Zero object's Y velocity
	move.b #0x1, PhysicsObj_OnFloor(a1)			; Set object on floor flag
	move.b #0x1, PhysicsObj_CloseToFloor(a1)	; Set object close to floor flag
	move.b #0x0, Character_Jumping(a1)			; Not jumping
	move.b #0x0, Character_Falling(a1)			; Not falling
	
	; Add X velocity
	;move.w PhysicsObj_VelX(a0), PhysicsObj_VelX(a1)
	
	; Move
	move.w #Lift_AccelY, PhysicsObj_AccelY(a0)
	
	@PlayerHeadingUp:
	@NotTouching:
	
	; Swing towards origin
	move.l Lift_OriginX(a0), d0
	move.l Entity_WorldPosX(a0), d1
	sub.l  d1, d0
	cmp.l  #0x0, d0
	blt    @SwingRight
	bgt    @SwingLeft
	bra    @Resting
	
	@SwingLeft:
	neg.l  d0
	lsr.l  #0x8, d0
	lsr.l  #0x4, d0
	neg.w  d0
	;move.w #Lift_SwingAccelX, d0
	move.w d0, PhysicsObj_AccelX(a0)
	bra    @Resting
	
	@SwingRight:
	lsr.l  #0x8, d0
	lsr.l  #0x4, d0
	;move.w #-Lift_SwingAccelX, d0
	move.w d0, PhysicsObj_AccelX(a0)
	
	@Resting:
	
	POPL   a1
	
	; Base functionality
	jsr    PhysicsObjUpdate
	
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
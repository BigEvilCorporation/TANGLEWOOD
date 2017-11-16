;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   cart.asm - Rideable mine cart
;==============================================================

; Constants
Cart_Width				equ 0x28
Cart_Height				equ 0x20
Cart_Mass				equ 0x0B
Cart_MaxVelYUp			equ 0x060000
Cart_MaxVelYDown		equ 0x080000
Cart_StepHeight			equ 0x4
Cart_ProbeFloorX		equ (Cart_Width/2)	; Floor detection probe position X
Cart_ProbeFloorY		equ (Cart_Height-8)	; Floor detection probe position X
Cart_MaxVelX			equ 0x080000
Cart_Accel				equ 0x000800
Cart_Decel				equ 0x000800

Cart_PlatformOffsetY	equ 0x0018

Cart_AnimSpeedVelDiv	equ 0x0008

Cart_HitGroundSFXVel	equ 0x0500	; Min downward velocity to play thud SFX

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Cart_Platform        rs.b Platform_Struct_Size ; Cart floor
Cart_Occupant        rs.l 1
Cart_Smashed         rs.b 1
;--------------------------
Cart_Struct_Pad      rs.b 3   ; Alignment padding
Cart_Struct_Size     rs.b 0
;--------------------------

;==============================================================

CartInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Count
	addq.w #0x1, EntityCount_Cart
	
	; Set update and render routines
	move.l #CartUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #CartSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Cart_Width, Entity_Width(a0)
	move.w  #Cart_Height, Entity_Height(a0)
	MOVE_NTSC_L Cart_MaxVelX, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_ACCEL_W Cart_Decel, PhysicsObj_DecelX(a0), d0
	move.w  #Cart_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Cart_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Cart_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Cart_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Cart_Width, PhysicsObj_WallProbeRight(a0)
	MOVE_NTSC_L Cart_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Cart_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #Cart_Mass, PhysicsObj_Mass(a0)
	;move.b  #0x1, PhysicsObj_CanBePushed(a0)
	;move.b  #0x1, PhysicsObj_CanBePulled(a0)
	move.b  #0x1, PhysicsObj_Buoyant(a0)
	move.l  #0x0, Cart_Occupant(a0)
	move.b  #0x0, Cart_Smashed(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	; LIST_APPEND_TAIL PushableObjs, a0, a3

	;==============================================================
	
	; Setup platform
	lea    Cart_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.w #Cart_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================
	
	; Setup animations
	; TODO

	rts

CartLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT Cart,roll,PaletteId_World0,0x0

	; Add to world grid
	jsr     EntityAddToWorldGrid

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Reposition platform
	lea    Cart_Platform(a0), a2
	move.l Entity_WorldPosX(a0), Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), d0
	addi.l #(Cart_PlatformOffsetY*subpixels_per_pixel), d0
	move.l d0, Platform_PosY(a2)

	rts

CartUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate

	; If got an occupant
	move.l Cart_Occupant(a0), a3
	cmp.l  #0x0, a3
	beq    @Unoccupied
	
	; If hit wall, cart smashed
	tst.b  PhysicsObj_HitWall(a0)
	bne    @Smashed

	; Reposition platform
	lea    Cart_Platform(a0), a2
	move.l Entity_WorldPosX(a0), Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), d0
	addi.l #(Cart_PlatformOffsetY*subpixels_per_pixel), d0
	move.l d0, Platform_PosY(a2)
	
	; Set platform velocity
	move.l PhysicsObj_VelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_VelY(a0), Platform_VelY(a2)
	
	move.w #Cart_Accel, PhysicsObj_AccelX(a0)
	move.b #0x1, SpriteObj_Priority(a0)
	move.l a3, Cart_Occupant(a0)
	
	; Update occupant pos
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1
	move.w Entity_Width(a0), d2
	move.w Entity_Height(a0), d3
	move.w Entity_Width(a3), d4
	move.w Entity_Height(a3), d5
	lsr.w  #0x1, d2
	lsr.w  #0x1, d4
	sub.w  d2, d4
	sub.w  d4, d0
	TOSUBPIXELS d0
	move.l d0, Entity_WorldPosX(a3)
	sub.w  d3, d5
	sub.w  d5, d1
	subi.w #(Cart_Height-Cart_PlatformOffsetY), d1
	TOSUBPIXELS d1
	move.l d1, Entity_WorldPosY(a3)

	bra    @End
	
	@Smashed:

	; Set smashed, remove occupant
	move.b #0x1, Cart_Smashed(a0)
	move.l #0x0, Cart_Occupant(a0)
	move.b #0x0, AnimObj_UpdateOutOfView(a0)

	; Disable platform
	lea    Cart_Platform(a0), a2
	LIST_REMOVE Platforms, a2, a3, a4

	; Reset sprite prio
	move.b #0x0, SpriteObj_Priority(a0)

	@Unoccupied:
	@End:

	rts

CartSetOccupant:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Occupant

	move.l a2, Cart_Occupant(a0)

	; Update out of view (in case used by AI)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	rts
	
CartSerialise:
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

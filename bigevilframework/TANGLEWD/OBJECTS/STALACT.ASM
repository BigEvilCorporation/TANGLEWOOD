;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   stalactite.asm - Dangling stalactite, falls if approached
;==============================================================

; Constants
Stalactite_Width			equ 0x18
Stalactite_Height			equ 0x18	; Actually 0x20, but needs to embed into floor
Stalactite_HitBoundsWidth	equ 0x08
Stalactite_HitBoundsHeight	equ 0x10
Stalactite_MaxVelYDown		equ 0x080000
Stalactite_StepHeight		equ 0x4
Stalactite_ProbeFloorX		equ (Stalactite_Width/2)	; Floor detection probe position X
Stalactite_ProbeFloorY		equ (Stalactite_Height-8)	; Floor detection probe position X

Stalactite_PlayerDropDistance	equ 0x0060
Stalactite_Damage			equ 0xFF

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
;--------------------------
Stalactite_Struct_Pad   rs.b 0   ; Alignment padding
Stalactite_Struct_Size  rs.b 0
;--------------------------

;==============================================================

StalactiteInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	; ori.l  #entity_type_Stalactite, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Stalactite
	
	; Set update and render routines
	move.l #StalactiteUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #StalactiteSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Stalactite_Width, Entity_Width(a0)
	move.w  #Stalactite_Height, Entity_Height(a0)
	move.w  #Stalactite_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Stalactite_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Stalactite_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.l  #Stalactite_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #0x0, PhysicsObj_CollideWalls(a0)

	; Disable physics until activated
	move.b  #0x0, PhysicsObj_HasPhysics(a0)
	
	; Setup collision bounds
	move.w  #((Stalactite_Width/2)-(Stalactite_HitBoundsWidth/2)), PhysicsObj_BoundsLeft(a0)
	move.w  #((Stalactite_Height/2)-(Stalactite_HitBoundsHeight/2)), PhysicsObj_BoundsTop(a0)
	move.w  #Stalactite_HitBoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Stalactite_HitBoundsHeight, PhysicsObj_BoundsHeight(a0)

	rts

StalactiteLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED Stalact,PaletteId_World0,0x0

	rts

StalactiteUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  PhysicsObj_HasPhysics(a0)
	bne    @Active

	; If player close, activate
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	sub.l  d0, d1
	ABS    d1
	cmp.l  #Stalactite_PlayerDropDistance*subpixels_per_pixel, d1
	bgt    @Inactive

	; Activate physics, update out of view
	move.b #0x1, PhysicsObj_HasPhysics(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	@Active:

	; Base functionality
	jsr    PhysicsObjUpdate

	; If hit player, deal damage
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NotHitPlayer
	PUSHL  a0
	move.l a2, a0
	move.b #Stalactite_Damage, d0
	jsr    CharacterDealDamage
	POPL   a0
	@NotHitPlayer:

	; If hit floor, done processing
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @InAir
	jsr    EntityRemoveFromUpdateList

	@InAir:
	@Inactive:

	rts
	
StalactiteSerialise:
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

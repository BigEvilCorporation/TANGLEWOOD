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

Stalactite_HitSFX			equ SFX_BoulderBreak

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
;--------------------------
	RS_ALIGN
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
	move.l #EntitySerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Stalactite_Width, Entity_Width(a0)
	move.w  #Stalactite_Height, Entity_Height(a0)
	move.w  #Stalactite_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Stalactite_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Stalactite_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	MOVE_NTSC_L Stalactite_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #0x0, PhysicsObj_CollideWalls(a0)

	; Disable physics until activated
	move.b  #0x0, PhysicsObj_HasCollision(a0)
	
	; Setup collision bounds
	move.w  #((Stalactite_Width/2)-(Stalactite_HitBoundsWidth/2)), PhysicsObj_BoundsLeft(a0)
	move.w  #((Stalactite_Height/2)-(Stalactite_HitBoundsHeight/2)), PhysicsObj_BoundsTop(a0)
	move.w  #Stalactite_HitBoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Stalactite_HitBoundsHeight, PhysicsObj_BoundsHeight(a0)

	rts

StalactiteLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED Stalact,stalactite,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts

StalactiteUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; if waiting until off screen to destroy
	tst.b  Entity_Active(a0)
	beq    @WaitOffScreen

	tst.b  PhysicsObj_HasCollision(a0)
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
	move.b #0x1, PhysicsObj_HasCollision(a0)
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

	move.b #0x0, Entity_Active(a0)

	; Remove from physics list
	bclr.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)
	jsr    PhysicsWorldRemoveObject

	; Play SFX
	PLAYSFX #Stalactite_HitSFX

	@WaitOffScreen:

	; If off screen
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @OnScreen

	; Remove from world grid, stop updating and rendering
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	jsr    EntityRemoveFromWorldGrid

	@OnScreen:

	@InAir:
	@Inactive:

	rts


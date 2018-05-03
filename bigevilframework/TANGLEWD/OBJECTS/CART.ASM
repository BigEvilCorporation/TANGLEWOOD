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
Cart_ProbeWallX			equ (Cart_Width/2)-8; Distance from centre to start wall search
Cart_MaxVelX			equ 0x080000
Cart_Accel				equ 0x000800
Cart_Decel				equ 0x000800

Cart_OccupantOffsetX	equ 0x0002

Cart_PlatformOffsetY	equ 0x0018

Cart_AnimSpeedVelDiv	equ 0x0008

Cart_SmashSFX			equ SFX_CrateSmash
Cart_HitGroundSFXVel	equ 0x0500	; Min downward velocity to play thud SFX
Cart_MaxMoveSFXTime		equ 0x0008	; Delay (uses integer part of velocity) until next squeak

Cart_WaterBobSinSpeed	equ 0x0010
Cart_WaterBobMaxHeight	equ 0x0008

;==============================================================

; Player Y offset, syncs with animation
Cart_PlayerYOffset:
	dc.w 0x0000, 0x0000, 0x0001, 0x0001
	even

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Cart_Animation       rs.b Animation_Struct_Size
Cart_Platform        rs.b Platform_Struct_Size ; Cart floor
Cart_Occupant        rs.l 1
Cart_SFXTimer        rs.w 1
Cart_WaterBobSine    rs.b 1
Cart_Smashed         rs.b 1
;--------------------------
	RS_ALIGN
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
	move.l #EntitySerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
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
	move.w  #0x0, PhysicsObj_WallBoundsLeft(a0)
	move.w  #Cart_Width, PhysicsObj_WallBoundsRight(a0)
	move.w  #Cart_ProbeWallX, PhysicsObj_WallProbeCentreX(a0)
	MOVE_NTSC_L Cart_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Cart_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #Cart_Mass, PhysicsObj_Mass(a0)
	;move.b  #0x1, PhysicsObj_CanBePushed(a0)
	;move.b  #0x1, PhysicsObj_CanBePulled(a0)
	move.b  #0x1, PhysicsObj_Buoyant(a0)
	move.l  #0x0, Cart_Occupant(a0)
	move.b  #0x0, Cart_WaterBobSine(a0)
	move.b  #0x0, Cart_Smashed(a0)
	move.w  #Cart_MaxMoveSFXTime, Cart_SFXTimer(a0)
	
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
	
	; Setup animation
	ANIM_LOAD_DEFAULT cart,roll,roll,Cart_Animation,0,1,0,0

	rts

CartLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT Cart,roll,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Reposition platform
	lea    Cart_Platform(a0), a2
	move.l Entity_WorldPosX(a0), Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), d0
	addi.l #(Cart_PlatformOffsetY*subpixels_per_pixel), d0
	move.l d0, Platform_PosY(a2)

	; Load water trail VFX
	PUSHL  a0
	lea    EntityArray_VFX+(VfxId_WaterTrail*VfxObj_Struct_Size), a0
	tst.w  SpriteObj_VRAMAddr(a0)
	bne    @VfxAllocd
	lea    vfx_spritesheet_water_trail, a2
	lea    vfx_animation_water_trail, a3
	jsr    VfxInit
	@VfxAllocd:
	POPL   a0

	rts

CartUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate

	; If got an occupant
	move.l Cart_Occupant(a0), a3
	cmpa.w #0x0, a3
	beq    @Unoccupied
	
	; If hit wall, cart smashed
	PHYSICS_HITFACINGWALL a0
	tst.b  d0
	bne    @Smashed

	;==============================================================

	; Apply acceleration
	move.w #Cart_Accel, PhysicsObj_AccelX(a0)
	move.b #0x1, SpriteObj_Priority(a0)

	;==============================================================

	; If off screen, don't do water VFX
	tst.b  SpriteObj_SpriteLinked(a0)
	beq    @EndWater

	; If on water
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1
	PUSHMW d0-d1
	add.w  Entity_Height(a0), d1	; Bottom of cart
	addi.w #0x8, d1					; Underwater test point Y
	jsr    PhysicsPointUnderwater
	POPMW  d0-d1

	tst.w  d2
	beq    @NotOnWater

	; Play splash VFX
	PUSHM  a0-a1
	move.w d4, d1					; Water surface
	lea    EntityArray_VFX+(VfxId_WaterTrail*VfxObj_Struct_Size), a0
	sub.w  Entity_Width(a0), d0		; Offset to left of cart
	sub.w  Entity_Height(a0), d1	; Offset to top of VFX
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	jsr    VfxPlay
	POPM   a0-a1

	; Play splash SFX
	PLAYSFX #SFX_CartWaterSkip

	; Increment sine step and wrap
	moveq  #0x0, d0
	move.b Cart_WaterBobSine(a0), d0
	add.b  #Cart_WaterBobSinSpeed, d0
	move.b d0, Cart_WaterBobSine(a0)

	; Get sine value from table
	lea    sintable, a2
	add.l  d0, a2
	move.b (a2), d0
	ext.w  d0
	ext.l  d0

	; To Y range
	muls   #((Cart_WaterBobMaxHeight*subpixels_per_pixel)/256), d0
	addi.l #Cart_WaterBobMaxHeight*subpixels_per_pixel, d0

	; Draw offset
	TOPIXELS d0
	move.w d0, SpriteObj_DrawOffsetY(a0)

	bra    @EndWater

	;==============================================================

	@NotOnWater:

	; Stop VFX
	PUSHM  a0-a1
	lea    EntityArray_VFX+(VfxId_WaterTrail*VfxObj_Struct_Size), a0
	jsr    VfxStop
	POPM   a0-a1

	; Reset draw offset
	move.w #0x0, SpriteObj_DrawOffsetY(a0)

	; If on rails, play move SFX
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir

	; Timing according to velocity
	move.w Cart_SFXTimer(a0), d0
	sub.w  PhysicsObj_VelX(a0), d0
	bgt    @SFXTimerRunning
	PUSHW  d0
	PLAYSFX #SFX_CartMove
	POPW   d0
	move.w #Cart_MaxMoveSFXTime, d0
	@SFXTimerRunning:
	move.w d0, Cart_SFXTimer(a0)

	@InAir:

	@EndWater:

	;==============================================================

	; Update occupant pos
	move.l Cart_Occupant(a0), a3
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1

	PUSHMW d0-d1
	move.w Entity_Width(a0), d2
	move.w Entity_Height(a0), d3
	move.w Entity_Width(a3), d4
	move.w Entity_Height(a3), d5
	lsr.w  #0x1, d2
	lsr.w  #0x1, d4
	sub.w  d2, d4
	sub.w  d4, d0
	addi.w #Cart_OccupantOffsetX, d0
	TOSUBPIXELS d0
	move.l d0, Entity_WorldPosX(a3)
	sub.w  d3, d5
	sub.w  d5, d1
	subi.w #(Cart_Height-Cart_PlatformOffsetY), d1
	add.w  SpriteObj_DrawOffsetY(a0), d1
	TOSUBPIXELS d1
	move.l d1, Entity_WorldPosY(a3)
	move.b #0x0, SpriteObj_FlippedX(a3)
	POPMW  d0-d1

	; Add animation Y offset
	move.l AnimObj_CurrentAnim(a0), a2	; Get anim
	move.b Animation_Length(a2), d6		; Get length
	move.l AnimObj_AnimSubframe(a0), d2	; Get subframe
	lsr.l  #0x8, d2						; To frames
	andi.l #0xFFFF, d2					; Wrap
	andi.l #0xFF, d6
	divs   d6, d2
	clr.w  d2
	swap   d2							; Remainder to lower word
	andi.l #0xFF, d2
	lsl.w  #0x1, d2						; To words

	lea    Cart_PlayerYOffset, a4
	add.l  d2, a4
	move.w (a4), d6
	add.w  d6, Entity_WorldPosY(a3)

	bra    @End

	;==============================================================
	
	@Smashed:
	
	; Stop VFX
	PUSHM  a0-a1
	lea    EntityArray_VFX+(VfxId_WaterTrail*VfxObj_Struct_Size), a0
	jsr    VfxStop
	POPM   a0-a1

	; Play SFX
	PLAYSFX #Cart_SmashSFX

	; Stop animation
	move.b #0x0, AnimObj_Playing(a0)

	; Load broken sprite
	SPRITE_LOAD_SHARED_VRAM Cart,broken,0,PaletteId_World0,0x0,a0

	; Reset draw offset
	move.w #0x0, SpriteObj_DrawOffsetY(a0)

	; Eject occupant
	move.l Cart_Occupant(a0), a2
	jsr    CartEjectOccupant

	; Set smashed, remove occupant
	move.b #0x1, Cart_Smashed(a0)
	move.l #0x0, Cart_Occupant(a0)
	move.b #0x0, AnimObj_UpdateOutOfView(a0)

	; Reset sprite prio
	move.b #0x0, SpriteObj_Priority(a0)

	; No longer collide with rails
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a0)

	; Re-add to world grid
	move.b #(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr    EntityAddToWorldGrid

	; Stop updating
	jsr    EntityRemoveFromUpdateList

	@Unoccupied:
	@End:

	rts

CartSetOccupant:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Occupant (Player)

	tst.l  Cart_Occupant(a0)
	bne    @AlreadyOccupied

	; Set occupant
	move.l a2, Cart_Occupant(a0)

	; Set occupant in cart
	move.b #Player_RideState_Cart, Player_RideState(a2)

	; Set occupant on floor
	move.b #0x1, PhysicsObj_OnFloor(a2)
	move.b #0x1, PhysicsObj_CloseToFloor(a2)
	move.b #0x0, Character_Jumping(a2)
	move.b #0x0, Character_Falling(a2)

	; Disable occupant collision
	move.b #0x0, PhysicsObj_HasCollision(a2)

	; Disable occupant controls
	move.b #0x0, Player_ControlEnabled(a2)

	; Disable AI jumping
	move.b #0x0, Character_CanJump(a2)

	; Clear occupant X vel and accel
	move.l #0x0, PhysicsObj_VelX(a2)
	move.w #0x0, PhysicsObj_AccelX(a2)

	; Update out of view (in case used by AI)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Disable platform
	lea    Cart_Platform(a0), a2
	LIST_REMOVE Platforms, a2, a3, a4

	; Remove from world grid (will go off screen)
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToUpdateList
	jsr    PhysicsWorldAddObject
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Re-insert at head of render list (draw on top of occupant)
	jsr    EntityRemoveFromRenderList
	move.w #0x0, d0
	LIST_INSERT_ORDERED EntityRender,a0,a3,a4,Entity_WorldGridOrder,d0
	bset   #EntityWorldGridFlag_InRenderList, Entity_WorldGridFlags(a0)

	; Start animation
	PUSHL  a1
	lea    Cart_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	@AlreadyOccupied:

	rts

CartEjectOccupant:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Occupant (Player)

	; Re-enable occupant physics, re-check floor, enable controls
	move.l Cart_Occupant(a0), a2
	move.b #0x1, PhysicsObj_HasCollision(a2)
	move.b #0x0, PhysicsObj_OnFloor(a2)
	move.b #0x0, PhysicsObj_CloseToFloor(a2)
	move.b #0x1, Player_ControlEnabled(a2)
	move.b #0x1, Character_CanJump(a2)

	; Clear riding state
	move.b #Player_RideState_None, Player_RideState(a2)

	rts
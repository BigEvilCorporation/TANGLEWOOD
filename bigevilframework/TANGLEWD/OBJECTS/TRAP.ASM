;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Trap.asm - Basic pushable box Trap
;==============================================================

; Constants
Trap_Width			equ 0x38
Trap_Height			equ 0x38
Trap_Mass			equ 0x8
Trap_MaxVelYUp		equ 0x06*subpixels_per_pixel
Trap_MaxVelYDown	equ 0x08*subpixels_per_pixel
Trap_StepHeight		equ 0x4
Trap_ProbeFloorX	equ (Trap_Width/2)	; Floor detection probe position X
Trap_ProbeFloorY	equ (Trap_Height-8)	; Floor detection probe position X

Trap_PlatformWidth			equ Trap_Width	; Physics platform width
Trap_UpperPlatformXOffset	equ (Trap_Width-Trap_PlatformWidth)/2	; Offset to platform from top of Trap
Trap_UpperPlatformYOffset	equ 0x0000	; Offset to platform from top of Trap

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Trap_UpperPlatform		rs.b Platform_Struct_Size ; Moving platform on top of Trap
;-----------------------------
Trap_Struct_Pad			rs.b 0   ; Alignment padding
Trap_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

TrapInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Trap
	
	; Set update and render routines
	move.l #TrapUpdate, Entity_UpdateRoutine(a0)
	move.l #SpriteObjDraw, Entity_RenderRoutine(a0)
	move.l #TrapSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Trap_Width, Entity_Width(a0)
	move.w  #Trap_Height, Entity_Height(a0)
	move.b  #Trap_Mass, PhysicsObj_Mass(a0)
	move.w  #Trap_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Trap_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Trap_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Trap_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #(Trap_Width/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(Trap_Width/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.l  #Trap_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Trap_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	;==============================================================
	
	; Setup platform
	lea    Trap_UpperPlatform(a0), a2
	move.l a0, Platform_Owner(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Trap_PlatformWidth, Platform_Width(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts

TrapLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED Trap,PaletteId_World0,0x0

	; Reposition platform and set velocity
	lea    Trap_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Trap_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #Trap_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)

	rts
	
TrapUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    PhysicsObjUpdate

	;==============================================================
	
	; Reposition platform and set velocity
	lea    Trap_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Trap_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #Trap_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l PhysicsObj_LastAppliedVelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_LastAppliedVelY(a0), Platform_VelY(a2)

	rts
	
TrapSerialise:
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
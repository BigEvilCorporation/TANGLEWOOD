;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   crate.asm - Basic pushable box crate
;==============================================================

; Constants
Crate_Width				equ 0x30
Crate_Height			equ 0x28
Crate_Mass				equ 0x6
Crate_MaxVelYUp			equ 0x06*subpixels_per_pixel
Crate_MaxVelYDown		equ 0x08*subpixels_per_pixel
Crate_StepHeight		equ 0x4
Crate_ProbeFloorX		equ (Crate_Width/2)		; Floor detection probe position X
Crate_ProbeFloorY		equ (Crate_Height-8)	; Floor detection probe position X
Crate_MaxVelX			equ 0x080000
Crate_Decel				equ 0x003000

Crate_PushSFXVel		equ 0x002000

Crate_PlatformWidth			equ Crate_Width	; Physics platform width
Crate_UpperPlatformXOffset	equ (Crate_Width-Crate_PlatformWidth)/2	; Offset to platform from top of Crate
Crate_UpperPlatformYOffset	equ 0x0000	; Offset to platform from top of Crate

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Crate_UpperPlatform		rs.b Platform_Struct_Size ; Moving platform on top of Crate
Crate_PushSFXPlaying	rs.b 1
;-----------------------------
Crate_Struct_Pad		rs.b 3   ; Alignment padding
Crate_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

CrateInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Crate
	
	; Set update and render routines
	move.l #CrateUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #CrateSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Crate_Width, Entity_Width(a0)
	move.w  #Crate_Height, Entity_Height(a0)
	move.b  #Crate_Mass, PhysicsObj_Mass(a0)
	MOVE_NTSC_L Crate_MaxVelX, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_ACCEL_W Crate_Decel, PhysicsObj_DecelX(a0), d0
	move.w  #Crate_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Crate_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Crate_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Crate_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Crate_Width, PhysicsObj_WallProbeRight(a0)
	MOVE_NTSC_L Crate_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Crate_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x0, Crate_PushSFXPlaying(a0)

	; HACK: Fixes off-screen crates not holding buttons down
	; TODO: Turn off-screen processing on/off if on platform
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3

	;==============================================================
	
	; Setup platform
	lea    Crate_UpperPlatform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Crate_PlatformWidth, Platform_Width(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts

CrateLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED Crate,crate,PaletteId_World0,0x0

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Reposition platform and set velocity
	lea    Crate_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Crate_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #Crate_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)

	rts
	
CrateUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    PhysicsObjUpdate

	;==============================================================
	
	; Reposition platform and set velocity
	lea    Crate_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #Crate_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #Crate_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l PhysicsObj_LastAppliedVelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_LastAppliedVelY(a0), Platform_VelY(a2)

	;==============================================================

	; Play push SFX
	tst.b   PhysicsObj_CloseToFloor(a0)
	beq     @NoPushSFX
	move.l  PhysicsObj_VelX(a0), d0
	cmp.l   #Crate_PushSFXVel, d0
	bgt     @PlayPushSFX
	cmp.l   #-Crate_PushSFXVel, d0
	blt     @PlayPushSFX
	bra     @NoPushSFX
	@PlayPushSFX:
	PLAYSFX #SFX_CratePush
	move.b  #0x1, Crate_PushSFXPlaying(a0)
	bra     @EndPushSFX

	@NoPushSFX:
	tst.b   Crate_PushSFXPlaying(a0)
	beq     @EndPushSFX
	jsr     SND_StopSFX
	move.b  #0x0, Crate_PushSFXPlaying(a0)
	@EndPushSFX:

	rts
	
CrateSerialise:
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
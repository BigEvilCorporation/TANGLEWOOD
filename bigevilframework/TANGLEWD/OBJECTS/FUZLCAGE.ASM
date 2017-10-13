;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   fuzzlcage.asm - Pushable/breakable cage containing a Fuzzl
;==============================================================

; Constants
FuzzlCage_Width				equ 0x30
FuzzlCage_Height			equ 0x28
FuzzlCage_Mass				equ 0x8
FuzzlCage_MaxVelYUp			equ 0x06*subpixels_per_pixel
FuzzlCage_MaxVelYDown		equ 0x08*subpixels_per_pixel
FuzzlCage_StepHeight		equ 0x4
FuzzlCage_ProbeFloorX		equ (FuzzlCage_Width/2)		; Floor detection probe position X
FuzzlCage_ProbeFloorY		equ (FuzzlCage_Height-8)	; Floor detection probe position X
FuzzlCage_MaxVelX			equ 0x080000
FuzzlCage_Decel				equ 0x003000

FuzzlCage_FuzzlOffsetX		equ (FuzzlCage_Width/2)-(Fuzzl_Width/2)
FuzzlCage_FuzzlOffsetY		equ 0x0015

FuzzlCage_PushSFXVel		equ 0x002000
FuzzlCage_MinSmashYVel		equ 0x050000	; Min downward velocity to crack open on floor collision 

FuzzlCage_PlatformWidth			equ FuzzlCage_Width	; Physics platform width
FuzzlCage_UpperPlatformXOffset	equ (FuzzlCage_Width-FuzzlCage_PlatformWidth)/2	; Offset to platform from top of FuzzlCage
FuzzlCage_UpperPlatformYOffset	equ 0x0000	; Offset to platform from top of FuzzlCage

;==============================================================

; Animations
FuzzlCageAnimIdx_Smash   equ 0
; --------------------------
FuzzlCageAnimIdx_Max     equ 1

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;-----------------------------
FuzzlCage_Animations		rs.b (Animation_Struct_Size*FuzzlCageAnimIdx_Max)
FuzzlCage_UpperPlatform		rs.b Platform_Struct_Size ; Moving platform on top of FuzzlCage
FuzzlCage_Fuzzl				rs.l 1	; Held Fuzzl
FuzzlCage_LastVelY			rs.l 1	; Last recorded velocity
FuzzlCage_LastOnFloor		rs.b 1	; Last recorded OnFloor flag
FuzzlCage_Smashed			rs.b 1	; Cracked open, awaiting respawn
FuzzlCage_PushSFXPlaying	rs.b 1
FuzzlCage_PlatformActive	rs.b 1
;-----------------------------
FuzzlCage_Struct_Pad		rs.b 0   ; Alignment padding
FuzzlCage_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

FuzzlCageInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addq.w #0x1, EntityCount_FuzzlCage
	
	; Set update and render routines
	move.l #FuzzlCageUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #FuzzlCageSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #FuzzlCage_Width, Entity_Width(a0)
	move.w  #FuzzlCage_Height, Entity_Height(a0)
	move.b  #FuzzlCage_Mass, PhysicsObj_Mass(a0)
	move.l  #FuzzlCage_MaxVelX, PhysicsObj_MaxVelFloorX(a0)
	move.w  #FuzzlCage_Decel, PhysicsObj_DecelX(a0)
	move.w  #FuzzlCage_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #FuzzlCage_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #FuzzlCage_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #FuzzlCage_Height, PhysicsObj_WallProbeBottom(a0)
	move.w  #(FuzzlCage_Width/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(FuzzlCage_Width/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.l  #FuzzlCage_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #FuzzlCage_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.l  #0x0, FuzzlCage_Fuzzl(a0)
	move.l  #0x0, FuzzlCage_LastVelY(a0)
	move.b  #0x1, FuzzlCage_LastOnFloor(a0)
	move.b  #0x0, FuzzlCage_Smashed(a0)
	move.b  #0x0, FuzzlCage_PushSFXPlaying(a0)
	move.b  #0x0, FuzzlCage_PlatformActive(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3

	;==============================================================
	
	; Setup platforms
	lea    FuzzlCage_UpperPlatform(a0), a2
	move.l a0, Platform_Owner(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #FuzzlCage_PlatformWidth, Platform_Width(a2)
	
	jsr    FuzzlCageActivatePlatform
	
	;==============================================================
	; Setup animations

	; Smash
	ANIM_LOAD_DEFAULT fuzlcage_fuzzl_cage,fuzlcage_smash,FuzzlCage_Animations,FuzzlCageAnimIdx_Smash,0,0,0

	rts

FuzzlCageLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT FuzlCage,PaletteId_World0,0x0

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	; Reposition platforms and set velocities
	lea    FuzzlCage_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #FuzzlCage_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #FuzzlCage_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)

	rts
	
FuzzlCageUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If sprite linked or configured to update out of view
	move.b AnimObj_UpdateOutOfView(a0), d0
	or.b   SpriteObj_SpriteLinked(a0), d0
	beq    @OutOfView
	
	; If not already smashed
	tst.b  FuzzlCage_Smashed(a0)
	bne    @Smashed
	
	; If on floor
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @InAir
	
	; On floor, check if not previously on floor
	tst.b  FuzzlCage_LastOnFloor(a0)
	bne    @PrevOnFloor
	
	; Just hit the floor, check the last recorded Y velocity
	cmp.l  #-FuzzlCage_MinSmashYVel, FuzzlCage_LastVelY(a0)
	bge    @LowVel
	
	; Smash
	jsr    FuzzlCageSmash
	
	; Bail
	bra    @Smashed

	;==============================================================
	
	@InAir:
	@PrevOnFloor:
	@LowVel:
	
	; If being pushed, set to update out of view
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	beq    @InitialState
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	@InitialState:
	
	; Record current Y vel and on OnFloor flag
	move.l PhysicsObj_VelY(a0), FuzzlCage_LastVelY(a0)
	move.b PhysicsObj_OnFloor(a0), FuzzlCage_LastOnFloor(a0)

	;==============================================================
	
	@InView:
	@NotFalling:
	
	; Base functionality
	jsr    PhysicsObjUpdate

	;==============================================================
	
	; Reposition platforms and set velocities
	lea    FuzzlCage_UpperPlatform(a0), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #FuzzlCage_UpperPlatformXOffset*subpixels_per_pixel, d0
	addi.l #FuzzlCage_UpperPlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l PhysicsObj_LastAppliedVelX(a0), Platform_VelX(a2)
	move.l PhysicsObj_LastAppliedVelY(a0), Platform_VelY(a2)

	; Reposition Fuzzl
	move.l FuzzlCage_Fuzzl(a0), a2
	cmp.l  #0x0, a2
	beq    @NoFuzzl
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	addi.l #FuzzlCage_FuzzlOffsetX*subpixels_per_pixel, d0
	addi.l #FuzzlCage_FuzzlOffsetY*subpixels_per_pixel, d1
	move.l d0, Entity_WorldPosX(a2)
	move.l d1, Entity_WorldPosY(a2)
	@NoFuzzl:
	
	@SFXEnd:
	@SFXInAir:
	@SFXPrevOnFloor:
	@SFXLowVel:

	bra    @End

	@Smashed:

	; No longer physical, just update animation
	jsr    AnimObjUpdate

	@OutOfView:
	@End:

	;==============================================================

	; Play push SFX
	tst.b   FuzzlCage_Smashed(a0)
	bne     @NoPushSFX
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
	move.b  #0x1, FuzzlCage_PushSFXPlaying(a0)
	bra     @EndPushSFX

	@NoPushSFX:
	tst.b   FuzzlCage_PushSFXPlaying(a0)
	beq     @EndPushSFX
	jsr     SND_StopSFX
	move.b  #0x0, FuzzlCage_PushSFXPlaying(a0)
	@EndPushSFX:

	rts

FuzzlCageSetFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Fuzzl

	move.l a2, FuzzlCage_Fuzzl(a0)

	PUSHL  a0
	move.l a2, a0
	jsr    FuzzlSetinCage
	POPL   a0

	rts

FuzzlCageActivatePlatform:

	tst.b  FuzzlCage_PlatformActive(a0)
	bne    @AlreadyActive
	lea    FuzzlCage_UpperPlatform(a0), a2
	LIST_APPEND_TAIL Platforms, a2, a3
	move.b #0x1, FuzzlCage_PlatformActive(a0)
	@AlreadyActive:

	rts

FuzzlCageDeactivatePlatform:

	tst.b  FuzzlCage_PlatformActive(a0)
	beq    @AlreadyInactive
	lea    FuzzlCage_UpperPlatform(a0), a2
	LIST_REMOVE Platforms, a2, a3, a4
	move.b #0x0, FuzzlCage_PlatformActive(a0)
	@AlreadyInactive:

	rts

FuzzlCageSmash:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Cancel X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)

	; Set as smashed
	move.b #0x1, FuzzlCage_Smashed(a0)

	; Can no longer be pushed
	move.b #0x0, PhysicsObj_CanBePushed(a0)

	; Disable platforms
	jsr    FuzzlCageDeactivatePlatform

	; Start smash animation
	PUSHL  a1
	lea    FuzzlCage_Animations+(Animation_Struct_Size*FuzzlCageAnimIdx_Smash)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	; Force set smash frame
	move.l #0x1<<8, AnimObj_AnimSubFrame(a0)

	; No longer update if out of view
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Play smash SFX
	PLAYSFX #SFX_CrateSmash

	; Notify Fuzzl
	PUSHL  a0
	move.l FuzzlCage_Fuzzl(a0), a0
	cmp.l  #0x0, a0
	beq    @NoFuzzl
	jsr    FuzzlRemoveFromCage
	@NoFuzzl:
	POPL   a0

	; Lose Fuzzl
	move.l #0x0, FuzzlCage_Fuzzl(a0)

	rts
	
FuzzlCageSerialise:
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
	SAVEB FuzzlCage_Smashed(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB FuzzlCage_Smashed(a0)
	
	;==============================================================
	
	@End:
	
	rts
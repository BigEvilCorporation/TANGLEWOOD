;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   plant.asm - Bounce Plant - organic springboard
;==============================================================

; Constants
BouncePlant_Width		   equ 0x18
BouncePlant_Height		   equ 0x18
BouncePlant_LaunchForce     equ 0x0A0000
BouncePlant_LaunchForceDiag equ 0x071100 ; (BouncePlant_LaunchForce * 0.707)

;==============================================================

; Animations
BouncePlantAnimIdx_Idle    equ 0
BouncePlantAnimIdx_Active  equ 1
; ------------------------------
BouncePlantAnimIdx_Max     equ 2

;==============================================================

; Orientation
BouncePlantOrient_0        equ 0
BouncePlantOrient_45       equ 1
BouncePlantOrient_90       equ 2
BouncePlantOrient_135      equ 3
BouncePlantOrient_180      equ 4
BouncePlantOrient_225      equ 5
BouncePlantOrient_270      equ 6
BouncePlantOrient_315      equ 7

;==============================================================

; Sprite flipping (XY)
BouncePlantSpriteFlip:
BouncePlantSpriteFlip_0:		dc.w 0x0001
BouncePlantSpriteFlip_45:		dc.w 0x0101
BouncePlantSpriteFlip_90:		dc.w 0x0100
BouncePlantSpriteFlip_135:		dc.w 0x0100
BouncePlantSpriteFlip_180:		dc.w 0x0000
BouncePlantSpriteFlip_225:		dc.w 0x0000
BouncePlantSpriteFlip_270:		dc.w 0x0001
BouncePlantSpriteFlip_315:		dc.w 0x0001

; Reflection masks
BouncePlantReflectMasks:
BouncePlantMask_0:		dc.l 0xFFFFFFFF, 0x00000000	; Pointing down
BouncePlantMask_45:		dc.l 0x00000000, 0x00000000
BouncePlantMask_90:		dc.l 0x00000000, 0xFFFFFFFF	; Pointing left
BouncePlantMask_135:	dc.l 0x00000000, 0x00000000
BouncePlantMask_180:	dc.l 0xFFFFFFFF, 0x00000000	; Pointing up
BouncePlantMask_225:	dc.l 0x00000000, 0x00000000
BouncePlantMask_270:	dc.l 0x00000000, 0xFFFFFFFF	; Pointing right
BouncePlantMask_315:	dc.l 0x00000000, 0x00000000

; Reflection vectors
BouncePlantReflectVels:
BouncePlantVel_0:		dc.l  0x00000000, 				   -BouncePlant_LaunchForce
BouncePlantVel_45:		dc.l -BouncePlant_LaunchForceDiag, -BouncePlant_LaunchForceDiag
BouncePlantVel_90:		dc.l -BouncePlant_LaunchForce, 		0x00000000
BouncePlantVel_135:		dc.l -BouncePlant_LaunchForceDiag, 	BouncePlant_LaunchForceDiag
BouncePlantVel_180:		dc.l  0x00000000, 					BouncePlant_LaunchForce
BouncePlantVel_225:		dc.l  BouncePlant_LaunchForceDiag, 	BouncePlant_LaunchForceDiag
BouncePlantVel_270:		dc.l  BouncePlant_LaunchForce, 		0x00000000
BouncePlantVel_315:		dc.l  BouncePlant_LaunchForceDiag, -BouncePlant_LaunchForceDiag

; Bounds
BouncePlantBounds:
BouncePlantBounds_0:	dc.w 0x0000, BouncePlant_Height/2, BouncePlant_Width, BouncePlant_Height/2
BouncePlantBounds_45:	dc.w 0x0008, 0x0000, 0x0010, 0x0010
BouncePlantBounds_90:	dc.w 0x0000, 0x0000, BouncePlant_Width/2, BouncePlant_Height
BouncePlantBounds_135:	dc.w 0x0000, 0x0000, 0x0010, 0x0010
BouncePlantBounds_180:	dc.w 0x0000, 0x0000, BouncePlant_Width, BouncePlant_Height/2
BouncePlantBounds_225:	dc.w 0x0000, 0x0008, 0x0010, 0x0010
BouncePlantBounds_270:	dc.w BouncePlant_Width/2, 0x0000, BouncePlant_Width/2, BouncePlant_Height
BouncePlantBounds_315:	dc.w 0x0008, 0x0008, 0x0010, 0x0010

; Sprite sheets
BouncePlantSpriteSheets:
BouncePlantSheet_0:
	dc.l actor_mushroom_sheet_mushroom_180_frame_0
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_size_subsprites
BouncePlantSheet_45:
	dc.l actor_mushroom_sheet_mushroom_225_frame_0
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_subsprites
BouncePlantSheet_90:
	dc.l actor_mushroom_sheet_mushroom_270_frame_0
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_size_subsprites
BouncePlantSheet_135:
	dc.l actor_mushroom_sheet_mushroom_225_frame_0
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_subsprites
BouncePlantSheet_180:
	dc.l actor_mushroom_sheet_mushroom_180_frame_0
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_180_frame_0_size_subsprites
BouncePlantSheet_225:
	dc.l actor_mushroom_sheet_mushroom_225_frame_0
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_subsprites
BouncePlantSheet_270:
	dc.l actor_mushroom_sheet_mushroom_270_frame_0
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_270_frame_0_size_subsprites
BouncePlantSheet_315:
	dc.l actor_mushroom_sheet_mushroom_225_frame_0
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_dimensions_bits
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_subsprite_pos_offsets
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_t
	dc.l actor_mushroom_sheet_mushroom_225_frame_0_size_subsprites

;==============================================================

; Not a physics obj for optimisation, steal the bounds macro
; TODO: Base Entity holds collision bounds?
BOUNCEPLANT_GETBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.w Entity_WorldPosX(\addrreg), \minreg			; Get X world position (top word = integer part)
	add.w  BouncePlant_BoundsLeft(\addrreg), \minreg	; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	add.w  BouncePlant_BoundsWidth(\addrreg), \maxreg	; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.w Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position (top word = integer part)
	add.w  BouncePlant_BoundsTop(\addrreg), \tmpreg		; Add bounding box Y offset
	move.w \tmpreg, \minreg								; To Y
	move.w \minreg, \maxreg								; Copy to bottom reg
	add.w  BouncePlant_BoundsHeight(\addrreg), \maxreg	; Add bounding box bottom
	endm

;==============================================================

; Struct
	;rsset (AnimObj_Struct_Size)
	rsset (SpriteObj_Struct_Size)
;------------------------------
;BouncePlant_Animations   rs.b (Animation_Struct_Size*BouncePlantAnimIdx_Max)
BouncePlant_BoundsLeft	 rs.w 1 ; Collision bounds offset X
BouncePlant_BoundsTop	 rs.w 1 ; Collision bounds offset Y
BouncePlant_BoundsWidth	 rs.w 1 ; Collision bounds offset width
BouncePlant_BoundsHeight rs.w 1 ; Collision bounds offset height
BouncePlant_Orientation  rs.b 1
BouncePlant_Active       rs.b 1
;------------------------------
BouncePlant_Struct_Pad   rs.b 2   ; Alignment padding
BouncePlant_Struct_Size  rs.b 0
;------------------------------

;==============================================================

BouncePlantInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	;jsr    AnimObjInit
	jsr    SpriteObjInit
	
	; Set type
	;ori.l  #entity_type_BouncePlant, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_BouncePlant
	
	; Set update and render routines
	move.l #BouncePlantUpdate, Entity_UpdateRoutine(a0)
	;move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #SpriteObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #BouncePlant_Width, Entity_Width(a0)
	move.w  #BouncePlant_Height, Entity_Height(a0)
	move.b  #BouncePlantOrient_180, BouncePlant_Orientation(a0)
	move.b  #0x0, BouncePlant_Active(a0)
	
	; Setup animation
	; TODO

	rts

BouncePlantLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #actor_mushroom_sheet_mushroom_180_VRAM_size_b, d0
	jsr    VRAM_PoolAlloc

	; Select sprite sheet based on orientation
	moveq #0x0, d1
	move.b BouncePlant_Orientation(a0), d1
	mulu   #size_long*5, d1
	lea    BouncePlantSpriteSheets, a4
	add.l  d1, a4

	move.l (a4)+, a1	; Tiles address
	move.l (a4)+, a2	; Subsprite dimensions table
	move.l (a4)+, a3	; Subsprite offsets table
	move.l (a4)+, d1	; Size (tiles)
	move.l (a4)+, d2	; Size (subsprites)
	
	; Load sprite sheet
	move.b #PaletteId_World0, d4
	move.b #0x0, d5
	jsr    SpriteObjLoad

	; Configure sprite flipping based on orientation
	moveq #0x0, d1
	move.b BouncePlant_Orientation(a0), d1
	lsl.l  #0x1, d1
	lea    BouncePlantSpriteFlip, a3
	add.l  d1, a3
	move.w (a3), d1
	move.b d1, SpriteObj_FlippedY(a0)
	lsr.w  #0x8, d1
	move.b d1, SpriteObj_FlippedX(a0)

	; Configure collision bounds based on orientation
	moveq #0x0, d1
	move.b BouncePlant_Orientation(a0), d1
	mulu   #(size_word*4), d1
	lea    BouncePlantBounds, a3
	add.l  d1, a3
	move.w (a3)+, BouncePlant_BoundsLeft(a0)
	move.w (a3)+, BouncePlant_BoundsTop(a0)
	move.w (a3)+, BouncePlant_BoundsWidth(a0)
	move.w (a3)+, BouncePlant_BoundsHeight(a0)

	POPL   a1

	rts
	
BouncePlantUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If active
	tst.b  BouncePlant_Active(a0)
	beq    @Inactive

	; Wait for active anim to finish
	tst.b  AnimObj_Playing(a0)
	bne    @StillActive

	; Back to idle
	;PUSHL  a1
	;lea    BouncePlant_Animations+(BouncePlantAnimIdx_Idle*Animation_Struct_Size)(a0), a1
	;move.b #0x0, d0
	;move.l #0x0, a2
	;move.l #0x0, a3
	;jsr    AnimObjSetAnimation
	;POPL   a1

	; Set as inactive
	move.b #0x0, BouncePlant_Active(a0)

	@Inactive:
	@StillActive:

	;jsr AnimObjUpdate
	
	rts

BouncePlant_Activate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set as active
	move.b #0x1, BouncePlant_Active(a0)

	; Play SFX
	PLAYSFX #SFX_MushroomBounce

	; Start active anim
	;PUSHL  a1
	;lea    BouncePlant_Animations+(BouncePlantAnimIdx_Active*Animation_Struct_Size)(a0), a1
	;move.b #0x0, d0
	;move.l #0x0, a2
	;move.l #0x0, a3
	;jsr    AnimObjSetAnimation
	;POPL   a1

	rts

BouncePlant_GetBounceVector:
	; a0 ---- GameObj addr
	; a1 ---- Level addr
	; d0 (l) in: X to reflect
	;         out: reflected vector
	; d1 (l) in: Y to reflect

	; Get orientation of plant
	moveq #0x0, d2
	move.b BouncePlant_Orientation(a0), d2
	lsl.l  #0x3, d2

	; Get mask for this plant orientation
	lea    BouncePlantReflectMasks, a3
	add.l  d2, a3
	move.l (a3)+, d3
	move.l (a3)+, d4

	; Mask out component to be applied
	and.l  d3, d0
	and.l  d4, d1

	; Get bounce vector for this plant orientation
	lea    BouncePlantReflectVels, a3

	add.l  d2, a3
	move.l (a3)+, d3
	move.l (a3)+, d4

	; Adjust for PAL
	PUSHM d0-d1
	MUL_NTSC_L d3, d3, d5
	MUL_NTSC_L d4, d4, d5
	POPM  d0-d1

	; Apply velocity
	add.l  d3, d0
	add.l  d4, d1

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   plant.asm - Bounce Plant - organic springboard
;==============================================================

; Constants
BouncePlant_MaxEntities	   equ 0x9
BouncePlant_Width		   equ 0x18
BouncePlant_Height		   equ 0x18
BouncePlant_LaunchForce     equ 0x0A00
BouncePlant_LaunchForceDiag equ 0x0711 ; (BouncePlant_LaunchForce * 0.707)

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

; Sprite sheet offsets
BouncePlantSpriteSheetOffs:
BouncePlantSpriteSheet_0:		dc.l spritesheet_mushroom_mushroom_180_frameoffset
BouncePlantSpriteSheet_45:		dc.l spritesheet_mushroom_mushroom_225_frameoffset
BouncePlantSpriteSheet_90:		dc.l spritesheet_mushroom_mushroom_270_frameoffset
BouncePlantSpriteSheet_135:		dc.l spritesheet_mushroom_mushroom_225_frameoffset
BouncePlantSpriteSheet_180:		dc.l spritesheet_mushroom_mushroom_180_frameoffset
BouncePlantSpriteSheet_225:		dc.l spritesheet_mushroom_mushroom_225_frameoffset
BouncePlantSpriteSheet_270:		dc.l spritesheet_mushroom_mushroom_270_frameoffset
BouncePlantSpriteSheet_315:		dc.l spritesheet_mushroom_mushroom_225_frameoffset

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
BouncePlantMask_0:		dc.l 0xFFFF0000	; Pointing down
BouncePlantMask_45:		dc.l 0x00000000
BouncePlantMask_90:		dc.l 0x0000FFFF	; Pointing left
BouncePlantMask_135:	dc.l 0x00000000
BouncePlantMask_180:	dc.l 0xFFFF0000	; Pointing up
BouncePlantMask_225:	dc.l 0x00000000
BouncePlantMask_270:	dc.l 0x0000FFFF	; Pointing right
BouncePlantMask_315:	dc.l 0x00000000

; Reflection vectors
BouncePlantReflectVels:
BouncePlantVel_0:		dc.l ((-BouncePlant_LaunchForce))
BouncePlantVel_45:		dc.l ((-BouncePlant_LaunchForceDiag<<16))|((-BouncePlant_LaunchForceDiag)&0xFFFF)
BouncePlantVel_90:		dc.l ((-BouncePlant_LaunchForce<<16))
BouncePlantVel_135:		dc.l ((-BouncePlant_LaunchForceDiag<<16))|(( BouncePlant_LaunchForceDiag)&0xFFFF)
BouncePlantVel_180:		dc.l (( BouncePlant_LaunchForce))
BouncePlantVel_225:		dc.l (( BouncePlant_LaunchForceDiag<<16))|(( BouncePlant_LaunchForceDiag)&0xFFFF)
BouncePlantVel_270:		dc.l (( BouncePlant_LaunchForce<<16))
BouncePlantVel_315:		dc.l (( BouncePlant_LaunchForceDiag<<16))|((-BouncePlant_LaunchForceDiag)&0xFFFF)

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

;==============================================================

; Not a physics obj for optimisation, steal the bounds macro
; TODO: Base Entity holds collision bounds?
BOUNCEPLANT_GETBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.l Entity_WorldPosX(\addrreg), \minreg			; Get X world position
	lsr.l  #0x8, \minreg								; To pixel space
	add.w  BouncePlant_BoundsLeft(\addrreg), \minreg	; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	add.w  BouncePlant_BoundsWidth(\addrreg), \maxreg	; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.l Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position
	lsr.l  #0x8, \tmpreg								; To pixel space
	add.w  BouncePlant_BoundsTop(\addrreg), \tmpreg		; Add bounding box Y offset
	move.w \tmpreg, \minreg								; To Y
	move.w \minreg, \maxreg								; Copy to bottom reg
	add.w  BouncePlant_BoundsHeight(\addrreg), \maxreg	; Add bounding box bottom
	endm

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;------------------------------
BouncePlant_Animations   rs.b (Animation_Struct_Size*BouncePlantAnimIdx_Max)
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
	jsr    AnimObjInit
	
	; Set type
	;ori.l  #entity_type_BouncePlant, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_BouncePlant
	
	; Set update and render routines
	move.l #BouncePlantUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
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
	move.l a0, a3
	add.l  #BouncePlant_Animations, a3
	
	; Idle
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Idle), a3
	;move.w #spritesheet_plant_sheet_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_plant_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_plant_idle_speed, Animation_Speed(a3)
	;move.b #spriteanim_plant_idle_numframes, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	;
	;; Active
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*BouncePlantAnimIdx_Active), a3
	;move.w #spritesheet_plant_sheet_frameoffset, Animation_FirstFrameOffset(a3)
	;move.l #spriteanim_plant_active_track_frames, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #spriteanim_plant_active_speed, Animation_Speed(a3)
	;move.b #spriteanim_plant_active_numframes, Animation_Length(a3)
	;move.b #0x0, Animation_Looping(a3)
	;
	;; Start idle animation
	;PUSHL  a1
	;move.l a0, a1
	;add.l  #BouncePlant_Animations, a1
	;move.l #(BouncePlantAnimIdx_Idle*Animation_Struct_Size), d1
	;add.l  d1, a1
	;jsr    AnimObjSetAnimation
	;POPL   a1

	rts

BouncePlantLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1

	; Alloc VRAM
	move.w #sprite_mushroom_size_b, d0
	jsr    VRAM_PoolAlloc

	; Select sprite sheet based on orientation
	clr.l  d1
	move.b BouncePlant_Orientation(a0), d1
	lsl.l  #0x2, d1
	lea    BouncePlantSpriteSheetOffs, a3
	add.l  d1, a3
	move.l (a3), d1
	mulu   #sprite_mushroom_size_b, d1
	move.l #spritesheets_mushroom, a1
	add.l  d1, a1
	
	; Load sprite sheet
	lea    sprite_mushroom_subsprite_dimensions_bits, a2
	lea    sprite_mushroom_subsprite_pos_offsets, a3
	lea    sprite_mushroom_numtiles_per_subsprite, a4
	move.l #sprite_mushroom_size_t, d1
	move.b #sprite_mushroom_size_subsprites, d2
	move.w #sprite_mushroom_widthheight_subsprites, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad

	; Configure sprite flipping based on orientation
	clr.l  d1
	move.b BouncePlant_Orientation(a0), d1
	lsl.l  #0x1, d1
	lea    BouncePlantSpriteFlip, a3
	add.l  d1, a3
	move.w (a3), d1
	move.b d1, SpriteObj_FlippedY(a0)
	lsr.w  #0x8, d1
	move.b d1, SpriteObj_FlippedX(a0)

	; Configure collision bounds based on orientation
	clr.l  d1
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
	cmp.b  #0x0, BouncePlant_Active(a0)
	beq    @Inactive

	; Wait for active anim to finish
	cmp.b  #0x0, AnimObj_Playing(a0)
	bne    @StillActive

	; Back to idle
	;PUSHL  a1
	;move.l a0, a1
	;add.l  #BouncePlant_Animations, a1
	;move.l #(BouncePlantAnimIdx_Idle*Animation_Struct_Size), d1
	;add.l  d1, a1
	;jsr    AnimObjSetAnimation
	;POPL   a1

	; Set as inactive
	move.b #0x0, BouncePlant_Active(a0)

	@Inactive:
	@StillActive:
	
	rts

BouncePlant_Activate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set as active
	move.b #0x1, BouncePlant_Active(a0)

	; Play SFX
	PLAYSFX_HIGHPRIO #SFX_MushroomBounce

	; Start active anim
	;PUSHL  a1
	;move.l a0, a1
	;add.l  #BouncePlant_Animations, a1
	;move.l #(BouncePlantAnimIdx_Active*Animation_Struct_Size), d1
	;add.l  d1, a1
	;jsr    AnimObjSetAnimation
	;POPL   a1

	rts

BouncePlant_GetBounceVector:
	; a0 ---- GameObj addr
	; a1 ---- Level addr
	; d0 (ww) in: XY vector to reflect
	;         out: reflected vector

	; Get orientation of plant
	clr.l  d1
	move.b BouncePlant_Orientation(a0), d1
	lsl.l  #0x2, d1

	; Get mask for this plant orientation
	lea    BouncePlantReflectMasks, a3
	add.l  d1, a3
	move.l (a3), d2

	; Get bounce vector for this plant orientation
	lea    BouncePlantReflectVels, a3
	add.l  d1, a3
	move.l (a3), d3

	; Mask out component to be applied
	and.l  d2, d0

	; Apply velocity
	add.l  d3, d0

	rts
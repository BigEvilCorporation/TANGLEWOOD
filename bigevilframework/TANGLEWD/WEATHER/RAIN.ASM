;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   rain.asm - Rain, reacts to wind
;===============================================================

RainSpriteWidth			equ 0x20
RainSpriteHeight		equ 0x20
RainSpriteGridX			equ 0x08
RainSpriteGridY			equ 0x04
RainNumSprites			equ RainSpriteGridX*RainSpriteGridY
RainSpriteRandOffsetX	equ ((screen_width*2)/RainSpriteGridX)
RainSpriteRandOffsetY	equ (screen_height/RainSpriteGridY)
RainSpriteStartOffsetX	equ ((screen_width*2)/RainSpriteGridX)

	rsset 0
RainParams_VelX				rs.l 1
RainParams_VelY				rs.l 1
RainParams_MinWindStrength	rs.l 1
RainParams_AnimFrame		rs.b 1
; ----------------------------
RainParams_Struct_Pad		rs.b 1
RainParams_Struct_Size		rs.b 0

Rain_ParamsListCount	equ 0x3
Rain_ParamsList:

Rain_LowWind:
	dc.l -0x00080000
	dc.l  0x00100000
	dc.l  0x00000000
	dc.b  0x0
	even

Rain_MediumWind:
	dc.l -0x00100000
	dc.l  0x00100000
	dc.l  0x00000800
	dc.b  0x1
	even

Rain_HighWind:
	dc.l -0x00180000
	dc.l  0x00100000
	dc.l  0x00200A00
	dc.b  0x2
	even

;==============================================================
; Rain VFX
;==============================================================

RainInit:
	; a1 --- Level addr

	; Base init, load sprite sheet
	lea    EntityArray_VFX+(VfxId_RainLight*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_rain_light, a2
	lea    vfx_animation_rain_light, a3
	jsr    VfxInit

	move.l #RainUpdate, Entity_UpdateRoutine(a0)
	move.l #RainDraw, Entity_RenderRoutine(a0)

	; Play animation
	lea    VfxObj_Animation(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation

	; Position all
	PUSHL  a0
	lea    RainSpritePositions, a0
	move.l #RainNumSprites-1, d0
	@SpriteLp:
	PUSHM  d0/a0
	jsr    RainSpriteInitPosition
	POPM   d0/a0
	lea    (size_long*2)(a0), a0
	dbra   d0, @SpriteLp
	POPL   a0

	; Set default params
	lea    Rain_LowWind, a2
	jsr    RainSetParams

	rts

RainSetParams:
	; a1 --- Level addr
	; a2 --- Params addr

	; Set params
	move.l a2, RainParams

	; Set sprite frame
	lea    EntityArray_VFX+(VfxId_RainLight*VfxObj_Struct_Size), a4
	clr.l  d0
	move.b RainParams_AnimFrame(a2), d0
	lsl.l  #0x8, d0
	move.l d0, AnimObj_AnimSubFrame(a4)
	move.b #0x1, AnimObj_UploadFrame(a4)

	rts

RainSpriteInitPosition:
	; a0 --- Sprite pos addr
	; d0 (b) Sprite index

	andi.l #0xFF, d0
	move.l d0, d1

	; Get fixed pos X
	divu   #RainSpriteGridX, d0
	move.w #0x0, d0
	swap   d0

	; Get fixed pos Y
	divu   #RainSpriteGridX, d1
	andi.l #0xFFFF, d1

	mulu   #((screen_width*2)/RainSpriteGridX), d0
	mulu   #(screen_height/RainSpriteGridY), d1
	addi.w #RainSpriteStartOffsetX, d0

	TOSUBPIXELS d0
	TOSUBPIXELS d1

	; Add rand offset
	PUSHM  d0-d2
	clr.l  d0
	move.l #-(RainSpriteRandOffsetX/2), d1
	move.l #(RainSpriteRandOffsetX/2), d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	add.l  d3, d0

	PUSHM  d0-d2
	clr.l  d0
	move.l #0x0, d1
	move.l #RainSpriteRandOffsetY, d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	sub.l  d3, d1

	; Set pos
	move.l d0, 0(a0)
	move.l d1, 4(a0)

	rts

RainSpriteReposition:
	; d0 (b) Sprite index
	; d2 (l) X pos (screen space)
	; d3 (l) Y pos (screen space)

	; Get fixed X pos
	andi.l #0xFF, d0
	divu   #RainSpriteGridX, d0
	move.w #0x0, d0
	swap   d0

	mulu   #((screen_width*2)/RainSpriteGridX), d0
	addi.w #RainSpriteStartOffsetX, d0

	TOSUBPIXELS d0

	; Y offset
	move.l #0x0, d1

	; Add rand offset
	PUSHM  d0-d2
	clr.l  d0
	move.l #-(RainSpriteRandOffsetX/2), d1
	move.l #(RainSpriteRandOffsetX/2), d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	add.l  d3, d0

	PUSHM  d0-d2
	clr.l  d0
	move.l #0x0, d1
	move.l #RainSpriteRandOffsetY, d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	sub.l  d3, d1

	; Set pos
	move.l d0, d2
	move.l d1, d3

	rts

RainUpdate:
	; a1 --- Level addr

	; TODO: Do this in WindSetParams

	; Get current wind velocity, abs
	lea    PhysicsWorld, a2
	move.l PhysicsWorld_Wind(a2), d0
	tst.l   d0
	bgt     @Pos
	neg.l   d0
	@Pos:

	; Clear chosen rain params
	move.l  #0x0, a3

	; Find rain params matching current wind strength
	move.w  #Rain_ParamsListCount-1, d1
	lea     Rain_ParamsList, a2
	@ParamsLp:
	move.l  RainParams_MinWindStrength(a2), d3
	cmp.l   d0, d3
	blt     @Next
	move.l  a2, a3
	bra     @End
	@Next:
	lea     RainParams_Struct_Size(a2), a2
	dbra    d1, @ParamsLp
	
	@End:
	cmp.l   #0x0, a3
	beq     @NoChange
	
	; Set new rain params
	cmp.l   RainParams, a3
	beq     @NoChange
	move.l  a3, a2
	jsr     RainSetParams

	@NoChange:

	rts

RainDraw:
	; a1 --- Level addr

	lea    RainSpritePositions, a2
	move.l #RainNumSprites-1, d0
	@SpriteLp:

	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites

	; Apply velocity
	move.l 0(a2), d2
	move.l 4(a2), d3
	move.l RainParams, a3
	move.l RainParams_VelX(a3), d4
	move.l RainParams_VelY(a3), d5
	add.l  RainParams_VelX(a3), d2
	add.l  RainParams_VelY(a3), d3

	; If out of bounds
	cmp.l  #screen_height*subpixels_per_pixel, d3
	blt    @WithinBounds

	; If disabled, leave out of view
	tst.b  Entity_Active(a0)
	beq    @NextSprite

	; Reposition sprite
	PUSHL  d0
	jsr    RainSpriteReposition
	POPL   d0
	bra    @WithinBounds

	@WithinBounds:

	; Store
	move.l d2, 0(a2)
	move.l d3, 4(a2)

	; Add camera scroll + sprite border
	move.l (WorldScrollX), d4
	move.l (WorldScrollY), d5
	addi.l #vdp_sprite_border_x*subpixels_per_pixel, d4
	addi.l #vdp_sprite_border_y*subpixels_per_pixel, d5
	add.l  d4, d2
	add.l  d5, d3

	; Set pos
	move.l d2, Entity_WorldPosX(a0)
	move.l d3, Entity_WorldPosY(a0)

	; Draw
	PUSHM  d0-d3/a0-a2
	jsr    AnimObjDraw
	POPM   d0-d3/a0-a2

	; Next
	@NextSprite:
	lea    (size_long*2)(a2), a2

	dbra   d0, @SpriteLp

	@OutOfSprites:

	rts
;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   rain.asm - Rain, reacts to wind
;===============================================================

RainSpriteWidth			equ 0x20
RainSpriteHeight		equ 0x20
RainSpriteGridX			equ 0x06
RainSpriteGridY			equ 0x03
RainNumSprites			equ RainSpriteGridX*RainSpriteGridY
RainSpriteRandOffsetX	equ ((screen_width*2)/RainSpriteGridX)
RainSpriteRandOffsetY	equ (screen_height/RainSpriteGridY)
RainSpriteStartOffsetX	equ ((screen_width*2)/RainSpriteGridX)

WindSFXRainFrameShort	equ 0x1
WindSFXRainFrameLong	equ 0x2

	rsset 0
RainParams_VelX				rs.l 1
RainParams_VelY				rs.l 1
RainParams_MinWindStrength	rs.l 1
RainParams_AnimFrame		rs.b 1
; ----------------------------
	RS_ALIGN
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

	; Disable SFX by default
	move.b #0x0, WindSFXEnabled

	; Play animation
	lea    VfxObj_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
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
	moveq #0x0, d0
	move.b RainParams_AnimFrame(a2), d0
	move.b d0, d1
	lsl.l  #0x8, d0
	move.l d0, AnimObj_AnimSubFrame(a4)
	move.b #0x1, AnimObj_UploadFrame(a4)

	; TODO: Belongs in wind code

	; Play SFX depending on strength
	tst.b  WindSFXEnabled
	beq    @EndSFX
	cmp    #WindSFXRainFrameLong, d1
	beq    @LongSFX
	cmp    #WindSFXRainFrameShort, d1
	beq    @ShortSFX
	bra    @EndSFX

	@LongSFX:
	PLAYSFX #SFX_Wind_Long
	bra    @EndSFX

	@ShortSFX:
	PLAYSFX #SFX_Wind_Short

	@EndSFX:

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
	moveq #0x0, d0
	move.l #-(RainSpriteRandOffsetX/2), d1
	move.l #(RainSpriteRandOffsetX/2), d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	add.l  d3, d0

	PUSHM  d0-d2
	moveq #0x0, d0
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
	; d0 (l) OUT: X pos (screen space)
	; d1 (l) OUT: Y pos (screen space)
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
	moveq #0x0, d0
	move.l #-(RainSpriteRandOffsetX/2), d1
	move.l #(RainSpriteRandOffsetX/2), d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	add.l  d3, d0

	PUSHM  d0-d2
	moveq #0x0, d0
	move.l #0x0, d1
	move.l #RainSpriteRandOffsetY, d2
	jsr    RND_GenerateWordClamped
	move.l d0, d3
	TOSUBPIXELS d3
	POPM   d0-d2

	sub.l  d3, d1

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
	cmpa.w #0x0, a3
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
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	; Default draw to update anim
	jsr    AnimObjDraw

	PUSHMW d2-d5
	
	move.l RainParams, a3
	move.l RainParams_VelX(a3), d2
	move.l RainParams_VelY(a3), d3

	lea    RainSpritePositions, a2
	move.l #RainNumSprites-1, d6
	@SpriteLp:

	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites

	; Apply velocity
	move.l (a2), d0
	add.l  d2, d0
	move.l d0, (a2)+
	
	move.l (a2), d1
	add.l  d3, d1
	move.l d1, (a2)+

	; If out of bounds
	cmp.l  #(screen_height+vdp_sprite_border_y)*subpixels_per_pixel, d1
	blt    @WithinBounds

	; If disabled, leave out of view
	tst.b  Entity_Active(a0)
	beq    @NextSprite

	; Reposition sprite
	PUSHM  d2-d3
	move.l d0, d2
	move.l d1, d3
	move.w d6, d0
	jsr    RainSpriteReposition
	POPM   d2-d3
	
	; Store
	move.l d0, -8(a2)
	move.l d1, -4(a2)

	@WithinBounds:

	; Draw
	PUSHM  d2-d3/d6/a2-a3

	; To sprite space
	TOPIXELS d0
	TOPIXELS d1
	move.b #0x0, d2
	jsr    SpriteObjAllocSprite

	POPM   d2-d3/d6/a2-a3

	; Next
	@NextSprite:
	dbra   d6, @SpriteLp

	@OutOfSprites:

	POPMW  d2-d5

	rts
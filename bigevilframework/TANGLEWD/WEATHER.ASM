;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   weather.asm - Wind, rain, thunder/lightning management
;===============================================================

WIND_DEBUG	equ 0

RainSpriteWidth			equ 0x20
RainSpriteHeight		equ 0x20
RainSpriteGridX			equ 0x08
RainSpriteGridY			equ 0x04
RainNumSprites			equ RainSpriteGridX*RainSpriteGridY
RainVelX				equ -0x00080000
RainVelY				equ 0x00080000
RainSpriteRandOffsetX	equ ((screen_width*2)/RainSpriteGridX)
RainSpriteRandOffsetY	equ (screen_height/RainSpriteGridY)
RainSpriteStartOffsetX	equ ((screen_width*2)/RainSpriteGridX)

;==============================================================
; Rain VFX
;==============================================================

RainInit:
	; a1 --- Level addr

	; Base init, load sprite sheet
	move.l #EntityArray_VFX+(VfxId_RainLight*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_rain_light, a2
	lea    vfx_animation_rain_light, a3
	jsr    VfxInit

	move.l #RainUpdate, Entity_UpdateRoutine(a0)
	move.l #RainDraw, Entity_RenderRoutine(a0)

	; Position all
	lea    RainSpritePositions, a0
	move.l #RainNumSprites-1, d0
	@SpriteLp:
	PUSHM  d0/a0
	jsr    RainSpriteInitPosition
	POPM   d0/a0
	add.l  #size_long*2, a0
	dbra   d0, @SpriteLp

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
	add.w  #RainSpriteStartOffsetX, d0

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
	add.w  #RainSpriteStartOffsetX, d0

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
	rts

RainDraw:

	lea    RainSpritePositions, a2
	move.l #RainNumSprites-1, d0
	@SpriteLp:

	cmp.w  #vdp_max_sprites-1, next_sprite_index
	beq    @OutOfSprites

	; Apply velocity
	move.l 0(a2), d2
	move.l 4(a2), d3
	add.l  #RainVelX, d2
	add.l  #RainVelY, d3

	; If out of bounds, reposition
	cmp.l  #screen_height*subpixels_per_pixel, d3
	blt    @WithinBounds
	PUSHL  d0
	jsr    RainSpriteReposition
	POPL   d0
	@WithinBounds:

	; Store
	move.l d2, 0(a2)
	move.l d3, 4(a2)

	; Add camera scroll + sprite border
	move.l (WorldScrollX), d4
	move.l (WorldScrollY), d5
	add.l  #vdp_sprite_border_x*subpixels_per_pixel, d4
	add.l  #vdp_sprite_border_y*subpixels_per_pixel, d5
	add.l  d4, d2
	add.l  d5, d3

	; Set pos
	move.l d2, Entity_WorldPosX(a0)
	move.l d3, Entity_WorldPosY(a0)

	; Draw
	PUSHM  d0-d3/a0-a2
	jsr    SpriteObjDraw
	POPM   d0-d3/a0-a2

	; Next
	add.l  #size_long*2, a2

	dbra   d0, @SpriteLp

	@OutOfSprites:

	rts

WindSetStrength:
	; d0 (l) Strength
	; d1 (w) Lerp speed

	lea    PhysicsWorld, a2
	move.l d0, PhysicsWorld_Wind(a2)

	rts

WindSetRandInterval:
	; d0 (l) Min strength
	; d1 (l) Max Strength
	; d2 (w) Min duration (frames)
	; d3 (w) Max duration (frames)
	; d4 (w) Min delay (frames)
	; d5 (w) Max delay (frames)
	; d6 (w) Acceleration

	rts

ThunderSetInterval:
	; d0 (w) Interval (frames)
	; d1 (w) Distance (flash to sound delay, frames)

	rts

ThunderFlash:
	; d0 (w) Distance

	rts

ThunderSound:
	; d0 (w) Distance

	rts

WeatherUpdate:

	; If active, wait for duration to elapse
	move.w (WindDurationTimer), d0
	cmp.w  #0x0, d0
	beq    @WindInactive
	sub.w  #0x1, d0
	move.w d0, WindDurationTimer
	cmp.w  #0x0, d0
	bne    @WindActive

	; Duration elapsed, stop wind
	move.w #0x0, WindMaxStrength
	lea    PhysicsWorld, a2
	move.l #0x0, PhysicsWorld_Wind(a2)

	; Calc rand delay timer
	move.w (WindRandDelayMin), d1
	move.w (WindRandDelayMax), d2
	jsr    RND_GenerateWordClamped
	move.w d0, WindDelayTimer

	bra    @EndWind

	@WindInactive:

	; Wind inactive, wait for delay to elapse
	move.w (WindDelayTimer), d0
	cmp.w  #0x0, d0
	beq    @EndWind
	sub.w  #0x1, d0
	move.w d0, WindDelayTimer
	cmp.w  #0x0, d0
	bne    @WindDelay
	
	; Delay elapsed, calc rand strength
	move.w (WindRandStrengthMin), d1
	move.w (WindRandStrengthMax), d2
	jsr    RND_GenerateWordClamped
	move.w d0, WindMaxStrength

	; Calc rand duration
	move.w (WindRandDurationMin), d1
	move.w (WindRandDurationMax), d2
	jsr    RND_GenerateWordClamped
	move.w d0, WindDurationTimer

	@WindActive:
	@WindDelay:
	@EndWind:
	
	; Apply wind acceleration, clamp to max strength
	lea    PhysicsWorld, a2
	move.w (WindAccel), d1				; Get accel and max strength
	move.w (WindMaxStrength), d2
	ext.l  d1							; Sign extend
	ext.l  d2
	cmp.l  #0x0, d2						; If 0 strength, decelerate
	beq    @DecelWind
	move.l PhysicsWorld_Wind(a2), d0	; Get current wind strength
	MATCH_SIGN d2, d1					; Match sign of strength and accel
	add.l  d1, d0						; Apply acceleration
	move.l d2, d3						; Clamp from -maxStrength to maxStrength
	neg.l  d3
	CLAMP_UNORDERED d0, d3, d2, d4
	move.l d0, PhysicsWorld_Wind(a2)	; Apply wind
	bra    @EndWindAccel
	@DecelWind:

	@EndWindAccel:

	IF WIND_DEBUG

	move.w (WindMaxStrength), d0
	move.l #((8*8)<<16)|(4*8), d1
	jsr    DBG_DrawWord

	lea    PhysicsWorld, a2
	move.l PhysicsWorld_Wind(a2), d0
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawLong

	move.w (WindDurationTimer), d0
	move.l #((8*8)<<16)|(6*8), d1
	jsr    DBG_DrawWord

	ENDIF

	rts
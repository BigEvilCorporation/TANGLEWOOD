;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   weather.asm - Wind, rain, thunder/lightning management
;===============================================================

WIND_DEBUG	equ 1

RainSpriteWidth		equ 0x20
RainSpriteHeight	equ 0x20
RainSpriteMarginX	equ 0x20
RainSpriteMarginY	equ 0x20
RainNumSpritesX		equ (screen_width/(RainSpriteWidth+RainSpriteMarginX))+1
RainNumSpritesY		equ (screen_height/RainSpriteHeight)+1
RainVelX			equ 0x1
RainVelY			equ 0x1

;==============================================================
; Rain VFX
;==============================================================
	rsset VfxObj_Struct_Size
;---------------------------------

;---------------------------------
Rain_Struct_Pad			rs.b 0
Rain_Struct_Size		rs.b 0
;---------------------------------

RainInit:
	; a0 --- Rain obj addr
	; a1 --- Level addr

	; Base init, load sprite sheet
	move.l #EntityArray_VFX+(VfxId_RainHeavy*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_rain_heavy, a2
	lea    vfx_animation_rain_heavy, a3
	jsr    VfxInit

	move.l #RainUpdate, Entity_UpdateRoutine(a0)
	move.l #RainDraw, Entity_RenderRoutine(a0)

	rts

RainUpdate:
	rts

RainDraw:

	; Rain scroll modulus
	clr.l  d1
	move.w (RainScrollY), d1
	divu   #RainSpriteHeight, d1
	swap   d1
	TOSUBPIXELS d1

	clr.l  d5
	move.w (RainScrollX), d5
	divu   #RainSpriteWidth, d5
	swap   d5
	TOSUBPIXELS d5

	; Camera Y scroll + rain Y scroll + sprite border
	move.l (WorldScrollY), d3
	add.l  #(vdp_sprite_border_y-RainSpriteHeight)*subpixels_per_pixel, d3
	add.l  d1, d3

	; Loop Y
	move.l #RainNumSpritesY-1, d0
	
	; Checkerboard Y
	btst   #0x0, RainCheckerboardOdd
	beq    @EvenColumn
	add.w  #0x1, d0
	@EvenColumn:
	add.b  #0x1, RainCheckerboardOdd

	@LoopY:

		; Camera X scroll + rain X scroll + sprite border
		move.l (WorldScrollX), d2
		add.l  #(vdp_sprite_border_x-RainSpriteWidth)*subpixels_per_pixel, d2
		sub.l  d5, d2

		; Checkerboard X
		btst   #0x0, d0
		beq    @EvenRow
		add.l  #((RainSpriteWidth+RainSpriteMarginX)/2)*subpixels_per_pixel, d2
		@EvenRow:

		; Loop X
		move.l #RainNumSpritesX-1, d1
		@LoopX:

			cmp.w  #vdp_max_sprites-1, next_sprite_index
			beq    @OutOfSprites

			; Set pos
			move.l d2, Entity_WorldPosX(a0)
			move.l d3, Entity_WorldPosY(a0)

			; Draw
			PUSHM  d0-d3
			jsr    SpriteObjDraw
			POPM   d0-d3

		add.l  #(RainSpriteWidth+RainSpriteMarginX)*subpixels_per_pixel, d2
		dbra   d1, @LoopX

	add.l  #(RainSpriteHeight)*subpixels_per_pixel, d3
	dbra   d0, @LoopY

	@OutOfSprites:

	add.w  #RainVelX, RainScrollX
	add.w  #RainVelY, RainScrollY

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

	; Random direction
	move.w #50, d0
	jsr    RND_Chance
	cmp.b  #0x0, d0
	beq    @PosDir
	neg.w  WindMaxStrength
	@PosDir:

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
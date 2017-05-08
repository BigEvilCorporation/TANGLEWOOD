;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   weather.asm - Wind, rain, thunder/lightning management
;===============================================================

WIND_DEBUG	equ 1

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
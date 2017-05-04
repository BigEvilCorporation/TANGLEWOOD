;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   weather.asm - Wind, rain, thunder/lightning management
;===============================================================

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
	; d6 (w) Lerp speed

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
	move.l #0x0, d0
	move.w #0x0, d1
	jsr    WindSetStrength

	; Set delay timer
	move.w (WindDelay), WindDelayTimer
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
	
	; Delay elapsed, start wind
	move.l #-0x00001000, d0
	move.w #0x0, d1
	jsr    WindSetStrength

	; Set duration timer
	move.w (WindDuration), WindDurationTimer

	@WindActive:
	@WindDelay:
	@EndWind:
	

	rts
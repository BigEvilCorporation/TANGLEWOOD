;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   tod.asm - Realtime day/night cycle, puts CryEngine to shame*
;===============================================================	

UpdateTimeOfDay:

	cmp.b  #0x0, (TimeOfDayEnabled)
	beq    @TODDisabled

	; Check if TOD delay finished
	move.w (TimeOfDayShiftDelay), d0
	add.w  #0x1, d0
	move.w d0, TimeOfDayShiftDelay
	cmp.w  #TimeOfDayCycleDelay, d0
	blt    @NoTODChange
	move.w #0x0, TimeOfDayShiftDelay
	
	; Cycle time of day
	move.b (TimeOfDay), d0
	add.b  #0x1, d0
	cmp.b  #TimeOfDay_NumCycles, d0
	bne    @NoWrap
	move.b #0x0, d0
	@NoWrap:
	move.b d0, TimeOfDay
	
	andi.l #0x000000FF, d0
	mulu.w #size_long, d0	; Bytes to longs
	lea    TimeOfDayPalettes, a0
	add.l  d0, a0			; Get pointer address
	move.l (a0), a0			; Get palette address

	; Start palette lerp
	move.b #PaletteId_World0, d0
	move.w #TimeOfDayCycleSpeed, d1
	move.b #0x0, d2
	move.b #0x6, d3
	
	jsr PaletteLerpStart
	
	@TODDisabled:
	@NoTODChange:
	
	rts
	
	
	
	
;   *only on Opposite Day

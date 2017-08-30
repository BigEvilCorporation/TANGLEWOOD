;===============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;===============================================================
;   http://www.bigevilcorporation.co.uk
;===============================================================
;   tod.asm - Realtime day/night cycle, puts CryEngine to shame*
;===============================================================

TODMaxColours	equ 0xF

UpdateTimeOfDay:

	tst.b  (TimeOfDayEnabled)
	beq    @TODDisabled

	; Check if TOD delay finished
	move.w (TimeOfDayShiftDelay), d0
	add.w  #0x1, d0
	move.w d0, TimeOfDayShiftDelay
	cmp.w  #TimeOfDayCycleDelay, d0
	blt    @NoTODChange
	move.w #0x0, TimeOfDayShiftDelay
	
	; Cycle time of day
	jsr    CycleTimeOfDay
	
	@TODDisabled:
	@NoTODChange:
	
	rts
	
CycleTimeOfDay:

	move.b (TimeOfDay), d0
	add.b  #0x1, d0
	cmp.b  #TimeOfDay_NumCycles, d0
	bne    @NoWrap
	move.b #0x0, d0
	@NoWrap:
	
	jsr SetTimeOfDay
	
	rts
	
SetTimeOfDay:
	; d0 (b) Time of Day
	
	move.b d0, TimeOfDay

	; TODO: Bit messy, shove this into an array or something
	cmp.b  #TimeOfDay_Night, d0
	bne    @NotNight
	PUSHM  a0/d0-d1
	lea    track_bgm_night, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	@NotNight:

	cmp.b  #TimeOfDay_Dusk, d0
	bne    @NotDusk
	PUSHM  a0/d0-d1
	lea    track_bgm_dusk, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	@NotDusk:
	
	andi.l #0x000000FF, d0
	lsl.w  #0x2, d0			; Bytes to longs
	lea    TimeOfDayPalettes, a0
	add.l  d0, a0			; Get pointer address
	move.l (a0), a0			; Get palette address

	; Start palette lerp
	move.b #PaletteId_World0, d0
	move.w #TimeOfDayCycleSpeed, d1
	move.b #0x1, d2
	move.b #0x0, d3
	move.b #TODMaxColours, d4
	
	jsr PAL_LerpStart

	rts
	
	
;   *only on Opposite Day

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   audio.asm - footsteps, ambience, etc
;==============================================================

AmbientSFXRandTimerMin	equ 0x0200
AmbientSFXRandTimerMax	equ 0x0400

UpdateAmbientAudio:

	; Chekc if timer running
	cmp.w #0x0, AmbientSFXTimer
	bne   @TimerRunning
	
	; Timer elapsed, get random SFX index
	jsr    RandLong				; Rand long
	andi.l #0xFFFF, d0			; Avoid overflow
	divu   #AmbientSFXCount, d0	; Div / range
	clr.w  d0					; Clear exponent
	swap   d0					; Remainder to lower word
	mulu   #size_long, d0		; To pointer offset
	
	; Get SFX pointer
	lea    AmbientSFX, a0
	add.l  d0, a0
	move.l (a0), a0

	; Play
	PLAYSFX a0
	
	; Get next random time
	jsr    RandLong				; Rand long
	andi.l #0xFFFF, d0			; Avoid overflow
	divu   #(AmbientSFXRandTimerMax-AmbientSFXRandTimerMin), d0	; Div / range
	clr.w  d0					; Clear exponent
	swap   d0					; Remainder to lower word
	move.w d0, AmbientSFXTimer	; To timer
	
	@TimerRunning:
	sub.w #0x1, AmbientSFXTimer

	rts
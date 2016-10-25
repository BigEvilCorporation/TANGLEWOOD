;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   audio.asm - footsteps, ambience, etc
;==============================================================

AmbientSFXRandTimerMin	equ 0x0600
AmbientSFXRandTimerMax	equ 0x0A00

UpdateBGMTimer:

	; If already zero, not running
	cmp.w #0x0, BGMOffTimer
	beq   @TimerElapsed
	
	; Decrement timer and check again
	sub.w #0x1, BGMOffTimer
	cmp.w #0x0, BGMOffTimer
	bne   @TimerElapsed
	
	; Elapsed this frame, stop BGMOffTimer
	IFND DEBUG
	jsr   Echo_StopBGM
	ENDIF
	
	@TimerElapsed:
	@TimerRunning:
	

UpdateAmbientAudio:

	; Chech if timer running
	cmp.w #0x0, AmbientSFXTimer
	bne   @TimerRunning
	
	; Timer elapsed, get random SFX index
	jsr    RND_GenerateLong		; Rand long
	andi.l #0xFFFF, d0			; Avoid overflow
	divu   #AmbientSFXCount, d0	; Div / range
	clr.w  d0					; Clear exponent
	swap   d0					; Remainder to lower word
	lsl.w  #0x2, d0				; To pointer offset
	
	; Get SFX pointer
	lea    AmbientSFX, a0
	add.l  d0, a0
	move.l (a0), a0

	; Play
	PLAYSFX_LOWPRIO a0
	
	; Get next random time
	jsr    RND_GenerateLong				; Rand long
	andi.l #0xFFFF, d0			; Avoid overflow
	divu   #(AmbientSFXRandTimerMax-AmbientSFXRandTimerMin), d0	; Div / range
	clr.w  d0					; Clear exponent
	swap   d0					; Remainder to lower word
	add.w  #AmbientSFXRandTimerMin, d0	; Add min
	move.w d0, AmbientSFXTimer	; To timer
	
	@TimerRunning:
	sub.w #0x1, AmbientSFXTimer

	rts
	
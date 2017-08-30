;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   audio.asm - footsteps, ambience, etc
;==============================================================

AmbientSFXRandTimerMin	equ 0x0600
AmbientSFXRandTimerMax	equ 0x0A00

StartAmbientTrack:
	; Start playing an ambient track approriate for the environment

	; TODO: Get ambient tracks from level data + TOD, choose random track + length
	lea    track_amb_l1_night, a0
	jsr    SND_PlayTrack

	rts

UpdateBGMTimer:

	; If already zero, not running
	tst.w BGMOffTimer
	beq   @TimerElapsed
	
	; Decrement timer and check again
	subq.w #0x1, BGMOffTimer
	tst.w BGMOffTimer
	bne   @TimerElapsed
	
	; Elapsed this frame, stop BGMOffTimer
	jsr   SND_StopTrack
	
	@TimerElapsed:
	@TimerRunning:
	
	rts

UpdateAmbientAudio:

	; Chech if timer running
	tst.w AmbientSFXTimer
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
	PLAYSFX a0
	
	; Get next random time
	jsr    RND_GenerateLong				; Rand long
	andi.l #0xFFFF, d0			; Avoid overflow
	divu   #(AmbientSFXRandTimerMax-AmbientSFXRandTimerMin), d0	; Div / range
	clr.w  d0					; Clear exponent
	swap   d0					; Remainder to lower word
	addi.w #AmbientSFXRandTimerMin, d0	; Add min
	move.w d0, AmbientSFXTimer	; To timer
	
	@TimerRunning:
	subq.w #0x1, AmbientSFXTimer

	rts
	
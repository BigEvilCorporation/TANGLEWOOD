;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sound.asm - High level sound routines
;==============================================================

SND_Init:
	IFND DEBUG
	lea echo_instruments, a0
	jsr Echo_Init
	ENDIF
	rts

SND_PlayTrack:
	; a0 --- Track address
	
	IFND DEBUG

	; Play track
	jsr    Echo_PlayBGM

	; Set playback speed
	; TODO: On a per track basis
	PUSHL  d0
	move.b #fm_timer_b_pal, d0
	jsr    FM_SetTimerB
	POPL   d0

	ENDIF

	rts

SND_StopTrack:
	IFND DEBUG
	jsr   Echo_StopBGM
	ENDIF
	rts

SND_PlaySFX:
	; a0 --- SFX address

	IFND DEBUG

	; Play SFX
	jsr   Echo_PlaySFX

	; Set playback speed
	; TODO: On a per track basis
	;PUSHL  d0
	;move.b #fm_timer_b_ntsc, d0
	;jsr    FM_SetTimerB
	;POPL   d0

	ENDIF

	rts

SND_StopSFX:
	IFND DEBUG
	jsr   Echo_StopSFX
	ENDIF
	rts

SND_GetSFXBusy:
	; d0 (b) OUT: SFX playback busy

	IFND DEBUG
	jsr    Echo_GetStatus
	andi.w #0x8001, d0		; Bit 1 = SFX playing, bit 15 = Echo busy
	cmp.w  #0x0, d0
	beq    @Busy
	move.b #0x0, d0
	bra    @End
	@Busy:
	move.b #0x1, d0
	@End:
	ENDIF

	rts

SND_SetGlobalVolume:
	rts

SND_SetTrackVolume:
	rts

SND_SetSFXVolume:
	rts
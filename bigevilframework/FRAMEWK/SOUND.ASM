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
	; d0 (b) Exclusive
	
	IFND DEBUG

	move.b d0, d1

	; If exclusivity held
	cmp.b #0x0, audio_playback_locked
	beq   @Unlocked

	; Check busy
	jsr   SND_GetBusy
	cmp.b #0x0, d0
	bne   @Busy

	@Unlocked:

	; Play track
	jsr    Echo_PlayBGM

	; Set exclusive
	move.b d1, audio_playback_locked

	; Set playback speed
	; TODO: On a per track basis
	move.b #fm_timer_b_pal, d0
	jsr    FM_SetTimerB

	@Busy:

	ENDIF

	rts

SND_StopTrack:
	IFND DEBUG
	jsr   Echo_StopBGM
	ENDIF
	rts

SND_PlaySFX:
	; a0 --- SFX address
	; d0 (b) Exclusive

	IFND DEBUG

	; If exclusivity held
	cmp.b #0x0, audio_playback_locked
	beq   @Unlocked

	; Check busy
	jsr   SND_GetBusy
	cmp.b #0x0, d0
	bne   @Busy

	@Unlocked:

	; Stop prev SFX
	jsr   Echo_StopSFX

	; Play SFX
	jsr   Echo_PlaySFX

	@Busy:

	ENDIF

	rts

SND_StopSFX:
	IFND DEBUG
	jsr   Echo_StopSFX
	ENDIF
	rts

SND_GetBusy:
	; d0 (b) OUT: SFX/track playback busy

	IFND DEBUG
	jsr    Echo_GetStatus
	andi.w #0x8003, d0		; Bit 1 = SFX playing, bit 2 = BGM playing, bit 15 = Echo busy
	cmp.w  #0x0, d0
	bne    @Busy
	move.b #0x0, d0
	bra    @End
	@Busy:
	move.b #0x1, d0
	@End:
	ENDIF

	rts

SND_GetSFXBusy:
	; d0 (b) OUT: SFX playback busy

	IFND DEBUG
	jsr    Echo_GetStatus
	andi.w #0x8001, d0		; Bit 1 = SFX playing, bit 15 = Echo busy
	cmp.w  #0x0, d0
	bne    @Busy
	move.b #0x0, d0
	bra    @End
	@Busy:
	move.b #0x1, d0
	@End:
	ENDIF

	rts

SND_GetTrackBusy:
	; d0 (b) OUT: Track playback busy

	IFND DEBUG
	jsr    Echo_GetStatus
	andi.w #0x8002, d0		; Bit 2 = BGM playing, bit 15 = Echo busy
	cmp.w  #0x0, d0
	bne    @Busy
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

SND_BeginFadeTrack:
	; TODO
	jsr SND_StopTrack
	rts
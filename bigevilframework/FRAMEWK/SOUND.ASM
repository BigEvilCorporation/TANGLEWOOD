;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sound.asm - High level sound routines
;==============================================================

SND_Init:
	; Initialises Echo sound system and sets default values

	IFND DEBUG
	lea echo_instruments, a0
	jsr Echo_Init
	move.b #0xFF, audio_volume_global
	move.b #0x00, audio_fader_speed
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
	; d0 (b) - Volume (0 = quietest, 255 = loudest)

	; Set global volume
	move.b d0, audio_volume_global

	; Mirror to Echo
	jsr    Echo_SetVolume

	rts

SND_SetTrackVolume:
	rts

SND_SetSFXVolume:
	rts

SND_BeginFadeTrack:
	; d0 (b) - Fade speed (change per frame)
	; (+ve = set silent and begin fade up, -ve = set volume high and begin fade down)
	; (applies value linearly, but result is exponential)

	; Set fader speed
	move.b d0, audio_fader_speed

	; Determine direction
	cmp.b  #0x0, d0
	bgt    @FadeUp
	blt    @FadeDown
	bra    @End

	@FadeUp:
	; Fading up, set volume to 0
	move.b #0x00, d0
	jsr    SND_SetGlobalVolume
	bra    @End

	@FadeDown:
	; Fading down, set volume to 255
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume

	@End:

	rts

SND_UpdateFader:
	; Updates fader

	; Get fader and volume
	move.b (audio_fader_speed), d0
	move.b (audio_volume_global), d1

	; Determine direction
	cmp.b  #0x0, d0
	bgt    @FadeUp
	blt    @FadeDown
	bra    @End

	@FadeUp:
	; Fading up, clamp to 255
	add.b  d0, d1
	bcs    @NoClamp255
	move.b #0x00, d0		; Turn fader off
	move.b #0xFF, d1		; Clamp vol
	@NoClamp255:
	bra    @Apply

	@FadeDown:
	; Fading down, clamp to 0 and stop
	add.b  d0, d1
	bcs    @NoClamp0
	move.b #0x00, d0		; Turn fader off
	move.b #0x00, d1		; Clamp vol
	jsr    SND_StopTrack	; Stop playback
	@NoClamp0:

	@Apply:

	; Put new fader value back
	move.b d0, audio_fader_speed

	; Set new volume
	move.b d1, d0
	jsr    SND_SetGlobalVolume

	@End:

	rts
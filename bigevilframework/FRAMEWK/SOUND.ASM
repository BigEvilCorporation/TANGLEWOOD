;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sound.asm - High level sound routines
;==============================================================

; PCM frequencies (NTSC)
PCM_Freq_26632Hz	equ 0x1
PCM_Freq_17755Hz	equ 0x2
PCM_Freq_13316Hz	equ 0x3
PCM_Freq_10653Hz	equ 0x4
PCM_Freq_8877Hz		equ 0x5
PCM_Freq_7609Hz		equ 0x6
PCM_Freq_6658Hz		equ 0x7
PCM_Freq_5918Hz		equ 0x8
PCM_Freq_5326Hz		equ 0x9
PCM_Freq_4842Hz		equ 0xA
PCM_Freq_4439Hz		equ 0xB
PCM_Freq_4097Hz		equ 0xC

PCM_Freq_Default	equ PCM_Freq_10653Hz

; Track types in priority order
Track_Type_Cue			equ 0x0	; One-shot music cue (interrupts BGM/ambience)
Track_Type_BGM			equ 0x1	; Looping BGM
Track_Type_Threat		equ 0x2	; Enemy BGM
Track_Type_Ambience		equ 0x3	; Background ambience (mutually exclusive with BGM)
;------------------------------
Track_Type_COUNT		equ 0x4

; Track transition type
Track_Transition_Crossfade	equ 0x0	; Fade track A out, fade in track B
Track_Transition_Instant	equ 0x1	; Stop track A, begin track B
Track_Transition_FadeDown	equ 0x2	; Fade track A out, begin track B
Track_Transition_FadeUp		equ 0x3	; Stop track A, fade in track B

; SFX priority clash
SFX_PriorityClash_NoPlay	equ 0x0
SFX_PriorityClash_Replace	equ 0x1

Audio_NonExclusive		equ 0x0	; Non-excusive - plays alongside other SFX/tracks
Audio_Exclusive			equ 0x1	; Exclusive track - disallows other tracks/SFX

Audio_DefaultFadeSpeed	equ 0x1

	rsset 0
Track_Data				rs.l 1
Track_ChannelMask		rs.w 1
Track_AutoStopTime		rs.w 1
Track_Type				rs.b 1
Track_Exclusive			rs.b 1
Track_PriorityOverSFX	rs.b 1
Track_Transition		rs.b 1
;-----------------------------
	RS_ALIGN
Track_Struct_Size		rs.b 0

	rsset 0
SFX_Data				rs.l 1
SFX_Priority			rs.b 1
SFX_Exclusive			rs.b 1
SFX_ClashBehaviour		rs.b 1
SFX_PCMFrequency		rs.b 1
;-----------------------------
	RS_ALIGN
SFX_Struct_Size			rs.b 0


SND_Init:
	; Initialises Echo sound system and sets default values

	IF INCLUDE_AUDIO
	lea echo_instruments, a0
	jsr Echo_Init
	move.b #0xFF, audio_volume_global
	move.b #0x00, audio_fader_speed
	ENDIF

	; Set default PCM frequency
	move.b #PCM_Freq_10653Hz, d0
	jsr    SND_SetDefaultPCMFrequency

	rts

SND_SetDefaultPCMFrequency
	; d0 (b) Frequency (PCMFreq_*)

	move.b d0, audio_pcm_freq_default

	jsr    SND_SetPCMFrequency

	rts

SND_SetPCMFrequency:
	; d0 (b) Frequency (PCMFreq_*)

	move.b d0, audio_pcm_freq_current	
	jsr    Echo_SetPCMRate

	rts

SND_PlayTrack:
	; a0 --- Track address
	
	IF INCLUDE_AUDIO

	PUSHL a1

	; Queue address
	move.l #0x0, a1

	;==============================================================

	; If exclusivity held, bail
	tst.b  audio_playback_locked
	bne    @Busy

	; Queue track
	moveq #0x0, d0
	move.b Track_Type(a0), d0
	lsl.l  #0x2, d0
	lea    audio_queued_tracks, a1
	add.l  d0, a1
	move.l a0, (a1)

	; If current track playing, fade out first
	tst.l  audio_current_track
	beq    @Free

	; Determine transition type
	move.b Track_Transition(a0), d0
	cmp.b  #Track_Transition_Instant, d0
	beq    @StopPrev
	cmp.b  #Track_Transition_FadeUp, d0
	beq    @StopPrev

	; All remaining transitions require fade out
	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack

	; Bail, wait for track to finish fading out
	bra    @Busy

	@StopPrev:

	; Stop previous track instantly
	jsr    SND_StopTrack

	; Reset volume
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume

	; Reset fader
	move.b #0x0, audio_fader_speed

	@Free:

	;==============================================================

	; If not ambience, remove from queue
	cmpa.w #0x0, a1
	beq    @NotQueued
	cmp.b  #Track_Type_Ambience, Track_Type(a0)
	beq    @Ambience
	move.l #0x0, (a1)
	@NotQueued:
	@Ambience:

	; Store current track
	move.l a0, audio_current_track

	; Set exclusivity
	move.b Track_Exclusive(a0), audio_playback_locked

	; Set auto-stop timer
	move.w Track_AutoStopTime(a0), audio_track_stop_timer

	; Play track
	move.l Track_Data(a0), a0
	jsr    Echo_PlayBGM

	;==============================================================

	@Busy:

	POPL   a1

	ENDIF

	rts

SND_QueueTrack:
	; a0 --- Track address

	IF INCLUDE_AUDIO

	; Queue track
	moveq #0x0, d0
	move.b Track_Type(a0), d0
	lsl.l  #0x2, d0
	lea    audio_queued_tracks, a1
	add.l  d0, a1
	move.l a0, (a1)

	ENDIF

	rts

SND_StopTrack:
	IF INCLUDE_AUDIO
	jsr   Echo_StopBGM
	move.l #0x0, audio_current_track
	move.w #0x0, audio_track_stop_timer
	move.b #0x0, audio_playback_locked
	ENDIF
	rts

SND_StopTrackType:
	; d0 (b) Track type

	; If currently playing track, stop playing5
	move.l audio_current_track, a2
	cmpa.w #0x0, a2
	beq    @NoTrack
	cmp.b  Track_Type(a2), d0
	bne    @NotCurrentTrack
	PUSHW  d0
	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack
	POPW   d0
	@NoTrack:
	@NotCurrentTrack:

	; Remove from queue
	lsl.l  #0x2, d0
	lea    audio_queued_tracks, a2
	add.l  d0, a2
	move.l #0x0, (a2)

	rts

SND_ClearTracks:
	lea    audio_queued_tracks, a1
	move.w #Track_Type_COUNT-1, d0
	@TrackLp:
	move.l #0x0, (a1)
	dbra   d0, @TrackLp
	move.b #0x0, audio_playback_locked
	rts

SND_PlaySFX:
	; a0 --- SFX address

	IF INCLUDE_AUDIO

	PUSHL  d0
	PUSHL  a1

	; Auto-stop SFX that have reach the end
	; TODO: done here due to delay between Echo_StartTrack and Echo_GetStatus returning SFX Busy flag
	tst.l  audio_current_sfx
	beq    @EndStopCheck
	jsr    SND_GetSFXBusy
	tst.b  d0
	bne    @EndStopCheck
	move.l #0x0, audio_current_sfx
	@EndStopCheck:

	;==============================================================

	; If exclusivity held, bail
	tst.b  audio_playback_locked
	bne    @Busy

	;==============================================================

	; If SFX already playing
	tst.l  audio_current_sfx
	beq    @CheckTrackPriority

	; Check priority
	move.l (audio_current_sfx), a1
	move.b SFX_Priority(a1), d0
	cmp.b  SFX_Priority(a0), d0
	blt    @Busy
	bgt    @Replace

	; Priorities clash
	cmp.b  #SFX_PriorityClash_NoPlay, SFX_ClashBehaviour(a0)
	beq    @Busy

	;==============================================================

	@CheckTrackPriority:
	@Replace:

	; If track playing
	tst.l  audio_current_track
	beq    @Free

	; Check priority
	move.l (audio_current_track), a1
	move.b Track_PriorityOverSFX(a1), d0
	cmp.b  SFX_Priority(a0), d0
	blt    @Busy

	;==============================================================

	@Free:

	; Set current SFX
	move.l a0, audio_current_sfx

	; Set exclusivity
	; TODO: Track playing SFX to turn off exclusive flag when finished
	; move.b SFX_Exclusive(a0), audio_playback_locked
	
	; If needs new PCM rate, set it
	move.b SFX_PCMFrequency(a0), d0
	cmp.b  audio_pcm_freq_current, d0
	beq    @PCMFreqCorrect
	jsr    SND_SetPCMFrequency
	@PCMFreqCorrect:

	; Get SFX data
	move.l SFX_Data(a0), a0

	; Play SFX
	jsr    Echo_PlaySFX

	@Busy:

	POPL   a1
	POPL   d0

	ENDIF

	rts

SND_StopSFX:
	IF INCLUDE_AUDIO
	jsr   Echo_StopSFX
	ENDIF
	rts

SND_GetEchoBusy:
	; d0 (b) OUT: Echo sound system busy

	IF INCLUDE_AUDIO
	jsr    Echo_GetStatus
	btst   #5, d0			; Bit 15 = Last Echoc ommand not yet processed
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

	IF INCLUDE_AUDIO
	jsr    Echo_GetStatus
	btst   #0, d0			; Bit 0 = SFX playing
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

	IF INCLUDE_AUDIO
	jsr    Echo_GetStatus
	btst   #1, d0			; Bit 1 = BGM playing
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

SND_SetChannelVolume:
	; d0 (b) - Volume (0 = quietest, 255 = loudest)
	; d1 (b) - Channel
	rts

SND_BeginFadeTrack:
	; d0 (b) - Fade speed (change per frame, linear)
	;          (+ve = set silent and begin fade up, -ve = set volume high and begin fade down)
	; d1 (w) - Channel mask

	; Set fader speed
	move.b d0, audio_fader_speed

	; Determine direction
	tst.b  d0
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

SND_Update:
	jsr SND_UpdateFader
	jsr SND_UpdateTrack
	rts

SND_UpdateFader:
	; Updates fader

	; Get fader and volume
	move.b (audio_fader_speed), d0
	move.b (audio_volume_global), d1

	; Determine direction
	tst.b  d0
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
	bcs    @NoClamp
	move.b #0x00, d0		; Turn fader off
	move.b #0xFF, d1		; Reset vol
	jsr    SND_StopTrack	; Stop playback
	@NoClamp:

	@Apply:

	; Put new fader value back
	move.b d0, audio_fader_speed

	; Set new volume
	move.b d1, d0
	jsr    SND_SetGlobalVolume

	@End:

	rts

SND_UpdateTrack:

	; If sound system not busy
	jsr    SND_GetEchoBusy
	tst.b  d0
	bne    @Busy

	;==============================================================

	; If PCM rate not default
	move.b audio_pcm_freq_default, d0
	cmp.b  audio_pcm_freq_current, d0
	beq    @PCMFreqCorrect

	; If SFX stopped, revert PCM rate back to default
	jsr    SND_GetSFXBusy
	tst.b  d0
	bne    @SFXPlaying

	; Set default PCM freq
	move.b audio_pcm_freq_default, d0
	jsr    SND_SetPCMFrequency

	@SFXPlaying:
	@PCMFreqCorrect:

	;==============================================================

	; Check if track stopped
	tst.l  audio_current_track
	bne    @Busy

	; Determine next track
	lea    audio_queued_tracks, a1
	move.w #Track_Type_COUNT-1, d0
	@TrackCheckLp:
	tst.l  (a1)
	bne    @FoundTrack
	lea    size_long(a1), a1
	dbra   d0, @TrackCheckLp
	bra    @Silence

	@FoundTrack:

	; Fetch track address
	move.l (a1), a0

	; If not ambience, remove from queue
	cmp.b  #Track_Type_Ambience, Track_Type(a0)
	beq    @NoRemove
	move.l #0x0, (a1)
	@NoRemove:

	; Determine transition type
	move.b Track_Transition(a0), d0
	cmp.b  #Track_Transition_Crossfade, d0
	beq    @FadeUp
	cmp.b  #Track_Transition_FadeUp, d0
	beq    @FadeUp
	bra    @ResetVolume

	@FadeUp:
	
	; Start fader
	move.b #Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack
	bra    @Play

	@ResetVolume:

	; else reset volume
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume

	; Reset fader
	move.b #0x0, audio_fader_speed

	@Play:

	; Play
	jsr    SND_PlayTrack

	bra    @Played

	@Busy:
	@Silence:

	;==============================================================

	; Auto-stop track if timer elapsed
	move.l (audio_current_track), a0
	cmpa.w #0x0, a0
	beq    @NoCurrentTrack
	move.w audio_track_stop_timer, d0
	beq    @TimerNotRunning
	subq.w  #0x1, d0
	move.w d0, audio_track_stop_timer
	tst.w  d0
	bne    @TimerRunning

	; Determine transition type
	move.b Track_Transition(a0), d0
	cmp.b  #Track_Transition_Crossfade, d0
	beq    @FadeDown
	cmp.b  #Track_Transition_FadeDown, d0
	beq    @FadeDown
	bra    @StopImmediate

	@FadeDown:
	
	; Start fading down
	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack
	bra    @Stopped

	@StopImmediate:

	; else just stop track
	jsr    SND_StopTrack

	@NoCurrentTrack:
	@Stopped:
	@TimerRunning:
	@TimerNotRunning:

	;==============================================================

	; Auto-stop tracks that have reach the end
	tst.l  audio_current_track
	beq    @EndStopCheck
	jsr    SND_GetEchoBusy	; If Echo is busy, check again later
	tst.b  d0
	bne    @EndStopCheck
	jsr    SND_GetTrackBusy
	tst.b  d0
	bne    @EndStopCheck
	move.l #0x0, audio_current_track
	move.b #0x0, audio_playback_locked
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume
	@EndStopCheck:

	;==============================================================

	@Played:

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   sound.asm - High level sound routines
;==============================================================

; Track types in priority order
Track_Type_Cue			equ 0x0	; One-shot music cue (interrupts BGM/ambience)
Track_Type_BGM			equ 0x1	; Looping BGM
Track_Type_Ambience		equ 0x2	; Background ambience (mutually exclusive with BGM)
;------------------------------
Track_Type_COUNT		equ 0x3

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
Track_Type				rs.b 1
Track_Exclusive			rs.b 1
Track_Transition		rs.b 1
;-----------------------------
Track_Struct_Padding	rs.b 1
Track_Struct_Size		rs.b 0

	rsset 0
SFX_Data				rs.l 1
SFX_Priority			rs.b 1
SFX_Exclusive			rs.b 1
SFX_ClashBehaviour		rs.b 1
;-----------------------------
SFX_Struct_Padding		rs.b 1
SFX_Struct_Size			rs.b 0


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
	
	IFND DEBUG

	PUSHL a1

	; Queue address
	move.l #0x0, a1

	;==============================================================

	; Auto-stop tracks that have reach the end
	; TODO: done here due to delay between Echo_StartTrack and Echo_GetStatus returning Track Busy flag
	cmp.l  #0x0, audio_current_track
	beq    @EndStopCheck
	jsr    SND_GetTrackBusy
	cmp.b  #0x0, d0
	bne    @EndStopCheck
	move.l #0x0, audio_current_track
	@EndStopCheck:

	;==============================================================

	; If current track playing, fade out first
	cmp.l  #0x0, audio_current_track
	beq    @Free

	; Queue track
	clr.l  d0
	move.b Track_Type(a0), d0
	lsl.l  #0x2, d0
	lea    audio_queued_tracks, a1
	add.l  d0, a1
	move.l a0, (a1)

	; If exclusivity held, bail
	cmp.b  #0x0, audio_playback_locked
	bne    @Busy

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

	@Free:

	;==============================================================

	; If not ambience, remove from queue
	cmp.l  #0x0, a1
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

	; Play track
	move.l Track_Data(a0), a0
	jsr    Echo_PlayBGM

	; Set playback speed
	; TODO: On a per track basis
	move.b #fm_timer_b_pal, d0
	jsr    FM_SetTimerB

	;==============================================================

	@Busy:

	POPL   a1

	ENDIF

	rts

SND_StopTrack:
	IFND DEBUG
	jsr   Echo_StopBGM
	move.l #0x0, audio_current_track
	ENDIF
	rts

SND_ClearTracks:

	lea    audio_queued_tracks, a1
	move.w #Track_Type_COUNT-1, d0
	@TrackLp:
	move.l #0x0, (a1)
	dbra   d0, @TrackLp

	rts

SND_PlaySFX:
	; a0 --- SFX address

	IFND DEBUG

	PUSHL  d0
	PUSHL  a1

	; Auto-stop SFX that have reach the end
	; TODO: done here due to delay between Echo_StartTrack and Echo_GetStatus returning SFX Busy flag
	cmp.l  #0x0, audio_current_sfx
	beq    @EndStopCheck
	jsr    SND_GetSFXBusy
	cmp.b  #0x0, d0
	bne    @EndStopCheck
	move.l #0x0, audio_current_sfx
	@EndStopCheck:

	; If SFX already playing
	cmp.l  #0x0, audio_current_sfx
	beq    @Free

	; If exclusivity held, bail
	cmp.b  #0x0, audio_playback_locked
	bne    @Busy

	; Check priority
	move.l (audio_current_sfx), a1
	move.b SFX_Priority(a1), d0
	cmp.b  SFX_Priority(a0), d0
	blt    @Busy
	bgt    @Replace

	; Priorities clash
	cmp.b  #SFX_PriorityClash_NoPlay, SFX_ClashBehaviour(a0)
	beq    @Busy

	@Free:
	@Unlocked:
	@Replace:

	; Set current SFX
	move.l a0, audio_current_sfx

	; Set exclusivity
	move.b SFX_Exclusive(a0), audio_playback_locked

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
	IFND DEBUG
	jsr   Echo_StopSFX
	ENDIF
	rts

SND_GetBusy:
	; d0 (b) OUT: SFX/track playback busy

	IFND DEBUG
	jsr    Echo_GetStatus
	andi.b #0x03, d0		; Bit 1 = SFX playing, bit 2 = BGM playing
	cmp.b  #0x0, d0
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
	andi.b #0x01, d0		; Bit 1 = SFX playing
	cmp.b  #0x0, d0
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
	andi.b #0x02, d0		; Bit 2 = BGM playing
	cmp.b  #0x0, d0
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
	; d0 (b) - Fade speed (change per frame, linear)
	; (+ve = set silent and begin fade up, -ve = set volume high and begin fade down)

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

	; Check if track stopped
	cmp.l  #0x0, audio_current_track
	bne    @Busy

	; Determine next track
	lea    audio_queued_tracks, a1
	move.w #Track_Type_COUNT-1, d0
	@TrackCheckLp:
	cmp.l  #0x0, (a1)
	bne    @FoundTrack
	add.l  #size_long, a1
	dbra   d0, @TrackCheckLp
	bra    @Silence

	@FoundTrack:

	; Fetch track address
	move.l (a1), a0

	; Remove from queue
	move.l #0x0, (a1)

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

	@Play:

	; Play
	jsr    SND_PlayTrack

	@Busy:
	@Silence:

	rts
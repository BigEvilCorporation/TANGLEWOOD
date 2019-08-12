	IFND DEBUG

bgm_titles:			include 'assets\audio\tracks\titles.asm'
bgm_credits:		include 'assets\audio\tracks\credits.asm'
bgm_lvlintro:		include 'assets\audio\tracks\lvlintro.asm'
bgm_lvloutro:		include 'assets\audio\tracks\lvloutro.asm'
bgm_dawn:			include 'assets\audio\tracks\dawn.asm'
bgm_dusk:			include 'assets\audio\tracks\dusk.asm'
bgm_night:			include 'assets\audio\tracks\night.asm'
bgm_boss1_chase:	include 'assets\audio\tracks\boss_l.asm'
bgm_boss1_search:	include 'assets\audio\tracks\boss_q.asm'
bgm_boss_l4:		include 'assets\audio\tracks\boss_l4.asm'
bgm_boss_l6:		include 'assets\audio\tracks\chase_l6.asm'
bgm_boss_l8:		include 'assets\audio\tracks\boss_l8.asm'
bgm_meetecho:		include 'assets\audio\tracks\meetecho.asm'
bgm_gameover:		include 'assets\audio\tracks\gameover.asm'
bgm_cue_l1:			include 'assets\audio\tracks\cue_l1.asm'
bgm_cue_l1b:		include 'assets\audio\tracks\cue_l1b.asm'
bgm_cue_l2:			include 'assets\audio\tracks\cue_l2.asm'
bgm_cue_l3:			include 'assets\audio\tracks\cue_l3.asm'
bgm_cue_l4:			include 'assets\audio\tracks\cue_l4.asm'
bgm_cue_l5:			include 'assets\audio\tracks\cue_l5.asm'
bgm_cue_l6:			include 'assets\audio\tracks\cue_l6.asm'
bgm_cue_l7:			include 'assets\audio\tracks\cue_l7.asm'
bgm_cue_scrap:		include 'assets\audio\tracks\scrap.asm'
bgm_amb_l1_day:		include 'assets\audio\tracks\l1ambday.asm'
bgm_amb_rain:		include 'assets\audio\tracks\rain_fm.asm'
bgm_amb_windrain:	include 'assets\audio\tracks\windrain.asm'
bgm_amb_rumble:		include 'assets\audio\tracks\rumble.asm'
bgm_amb_watergush:	include 'assets\audio\tracks\gush.asm'
bgm_enemyapproach:	include 'assets\audio\tracks\approach.asm'
	even

TrackTableBegin:

track_bgm_titles:
	dc.l	bgm_titles
	dc.w	0x03FF
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even

track_bgm_lvloutro:
	dc.l	bgm_lvloutro
	dc.w	0x01FF
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_Exclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Instant
	even

track_bgm_actoutro_allfireflies:
	dc.l	bgm_lvlintro
	dc.w	0x03DF
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Instant
	even

track_bgm_dawn:
	dc.l	bgm_dawn
	dc.w	0x01FF
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even

track_bgm_dusk:
	dc.l	bgm_dusk
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even

track_bgm_night:
	dc.l	bgm_night
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even

track_bgm_boss1_chase:
	dc.l	bgm_boss1_chase
	dc.w	0x021F
	dc.w	0x0
	dc.b	Track_Type_Threat
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even

track_bgm_boss1_search:
	dc.l	bgm_boss1_search
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Threat
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even

	IF INCLUDE_LEVEL_4
track_bgm_boss_l4:
	dc.l	bgm_boss_l4
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Threat
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even
	ENDIF

	IF INCLUDE_LEVEL_6
track_bgm_boss_l6:
	dc.l	bgm_boss_l6
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Threat
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even
	ENDIF

	IF INCLUDE_LEVEL_8
track_bgm_boss_l8:
	dc.l	bgm_boss_l8
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Threat
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even
	ENDIF

	IF INCLUDE_LEVEL_8
track_bgm_credits:
	dc.l	bgm_credits
	dc.w	0x03FF
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_CHARACTER_ECHO
track_bgm_gameover:
	dc.l	bgm_gameover
	dc.w	0x001F
	dc.w	0x0000
	dc.b	Track_Type_BGM
	dc.b	Audio_Exclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_CHARACTER_ECHO
track_bgm_meetecho:
	dc.l	bgm_meetecho
	dc.w	0x0000
	dc.w	0x0000
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even
	ENDIF

track_bgm_cue_l1:
	dc.l	bgm_cue_l1
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even

track_bgm_cue_l1b:
	dc.l	bgm_cue_l1b
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even

	IF INCLUDE_LEVEL_2
track_bgm_cue_l2:
	dc.l	bgm_cue_l2
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_LEVEL_3
track_bgm_cue_l3:
	dc.l	bgm_cue_l3
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_LEVEL_4
track_bgm_cue_l4:
	dc.l	bgm_cue_l4
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_LEVEL_5
track_bgm_cue_l5:
	dc.l	bgm_cue_l5
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_LEVEL_5
track_bgm_cue_scrap:
	dc.l	bgm_cue_scrap
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Instant
	even
	ENDIF

	IF INCLUDE_LEVEL_6
track_bgm_cue_l6:
	dc.l	bgm_cue_l6
	dc.w	0x003F
	dc.w	0x0900
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

	IF INCLUDE_LEVEL_7
track_bgm_cue_l7:
	dc.l	bgm_cue_l7
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even
	ENDIF

track_bgm_enemyapproach:
	dc.l	bgm_enemyapproach
	dc.w	0x0010
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_FadeUp
	even

track_amb_l1_day:
	dc.l	bgm_amb_l1_day
	dc.w	0x0007
	dc.w	0x0
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even
	even

track_amb_rain:
	dc.l	bgm_amb_rain
	dc.w	0x0007
	dc.w	0x0000
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_FadeUp
	even

track_amb_windrain:
	dc.l	bgm_amb_windrain
	dc.w	0x0007
	dc.w	0x0000
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_FadeUp
	even

track_amb_rumble:
	dc.l	bgm_amb_rumble
	dc.w	0x0007
	dc.w	0x0000
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Instant
	even

track_amb_watergush:
	dc.l	bgm_amb_watergush
	dc.w	0x0007
	dc.w	0x0000
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Instant
	even

TrackTableEnd:
TrackTableSize	equ (TrackTableEnd-TrackTableBegin)/Track_Struct_Size
	
	ENDIF
	
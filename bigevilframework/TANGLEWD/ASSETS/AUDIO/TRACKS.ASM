	IFND DEBUG

bgm_titles:			include 'assets\audio\tracks\titles.asm'
bgm_lvlintro:		include 'assets\audio\tracks\lvlintro.asm'
bgm_lvloutro:		include 'assets\audio\tracks\lvloutro.asm'
bgm_dawn:			include 'assets\audio\tracks\dawn.asm'
bgm_dusk:			include 'assets\audio\tracks\dusk.asm'
bgm_night:			include 'assets\audio\tracks\night.asm'
bgm_boss1_chase:	include 'assets\audio\tracks\boss_l.asm'
bgm_boss1_search:	include 'assets\audio\tracks\boss_q.asm'
bgm_cue_l1:			include 'assets\audio\tracks\cue_l1.asm'
bgm_cue_l2:			include 'assets\audio\tracks\cue_l2.asm'
bgm_amb_l1_day:		include 'assets\audio\tracks\l1ambday.asm'
bgm_amb_l1_night:	include 'assets\audio\tracks\l1ambngt.asm'
bgm_monsterbass:	dc.b 0xFF ;incbin 'assets\audio\tracks\lowbass.esf'
	even

track_bgm_titles:
	dc.l	bgm_titles
	dc.w	0x03FF
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even

track_bgm_lvlintro:
	dc.l	bgm_lvlintro
	dc.w	0x03DF
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_Exclusive
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
	dc.b	Track_Transition_Crossfade
	even

track_bgm_night:
	dc.l	bgm_night
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Crossfade
	even

track_bgm_boss1_chase:
	dc.l	bgm_boss1_chase
	dc.w	0x021F
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even

track_bgm_boss1_search:
	dc.l	bgm_boss1_search
	dc.w	0x001F
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_FootstepSml-1
	dc.b	Track_Transition_Instant
	even

track_bgm_cue_l1:
	dc.l	bgm_cue_l1
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even

track_bgm_cue_l2:
	dc.l	bgm_cue_l2
	dc.w	0x003F
	dc.w	0x0
	dc.b	Track_Type_Cue
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Ambience-1
	dc.b	Track_Transition_Crossfade
	even

track_bgm_monsterbass:
	dc.l	bgm_monsterbass
	dc.w	0x0010
	dc.w	0x0
	dc.b	Track_Type_BGM
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
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

track_amb_l1_night:
	dc.l	bgm_amb_l1_night
	dc.w	0x0007
	dc.w	0x0A00
	dc.b	Track_Type_Ambience
	dc.b	Audio_NonExclusive
	dc.b	SFX_Priority_Lowest
	dc.b	Track_Transition_Crossfade
	even
	
	ENDIF
	
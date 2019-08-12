;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

AmbientSFXCount		equ 0x05

; Default priorities
SFX_Priority_Highest		equ 0x00
SFX_Priority_High			equ 0x20
SFX_Priority_Default		equ 0x30
SFX_Priority_Water			equ 0x40
SFX_Priority_Ambience		equ 0x50
SFX_Priority_FootstepLrg	equ 0x60
SFX_Priority_FootstepSml	equ 0x65
SFX_Priority_Lowest			equ 0x7F

	IFND DEBUG
	
; PCM SFX
SFX_Data_Djakk_Roar:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Djakk_Roar
	ESF_Delay 93
	ESF_Stop
	even

SFX_Data_Djakk_RoarTamed:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_26632Hz
	ESF_NoteOn ESF_PCM, PCMInstr_Djakk_Roar
	ESF_Delay 120
	ESF_Stop
	even
	
SFX_Data_Djakk_Bite:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Djakk_Bite
	ESF_Delay 17
	ESF_Stop
	even

SFX_Data_Chirp1:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Amb_Chirp1
	ESF_Delay 91
	ESF_Stop
	even

SFX_Data_Footstep_Water1:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_FStep_Water1
	ESF_Delay 37
	ESF_Stop
	even

SFX_Data_Footstep_Water2:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_FStep_Water2
	ESF_Delay 23
	ESF_Stop
	even

SFX_Data_Footstep_Splash1:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_FStep_Splash
	ESF_Delay 37
	ESF_Stop
	even

SFX_Data_Thunder_Far:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Thndr_Far
	ESF_Delay 100
	ESF_Delay 25
	ESF_Stop
	even

SFX_Data_CrateSmash:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Crate_Break
	ESF_Delay 19
	ESF_Stop
	even

SFX_Data_Elder_Roar:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Elder_Roar
	ESF_Delay 62
	ESF_Stop
	even

	IF INCLUDE_LEVEL_5
SFX_Data_Scrap_Yap:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Scrap_Yap
	ESF_Delay 9
	ESF_Stop
	even
	ENDIF

SFX_Data_Wind_Short:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Wind_Short
	ESF_Delay 65
	ESF_Stop
	even

SFX_Data_Wind_Long:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Wind_Long
	ESF_Delay 137
	ESF_Stop
	even

SFX_Data_Hogg_Grunt:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Hogg_Grunt
	ESF_Delay 11
	ESF_Stop
	even

SFX_Data_Hogg_Stuck:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Hogg_Stuck
	ESF_Delay 33
	ESF_Stop
	even

SFX_Data_Scirus_Alert:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Scirus_Alert
	ESF_Delay 10
	ESF_Stop
	even

SFX_Data_Scirus_Chatter:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Scirus_Chatt
	ESF_Delay 13
	ESF_Stop
	even

SFX_Data_Scirus_Hiss:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Scirus_Hiss
	ESF_Delay 26
	ESF_Stop
	even

SFX_Data_Scirus_Swipe:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Scirus_Swipe
	ESF_Delay 12
	ESF_Stop
	even

	IF INCLUDE_CHARACTER_ECHO
SFX_Data_Nymn_Call_Short:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Talk
	ESF_Delay 10
	ESF_Stop
	even

SFX_Data_Echo_Call_Short:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default-1
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Talk
	ESF_Delay 10
	ESF_Stop
	even

SFX_Data_Nymn_Call_Long:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Howl
	ESF_Delay 68
	ESF_Stop
	even

SFX_Data_Echo_Call_Long:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default-1
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Howl
	ESF_Delay 68
	ESF_Stop
	even

SFX_Data_Echo_Call_Sad1:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default+2
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Howl
	ESF_Delay 88
	ESF_Stop
	even

SFX_Data_Echo_Call_Sad2:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default+3
	ESF_NoteOn ESF_PCM, PCMInstr_Nymn_Howl
	ESF_Delay 98
	ESF_Stop
	even
	ENDIF

	IF INCLUDE_LEVEL_7
SFX_Data_Wyrm_Attack:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Wyrm_Attack
	ESF_Delay 52
	ESF_Stop
	even
	ENDIF

	IF INCLUDE_LEVEL_4
SFX_Data_BorgusRoar:
	ESF_Lock ESF_PCM
	ESF_SetPCMRate PCM_Freq_Default
	ESF_NoteOn ESF_PCM, PCMInstr_Borgus_Roar
	ESF_Delay 41
	ESF_Stop
	even
	ENDIF
	
; FM SFX
SFX_Data_Ability_On:		include 'assets\audio\SFX\objects\pwr_on.asm'
SFX_Data_Ability_Off:		include 'assets\audio\SFX\objects\pwr_off.asm'
SFX_Data_FlueIn:			include 'assets\audio\SFX\objects\flue_in.asm'
SFX_Data_FlueOut:			include 'assets\audio\SFX\objects\flue_out.asm'
SFX_Data_BridgeFall:		include 'assets\audio\SFX\objects\bridfall.asm'
SFX_Data_BridgeRoll:		include 'assets\audio\SFX\objects\bridroll.asm'
SFX_Data_BridgeSlow:		include 'assets\audio\SFX\objects\bridslow.asm'
SFX_Data_BridgeStop:		include 'assets\audio\SFX\objects\bridstop.asm'
SFX_Data_BorgusDamage:		include 'assets\audio\SFX\objects\borg_dmg.asm'

	IF INCLUDE_LEVEL_4
SFX_Data_BorgusFootstep:	include 'assets\audio\SFX\objects\borg_fs.asm'
SFX_Data_BorgusSpit:		include 'assets\audio\SFX\objects\borg_spt.asm'
SFX_Data_BorgusDie:			include 'assets\audio\SFX\objects\borg_ded.asm'
	ENDIF

SFX_Data_BoulderRoll:		include 'assets\audio\SFX\objects\bldroll.asm'
SFX_Data_BoulderBreak:		include 'assets\audio\SFX\objects\bldbreak.asm'
SFX_Data_ButtonFail:		include 'assets\audio\SFX\objects\btnfail.asm'
SFX_Data_CartMove:			include 'assets\audio\SFX\objects\cartmove.asm'
SFX_Data_CartWaterSkip:		include 'assets\audio\SFX\objects\cartwatr.asm'
SFX_Data_CratePush:			include 'assets\audio\SFX\objects\cratelp.asm'
SFX_Data_CageDoorRaise:		include 'assets\audio\SFX\objects\cageup.asm'
SFX_Data_Checkpoint:		include 'assets\audio\SFX\objects\checkpnt.asm'
SFX_Data_DemonAppearStart:	include 'assets\audio\SFX\objects\dem_strt.asm'
SFX_Data_DemonAppearEnd:	include 'assets\audio\SFX\objects\dem_end.asm'
SFX_Data_DemonBlink:		include 'assets\audio\SFX\objects\dem_blnk.asm'
SFX_Data_DemonOpenMouth:	include 'assets\audio\SFX\objects\dem_open.asm'
SFX_Data_DemonAttack:		include 'assets\audio\SFX\objects\djubatak.asm'
SFX_Data_DjubbSwim1:		include 'assets\audio\SFX\objects\djubsw1.asm'
SFX_Data_DjubbSwim2:		include 'assets\audio\SFX\objects\djubsw2.asm'
SFX_Data_DjubbAttack:		include 'assets\audio\SFX\objects\djubatak.asm'
SFX_Data_FireflyCollect:	include 'assets\audio\SFX\objects\firefly.asm'
SFX_Data_FireflyCollectAct:	include 'assets\audio\SFX\objects\fflyall.asm'
SFX_Data_FireflyCollectAll:	include 'assets\audio\SFX\ui\start.asm'
SFX_Data_MushroomBounce:	include 'assets\audio\SFX\objects\mushroom.asm'
SFX_Data_FuzzlDrop:			include 'assets\audio\SFX\fuzzl\fuzldrop.asm'
SFX_Data_FuzzlAlert:		include 'assets\audio\SFX\fuzzl\fuzlalrt.asm'
SFX_Data_FuzzlInNest:		include 'assets\audio\SFX\fuzzl\fuzlnest.asm'
SFX_Data_FuzzlJump:			include 'assets\audio\SFX\fuzzl\fuzljump.asm'
SFX_Data_FuzzlRoll1:		include 'assets\audio\SFX\fuzzl\fuzroll1.asm'
SFX_Data_FuzzlRoll2:		include 'assets\audio\SFX\fuzzl\fuzroll2.asm'
SFX_Data_FuzzlRoll3:		include 'assets\audio\SFX\fuzzl\fuzroll3.asm'
SFX_Data_FuzzlRoll4:		include 'assets\audio\SFX\fuzzl\fuzroll4.asm'
SFX_Data_FuzzlRoll5:		include 'assets\audio\SFX\fuzzl\fuzroll5.asm'
SFX_Data_FuzzlRoll6:		include 'assets\audio\SFX\fuzzl\fuzroll6.asm'
SFX_Data_GeneratorOn:		include 'assets\audio\SFX\objects\gen_on.asm'
SFX_Data_LiftWinchSlow:		include 'assets\audio\SFX\objects\winchslo.asm'
SFX_Data_LiftWinchFast:		include 'assets\audio\SFX\objects\winchfst.asm'
SFX_Data_LiftWinchVSlow:	include 'assets\audio\SFX\objects\liftvslo.asm'
SFX_Data_PillarSmash:		include 'assets\audio\SFX\objects\pillsmsh.asm'
SFX_Data_Rumble:			include 'assets\audio\SFX\objects\rumble.asm'
SFX_Data_SmartBomb:			include 'assets\audio\SFX\objects\smartbmb.asm'
SFX_Data_SpikeDeath:		include 'assets\audio\SFX\objects\spike.asm'
SFX_Data_SwarmMoveLoop:		include 'assets\audio\SFX\objects\swrm_mov.asm'
SFX_Data_SwarmDamageLoop:	include 'assets\audio\SFX\objects\swrm_dmg.asm'
SFX_Data_Thunder_Near:		include 'assets\audio\SFX\weather\thndrnr.asm'
SFX_Data_Winch:				include 'assets\audio\SFX\objects\winchlp.asm'
SFX_Data_NymnColourSwitch:	include 'assets\audio\SFX\nymn\switch.asm'
SFX_Data_NymnColourFade:	include 'assets\audio\SFX\nymn\unswitch.asm'
SFX_Data_Footstep1:			include 'assets\audio\SFX\fstep\fstep1.asm'
SFX_Data_Footstep2:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep3:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep4:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_FootstepBig:		include 'assets\audio\SFX\fstep\fstepbig.asm'
SFX_Data_FootstepHogg:		include 'assets\audio\SFX\fstep\fstephog.asm'
SFX_Data_Land:				include 'assets\audio\SFX\fstep\land.asm'
SFX_Data_Ambience_Day1:		include 'assets\audio\SFX\ambience\day1.asm'
SFX_Data_Ambience_Day2:		include 'assets\audio\SFX\ambience\day2.asm'
SFX_Data_Ambience_Day3:		include 'assets\audio\SFX\ambience\day3.asm'
SFX_Data_Ambience_Day4:		include 'assets\audio\SFX\ambience\day4.asm'
SFX_Data_Ambience_Night1:	include 'assets\audio\SFX\ambience\night1.asm'
;SFX_Data_Ambience_Night2:	include 'assets\audio\SFX\ambience\night2.asm'
SFX_Data_UI_Press_Start:	include 'assets\audio\SFX\ui\start.asm'
SFX_Data_UI_Move:			include 'assets\audio\SFX\ui\uimove.asm'
	even

SFXTableBegin:

SFX_FlueIn:
	dc.l SFX_Data_FlueIn			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FlueOut:
	dc.l SFX_Data_FlueOut			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_AbilityOn:
	dc.l SFX_Data_Ability_On		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_AbilityOff:
	dc.l SFX_Data_Ability_Off		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_BridgeFall:
	dc.l SFX_Data_BridgeFall		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_BridgeRoll:
	dc.l SFX_Data_BridgeRoll		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BridgeSlow:
	dc.l SFX_Data_BridgeSlow		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_BridgeStop:
	dc.l SFX_Data_BridgeStop		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BoulderRoll:
	dc.l SFX_Data_BoulderRoll		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_BoulderBreak:
	dc.l SFX_Data_BoulderBreak		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

	IF INCLUDE_LEVEL_4
SFX_BorgusFootstep:
	dc.l SFX_Data_BorgusFootstep	; Data
	dc.b SFX_Priority_FootstepLrg	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BorgusDamage:
	dc.l SFX_Data_BorgusDamage		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BorgusSpit:
	dc.l SFX_Data_BorgusSpit		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BorgusRoar:
	dc.l SFX_Data_BorgusRoar		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_BorgusDie:
	dc.l SFX_Data_BorgusDie			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even
	ENDIF

SFX_ButtonFail:
	dc.l SFX_Data_ButtonFail		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_CageDoorRaise:
	dc.l SFX_Data_CageDoorRaise		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Checkpoint:
	dc.l SFX_Data_Checkpoint		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonAppear_Start:
	dc.l SFX_Data_DemonAppearStart	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonAppear_End:
	dc.l SFX_Data_DemonAppearEnd	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonBlink:
	dc.l SFX_Data_DemonBlink		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_Exclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonOpenMouth:
	dc.l SFX_Data_DemonOpenMouth	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonAttack:
	dc.l SFX_Data_DemonAttack		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DemonDamage:
	dc.l SFX_Data_BorgusDamage		; Data
	dc.b SFX_Priority_Highest		; Priority
	dc.b Audio_Exclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_DjubbSwim1:
	dc.l SFX_Data_DjubbSwim1		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_DjubbSwim2:
	dc.l SFX_Data_DjubbSwim2		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_DjubbAttack:
	dc.l SFX_Data_DjubbAttack		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_CartMove:
	dc.l SFX_Data_CartMove			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_CartWaterSkip:
	dc.l SFX_Data_CartWaterSkip		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_CratePush:
	dc.l SFX_Data_CratePush			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_CrateSmash:
	dc.l SFX_Data_CrateSmash		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FireflyCollect:
	dc.l SFX_Data_FireflyCollect	; Data
	dc.b SFX_Priority_Highest+1		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FireflyCollectAct:
	dc.l SFX_Data_FireflyCollectAct	; Data
	dc.b SFX_Priority_Highest		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FireflyCollectAll:
	dc.l SFX_Data_FireflyCollectAll	; Data
	dc.b SFX_Priority_Highest		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_MushroomBounce:
	dc.l SFX_Data_MushroomBounce	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FuzzlDrop:
	dc.l SFX_Data_FuzzlDrop			; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlAlert:
	dc.l SFX_Data_FuzzlAlert		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FuzzlInNest:
	dc.l SFX_Data_FuzzlInNest		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FuzzlJump
	dc.l SFX_Data_FuzzlJump			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FuzzlRoll1
	dc.l SFX_Data_FuzzlRoll1		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlRoll2
	dc.l SFX_Data_FuzzlRoll2		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlRoll3
	dc.l SFX_Data_FuzzlRoll3		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlRoll4
	dc.l SFX_Data_FuzzlRoll4		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlRoll5
	dc.l SFX_Data_FuzzlRoll5		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_FuzzlRoll6
	dc.l SFX_Data_FuzzlRoll6		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_GeneratorOn
	dc.l SFX_Data_GeneratorOn		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_LiftWinchSlow
	dc.l SFX_Data_LiftWinchSlow		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_LiftWinchFast
	dc.l SFX_Data_LiftWinchFast		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_LiftWinchVSlow
	dc.l SFX_Data_LiftWinchVSlow	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_PillarSmash
	dc.l SFX_Data_PillarSmash		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Rumble
	dc.l SFX_Data_Rumble			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_SpikeDeath
	dc.l SFX_Data_SpikeDeath		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_SmartBomb
	dc.l SFX_Data_SmartBomb			; Data
	dc.b SFX_Priority_Highest		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_SwarmMoveLoop
	dc.l SFX_Data_SwarmMoveLoop		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_SwarmDamageLoop
	dc.l SFX_Data_SwarmDamageLoop	; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash

	even

SFX_NymnColourSwitch:
	dc.l SFX_Data_NymnColourSwitch	; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_NymnColourFade
	dc.l SFX_Data_NymnColourFade	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Footstep1:
	dc.l SFX_Data_Footstep1			; Data
	dc.b SFX_Priority_FootstepSml	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Footstep2:
	dc.l SFX_Data_Footstep2			; Data
	dc.b SFX_Priority_FootstepSml	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Footstep3:
	dc.l SFX_Data_Footstep3			; Data
	dc.b SFX_Priority_FootstepSml	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Footstep4:
	dc.l SFX_Data_Footstep4			; Data
	dc.b SFX_Priority_FootstepSml	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FootstepBig:
	dc.l SFX_Data_FootstepBig		; Data
	dc.b SFX_Priority_FootstepLrg	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_FootstepHogg:
	dc.l SFX_Data_FootstepHogg		; Data
	dc.b SFX_Priority_FootstepLrg	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Footstep_Water1:
	dc.l SFX_Data_Footstep_Water1	; Data
	dc.b SFX_Priority_Water			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Footstep_Water2:
	dc.l SFX_Data_Footstep_Water2	; Data
	dc.b SFX_Priority_Water			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Water_Splash1:
	dc.l SFX_Data_Footstep_Splash1	; Data
	dc.b SFX_Priority_Water			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Water_Jump:
	dc.l SFX_Data_Footstep_Splash1	; Data
	dc.b SFX_Priority_Water			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Land:
	dc.l SFX_Data_Land				; Data
	dc.b SFX_Priority_FootstepLrg	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Ambience_Day1:
	dc.l SFX_Data_Ambience_Day1		; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Ambience_Day2:
	dc.l SFX_Data_Ambience_Day2		; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Ambience_Day3:
	dc.l SFX_Data_Ambience_Day3		; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Ambience_Day4:
	dc.l SFX_Data_Ambience_Day4		; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Ambience_Night1:
	dc.l SFX_Data_Ambience_Night1	; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

;SFX_Ambience_Night2:
;	dc.l SFX_Data_Ambience_Night2	; Data
;	dc.b 0							; Priority
;	dc.b Audio_NonExclusive			; Exclusivity
;	dc.b SFX_PriorityClash_Replace	; Priority clash
;
	even

SFX_Djakk_Roar:
	dc.l SFX_Data_Djakk_Roar		; Data
	dc.b SFX_Priority_Highest		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Djakk_RoarTamed:
	dc.l SFX_Data_Djakk_RoarTamed	; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Djakk_Bite:
	dc.l SFX_Data_Djakk_Bite		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Elder_Roar:
	dc.l SFX_Data_Elder_Roar		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

	IF INCLUDE_LEVEL_5
SFX_Scrap_Yap:
	dc.l SFX_Data_Scrap_Yap			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even
	ENDIF

SFX_Hogg_Grunt:
	dc.l SFX_Data_Hogg_Grunt		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Hogg_Stuck:
	dc.l SFX_Data_Hogg_Stuck		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Scirus_Alert:
	dc.l SFX_Data_Scirus_Alert		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Scirus_Chatter:
	dc.l SFX_Data_Scirus_Chatter	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Scirus_Swipe:
	dc.l SFX_Data_Scirus_Swipe		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Scirus_Hiss:
	dc.l SFX_Data_Scirus_Hiss		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

	IF INCLUDE_LEVEL_7
SFX_Wyrm_attack:
	dc.l SFX_Data_Wyrm_attack		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even
	ENDIF

SFX_Chirp1:
	dc.l SFX_Data_Chirp1			; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

	IF INCLUDE_CHARACTER_ECHO
SFX_Nymn_Call_Short:
	dc.l SFX_Data_Nymn_Call_Short	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Echo_Call_Short:
	dc.l SFX_Data_Echo_Call_Short	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Nymn_Call_Long:
	dc.l SFX_Data_Nymn_Call_Long	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Echo_Call_Long:
	dc.l SFX_Data_Echo_Call_Long	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Echo_Call_Sad1:
	dc.l SFX_Data_Echo_Call_Sad1	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Echo_Call_Sad2:
	dc.l SFX_Data_Echo_Call_Sad2	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even
	ENDIF

SFX_Thunder_Far:
	dc.l SFX_Data_Thunder_Far		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Thunder_Near:
	dc.l SFX_Data_Thunder_Near		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Winch:
	dc.l SFX_Data_Winch				; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_NoPlay	; Priority clash

	even

SFX_Wind_Short:
	dc.l SFX_Data_Wind_Short		; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_Wind_Long:
	dc.l SFX_Data_Wind_Long			; Data
	dc.b SFX_Priority_High			; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_UI_Press_Start:
	dc.l SFX_Data_UI_Press_Start	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFX_UI_Move:
	dc.l SFX_Data_UI_Move			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

SFX_UI_Move2:
	dc.l SFX_Data_UI_Move			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

SFX_UI_Move3:
	dc.l SFX_Data_UI_Move			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

SFX_UI_Move4:
	dc.l SFX_Data_UI_Move			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash

	even

SFXTableEnd:
SFXTableSize	equ (SFXTableEnd-SFXTableBegin)/SFX_Struct_Size

		ENDIF
		
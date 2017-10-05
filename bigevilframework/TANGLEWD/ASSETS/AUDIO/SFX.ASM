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
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+0
	ESF_Delay 93
	ESF_Stop
	even
	
SFX_Data_Djakk_Bite:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+1
	ESF_Delay 17
	ESF_Stop
	even

SFX_Data_Chirp1:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+2
	ESF_Delay 91
	ESF_Stop
	even

SFX_Data_Footstep_Water1:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+3
	ESF_Delay 37
	ESF_Stop
	even

SFX_Data_Footstep_Water2:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+4
	ESF_Delay 23
	ESF_Stop
	even

SFX_Data_Footstep_Splash1:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+5
	ESF_Delay 37
	ESF_Stop
	even

SFX_Data_Nymn_Call_Long:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+6
	ESF_Delay 108
	ESF_Stop
	even

SFX_Data_Thunder_Far:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+7
	ESF_Delay 100
	ESF_Delay 181
	ESF_Stop
	even

SFX_Data_Thunder_Near:
	ESF_Lock ESF_PCM
	ESF_NoteOn ESF_PCM, PCM_InstrIndex+8
	ESF_Delay 232
	ESF_Stop
	even
	
; FM SFX
SFX_Data_FlueIn:			include 'assets\audio\SFX\objects\flue_in.asm'
SFX_Data_FlueOut:			include 'assets\audio\SFX\objects\flue_out.asm'
SFX_Data_BridgeFall:		include 'assets\audio\SFX\objects\bridfall.asm'
SFX_Data_BridgeRoll:		include 'assets\audio\SFX\objects\bridroll.asm'
SFX_Data_BoulderRoll:		include 'assets\audio\SFX\objects\bldroll.asm'
SFX_Data_BoulderBreak:		include 'assets\audio\SFX\objects\bldbreak.asm'
SFX_Data_ButtonFail:		include 'assets\audio\SFX\objects\btnfail.asm'
SFX_Data_CratePush:			include 'assets\audio\SFX\objects\cratelp.asm'
SFX_Data_CageDoorRaise:		include 'assets\audio\SFX\objects\cageup.asm'
SFX_Data_FireflyCollect:	include 'assets\audio\SFX\objects\firefly.asm'
SFX_Data_FireflyCollectAll:	include 'assets\audio\SFX\ui\start.asm'
SFX_Data_MushroomBounce:	include 'assets\audio\SFX\objects\mushroom.asm'
SFX_Data_FuzzlDrop:			include 'assets\audio\SFX\fuzzl\fuzldrop.asm'
SFX_Data_FuzzlAlert:		include 'assets\audio\SFX\fuzzl\fuzlalrt.asm'
SFX_Data_FuzzlInNest:		include 'assets\audio\SFX\fuzzl\fuzlnest.asm'
SFX_Data_FuzzlJump:			include 'assets\audio\SFX\fuzzl\fuzljump.asm'
SFX_Data_GeneratorOn:		include 'assets\audio\SFX\objects\gen_on.asm'
SFX_Data_LiftWinchSlow:		include 'assets\audio\SFX\objects\winchslo.asm'
SFX_Data_LiftWinchFast:		include 'assets\audio\SFX\objects\winchfst.asm'
SFX_Data_NymnColourSwitch:	include 'assets\audio\SFX\nymn\switch.asm'
SFX_Data_NymnColourFade:	include 'assets\audio\SFX\nymn\unswitch.asm'
SFX_Data_Footstep1:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep2:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep3:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep4:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_FootstepBig:		include 'assets\audio\SFX\fstep\fstepbig.asm'
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
	dc.b SFX_PriorityClash_Noplay	; Priority clash
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

SFX_CratePush:
	dc.l SFX_Data_CratePush			; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Noplay	; Priority clash
	even

SFX_FireflyCollect:
	dc.l SFX_Data_FireflyCollect	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FireflyCollectAll:
	dc.l SFX_Data_FireflyCollectAll	; Data
	dc.b SFX_Priority_Default		; Priority
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
	dc.b SFX_Priority_FootstepSml	; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
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

SFX_NymnColourSwitch:
	dc.l SFX_Data_NymnColourSwitch	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
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
	dc.b SFX_PriorityClash_Replace	; Priority clash
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
	dc.b SFX_PriorityClash_Replace	; Priority clash
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
	even

SFX_Djakk_Roar:
	dc.l SFX_Data_Djakk_Roar		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Djakk_Bite:
	dc.l SFX_Data_Djakk_Bite		; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Chirp1:
	dc.l SFX_Data_Chirp1			; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Nymn_Call_Long:
	dc.l SFX_Data_Nymn_Call_Long	; Data
	dc.b SFX_Priority_Default		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

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
	even

		ENDIF
		
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

AmbientSFXCount		equ 0x02

; Default priorities
SFX_Priority_Highest	equ 0x00
SFX_Priority_Ambience	equ 0x50
SFX_Priority_Footstep	equ 0x60
SFX_Priority_Lowest		equ 0x7F

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
	
; FM SFX
SFX_Data_FlueIn:			include 'assets\audio\SFX\objects\flue_in.asm'
SFX_Data_FlueOut:			include 'assets\audio\SFX\objects\flue_out.asm'
SFX_Data_BoulderBreak:		include 'assets\audio\SFX\objects\bldbreak.asm'
SFX_Data_FireflyCollect:	include 'assets\audio\SFX\objects\firefly.asm'
SFX_Data_MushroomBounce:	include 'assets\audio\SFX\objects\mushroom.asm'
SFX_Data_FuzzlDrop:			include 'assets\audio\SFX\fuzzl\fuzldrop.asm'
SFX_Data_FuzzlAlert:		include 'assets\audio\SFX\fuzzl\fuzlalrt.asm'
SFX_Data_FuzzlInNest:		include 'assets\audio\SFX\fuzzl\fuzlnest.asm'
SFX_Data_FuzzlJump:			include 'assets\audio\SFX\fuzzl\fuzljump.asm'
SFX_Data_NymnColourSwitch:	include 'assets\audio\SFX\nymn\switch.asm'
SFX_Data_NymnColourFade:	include 'assets\audio\SFX\nymn\unswitch.asm'
SFX_Data_Footstep1:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep2:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep3:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_Footstep4:			include 'assets\audio\SFX\fstep\fstep2.asm'
SFX_Data_FootstepBig:		include 'assets\audio\SFX\fstep\fstepbig.asm'
SFX_Data_Land:				include 'assets\audio\SFX\fstep\land.asm'
SFX_Data_Ambience_Day1:		include 'assets\audio\SFX\ambience\day1.asm'
;SFX_Data_Ambience_Day2:	include 'assets\audio\SFX\ambience\day2.asm'
SFX_Data_Ambience_Night1:	include 'assets\audio\SFX\ambience\night1.asm'
;SFX_Data_Ambience_Night2:	include 'assets\audio\SFX\ambience\night2.asm'

SFX_FlueIn:
	dc.l SFX_Data_FlueIn			; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FlueOut:
	dc.l SFX_Data_FlueOut			; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_BoulderBreak:
	dc.l SFX_Data_BoulderBreak		; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FireflyCollect:
	dc.l SFX_Data_FireflyCollect	; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_MushroomBounce:
	dc.l SFX_Data_MushroomBounce	; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FuzzlDrop:
	dc.l SFX_Data_FuzzlDrop			; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FuzzlAlert:
	dc.l SFX_Data_FuzzlAlert		; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FuzzlInNest:
	dc.l SFX_Data_FuzzlInNest		; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FuzzlJump
	dc.l SFX_Data_FuzzlJump			; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_NymnColourSwitch:
	dc.l SFX_Data_NymnColourSwitch	; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_NymnColourFade
	dc.l SFX_Data_NymnColourFade	; Data
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep1:
	dc.l SFX_Data_Footstep1			; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep2:
	dc.l SFX_Data_Footstep2			; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep3:
	dc.l SFX_Data_Footstep3			; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep4:
	dc.l SFX_Data_Footstep4			; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_FootstepBig:
	dc.l SFX_Data_FootstepBig		; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep_Water1:
	dc.l SFX_Data_Footstep_Water1	; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep_Water2:
	dc.l SFX_Data_Footstep_Water2	; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Footstep_Splash1:
	dc.l SFX_Data_Footstep_Splash1	; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Land:
	dc.l SFX_Data_Land				; Data
	dc.b SFX_Priority_Footstep		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Ambience_Day1:
	dc.l SFX_Data_Ambience_Day1		; Data
	dc.b SFX_Priority_Ambience		; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

;SFX_Ambience_Day2:
;	dc.l SFX_Data_Ambience_Day2		; Data
;	dc.b SFX_Priority_Ambience		; Priority
;	dc.b Audio_NonExclusive			; Exclusivity
;	dc.b SFX_PriorityClash_Replace	; Priority clash
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
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

SFX_Djakk_Bite:
	dc.l SFX_Data_Djakk_Bite		; Data
	dc.b 0							; Priority
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
	dc.b 0							; Priority
	dc.b Audio_NonExclusive			; Exclusivity
	dc.b SFX_PriorityClash_Replace	; Priority clash
	even

		ENDIF
		
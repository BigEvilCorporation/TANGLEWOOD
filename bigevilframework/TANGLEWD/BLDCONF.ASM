;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   bldconf.asm - Build configuration
;==============================================================

; Profiler
	IFD DEBUG
INCLUDE_PROFILER		equ 1
	ELSE
INCLUDE_PROFILER		equ 0
	ENDIF

; Debug menus
	IFND FINAL
INCLUDE_SOUNDTEST		equ 0
	ELSE
INCLUDE_SOUNDTEST		equ 0
	ENDIF

; Debug key combos
	IFND FINAL
INCLUDE_DEBUG_FLY		equ 1
INCLUDE_DEBUG_SKIPLEVEL	equ 1
INCLUDE_DEBUG_DEATH		equ 1
	ELSE
INCLUDE_DEBUG_FLY		equ 0
INCLUDE_DEBUG_SKIPLEVEL	equ 0
INCLUDE_DEBUG_DEATH		equ 0
	ENDIF

; Levels
INCLUDE_LEVEL_1			equ 1
INCLUDE_LEVEL_2			equ 1
INCLUDE_LEVEL_3			equ 1
INCLUDE_LEVEL_4			equ 1
INCLUDE_LEVEL_5			equ 1
INCLUDE_LEVEL_6			equ 1
INCLUDE_LEVEL_7			equ 0

; Characters
INCLUDE_CHARACTER_ECHO	equ 1

; Initial level/state
	IFD FINAL
InitialLevel			 equ l1a1_HarlequinForestAct1
	ELSE
;InitialLevel			 equ l1a1_HarlequinForestAct1
;InitialLevel			 equ l1a2_HarlequinForestAct2
;InitialLevel			 equ l1a3_HarlequinForestAct3
;InitialLevel			 equ l1a4_HarlequinForestAct4
;InitialLevel			 equ l2a1_StormWarningAct1
;InitialLevel			 equ l2a2_StormWarningAct2
;InitialLevel			 equ l2a3_StormWarningAct3
;InitialLevel			 equ l3a1_HeritageAct1
InitialLevel			 equ l3a2_HeritageAct2
;InitialLevel			 equ l3a3_HeritageAct3
;InitialLevel			 equ l4a1_TetheredAct1
;InitialLevel			 equ l4a2_TetheredAct2
;InitialLevel			 equ l5a1_BygoneAct1
;InitialLevel			 equ l6a1_DeadwoodAct1
;InitialLevel			 equ Lvl_TestLift
	ENDIF

	IFD FINAL
InitialState			 equ  GameStateLogos
	ELSE
;InitialState			 equ  GameStateLogos
InitialState			 equ  GameStateGameplay
	ENDIF
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   bldconf.asm - Build configuration
;==============================================================

; Engine features
INCLUDE_AUDIO			equ 1

; Region testing
FORCE_PAL_MODE			equ 0
FORCE_NTSC_MODE			equ 0

; Timing testing
FRAME_TIMING_DEBUG		equ 0
VBLANK_TIMING_DEBUG		equ 0
ENTITY_DEBUG_SLOW		equ 8	; Updates entities every nth frame

; Accessibility testing
COLOURBLIND_TEST_RG		equ 0
COLOURBLIND_TEST_BG		equ 0

; Profiler
	IFD DEBUG
INCLUDE_PROFILER		equ 1
	ELSE
INCLUDE_PROFILER		equ 0
	ENDIF

; Debug menus
INCLUDE_LEVELSELECT		equ 1
INCLUDE_SOUNDTEST		equ 1

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
INCLUDE_LEVEL_7			equ 1
INCLUDE_LEVEL_8			equ 1
INCLUDE_LEVEL_TST1		equ 0

; Characters
INCLUDE_CHARACTER_ECHO	equ 1

; Demo mode
DEMO_SHOW_THANKS		equ 0
DEMO_USE_TIMEOUT		equ 0
DEMO_SHOW_LEVEL_SELECT	equ 1
DEMO_SHOW_DISCLAIMER	equ 0

; Autotest
AUTOTEST_ENABLED		equ 0

	IFND FINAL
AUTOTEST_TESTMODE		equ AutotestMode_LevelLoad
	ENDIF

; Initial level/state
	IFD FINAL
InitialLevel			equ l1a0_HarlequinForestIntro
	ELSE
;InitialLevel			equ l1a0_HarlequinForestIntro
;InitialLevel			equ l1a1_HarlequinForestAct1
;InitialLevel			equ l1a2_HarlequinForestAct2
;InitialLevel			equ l1a3_HarlequinForestAct3
;InitialLevel			equ l1a4_HarlequinForestAct4
;InitialLevel			equ l2a1_StormWarningAct1
;InitialLevel			equ l2a2_StormWarningAct2
;InitialLevel			equ l2a3_StormWarningAct3
;InitialLevel			equ l3a1_HeritageAct1
;InitialLevel			equ l3a2_HeritageAct2
;InitialLevel			equ l3a3_HeritageAct3
;InitialLevel			equ l4a1_TetheredAct1
;InitialLevel			equ l4a2_TetheredAct2
;InitialLevel			equ l4a3_TetheredAct3
;InitialLevel			equ l5a1_BygoneAct1
;InitialLevel			equ l5a2_BygoneAct2
;InitialLevel			equ l5a3_BygoneAct3
;InitialLevel			equ l5a4_BygoneAct4
;InitialLevel			equ l6a1_DeadwoodAct1
;InitialLevel			equ l6a2_DeadwoodAct2
;InitialLevel			equ l6a3_DeadwoodAct3
;InitialLevel			equ l7a1_OasisAct1
;InitialLevel			equ l7a2_OasisAct2
;InitialLevel			equ l7a3_OasisAct3
;InitialLevel			equ l8a1_TurntailAct1
;InitialLevel			equ l8a2_TurntailAct2
;InitialLevel			equ l8a3_TurntailAct3
InitialLevel			equ l8a4_TurntailAct4
;InitialLevel			equ l8a5_TurntailAct5
;InitialLevel			equ l8a6_TurntailAct6
	ENDIF

	IFD FINAL
InitialState			equ  GameStateLogos
	ELSE
;InitialState			equ  GameStateLogos
;InitialState			equ  GameStateMainMenu
;InitialState			equ  GameStateLevelSelect
;InitialState			equ  GameStatePasswordScreen
;InitialState			equ  GameStateSoundTest
InitialState			equ  GameStateGameplay
;InitialState			equ  GameStateCredits
	ENDIF
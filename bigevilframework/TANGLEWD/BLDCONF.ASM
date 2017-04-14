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
INCLUDE_LEVEL_2			equ 0
INCLUDE_LEVEL_3			equ 0
INCLUDE_LEVEL_4			equ 0
INCLUDE_LEVEL_5			equ 0
INCLUDE_LEVEL_6			equ 0
INCLUDE_LEVEL_7			equ 0

; Characters
INCLUDE_CHARACTER_ECHO	equ 0
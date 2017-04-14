;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
	
	; ************************************
	; Font tiles
	; ************************************
	include 'assets\fonts\pixelfnt.asm'

	; ************************************
	; Level assets
	; ************************************
	IF INCLUDE_LEVEL_1
	include 'assets\levels\level1.asm'
	ENDIF

	IF INCLUDE_LEVEL_2
	include 'assets\levels\level2.asm'
	ENDIF

	IF INCLUDE_LEVEL_3
	include 'assets\levels\level3.asm'
	ENDIF

	IF INCLUDE_LEVEL_4
	include 'assets\levels\level4.asm'
	ENDIF

	IF INCLUDE_LEVEL_5
	include 'assets\levels\level5.asm'
	ENDIF

	IF INCLUDE_LEVEL_6
	include 'assets\levels\level6.asm'
	ENDIF
	
	; ************************************
	; Sprite tilesheets
	; ************************************
	IFND DEBUG
	include 'assets\sprites\boulder.asm'
	include 'assets\sprites\djakk.asm'
	include 'assets\sprites\djrake.asm'
	IF INCLUDE_CHARACTER_ECHO
	include 'assets\sprites\echo.asm'
	ENDIF
	include 'assets\sprites\firefly.asm'
	ENDIF
	include 'assets\sprites\fuzzl.asm'
	include 'assets\sprites\nymn.asm'
	include 'assets\sprites\leaf.asm'
	include 'assets\sprites\lift.asm'
	include 'assets\sprites\rope.asm'
	include 'assets\sprites\stone.asm'
	include 'assets\sprites\twd_logo.asm'

	; ************************************
	; Sprite palettes
	; ************************************
	include 'assets\palettes\fuzzl.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\djakk.asm'
	include 'assets\palettes\djrake.asm'
	
	; ************************************
	; Sprite animation data
	; ************************************
	IFND DEBUG
	include 'assets\anims\boulder.asm'
	include 'assets\anims\djakk.asm'
	include 'assets\anims\djrake.asm'
	IF INCLUDE_CHARACTER_ECHO
	include 'assets\anims\echo.asm'
	ENDIF
	ENDIF
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\nymn.asm'
	include 'assets\anims\rope.asm'

	; ************************************
	; Tilesets
	; ************************************
	include 'assets\maps\bec_logo\tiles.asm'
	include 'assets\maps\controls\tiles.asm'
	include 'assets\maps\disclmr\tiles.asm'
	include 'assets\maps\demoend\tiles.asm'
	include 'assets\maps\soundtst\tiles.asm'
	include 'assets\maps\megafndr\tiles.asm'

	; ************************************
	; Static screen maps
	; ************************************
	include 'assets\maps\bec_logo\map.asm'
	include 'assets\maps\controls\map.asm'
	include 'assets\maps\disclmr\map.asm'
	include 'assets\maps\demoend\map.asm'
	include 'assets\maps\soundtst\map.asm'

	; ************************************
	; Palettes
	; ************************************
	include 'assets\maps\megafndr\palette.asm'
	include 'assets\maps\bec_logo\palette.asm'
	include 'assets\maps\controls\palette.asm'
	include 'assets\maps\disclmr\palette.asm'
	include 'assets\maps\demoend\palette.asm'
	include 'assets\maps\soundtst\palette.asm'

	; ************************************
	; Blocks
	; ************************************
	include 'assets\maps\mainmenu\blocks.asm'
	include 'assets\maps\megafndr\blocks.asm'

	; ************************************
	; Block maps
	; ************************************
	include 'assets\maps\mainmenu\blockmap.asm'
	include 'assets\maps\megafndr\blockmap.asm'
	
	; ************************************
	; Audio
	; ************************************
	include 'assets\audio\instrs.asm'
	include 'assets\audio\tracks.asm'
	include 'assets\audio\sfx.asm'
	
	; ************************************
    ; Strings
    ; ************************************
	include 'assets\strings.asm'

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo	 equ 0x0

; Main menu
PaletteId_TanglewoodLogo equ 0x2

; Sound test
PaletteId_SoundTest 	 equ 0x0
PaletteId_SoundTestText	 equ 0x1

; Demo disclaimer screen
PaletteId_DemoDisclaimerScreen   equ 0x0

; Controls screen
PaletteId_ControlsScreen equ 0x0

; Demo end state
PaletteId_DemoEndState   equ 0x0

; Kickstarter advert screen
PaletteId_KSLogo	     equ 0x0

; Megafounder advert screen
PaletteId_MegafounderScreen equ 0x0

; Gameplay
PaletteId_World0		equ 0x0
PaletteId_Monster		equ 0x1
PaletteId_Fuzzl			equ 0x2
PaletteId_Player		equ 0x3

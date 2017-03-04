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
	; Sprite tilesheets
	; ************************************
	IFND DEBUG
	include 'assets\sprites\boulder.asm'
	include 'assets\sprites\djakk.asm'
	include 'assets\sprites\djrake.asm'
	include 'assets\sprites\echo.asm'
	include 'assets\sprites\firefly.asm'
	ENDIF
	include 'assets\sprites\fuzzl.asm'
	include 'assets\sprites\nymn.asm'
	include 'assets\sprites\leaf.asm'
	include 'assets\sprites\lift.asm'
	include 'assets\sprites\rope.asm'
	include 'assets\sprites\stone.asm'
	include 'assets\sprites\twd_logo.asm'

	; Level props
	include 'assets\sprites\L1\mushroom.asm'

	; ************************************
	; Sprite palettes
	; ************************************
	include 'assets\palettes\fuzzl.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\pal_takk.asm'
	include 'assets\palettes\djrake.asm'
	
	; ************************************
	; Sprite animation data
	; ************************************
	IFND DEBUG
	include 'assets\anims\boulder.asm'
	include 'assets\anims\djakk.asm'
	include 'assets\anims\djrake.asm'
	include 'assets\anims\echo.asm'
	ENDIF
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\nymn.asm'
	include 'assets\anims\rope.asm'
	
	; Level props
	include 'assets\anims\L1\mushroom.asm'

	; ************************************
	; Tilesets
	; ************************************
	include 'assets\maps\bec_logo\tiles.asm'
	include 'assets\maps\controls\tiles.asm'
	include 'assets\maps\disclmr\tiles.asm'
	include 'assets\maps\demoend\tiles.asm'
	include 'assets\maps\soundtst\tiles.asm'
	include 'assets\maps\megafndr\tiles.asm'

	; Levels
	include 'assets\maps\l1\tiles.asm'
	include 'assets\maps\l3\tiles.asm'
	
	IFND FINAL
	include 'assets\maps\tst_lift\tiles.asm'
	ENDIF

	; ************************************
	; Stamp animations
	; ************************************
	include 'assets\maps\l1\stmpanim.asm'
	
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

	; Levels
	include 'assets\maps\l1\palette.asm'
	include 'assets\maps\l3\palette.asm'

	IFND FINAL
	include 'assets\maps\tst_lift\palette.asm'
	ENDIF

	; ************************************
	; Block maps
	; ************************************
	include 'assets\maps\mainmenu\blockmap.asm'
	include 'assets\maps\megafndr\blockmap.asm'

	; L1
	include 'assets\maps\l1\l1a1\blockmap.asm'
	include 'assets\maps\l1\l1a2\blockmap.asm'
	include 'assets\maps\l1\l1a3\blockmap.asm'
	include 'assets\maps\l1\l1a4\blockmap.asm'
	include 'assets\maps\l1\l1bg\blockmap.asm'

	; L3
	include 'assets\maps\l3\l3a1\blockmap.asm'
	include 'assets\maps\l3\l3bg\blockmap.asm'

	IFND FINAL
	include 'assets\maps\tst_lift\blockmap.asm'
	ENDIF
	
	; ************************************
	; Blocks
	; ************************************
	include 'assets\maps\mainmenu\blocks.asm'
	include 'assets\maps\megafndr\blocks.asm'

	; L1
	include 'assets\maps\l1\l1a1\blocks.asm'
	include 'assets\maps\l1\l1a2\blocks.asm'
	include 'assets\maps\l1\l1a3\blocks.asm'
	include 'assets\maps\l1\l1a4\blocks.asm'
	include 'assets\maps\l1\l1bg\blocks.asm'

	; L3
	include 'assets\maps\l3\l3a1\blocks.asm'
	include 'assets\maps\l3\l3bg\blocks.asm'

	IFND FINAL
	include 'assets\maps\tst_lift\blocks.asm'
	ENDIF
	
	; ************************************
	; Collision tilesets
	; ************************************
	include 'assets\maps\l1\coltiles.asm'
	include 'assets\maps\l3\coltiles.asm'
	
	IFND FINAL
	include 'assets\maps\tst_lift\coltiles.asm'
	ENDIF
	
	; ************************************
	; Collision block maps
	; ************************************

	; L1
	include 'assets\maps\l1\l1a1\colmap.asm'
	include 'assets\maps\l1\l1a2\colmap.asm'
	include 'assets\maps\l1\l1a3\colmap.asm'
	include 'assets\maps\l1\l1a4\colmap.asm'

	; L3
	include 'assets\maps\l3\l3a1\colmap.asm'
	
	; ************************************
	; Collision blocks
	; ************************************

	; L1
	include 'assets\maps\l1\l1a1\colblock.asm'
	include 'assets\maps\l1\l1a2\colblock.asm'
	include 'assets\maps\l1\l1a3\colblock.asm'
	include 'assets\maps\l1\l1a4\colblock.asm'

	; L3
	include 'assets\maps\l3\l3a1\colblock.asm'
	
	IFND FINAL
	include 'assets\maps\tst_lift\colblock.asm'
	ENDIF
	
	; ************************************
    ; Game objects
    ; ************************************
	include 'assets\maps\mainmenu\gameobj.asm'

	; L1
	include 'assets\maps\l1\l1a1\gameobj.asm'
	include 'assets\maps\l1\l1a2\gameobj.asm'
	include 'assets\maps\l1\l1a3\gameobj.asm'
	include 'assets\maps\l1\l1a4\gameobj.asm'

	; L3
	include 'assets\maps\l3\l3a1\gameobj.asm'
	
	IFND FINAL
	include 'assets\maps\tst_lift\gameobj.asm'
	ENDIF
	
	; ************************************
	; Audio
	; ************************************
	include 'assets\audio\instrs.asm'
	include 'assets\audio\music.asm'
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

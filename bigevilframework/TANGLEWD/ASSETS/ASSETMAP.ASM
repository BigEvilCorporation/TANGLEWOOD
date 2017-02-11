;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

    ; ************************************
    ; Palettes
    ; ************************************
	include 'assets\palettes\bec_logo.asm'
	include 'assets\palettes\ks_logo.asm'
	include 'assets\palettes\controls.asm'
	include 'assets\palettes\disclmr.asm'
	include 'assets\palettes\demoend.asm'
	include 'assets\palettes\fuzzl.asm'
	include 'assets\palettes\soundtst.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_lvl1.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\pal_takk.asm'
	include 'assets\palettes\djrake.asm'

	include 'assets\palettes\l1.asm'

	IFD DEBUG
	include 'assets\palettes\pal_tst1.asm'
	ENDIF
	IFND FINAL
	include 'assets\palettes\tst_lift.asm'
	ENDIF
	
	; ************************************
    ; Font tiles
    ; ************************************
	include 'assets\fonts\pixelfnt.asm'
	
	; ************************************
    ; Sprite tiles
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
	
	; Level props
	include 'assets\sprites\L1\mushroom.asm'
	
	; ************************************
	; Animation data
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

	IFD DEBUG

	; ************************************
	; Test maps
	; ************************************
	include 'assets\tiles\til_tst1.asm'
	include 'assets\maps\map_tst1.asm'
	include 'assets\collisn\ctl_tst1.asm'
	include 'assets\collisn\cmp_tst1.asm'
	include 'assets\gameobj\obj_tst1.asm'

	ELSE

	; ************************************
    ; Level tiles
    ; ************************************
	include 'assets\tiles\bec_logo.asm'
	include 'assets\tiles\controls.asm'
	include 'assets\tiles\disclmr.asm'
	include 'assets\tiles\demoend.asm'
	include 'assets\tiles\soundtst.asm'
	include 'assets\tiles\twd_logo.asm'
	include 'assets\tiles\ks_logo.asm'
	include 'assets\tiles\til_lvl1.asm'

	include 'assets\tiles\l1.asm'
	
	IFND FINAL
	include 'assets\tiles\tst_lift.asm'
	ENDIF
	
	; ************************************
    ; Level maps
    ; ************************************
	include 'assets\maps\bec_logo.asm'
	include 'assets\maps\controls.asm'
	include 'assets\maps\disclmr.asm'
	include 'assets\maps\demoend.asm'
	include 'assets\maps\soundtst.asm'
	;include 'assets\maps\twd_logo.asm'
	include 'assets\maps\ks_logo.asm'
	;include 'assets\maps\map_lvl1.asm'
	;include 'assets\maps\map_lvl2.asm'
	;include 'assets\maps\map_lvl3.asm'
	; include 'assets\maps\lvl1_bg.asm'

	; include 'assets\maps\l1bg.asm'
	; include 'assets\maps\l1a1.asm'
	
	IFND FINAL
	; include 'assets\maps\tst_lift.asm'
	ENDIF

	; ************************************
	; Block maps
	; ************************************
	include 'assets\maps\blockmap\twd_logo.asm'
	include 'assets\maps\blockmap\l1a1.asm'
	include 'assets\maps\blockmap\l1a2.asm'
	include 'assets\maps\blockmap\l1a3.asm'
	include 'assets\maps\blockmap\l1bg.asm'
	
	; ************************************
	; Blocks
	; ************************************
	include 'assets\maps\blocks\twd_logo.asm'
	include 'assets\maps\blocks\l1a1.asm'
	include 'assets\maps\blocks\l1a2.asm'
	include 'assets\maps\blocks\l1a3.asm'
	include 'assets\maps\blocks\l1bg.asm'
	
	; ************************************
    ; Collision tiles
    ; ************************************
	include 'assets\collisn\ctl_lvl1.asm'

	;include 'assets\collisn\tiles\l1.asm'
	
	IFND FINAL
	;include 'assets\collisn\ctl_lift.asm'
	ENDIF
	
	; ************************************
	; Collision block maps
	; ************************************
	include 'assets\collisn\blockmap\l1a1.asm'
	include 'assets\collisn\blockmap\l1a2.asm'
	include 'assets\collisn\blockmap\l1a3.asm'
	
	; ************************************
	; Collision blocks
	; ************************************
	include 'assets\collisn\blocks\l1a1.asm'
	include 'assets\collisn\blocks\l1a2.asm'
	include 'assets\collisn\blocks\l1a3.asm'

	;include 'assets\collisn\maps\l1a1.asm'
	
	IFND FINAL
	;include 'assets\collisn\cmp_lift.asm'
	ENDIF
	
	; ************************************
    ; Game objects
    ; ************************************
	include 'assets\gameobj\twd_logo.asm'
	include 'assets\gameobj\obj_lvl1.asm'
	include 'assets\gameobj\obj_lvl2.asm'
	include 'assets\gameobj\obj_lvl3.asm'

	;include 'assets\gameobj\l1a1.asm'
	
	IFND FINAL
	;include 'assets\gameobj\tst_lift.asm'
	ENDIF

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
PaletteId_TanglewoodLogo equ 0x0

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

; Gameplay
PaletteId_World0		equ 0x0
PaletteId_Monster		equ 0x1
PaletteId_Fuzzl			equ 0x2
PaletteId_Player		equ 0x3

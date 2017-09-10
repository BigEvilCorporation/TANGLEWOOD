;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
	
	; ************************************
	; Font tiles
	; ************************************
	include 'assets\fonts\tiles\pxfont.asm'
	include 'assets\fonts\tiles\twfont.asm'
	include 'assets\fonts\tiles\twfontb.asm'
	include 'assets\fonts\tiles\twfonts.asm'
	include 'assets\fonts\tiles\twfontbs.asm'

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

	IF INCLUDE_LEVEL_7
	include 'assets\levels\level7.asm'
	ENDIF
	
	; ************************************
	; Sprite tilesheets
	; ************************************
	IFND DEBUG
	include 'assets\sprites\bolt.asm'
	include 'assets\sprites\boulder.asm'
	include 'assets\sprites\bridge.asm'
	include 'assets\sprites\button.asm'
	include 'assets\sprites\cogs.asm'
	include 'assets\sprites\cart.asm'
	include 'assets\sprites\crate.asm'
	include 'assets\sprites\debris.asm'
	include 'assets\sprites\djakk.asm'
	include 'assets\sprites\djrake.asm'
	include 'assets\sprites\djakcage.asm'
	include 'assets\sprites\djubb.asm'
	IF INCLUDE_CHARACTER_ECHO
	include 'assets\sprites\echo.asm'
	ENDIF
	include 'assets\sprites\elder.asm'
	include 'assets\sprites\firefly.asm'
	ENDIF
	include 'assets\sprites\fuzzl.asm'
	include 'assets\sprites\fuzlcage.asm'
	include 'assets\sprites\generatr.asm'
	include 'assets\sprites\log.asm'
	include 'assets\sprites\nymn.asm'
	include 'assets\sprites\leaf.asm'
	include 'assets\sprites\lift.asm'
	include 'assets\sprites\pillar.asm'
	include 'assets\sprites\rain.asm'
	include 'assets\sprites\rope.asm'
	include 'assets\sprites\stone.asm'
	include 'assets\sprites\twd_logo.asm'
	include 'assets\sprites\water.asm'
	include 'assets\sprites\wyrm.asm'

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
	include 'assets\palettes\djubb.asm'
	include 'assets\palettes\text.asm'
	include 'assets\palettes\wyrm.asm'
	
	; ************************************
	; Sprite animation data
	; ************************************
	IFND DEBUG
	include 'assets\anims\bolt.asm'
	include 'assets\anims\boulder.asm'
	include 'assets\anims\button.asm'
	include 'assets\anims\cart.asm'
	include 'assets\anims\cogs.asm'
	include 'assets\anims\debris.asm'
	include 'assets\anims\djakk.asm'
	include 'assets\anims\djrake.asm'
	include 'assets\anims\djubb.asm'
	IF INCLUDE_CHARACTER_ECHO
	include 'assets\anims\echo.asm'
	ENDIF
	ENDIF
	include 'assets\anims\elder.asm'
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\fuzlcage.asm'
	include 'assets\anims\generatr.asm'
	include 'assets\anims\log.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\nymn.asm'
	include 'assets\anims\rain.asm'
	include 'assets\anims\rope.asm'
	include 'assets\anims\water.asm'
	include 'assets\anims\wyrm.asm'

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
	include 'assets\maps\endlevel\blocks.asm'
	include 'assets\maps\megafndr\blocks.asm'
	include 'assets\maps\controls\blocks.asm'
	include 'assets\maps\disclmr\blocks.asm'

	; ************************************
	; Block maps
	; ************************************
	include 'assets\maps\mainmenu\blockmap.asm'
	include 'assets\maps\endlevel\blockmap.asm'
	include 'assets\maps\megafndr\blockmap.asm'
	include 'assets\maps\controls\blockmap.asm'
	include 'assets\maps\disclmr\blockmap.asm'

	; ************************************
	; Game objects
	; ************************************
	include 'assets\maps\mainmenu\gameobj.asm'
	include 'assets\maps\endlevel\gameobj.asm'
	
	; ************************************
	; Audio
	; ************************************
	include 'assets\audio\instrs.asm'
	include 'assets\audio\tracks.asm'
	include 'assets\audio\sfx.asm'

	; ************************************
	; VFX
	; ************************************
	include 'assets\vfx\bolt.asm'
	include 'assets\vfx\rain.asm'
	include 'assets\vfx\water.asm'
	
	; ************************************
    ; Strings
    ; ************************************
	include 'assets\strings.asm'

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo		equ 0x0

; Main menu
PaletteId_TanglewoodLogo	equ 0x2
PaletteId_MenuText			equ 0x1
PaletteId_MenuTextDisabled	equ 0x3

; Sound test
PaletteId_SoundTest 		equ 0x0
PaletteId_SoundTestText		equ 0x1

; Demo disclaimer screen
PaletteId_DemoDisclaimerScreen	equ 0x0

; Controls screen
PaletteId_ControlsScreen	equ 0x0

; Demo end state
PaletteId_DemoEndState		equ 0x0

; Kickstarter advert screen
PaletteId_KSLogo			equ 0x0

; Megafounder advert screen
PaletteId_MegafounderScreen	equ 0x0

; Gameplay
PaletteId_World0			equ 0x0
PaletteId_Monster			equ 0x1
PaletteId_Fuzzl				equ 0x2
PaletteId_Player			equ 0x3

; Underwater raster swap palette
PaletteId_WaterRaster		equ PaletteId_Player

	; ************************************
	; VFX IDs
	; ************************************
VfxId_WaterSplashLarge		equ 0x0
VfxId_RainLight				equ 0x1
VfxId_LightningBolt			equ 0x2
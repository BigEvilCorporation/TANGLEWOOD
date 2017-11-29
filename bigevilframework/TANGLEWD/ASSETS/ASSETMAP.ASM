;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	; ************************************
	; Level assets
	; ************************************
level_assets_start
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

	IF INCLUDE_LEVEL_8
	include 'assets\levels\level8.asm'
	ENDIF
level_assets_end
	
	; ************************************
	; Font tiles
	; ************************************
	include 'assets\fonts\tiles\sansfont.asm'
	include 'assets\fonts\tiles\twfont.asm'
	include 'assets\fonts\tiles\twfontb.asm'
	include 'assets\fonts\tiles\twfonts.asm'
	include 'assets\fonts\tiles\twfontbs.asm'
	
	; ************************************
	; Sprite tilesheets
	; ************************************
sprite_assets_start
	INCLUDE_TEXT_ASSET assets\sprites\bolt.asm
	INCLUDE_TEXT_ASSET assets\sprites\borgus.asm
	INCLUDE_TEXT_ASSET assets\sprites\boulder.asm
	INCLUDE_TEXT_ASSET assets\sprites\bridge.asm
	INCLUDE_TEXT_ASSET assets\sprites\button.asm
	INCLUDE_TEXT_ASSET assets\sprites\cogs.asm
	INCLUDE_TEXT_ASSET assets\sprites\cargolft.asm
	INCLUDE_TEXT_ASSET assets\sprites\cart.asm
	INCLUDE_TEXT_ASSET assets\sprites\crate.asm
	INCLUDE_TEXT_ASSET assets\sprites\debris.asm
	INCLUDE_TEXT_ASSET assets\sprites\demon.asm
	INCLUDE_TEXT_ASSET assets\sprites\djakk.asm
	;INCLUDE_TEXT_ASSET assets\sprites\djrake.asm
	INCLUDE_TEXT_ASSET assets\sprites\djakcage.asm
	INCLUDE_TEXT_ASSET assets\sprites\djubb.asm
	IF INCLUDE_CHARACTER_ECHO
	INCLUDE_TEXT_ASSET assets\sprites\echo.asm
	ENDIF
	INCLUDE_TEXT_ASSET assets\sprites\elder.asm
	INCLUDE_TEXT_ASSET assets\sprites\firefly.asm
	INCLUDE_TEXT_ASSET assets\sprites\fuzzl.asm
	INCLUDE_TEXT_ASSET assets\sprites\fuzlcage.asm
	INCLUDE_TEXT_ASSET assets\sprites\generatr.asm
	INCLUDE_TEXT_ASSET assets\sprites\ladder.asm
	INCLUDE_TEXT_ASSET assets\sprites\log.asm
	INCLUDE_TEXT_ASSET assets\sprites\lock.asm
	INCLUDE_TEXT_ASSET assets\sprites\mushroom.asm
	INCLUDE_TEXT_ASSET assets\sprites\nymn.asm
	INCLUDE_TEXT_ASSET assets\sprites\leaf.asm
	INCLUDE_TEXT_ASSET assets\sprites\lift.asm
	INCLUDE_TEXT_ASSET assets\sprites\longboat.asm
	INCLUDE_TEXT_ASSET assets\sprites\pillar.asm
	INCLUDE_TEXT_ASSET assets\sprites\pool.asm
	INCLUDE_TEXT_ASSET assets\sprites\raft.asm
	INCLUDE_TEXT_ASSET assets\sprites\rain.asm
	INCLUDE_TEXT_ASSET assets\sprites\rope.asm
	INCLUDE_TEXT_ASSET assets\sprites\scrap.asm
	INCLUDE_TEXT_ASSET assets\sprites\skivv.asm
	INCLUDE_TEXT_ASSET assets\sprites\spitball.asm
	INCLUDE_TEXT_ASSET assets\sprites\stalact.asm
	INCLUDE_TEXT_ASSET assets\sprites\stone.asm
	INCLUDE_TEXT_ASSET assets\sprites\trap.asm
	INCLUDE_TEXT_ASSET assets\sprites\twd_logo.asm
	INCLUDE_TEXT_ASSET assets\sprites\water.asm
	INCLUDE_TEXT_ASSET assets\sprites\winch.asm
	INCLUDE_TEXT_ASSET assets\sprites\wisp.asm
	INCLUDE_TEXT_ASSET assets\sprites\wyrm.asm
sprite_assets_end

	; ************************************
	; Sprite palettes
	; ************************************
	include 'assets\palettes\fuzzl.asm'
	include 'assets\palettes\twd_logo.asm'
	include 'assets\palettes\pal_fade.asm'
	include 'assets\palettes\pal_nymn.asm'
	include 'assets\palettes\pal_nest.asm'
	include 'assets\palettes\borgus.asm'
	include 'assets\palettes\demon.asm'
	include 'assets\palettes\djakk.asm'
	;include 'assets\palettes\djrake.asm'
	include 'assets\palettes\djubb.asm'
	include 'assets\palettes\text.asm'
	include 'assets\palettes\wyrm.asm'
	
	; ************************************
	; Sprite animation data
	; ************************************
	include 'assets\anims\bolt.asm'
	include 'assets\anims\borgus.asm'
	include 'assets\anims\boulder.asm'
	include 'assets\anims\button.asm'
	include 'assets\anims\cart.asm'
	include 'assets\anims\cogs.asm'
	include 'assets\anims\debris.asm'
	include 'assets\anims\demon.asm'
	include 'assets\anims\djakk.asm'
	;include 'assets\anims\djrake.asm'
	include 'assets\anims\djubb.asm'
	IF INCLUDE_CHARACTER_ECHO
	include 'assets\anims\echo.asm'
	ENDIF
	include 'assets\anims\elder.asm'
	include 'assets\anims\firefly.asm'
	include 'assets\anims\fuzzl.asm'
	include 'assets\anims\fuzlcage.asm'
	include 'assets\anims\generatr.asm'
	include 'assets\anims\log.asm'
	include 'assets\anims\lock.asm'
	include 'assets\anims\leaf.asm'
	include 'assets\anims\nymn.asm'
	include 'assets\anims\pool.asm'
	include 'assets\anims\rain.asm'
	include 'assets\anims\rope.asm'
	include 'assets\anims\scrap.asm'
	include 'assets\anims\skivv.asm'
	include 'assets\anims\spitball.asm'
	include 'assets\anims\water.asm'
	include 'assets\anims\winch.asm'
	include 'assets\anims\wisp.asm'
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
	include 'assets\maps\megafndr\blocks.asm'
	include 'assets\maps\controls\blocks.asm'
	include 'assets\maps\disclmr\blocks.asm'

	; ************************************
	; Block maps
	; ************************************
	include 'assets\maps\mainmenu\blockmap.asm'
	include 'assets\maps\endlevel\blockmap.asm'
	include 'assets\maps\credits\blockmap.asm'
	include 'assets\maps\megafndr\blockmap.asm'
	include 'assets\maps\controls\blockmap.asm'
	include 'assets\maps\disclmr\blockmap.asm'

	; ************************************
	; Game objects
	; ************************************
	include 'assets\maps\mainmenu\gameobj.asm'
	include 'assets\maps\endlevel\gameobj.asm'
	include 'assets\maps\credits\gameobj.asm'
	
	; ************************************
	; Audio
	; ************************************
audio_assets_start
	include 'assets\audio\instrs.asm'
	include 'assets\audio\tracks.asm'
	include 'assets\audio\sfx.asm'
audio_assets_end

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
	include 'assets\credits.asm'

	inform 0,""
	inform 0,"All sprite assets: %d bytes (%dkb)", (sprite_assets_end-sprite_assets_start), (sprite_assets_end-sprite_assets_start)/1024
	inform 0,"All level assets: %d bytes (%dkb)", (level_assets_end-level_assets_start), (level_assets_end-level_assets_start)/1024
	inform 0,"All audio assets: %d bytes (%dkb)", (audio_assets_end-audio_assets_start), (audio_assets_end-audio_assets_start)/1024

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo		equ 0x0

; Main menu
PaletteId_TanglewoodLogo	equ 0x1
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
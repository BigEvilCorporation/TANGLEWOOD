;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

all_assets_start

	; ************************************
	; Level assets
	; ************************************
level_assets_start
	IF INCLUDE_LEVEL_1
	INCLUDE_TEXT_ASSET assets\levels\level1.asm
	ENDIF

	IF INCLUDE_LEVEL_2
	INCLUDE_TEXT_ASSET assets\levels\level2.asm
	ENDIF

	IF INCLUDE_LEVEL_3
	INCLUDE_TEXT_ASSET assets\levels\level3.asm
	ENDIF

	IF INCLUDE_LEVEL_4
	INCLUDE_TEXT_ASSET assets\levels\level4.asm
	ENDIF

	IF INCLUDE_LEVEL_5
	INCLUDE_TEXT_ASSET assets\levels\level5.asm
	ENDIF

	IF INCLUDE_LEVEL_6
	INCLUDE_TEXT_ASSET assets\levels\level6.asm
	ENDIF

	IF INCLUDE_LEVEL_7
	INCLUDE_TEXT_ASSET assets\levels\level7.asm
	ENDIF

	IF INCLUDE_LEVEL_8
	INCLUDE_TEXT_ASSET assets\levels\level8.asm
	ENDIF

	IF INCLUDE_LEVEL_TST1
	INCLUDE_TEXT_ASSET assets\levels\tst1.asm
	ENDIF
level_assets_end
	
	; ************************************
	; Font tiles
	; ************************************
	INCLUDE_TEXT_ASSET assets\fonts\tiles\sansfont.asm	; System font
	INCLUDE_TEXT_ASSET assets\fonts\tiles\twfont.asm	; Game font - regular
	INCLUDE_TEXT_ASSET assets\fonts\tiles\twfontb.asm	; Game font - bold
	INCLUDE_TEXT_ASSET assets\fonts\tiles\twfonts.asm	; Game font - shadowed
	INCLUDE_TEXT_ASSET assets\fonts\tiles\twfontbs.asm	; Game font - bold + shadowed
	INCLUDE_TEXT_ASSET assets\fonts\tiles\twfont_f.asm	; Game font - bold + shadowed (using Fuzzl palette)
	
	; ************************************
	; Sprite tilesheets
	; ************************************
sprite_assets_start
	INCLUDE_TEXT_ASSET assets\sprites\bolt.asm

	IF INCLUDE_LEVEL_4
	INCLUDE_TEXT_ASSET assets\sprites\borgus.asm
	ENDIF

	INCLUDE_TEXT_ASSET assets\sprites\boulder.asm
	INCLUDE_TEXT_ASSET assets\sprites\bridge.asm
	INCLUDE_TEXT_ASSET assets\sprites\button.asm
	INCLUDE_TEXT_ASSET assets\sprites\cogs.asm
	INCLUDE_TEXT_ASSET assets\sprites\cargolft.asm
	INCLUDE_TEXT_ASSET assets\sprites\cargrope.asm
	INCLUDE_TEXT_ASSET assets\sprites\cart.asm
	INCLUDE_TEXT_ASSET assets\sprites\checkpnt.asm
	INCLUDE_TEXT_ASSET assets\sprites\crate.asm
	INCLUDE_TEXT_ASSET assets\sprites\debris.asm
	INCLUDE_TEXT_ASSET assets\sprites\demon.asm
	INCLUDE_TEXT_ASSET assets\sprites\dropbrig.asm
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
	INCLUDE_TEXT_ASSET assets\sprites\hogg.asm
	INCLUDE_TEXT_ASSET assets\sprites\log.asm
	INCLUDE_TEXT_ASSET assets\sprites\lock.asm
	INCLUDE_TEXT_ASSET assets\sprites\mother.asm
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
	INCLUDE_TEXT_ASSET assets\sprites\scirus.asm

	IF INCLUDE_LEVEL_5
	INCLUDE_TEXT_ASSET assets\sprites\scrap.asm
	ENDIF
	
	INCLUDE_TEXT_ASSET assets\sprites\skivv.asm
	INCLUDE_TEXT_ASSET assets\sprites\spitball.asm
	INCLUDE_TEXT_ASSET assets\sprites\stalact.asm
	INCLUDE_TEXT_ASSET assets\sprites\stone.asm
	INCLUDE_TEXT_ASSET assets\sprites\swarm.asm
	INCLUDE_TEXT_ASSET assets\sprites\trap.asm
	INCLUDE_TEXT_ASSET assets\sprites\twd_logo.asm
	INCLUDE_TEXT_ASSET assets\sprites\water.asm
	INCLUDE_TEXT_ASSET assets\sprites\winch.asm

	IF INCLUDE_LEVEL_7
	INCLUDE_TEXT_ASSET assets\sprites\wyrm.asm
	ENDIF
sprite_assets_end

	; ************************************
	; Sprite palettes
	; ************************************
	INCLUDE_TEXT_ASSET assets\palettes\fuzzl.asm
	INCLUDE_TEXT_ASSET assets\palettes\twd_logo.asm
	INCLUDE_TEXT_ASSET assets\palettes\pal_fade.asm
	INCLUDE_TEXT_ASSET assets\palettes\pal_nymn.asm
	INCLUDE_TEXT_ASSET assets\palettes\pal_nest.asm
	INCLUDE_TEXT_ASSET assets\palettes\borgus.asm
	INCLUDE_TEXT_ASSET assets\palettes\demon.asm
	INCLUDE_TEXT_ASSET assets\palettes\djakk.asm
	INCLUDE_TEXT_ASSET assets\palettes\djubb.asm
	INCLUDE_TEXT_ASSET assets\palettes\hogg.asm
	INCLUDE_TEXT_ASSET assets\palettes\skivv.asm
	INCLUDE_TEXT_ASSET assets\palettes\scirus.asm
	INCLUDE_TEXT_ASSET assets\palettes\swarm.asm
	INCLUDE_TEXT_ASSET assets\palettes\text.asm
	INCLUDE_TEXT_ASSET assets\palettes\wyrm.asm
	
	; ************************************
	; Sprite animation data
	; ************************************
	INCLUDE_TEXT_ASSET assets\anims\bolt.asm

	IF INCLUDE_LEVEL_4
	INCLUDE_TEXT_ASSET assets\anims\borgus.asm
	ENDIF

	INCLUDE_TEXT_ASSET assets\anims\boulder.asm
	INCLUDE_TEXT_ASSET assets\anims\button.asm
	INCLUDE_TEXT_ASSET assets\anims\cart.asm
	INCLUDE_TEXT_ASSET assets\anims\cogs.asm
	INCLUDE_TEXT_ASSET assets\anims\debris.asm
	INCLUDE_TEXT_ASSET assets\anims\demon.asm
	INCLUDE_TEXT_ASSET assets\anims\djakk.asm
	INCLUDE_TEXT_ASSET assets\anims\djubb.asm

	IF INCLUDE_CHARACTER_ECHO
	INCLUDE_TEXT_ASSET assets\anims\echo.asm
	ENDIF

	INCLUDE_TEXT_ASSET assets\anims\elder.asm
	INCLUDE_TEXT_ASSET assets\anims\firefly.asm
	INCLUDE_TEXT_ASSET assets\anims\fuzzl.asm
	INCLUDE_TEXT_ASSET assets\anims\fuzlcage.asm
	INCLUDE_TEXT_ASSET assets\anims\generatr.asm
	INCLUDE_TEXT_ASSET assets\anims\hogg.asm
	INCLUDE_TEXT_ASSET assets\anims\log.asm
	INCLUDE_TEXT_ASSET assets\anims\lock.asm
	INCLUDE_TEXT_ASSET assets\anims\leaf.asm
	INCLUDE_TEXT_ASSET assets\anims\mother.asm
	INCLUDE_TEXT_ASSET assets\anims\mushroom.asm
	INCLUDE_TEXT_ASSET assets\anims\nymn.asm
	INCLUDE_TEXT_ASSET assets\anims\pool.asm
	INCLUDE_TEXT_ASSET assets\anims\rain.asm
	INCLUDE_TEXT_ASSET assets\anims\rope.asm
	INCLUDE_TEXT_ASSET assets\anims\scirus.asm

	IF INCLUDE_LEVEL_5
	INCLUDE_TEXT_ASSET assets\anims\scrap.asm
	ENDIF

	INCLUDE_TEXT_ASSET assets\anims\skivv.asm
	INCLUDE_TEXT_ASSET assets\anims\spitball.asm
	INCLUDE_TEXT_ASSET assets\anims\swarm.asm
	INCLUDE_TEXT_ASSET assets\anims\water.asm
	INCLUDE_TEXT_ASSET assets\anims\winch.asm

	IF INCLUDE_LEVEL_7
	INCLUDE_TEXT_ASSET assets\anims\wyrm.asm
	ENDIF

	; ************************************
	; Tilesets
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\bec_logo\tiles.asm
	INCLUDE_TEXT_ASSET assets\maps\controls\tiles.asm
	INCLUDE_TEXT_ASSET assets\maps\disclmr\tiles.asm
	INCLUDE_TEXT_ASSET assets\maps\demoend\tiles.asm
	INCLUDE_TEXT_ASSET assets\maps\soundtst\tiles.asm
	INCLUDE_TEXT_ASSET assets\maps\legal\tiles.asm

	; ************************************
	; Static screen maps
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\bec_logo\map.asm
	INCLUDE_TEXT_ASSET assets\maps\soundtst\map.asm

	IF DEMO_SHOW_THANKS
	INCLUDE_TEXT_ASSET assets\maps\demoend\map.asm
	ENDIF

	; ************************************
	; Palettes
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\legal\palette.asm
	INCLUDE_TEXT_ASSET assets\maps\bec_logo\palette.asm
	INCLUDE_TEXT_ASSET assets\maps\controls\palette.asm
	INCLUDE_TEXT_ASSET assets\maps\disclmr\palette.asm
	INCLUDE_TEXT_ASSET assets\maps\demoend\palette.asm
	INCLUDE_TEXT_ASSET assets\maps\soundtst\palette.asm

	; ************************************
	; Blocks
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\legal\blocks.asm
	INCLUDE_TEXT_ASSET assets\maps\controls\blocks.asm
	INCLUDE_TEXT_ASSET assets\maps\disclmr\blocks.asm

	; ************************************
	; Block maps
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\mainmenu\blockmap.asm
	INCLUDE_TEXT_ASSET assets\maps\endlevel\blockmap.asm
	INCLUDE_TEXT_ASSET assets\maps\credits\blockmap.asm
	INCLUDE_TEXT_ASSET assets\maps\legal\blockmap.asm
	INCLUDE_TEXT_ASSET assets\maps\controls\blockmap.asm
	INCLUDE_TEXT_ASSET assets\maps\disclmr\blockmap.asm

	; ************************************
	; Game objects
	; ************************************
	INCLUDE_TEXT_ASSET assets\maps\mainmenu\gameobj.asm
	INCLUDE_TEXT_ASSET assets\maps\endlevel\gameobj.asm
	INCLUDE_TEXT_ASSET assets\maps\credits\gameobj.asm
	INCLUDE_TEXT_ASSET assets\maps\legal\gameobj.asm
	
	; ************************************
	; Audio
	; ************************************
audio_assets_start
	INCLUDE_TEXT_ASSET assets\audio\instrs.asm
	INCLUDE_TEXT_ASSET assets\audio\tracks.asm
	INCLUDE_TEXT_ASSET assets\audio\sfx.asm
audio_assets_end

	; ************************************
	; VFX
	; ************************************
	INCLUDE_TEXT_ASSET assets\vfx\bolt.asm
	INCLUDE_TEXT_ASSET assets\vfx\rain.asm
	INCLUDE_TEXT_ASSET assets\vfx\water.asm
	
	; ************************************
	; Strings
	; ************************************
	INCLUDE_TEXT_ASSET assets\strings.asm
	INCLUDE_TEXT_ASSET assets\credits.asm

	; ************************************
	; Binaries
	; ************************************
	INCLUDE_TEXT_ASSET assets\binaries.asm

all_assets_end

	; ************************************
	; Palette IDs
	; ************************************
; Intro logos
PaletteId_BigEvilLogo0		equ 0x0
PaletteId_BigEvilLogo1		equ 0x1
PaletteId_BigEvilLogo2		equ 0x2

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

; Legal screen
PaletteId_LegalScreen	equ 0x0

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
VfxId_WaterTrail			equ 0x1
VfxId_RainLight				equ 0x2
VfxId_LightningBolt			equ 0x3
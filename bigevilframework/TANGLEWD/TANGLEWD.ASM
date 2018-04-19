;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   tanglewd.asm - includes all code and encapsulates ROM
;==============================================================

__start

code_start

	; Include all macros
	include '..\framewk\macros.asm'
	include '..\gamelib\macros.asm'

	; Include build config
	include 'bldconf.asm'

	; Include SEGA Genesis ROM header and CPU vector table
	include 'header.asm'
	
	; Include framework containers
	include '..\framewk\linklist.asm'

	; Ensure entry point is first (should be 0x200, after header)
	include '..\framewk\init.asm'
	
	; Include interrupts
	include 'interpts.asm'

	; Include framework constants
	include '..\framewk\globals.asm'

	; Include framework code
	include '..\framewk\dmaqueue.asm'
	include '..\framewk\collisn.asm'
	include '..\framewk\errors.asm'
	include '..\framewk\exceptn.asm'
	include '..\framewk\fm.asm'
	include '..\framewk\gamepad.asm'
	include '..\framewk\interpts.asm'
	include '..\framewk\maths.asm'
	include '..\framewk\megacd.asm'
	include '..\framewk\memory.asm'
	include '..\framewk\psg.asm'
	include '..\framewk\rampool.asm'
	include '..\framewk\sprites.asm'
	include '..\framewk\text.asm'
	include '..\framewk\tiles.asm'
	include '..\framewk\timing.asm'
	include '..\framewk\tmss.asm'
	include '..\framewk\palettes.asm'
	include '..\framewk\planes.asm'
	include '..\framewk\sound.asm'
	include '..\framewk\vdp.asm'
	include '..\framewk\vdpqueue.asm'
	include '..\framewk\vrampool.asm'
	include '..\framewk\z80.asm'
	; include ..\framewk\sequencr.asm'
	include '..\framewk\echo\echo.asm'
	include '..\framewk\echo\esf.asm'
	include '..\framewk\slz\slz.asm'

	IFD DEBUG
	include '..\framewk\debugger.asm'	; NOT FOR RELEASE
	include '..\framewk\profile.asm'	; NOT FOR RELEASE
	ENDIF
	
	; Include GameLib constants
	include '..\gamelib\globals.asm'
	
	; Include Entity derivatives in inheritance order
	include '..\gamelib\entity.asm'
	include '..\gamelib\sprtobj.asm'
	include '..\gamelib\animobj.asm'
	include '..\gamelib\physobj.asm'

	; Include GameLib code
	include '..\gamelib\anim.asm'
	include '..\gamelib\debug.asm'
	include '..\gamelib\barrier.asm'
	include '..\gamelib\cutscene.asm'
	include '..\gamelib\effects.asm'
	include '..\gamelib\camera.asm'
	include '..\gamelib\charactr.asm'
	include '..\gamelib\colour.asm'
	include '..\gamelib\level.asm'
	include '..\gamelib\pickup.asm'
	include '..\gamelib\platform.asm'
	include '..\gamelib\physics.asm'
	include '..\gamelib\raster.asm'
	include '..\gamelib\scnanim.asm'
	include '..\gamelib\sprites.asm'
	include '..\gamelib\sprsheet.asm'
	include '..\gamelib\state.asm'
	include '..\gamelib\stream.asm'
	include '..\gamelib\vfx.asm'

	IFD DEBUG
	include '..\gamelib\debug.asm'		; NOT FOR RELEASE
	ENDIF

	; Include UI code
	include '..\gamelib\uiwidget.asm'
	include '..\gamelib\uiwindow.asm'
	include '..\gamelib\uicursor.asm'
	include '..\gamelib\uitext.asm'
	include '..\gamelib\uilist.asm'
	include '..\gamelib\uimacros.asm'

	; Include utils
	include 'utils.asm'

	; Include GameObject derivatives
	IFND DEBUG
	include 'objects\monster.asm'
	include 'objects\boulder.asm'
	include 'objects\firefly.asm'
	ENDIF
	include 'objects\actor.asm'
	include 'objects\aimarker.asm'
	include 'objects\borgus.asm'
	include 'objects\bridge.asm'
	include 'objects\button.asm'
	include 'objects\cart.asm'
	include 'objects\crate.asm'
	include 'objects\checkpnt.asm'
	include 'objects\deathbox.asm'
	include 'objects\demon.asm'
	include 'objects\djakcage.asm'
	include 'objects\djubb.asm'
	include 'objects\flue.asm'
	include 'objects\fuzzl.asm'
	include 'objects\fuzlcage.asm'
	include 'objects\generatr.asm'
	include 'objects\gen_cogs.asm'
	include 'objects\hogg.asm'
	include 'objects\ladder.asm'
	include 'objects\leaf.asm'
	include 'objects\log.asm'
	include 'objects\lock.asm'
	include 'objects\rope.asm'
	include 'objects\longboat.asm'
	include 'objects\lift.asm'
	include 'objects\cargolft.asm'
	include 'objects\location.asm'
	include 'objects\nest.asm'
	include 'objects\pillar.asm'
	include 'objects\plant.asm'
	include 'objects\player.asm'
	include 'objects\pool.asm'
	include 'objects\raft.asm'
	include 'objects\scirus.asm'
	include 'objects\scrap.asm'
	include 'objects\skivv.asm'
	include 'objects\stalact.asm'
	include 'objects\stone.asm'
	include 'objects\swarm.asm'
	include 'objects\trap.asm'
	include 'objects\trigger.asm'
	include 'objects\waterbdy.asm'
	include 'objects\winch.asm'
	include 'objects\windflue.asm'
	include 'objects\wyrm.asm'

	; Include AI
	include 'ai\echoai.asm'
	
	; Include players
	include 'objects\nymn.asm'
	include 'objects\echo.asm'

	; Include level setup
	include 'level.asm'

	; Include autotest
	IFND FINAL
	include 'autotest.asm'
	ENDIF
	
	; Include game states
	include 'states\gameplay.asm'
	
	IFND DEBUG
	include 'states\endact.asm'
	include 'states\endlevel.asm'
	include 'states\fail.asm'
	include 'states\controls.asm'
	include 'states\disclmr.asm'
	include 'states\legal.asm'
	include 'states\score.asm'
	include 'states\logos.asm'
	include 'states\password.asm'
	include 'states\pause.asm'
	include 'states\mainmenu.asm'
	include 'states\credits.asm'

	IF DEMO_SHOW_THANKS
	include 'states\demoend.asm'
	ENDIF

	IF INCLUDE_LEVELSELECT
	include 'states\lvlsel.asm'
	ENDIF

	IF INCLUDE_SOUNDTEST
	include 'states\soundtst.asm'
	ENDIF
	ENDIF
	
	; Include levels
	IF INCLUDE_LEVEL_1
	include 'levels\l1a0.asm'
	include 'levels\l1a1.asm'
	include 'levels\l1a2.asm'
	include 'levels\l1a3.asm'
	include 'levels\l1a4.asm'
	ENDIF

	IF INCLUDE_LEVEL_2
	include 'levels\l2a1.asm'
	include 'levels\l2a2.asm'
	include 'levels\l2a3.asm'
	ENDIF

	IF INCLUDE_LEVEL_3
	include 'levels\l3a1.asm'
	include 'levels\l3a2.asm'
	include 'levels\l3a3.asm'
	ENDIF

	IF INCLUDE_LEVEL_4
	include 'levels\l4a1.asm'
	include 'levels\l4a2.asm'
	include 'levels\l4a3.asm'
	ENDIF

	IF INCLUDE_LEVEL_5
	include 'levels\l5a1.asm'
	include 'levels\l5a2.asm'
	include 'levels\l5a3.asm'
	include 'levels\l5a4.asm'
	ENDIF

	IF INCLUDE_LEVEL_6
	include 'levels\l6a1.asm'
	include 'levels\l6a2.asm'
	include 'levels\l6a3.asm'
	ENDIF

	IF INCLUDE_LEVEL_7
	include 'levels\l7a1.asm'
	include 'levels\l7a2.asm'
	include 'levels\l7a3.asm'
	ENDIF

	IF INCLUDE_LEVEL_8
	include 'levels\l8a1.asm'
	include 'levels\l8a2.asm'
	include 'levels\l8a3.asm'
	include 'levels\l8a4.asm'
	include 'levels\l8a5.asm'
	include 'levels\l8a6.asm'
	ENDIF

	IF INCLUDE_LEVEL_TST1
	include 'levels\tst1.asm'
	ENDIF
	
	; Include game code
	include 'audio.asm'
	include 'input.asm'
	include 'lvllist.asm'
	include 'main.asm'
	include 'savegame.asm'
	include 'tod.asm'
	include 'weather\rain.asm'
	include 'weather\thunder.asm'
	include 'weather\wind.asm'
	include 'weather\weather.asm'

	; ************************************
	; Data includes
	; ************************************

	; Include framework data
	include '..\framewk\initdata.asm'
	include '..\framewk\charmap.asm'
	include '..\framewk\sintable.asm'
	include '..\framewk\costable.asm'

	; Include game data
	include 'globals.asm'
	include 'memmap.asm'

code_end

	; Include game art
	include 'assets\assetmap.asm'
	
	; Include sound driver binary last
	include '..\framewk\echo\echodrv.asm'

__end    ; Very last line, end of ROM address

	inform 0,""
	inform 0,"All sprite assets: %d bytes (%dkb)", (sprite_assets_end-sprite_assets_start), (sprite_assets_end-sprite_assets_start)/1024
	inform 0,"All level assets: %d bytes (%dkb)", (level_assets_end-level_assets_start), (level_assets_end-level_assets_start)/1024
	inform 0,"All audio assets: %d bytes (%dkb)", (audio_assets_end-audio_assets_start), (audio_assets_end-audio_assets_start)/1024
	inform 0,"All assets: %d bytes (%dkb)", (all_assets_end-all_assets_start), (all_assets_end-all_assets_start)/1024
	inform 0,"All code: %d bytes (%dkb)", (code_end-code_start), (code_end-code_start)/1024
	inform 0,""
	inform 0,"-----------------------------------"
	inform 0,"Reserved RAM: 0x%h (%d) bytes (%dkb)", (reserved_ram_size-0x00FF0000), (reserved_ram_size-0x00FF0000), ((reserved_ram_size-0x00FF0000)/1024)
	inform 0,"-----------------------------------"
	inform 0,""
	inform 0,"-----------------------------------"
	inform 0,"ROM total size: 0x%h (%d) bytes (%dkb)", (__end-__start), (__end-__start), ((__end-__start)/1024)
	inform 0,"-----------------------------------"
	inform 0,""
	
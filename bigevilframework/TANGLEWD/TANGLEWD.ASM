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
	INCLUDE_CODE header.asm
	
	; Include framework containers
	INCLUDE_CODE ..\framewk\linklist.asm

	; Ensure entry point is first (should be 0x200, after header)
	INCLUDE_CODE ..\framewk\init.asm
	
	; Include interrupts
	INCLUDE_CODE interpts.asm

	; Include framework constants
	INCLUDE_CODE ..\framewk\globals.asm

	; Include framework code
	INCLUDE_CODE ..\framewk\dmaqueue.asm
	INCLUDE_CODE ..\framewk\collisn.asm
	INCLUDE_CODE ..\framewk\errors.asm
	INCLUDE_CODE ..\framewk\exceptn.asm
	INCLUDE_CODE ..\framewk\fm.asm
	INCLUDE_CODE ..\framewk\gamepad.asm
	INCLUDE_CODE ..\framewk\interpts.asm
	INCLUDE_CODE ..\framewk\maths.asm
	INCLUDE_CODE ..\framewk\megacd.asm
	INCLUDE_CODE ..\framewk\memory.asm
	INCLUDE_CODE ..\framewk\psg.asm
	INCLUDE_CODE ..\framewk\rampool.asm
	INCLUDE_CODE ..\framewk\sprites.asm
	INCLUDE_CODE ..\framewk\text.asm
	INCLUDE_CODE ..\framewk\tiles.asm
	INCLUDE_CODE ..\framewk\timing.asm
	INCLUDE_CODE ..\framewk\tmss.asm
	INCLUDE_CODE ..\framewk\palettes.asm
	INCLUDE_CODE ..\framewk\planes.asm
	INCLUDE_CODE ..\framewk\sound.asm
	INCLUDE_CODE ..\framewk\vdp.asm
	INCLUDE_CODE ..\framewk\vdpqueue.asm
	INCLUDE_CODE ..\framewk\vrampool.asm
	INCLUDE_CODE ..\framewk\z80.asm
	; include ..\framewk\sequencr.asm
	INCLUDE_CODE ..\framewk\echo\echo.asm
	INCLUDE_CODE ..\framewk\echo\esf.asm
	INCLUDE_CODE ..\framewk\slz\slz.asm

	IFD DEBUG
	INCLUDE_CODE ..\framewk\debugger.asm	; NOT FOR RELEASE
	INCLUDE_CODE ..\framewk\profile.asm	; NOT FOR RELEASE
	ENDIF
	
	; Include GameLib constants
	INCLUDE_CODE ..\gamelib\globals.asm
	
	; Include Entity derivatives in inheritance order
	INCLUDE_CODE ..\gamelib\entity.asm
	INCLUDE_CODE ..\gamelib\sprtobj.asm
	INCLUDE_CODE ..\gamelib\animobj.asm
	INCLUDE_CODE ..\gamelib\physobj.asm

	; Include GameLib code
	INCLUDE_CODE ..\gamelib\anim.asm
	INCLUDE_CODE ..\gamelib\debug.asm
	INCLUDE_CODE ..\gamelib\barrier.asm
	INCLUDE_CODE ..\gamelib\cutscene.asm
	INCLUDE_CODE ..\gamelib\effects.asm
	INCLUDE_CODE ..\gamelib\camera.asm
	INCLUDE_CODE ..\gamelib\charactr.asm
	INCLUDE_CODE ..\gamelib\colour.asm
	INCLUDE_CODE ..\gamelib\level.asm
	INCLUDE_CODE ..\gamelib\pickup.asm
	INCLUDE_CODE ..\gamelib\platform.asm
	INCLUDE_CODE ..\gamelib\physics.asm
	INCLUDE_CODE ..\gamelib\raster.asm
	INCLUDE_CODE ..\gamelib\scnanim.asm
	INCLUDE_CODE ..\gamelib\sprites.asm
	INCLUDE_CODE ..\gamelib\sprsheet.asm
	INCLUDE_CODE ..\gamelib\state.asm
	INCLUDE_CODE ..\gamelib\stream.asm
	INCLUDE_CODE ..\gamelib\vfx.asm

	IFD DEBUG
	INCLUDE_CODE ..\gamelib\debug.asm		; NOT FOR RELEASE
	ENDIF

	; Include UI code
	INCLUDE_CODE ..\gamelib\uiwidget.asm
	INCLUDE_CODE ..\gamelib\uiwindow.asm
	INCLUDE_CODE ..\gamelib\uicursor.asm
	INCLUDE_CODE ..\gamelib\uitext.asm
	INCLUDE_CODE ..\gamelib\uilist.asm
	INCLUDE_CODE ..\gamelib\uimacros.asm

	; Include utils
	INCLUDE_CODE utils.asm

	; Include GameObject derivatives
	IFND DEBUG
	INCLUDE_CODE objects\monster.asm
	INCLUDE_CODE objects\boulder.asm
	INCLUDE_CODE objects\firefly.asm
	ENDIF
	INCLUDE_CODE objects\actor.asm
	INCLUDE_CODE objects\aimarker.asm
	INCLUDE_CODE objects\borgus.asm
	INCLUDE_CODE objects\bridge.asm
	INCLUDE_CODE objects\button.asm
	INCLUDE_CODE objects\cart.asm
	INCLUDE_CODE objects\crate.asm
	INCLUDE_CODE objects\checkpnt.asm
	INCLUDE_CODE objects\deathbox.asm
	INCLUDE_CODE objects\demon.asm
	INCLUDE_CODE objects\djakcage.asm
	INCLUDE_CODE objects\djubb.asm
	INCLUDE_CODE objects\flue.asm
	INCLUDE_CODE objects\fuzzl.asm
	INCLUDE_CODE objects\fuzlcage.asm
	INCLUDE_CODE objects\generatr.asm
	INCLUDE_CODE objects\gen_cogs.asm
	INCLUDE_CODE objects\hogg.asm
	INCLUDE_CODE objects\ladder.asm
	INCLUDE_CODE objects\leaf.asm
	INCLUDE_CODE objects\log.asm
	INCLUDE_CODE objects\lock.asm
	INCLUDE_CODE objects\rope.asm
	INCLUDE_CODE objects\longboat.asm
	INCLUDE_CODE objects\lift.asm
	INCLUDE_CODE objects\cargolft.asm
	INCLUDE_CODE objects\location.asm
	INCLUDE_CODE objects\nest.asm
	INCLUDE_CODE objects\pillar.asm
	INCLUDE_CODE objects\plant.asm
	INCLUDE_CODE objects\player.asm
	INCLUDE_CODE objects\pool.asm
	INCLUDE_CODE objects\raft.asm
	INCLUDE_CODE objects\scirus.asm
	INCLUDE_CODE objects\scrap.asm
	INCLUDE_CODE objects\skivv.asm
	INCLUDE_CODE objects\stalact.asm
	INCLUDE_CODE objects\stone.asm
	INCLUDE_CODE objects\swarm.asm
	INCLUDE_CODE objects\trap.asm
	INCLUDE_CODE objects\trigger.asm
	INCLUDE_CODE objects\waterbdy.asm
	INCLUDE_CODE objects\winch.asm
	INCLUDE_CODE objects\windflue.asm
	INCLUDE_CODE objects\wyrm.asm
	
	; Include players
	INCLUDE_CODE objects\nymn.asm
	INCLUDE_CODE objects\echo.asm

	; Include level setup
	INCLUDE_CODE level.asm

	; Include autotest
	IFND FINAL
	INCLUDE_CODE autotest.asm
	ENDIF
	
	; Include game states
	INCLUDE_CODE states\gameplay.asm
	
	IFND DEBUG
	INCLUDE_CODE states\endact.asm
	INCLUDE_CODE states\endlevel.asm
	INCLUDE_CODE states\fail.asm
	INCLUDE_CODE states\controls.asm
	INCLUDE_CODE states\disclmr.asm
	INCLUDE_CODE states\megafndr.asm
	INCLUDE_CODE states\score.asm
	INCLUDE_CODE states\logos.asm
	INCLUDE_CODE states\password.asm
	INCLUDE_CODE states\pause.asm
	INCLUDE_CODE states\mainmenu.asm
	INCLUDE_CODE states\credits.asm

	IF DEMO_SHOW_THANKS
	INCLUDE_CODE states\demoend.asm
	ENDIF

	IF INCLUDE_LEVELSELECT
	INCLUDE_CODE states\lvlsel.asm
	ENDIF

	IF INCLUDE_SOUNDTEST
	INCLUDE_CODE states\soundtst.asm
	ENDIF
	ENDIF
	
	; Include levels
	IF INCLUDE_LEVEL_1
	INCLUDE_CODE levels\l1a0.asm
	INCLUDE_CODE levels\l1a1.asm
	INCLUDE_CODE levels\l1a2.asm
	INCLUDE_CODE levels\l1a3.asm
	INCLUDE_CODE levels\l1a4.asm
	ENDIF

	IF INCLUDE_LEVEL_2
	INCLUDE_CODE levels\l2a1.asm
	INCLUDE_CODE levels\l2a2.asm
	INCLUDE_CODE levels\l2a3.asm
	ENDIF

	IF INCLUDE_LEVEL_3
	INCLUDE_CODE levels\l3a1.asm
	INCLUDE_CODE levels\l3a2.asm
	INCLUDE_CODE levels\l3a3.asm
	ENDIF

	IF INCLUDE_LEVEL_4
	INCLUDE_CODE levels\l4a1.asm
	INCLUDE_CODE levels\l4a2.asm
	INCLUDE_CODE levels\l4a3.asm
	ENDIF

	IF INCLUDE_LEVEL_5
	INCLUDE_CODE levels\l5a1.asm
	INCLUDE_CODE levels\l5a2.asm
	INCLUDE_CODE levels\l5a3.asm
	INCLUDE_CODE levels\l5a4.asm
	ENDIF

	IF INCLUDE_LEVEL_6
	INCLUDE_CODE levels\l6a1.asm
	INCLUDE_CODE levels\l6a2.asm
	INCLUDE_CODE levels\l6a3.asm
	ENDIF

	IF INCLUDE_LEVEL_7
	INCLUDE_CODE levels\l7a1.asm
	INCLUDE_CODE levels\l7a2.asm
	INCLUDE_CODE levels\l7a3.asm
	ENDIF

	IF INCLUDE_LEVEL_8
	INCLUDE_CODE levels\l8a1.asm
	INCLUDE_CODE levels\l8a2.asm
	INCLUDE_CODE levels\l8a3.asm
	INCLUDE_CODE levels\l8a4.asm
	INCLUDE_CODE levels\l8a5.asm
	INCLUDE_CODE levels\l8a6.asm
	ENDIF
	
	; Include game code
	INCLUDE_CODE audio.asm
	INCLUDE_CODE input.asm
	INCLUDE_CODE lvllist.asm
	INCLUDE_CODE main.asm
	INCLUDE_CODE savegame.asm
	INCLUDE_CODE tod.asm
	INCLUDE_CODE weather\rain.asm
	INCLUDE_CODE weather\thunder.asm
	INCLUDE_CODE weather\wind.asm
	INCLUDE_CODE weather\weather.asm

	; ************************************
	; Data includes
	; ************************************

	; Include framework data
	INCLUDE_CODE ..\framewk\initdata.asm
	INCLUDE_CODE ..\framewk\charmap.asm
	INCLUDE_CODE ..\framewk\sintable.asm
	INCLUDE_CODE ..\framewk\costable.asm

	; Include game data
	INCLUDE_CODE globals.asm
	INCLUDE_CODE memmap.asm

code_end

	; Include game art
	include 'assets\assetmap.asm'
	
	; Include sound driver binary last
	INCLUDE_CODE ..\framewk\echo\echodrv.asm

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
	
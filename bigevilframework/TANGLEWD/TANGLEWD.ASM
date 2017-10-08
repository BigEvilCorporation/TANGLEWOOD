;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   tanglewd.asm - includes, setup, game flow, main loop
;==============================================================

__start

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

	; Include framework macros and constants
	include '..\framewk\macros.asm'
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
	; include '..\framewk\sequencr.asm'
	include '..\framewk\echo\echo.asm'
	include '..\framewk\echo\esf.asm'
	include '..\framewk\slz\slz.asm'

	IFD DEBUG
	include '..\framewk\debugger.asm'	; NOT FOR RELEASE
	include '..\framewk\profile.asm'	; NOT FOR RELEASE
	ENDIF
	
	; Include GameLib macros and constants
	include '..\gamelib\macros.asm'
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
	include '..\gamelib\ledges.asm'
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
	include '..\gamelib\uimacros.asm'

	; Include GameObject derivatives
	IFND DEBUG
	include 'objects\monster.asm'
	;include 'objects\djrake.asm'
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
	include 'objects\ladder.asm'
	include 'objects\leaf.asm'
	include 'objects\log.asm'
	include 'objects\lock.asm'
	include 'objects\rope.asm'
	include 'objects\lift.asm'
	include 'objects\location.asm'
	include 'objects\nest.asm'
	include 'objects\pillar.asm'
	include 'objects\plant.asm'
	include 'objects\player.asm'
	include 'objects\pool.asm'
	include 'objects\raft.asm'
	include 'objects\stone.asm'
	include 'objects\trigger.asm'
	include 'objects\waterbdy.asm'
	include 'objects\winch.asm'
	include 'objects\windflue.asm'
	include 'objects\wyrm.asm'
	
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
	include 'states\demoend.asm'
	;include 'states\kickstrt.asm'
	include 'states\megafndr.asm'
	include 'states\score.asm'
	include 'states\logos.asm'
	include 'states\pause.asm'
	include 'states\mainmenu.asm'

	IF INCLUDE_LEVELSELECT
	include 'states\lvlsel.asm'
	ENDIF

	IF INCLUDE_SOUNDTEST
	include 'states\soundtst.asm'
	ENDIF
	ENDIF
	
	; Include levels
	IF INCLUDE_LEVEL_1
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
	ENDIF

	IF INCLUDE_LEVEL_5
	include 'levels\l5a1.asm'
	include 'levels\l5a2.asm'
	include 'levels\l5a4.asm'
	ENDIF

	IF INCLUDE_LEVEL_6
	include 'levels\l6a1.asm'
	include 'levels\l6a2.asm'
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
	ENDIF
	
	; Include game code
	include 'audio.asm'
	include 'input.asm'
	include 'savegame.asm'
	include 'tod.asm'
	include 'weather\rain.asm'
	include 'weather\thunder.asm'
	include 'weather\wind.asm'
	include 'weather\weather.asm'

	; ************************************
	; Post-init entry point
	; ************************************
__main:

	; Disable vint during loading
	move.b #0x0, vint_enabled
	
	; Load water level raster effect by default
	jsr    RasterEffectUnderwaterInit
	;jsr    RasterEffectInterlacePlaneBInit
	
	; Init game state stack
	move.l #GameStateStack, GameStateStackPtr

	; Load font
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfont)
	lea    tiles_twfont, a0
	jsr    TXT_LoadFont

	; Clear counters
	move.l #0x0, hblank_counter
	move.l #0x0, vblank_counter
	move.l #0x0, frame_counter_update
	move.l #0x0, frame_counter_render

	; Init autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	move.b #AUTOTEST_TESTMODE, d0
	jsr  AutotestInit
	ENDIF
	ENDIF
	
	; Enter first game state
	move.l #InitialState, a0
	jsr GameStateEnter

	; ************************************
	; Main game loop
	; ************************************
GameLoop:

	; Begin frame
	jsr RenderBeginFrame
	
	; Update current state
	jsr GameStateUpdate
	
	; Render current state
	jsr GameStateRender
	
	; Update palette lerping
	jsr PAL_LerpUpdate

	; Update audio
	jsr SND_Update
	
	; End frame
	jsr RenderEndFrame

	; Update autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	jsr  AutotestUpdate
	ENDIF
	ENDIF

	; Back to top
	bra GameLoop

	; ************************************
	; Rendering
	; ************************************
RenderBeginFrame:

	; Disable vint
	move.b #0x0, vint_enabled
	
	; Reset sprite link counter
	move.w #0x0, next_sprite_index

	; Move first sprite to border
	move.w #0x0, d0
	move.w #0x0, d1
	jsr    SPR_SetPosY
	
	IFD DEBUG
	; Profiler frame start
	jsr DBG_Profile_BeginFrame
	ENDIF
	
	rts
	
RenderEndFrame:

	; Convert underwater palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	lea    UnderwaterPalettes, a1
	@PaletteLp:
	btst.b d0, (UnderwaterDirtyPalettesMask)
	beq    @NotDirty
	PUSHM  d0/a0-a1
	jsr    VFX_CreateUnderwaterPalette
	POPM   d0/a0-a1
	@NotDirty:
	lea    size_palette_b(a0), a0
	lea    size_palette_b(a1), a1
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLp

	; Reset dirty palette mask
	move.b #0x0, (UnderwaterDirtyPalettesMask)

	; Update frame counter
	addq.l #0x1, frame_counter_update
	
	; Get current render counter
	move.l (frame_counter_render), d0
	
	; Enable VINT
	move.b #0x1, vint_enabled
	
	; Wait for next render
	@WaitForVINT:
	move.l (frame_counter_render), d1
	cmp.l  d0, d1
	beq    @WaitForVINT
	
	IFD DEBUG
	; Profiler frame end
	jsr DBG_Profile_EndFrame
	jsr DBG_Profile_DrawResults
	ENDIF
	
	rts
	
	; ************************************
	; VINT
	; ************************************
__vinterrupt:

	IFD DEBUG
	lea Str_Render, a0
	jsr DBG_Profile_PushScope
	ENDIF

	; Update current raster effect
	move.l (raster_effect_update), a0
	cmp.l  #0x0, a0
	beq    @NoRasterEffect
	jsr    (a0)
	@NoRasterEffect:

	; DMA the sprite table
	move.w (next_sprite_index), d1
	tst.w  d1
	beq    @NoSprites
	lea    vdp_sprite_table, a0
	move.l #vram_addr_sprite_table, d0
	mulu.w #Sprite_Struct_Size/size_word, d1
	jsr    VDP_DMACopyVRAM
	@NoSprites:

	; DMA palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	@PaletteLp:
	btst   d0, (DirtyPalettesMask)
	beq    @NotDirty
	PUSHM  d0/a0
	jsr    PAL_LoadDMA
	POPM   d0/a0
	@NotDirty:
	lea    size_palette_b(a0), a0
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLp

	; Reset dirty palette mask
	move.b #0x0, (DirtyPalettesMask)
	
	; Execute DMA job queue
	jsr    VDP_DMAQueue_ExecuteAll
	
	; Execute VDP job queue
	jsr    VDP_JobQueue_ExecuteAll
	
	IFD DEBUG
	jsr DBG_Profile_PopScope
	ENDIF

	; NOT FOR RELEASE
	IFD DEBUG
	;jsr DBG_DebugDraw
	ENDIF
	
	; Update frame counter
	addq.l #0x1, frame_counter_render

	rts

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

	; Include game art
	include 'assets\assetmap.asm'

	; Include game art binaries
	include 'assets\binaries.asm'
	
	; Include sound driver binary last
	include '..\framewk\echo\echodrv.asm'

__end    ; Very last line, end of ROM address

	inform 0,""
	inform 0,"-----------------------------------"
	inform 0,"ROM total size: %d bytes (%dkb)", (__end-__start), ((__end-__start)/1024)
	inform 0,"-----------------------------------"
	inform 0,""
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   tanglewd.asm - includes, setup, game flow, main loop
;==============================================================

__start
	
	; Include SEGA Genesis ROM header and CPU vector table
	include 'header.asm'
	
	; Include Framework macros
	include '..\framewk\macros.asm'

	; Include Framework code
	include '..\framewk\init.asm'
	include '..\framewk\dmaqueue.asm'
	include '..\framewk\collisn.asm'
	include '..\framewk\exceptn.asm'
	include '..\framewk\gamepad.asm'
	include '..\framewk\interpts.asm'
	include '..\framewk\maths.asm'
	include '..\framewk\megacd.asm'
	include '..\framewk\memory.asm'
	include '..\framewk\psg.asm'
	include '..\framewk\sprites.asm'
	include '..\framewk\text.asm'
	include '..\framewk\timing.asm'
	include '..\framewk\tmss.asm'
	include '..\framewk\palettes.asm'
	include '..\framewk\planes.asm'
	include '..\framewk\vdp.asm'
	include '..\framewk\vdpqueue.asm'
	include '..\framewk\z80.asm'
	; include '..\framewk\sequencr.asm'
	include '..\framewk\echo\echo.asm'
	include '..\framewk\echo\esf.asm'

	IFD DEBUG
	include '..\framewk\debugger.asm'	; NOT FOR RELEASE
	include '..\framewk\profile.asm'	; NOT FOR RELEASE
	ENDIF
	
	; Include GameLib macros
	include '..\gamelib\macros.asm'
	
	; Include Entity derivatives in inheritance order
	include '..\gamelib\entity.asm'
	include '..\gamelib\sprtobj.asm'
	include '..\gamelib\animobj.asm'
	include '..\gamelib\physobj.asm'

	; Include GameLib code
	include '..\gamelib\anim.asm'
	include '..\gamelib\effects.asm'
	include '..\gamelib\camera.asm'
	include '..\gamelib\charactr.asm'
	include '..\gamelib\colour.asm'
	include '..\gamelib\globals.asm'
	include '..\gamelib\ledges.asm'
	include '..\gamelib\level.asm'
	include '..\gamelib\pickup.asm'
	include '..\gamelib\physics.asm'
	include '..\gamelib\sprites.asm'
	include '..\gamelib\state.asm'
	include '..\gamelib\stream.asm'

	IFD DEBUG
	include '..\gamelib\debug.asm'		; NOT FOR RELEASE
	ENDIF

	; Include GameObject derivatives
	include 'objects\actor.asm'
	include 'objects\boulder.asm'
	include 'objects\checkpnt.asm'
	include 'objects\firefly.asm'
	include 'objects\flue.asm'
	include 'objects\fuzzl.asm'
	include 'objects\leaf.asm'
	include 'objects\location.asm'
	include 'objects\monster.asm'
	include 'objects\nest.asm'
	include 'objects\player.asm'
	include 'objects\trigger.asm'
	include 'objects\waterbdy.asm'
	
	; Include game states
	include 'states\endlevel.asm'
	include 'states\fail.asm'
	include 'states\gameplay.asm'
	IFND DEBUG
	include 'states\logos.asm'
	include 'states\mainmenu.asm'
	ENDIF
	
	; Include levels
	include 'levels\level1.asm'
	; include 'levels\level2.asm'
	
	; Include game code
	include 'audio.asm'
	include 'input.asm'
	include 'level.asm'
	
	include 'tod.asm'

	; ************************************
	; Post-init entry point
	; ************************************
__main:

	; Disable vint during loading
	move.b #0x0, vint_enabled

	; Load debug draw font
	lea      Tiles_PixelFont, a0
	move.l   #Tiles_PixelFontVRAM, d0
	move.l   #Tiles_PixelFontSizeT, d1
	jsr      LoadTiles

	; Clear counters
	move.l #0x0, hblank_counter
	move.l #0x0, vblank_counter
	move.l #0x0, frame_counter_update
	move.l #0x0, frame_counter_render
	
	; Set first level
	IFD DEBUG
	move.l #Tst1_Forest, CurrentLevel
	ELSE
	move.l #Lvl1_HarlequinForest, CurrentLevel
	ENDIF
	
	; Enter first game state
	IFD DEBUG
	lea GameStateGameplay, a0
	ELSE
	lea GameStateLogos, a0
	ENDIF
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
	jsr PaletteLerpUpdate
	
	; End frame
	jsr RenderEndFrame

	; Back to top
	jmp GameLoop

	; ************************************
	; Rendering
	; ************************************
RenderBeginFrame:

	; Disable vint
	move.b #0x0, vint_enabled
	
	; Clear sprite links
	jsr    ClearSpriteLinks
	
	; Clear last linked
	move.w #0x0, prev_sprite_link
	
	IFD DEBUG
	; Profiler frame start
	jsr Profile_BeginFrame
	ENDIF
	
	rts
	
RenderEndFrame:

	; Update frame counter
	addi.l #0x1, frame_counter_update
	
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
	jsr Profile_EndFrame
	jsr Profile_DrawResults
	ENDIF
	
	rts
	
	; ************************************
	; VINT
	; ************************************
__vinterrupt:

	; DMA the sprite table
	cmp.w  #0x0, prev_sprite_link
	beq    @NoSprites
	lea    vdp_sprite_table, a0
	move.w #vram_addr_sprite_table, d0
	move.w (next_sprite_index), d1
	mulu.w #Sprite_Struct_Size, d1
	jsr    VPDDMACopyVRAM
	@NoSprites:
	
	IFD DEBUG
	lea Str_Render, a0
	jsr Profile_PushScope
	ENDIF
	
	; Execute DMA job queue
	jsr    VDPDMAQueue_ExecuteAll
	
	; Execute VDP job queue
	jsr    VDPQueue_ExecuteAll
	
	IFD DEBUG
	jsr Profile_PopScope
	ENDIF

	; NOT FOR RELEASE
	IFD DEBUG
	;jsr DebugDraw
	ENDIF
	
	; Update frame counter
	addi.l #0x1, frame_counter_render

	rts

	; ************************************
	; Data includes
	; ************************************

	; Include framework data
	include '..\framewk\initdata.asm'
	include '..\framewk\globals.asm'
	include '..\framewk\charmap.asm'
	include '..\framewk\sintable.asm'

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
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   tanglewd.asm - includes, setup, game flow, main loop
;==============================================================
	
	; Include SEGA Genesis ROM header and CPU vector table
	include 'header.asm'

	; Include Framework code
	include '..\framewk\init.asm'
	
	include '..\framewk\collisn.asm'
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

	IFD DEBUG
	include '..\framewk\debugger.asm'	; NOT FOR RELEASE
	include '..\framewk\profile.asm'	; NOT FOR RELEASE
	ENDIF

	; Include GameLib code
	include '..\gamelib\gameobj.asm'
	include '..\gamelib\animobj.asm'
	include '..\gamelib\camera.asm'
	include '..\gamelib\charactr.asm'
	include '..\gamelib\colour.asm'
	include '..\gamelib\ledges.asm'
	include '..\gamelib\level.asm'
	include '..\gamelib\pickup.asm'
	include '..\gamelib\physics.asm'
	include '..\gamelib\sprites.asm'
	include '..\gamelib\stream.asm'

	IFD DEBUG
	include '..\gamelib\debug.asm'		; NOT FOR RELEASE
	ENDIF

	; Include GameObject derivatives
	include 'firefly.asm'
	include 'flue.asm'
	include 'fuzzl.asm'
	include 'leaf.asm'
	include 'monster.asm'
	include 'nest.asm'
	include 'obstacle.asm'
	include 'player.asm'
	
	; Include game code
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

	; Set first level
	IFD DEBUG
	move.l #Tst1_Forest, CurrentLevel
	ELSE
	move.l #Lvl1_HarlequinForest, CurrentLevel
	ENDIF
	
	; Load assets
	jsr LevelLoad

	; Flush VDP queue
	jsr VDPQueue_ExecuteAll
	
	; Reset all positions/velocities
	jsr LevelReset
	
	; Clear counters
	move.l #0x0, hblank_counter
	move.l #0x0, vblank_counter
	move.l #0x0, frame_counter_update
	move.l #0x0, frame_counter_render
	
	;lea SFX_Test, a0
	;jsr Echo_PlaySFX
	
	lea bgm_titles, a0
	;lea BGM_Midnas, a0
	jsr Echo_PlayBGM

	; ************************************
	; Main game loop
	; ************************************
GameLoop:

	; Begin frame
	jsr RenderBeginFrame
	
	move.l (CurrentLevel), a1

	; Read and process gamepad input
	jsr UpdateInput
	
	; Update game objects
	jsr GameObjUpdateAll
	
	; Update camera
	jsr UpdateCamera
	
	; Draw game objects
	jsr GameObjRenderAll
	
	; Update map streaming
	jsr UpdateMapStreaming
	
	; Update time of day
	jsr UpdateTimeOfday
	
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
	move.w #0x0, prev_sprite_link
	
	IFD DEBUG
	; Profiler frame start
	jsr Profile_BeginFrame
	ENDIF
	
	rts
	
RenderEndFrame:

	; Update frame counter
	addi.l #0x1, frame_counter_update
	
	; Enable VINT
	move.b #0x1, vint_enabled
	
	; Wait for VDP job queue
	@WaitVDPQueue:
	jsr   VDPQueue_GetSize
	cmp.l #0x0, d0
	bne   @WaitVDPQueue
	
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
	lea    vdp_sprite_table, a0
	move.w #vram_addr_sprite_table, d0
	move.w (next_sprite_index), d1
	mulu.w #Sprite_Struct_Size, d1
	jsr    VPDDMACopyVRAM
	
	IFD DEBUG
	lea Str_Render, a0
	jsr Profile_PushScope
	ENDIF
	
	; Execute VDP job queue
	jsr VDPQueue_ExecuteAll
	
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

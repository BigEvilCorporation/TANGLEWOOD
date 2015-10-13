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
	include '..\framewk\z80.asm'
	; include '..\framewk\sequencr.asm'

	IFD DEBUG
	include '..\framewk\debugger.asm'  ; NOT FOR RELEASE
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
	include '..\gamelib\debug.asm'  ; NOT FOR RELEASE
	ENDIF

	; Include GameObject derivatives
	include 'firefly.asm'
	include 'flue.asm'
	include 'fuzzl.asm'
	include 'leaf.asm'
	include 'nest.asm'
	include 'obstacle.asm'
	
	; Include game code
	include 'input.asm'
	include 'level.asm'
	include 'player.asm'
	
	include 'tod.asm'

	; ************************************
	; Post-init entry point
	; ************************************
__main:

	; Load debug draw font
	lea      Tiles_PixelFont, a0
	move.l   #Tiles_PixelFontVRAM, d0
	move.l   #Tiles_PixelFontSizeT, d1
	jsr      LoadTiles

	; Set first level
	IFD DEBUG
	move.l #Tst1_Forest, CurrentLevel
	ELSE
	move.l #Lvl1_Tanglewood, CurrentLevel
	ENDIF
	
	; Load assets
	jsr LevelLoad

	; Reset all positions/velocities
	jsr LevelReset

	; Ready
	move.b #0x1, RenderEnabled

	; ************************************
	; Main game loop
	; ************************************
GameLoop:

	; Wait for vsync
	jsr WaitVSync

	; Read and process gamepad input
	jsr UpdateInput
	
	; Update time of day
	jsr UpdateTimeOfday
	
	; Update game objects
	jsr LevelUpdateGameObjs

	; Back to top
	jmp GameLoop

	; ************************************
	; Rendering
	; ************************************
__vsync:

	move.b (RenderEnabled), d0
	cmp.b  #0x0, d0
	beq    @NoVSync

	; Update palette lerping
	jsr PaletteLerpUpdate
	
	; Update camera
	jsr UpdateCamera
		
	; Update map streaming
	jsr UpdateMapStreaming
	
	; Draw game objects
	jsr LevelDrawGameObjs

	; NOT FOR RELEASE
	; jsr DebugDraw

	@NoVSync:

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

	; Include binaries last
	include 'assets\binaries.asm'

__end    ; Very last line, end of ROM address

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   controls.asm - Controls screen state
;==============================================================

; Constants
ControlsScreenDelayTime	equ 0x0180
ControlsScreenFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
ControlsScreenNumColours	equ 0xE ; For palette lerping

GameStateControlsScreen:
	dc.l ControlsScreen_Enter
	dc.l ControlsScreen_Exit
	dc.l ControlsScreen_Update
	dc.l ControlsScreen_Render
	dc.l ControlsScreen_Render
	dc.l 0x0
	
ControlsScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	move.b #GamestateReset_ResetAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #(PaletteId_ControlsScreen<<4), d0
	VDPSETREG 7, d0

	; Load tiles
	clr.l d1
	lea    tiles_controls_screen, a0
	move.w #tiles_controls_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load BG map
	lea    map_blocks_controls, a0
	lea    map_blockmap_controls, a1
	move.l #(map_blockmap_controls_width<<16)|map_blockmap_controls_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_ControlsScreen, d3
	jsr    VDP_LoadBlockMapPlaneA
	
	; Begin fade up
	lea    palette_controls, a0
	move.l #PaletteId_ControlsScreen, d0
	move.l #ControlsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #ControlsScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #ControlsScreenDelayTime, TimerLogoFade
	
	rts
	
ControlsScreen_Exit:
	
	rts
	
ControlsScreen_Update:

	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading

	; If already done fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	subq.l #0x1, d0
	move.l d0, TimerLogoFade
	cmp.l  #0x1, d0
	bne    @NotElapsed
	
	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_ControlsScreen, d0
	move.l #ControlsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #ControlsScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter gameplay state
	lea GameStateGameplay, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
ControlsScreen_Render:
	rts
	
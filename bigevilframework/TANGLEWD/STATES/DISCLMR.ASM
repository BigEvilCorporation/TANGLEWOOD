;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   DemoDisclaimer.asm - Demo DemoDisclaimer screen state
;==============================================================

; Constants
DemoDisclaimerScreenDelayTime	equ 0x0180
DemoDisclaimerScreenFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
DemoDisclaimerScreenNumColours	equ 0xF ; For palette lerping

GameStateDemoDisclaimerScreen:
	dc.l DemoDisclaimerScreen_Enter
	dc.l DemoDisclaimerScreen_Exit
	dc.l DemoDisclaimerScreen_Update
	dc.l DemoDisclaimerScreen_Render
	dc.l DemoDisclaimerScreen_Render
	dc.l 0x0
	
DemoDisclaimerScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	move.b #GamestateReset_ResetAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #(PaletteId_DemoDisclaimerScreen<<4), d0
	VDPSETREG 7, d0

	; Load tiles
	lea    tiles_DemoDisclaimer_screen, a0
	move.w #tiles_DemoDisclaimer_screen_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load BG map
	lea    map_blocks_demodisclaimer_screen, a0
	lea    map_blockmap_demodisclaimer_screen, a1
	move.l #(map_blockmap_demodisclaimer_screen_width<<16)|map_blockmap_demodisclaimer_screen_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_demodisclaimerScreen, d3
	jsr    VDP_LoadBlockMapPlaneA
	
	; Begin fade up
	lea    palette_DemoDisclaimer_Screen, a0
	move.l #PaletteId_DemoDisclaimerScreen, d0
	move.l #DemoDisclaimerScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #DemoDisclaimerScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	MOVE_NTSC_L DemoDisclaimerScreenDelayTime, TimerLogoFade, d0
	
	rts
	
DemoDisclaimerScreen_Exit:
	
	rts
	
DemoDisclaimerScreen_Update:

	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading

	; If already done fade to black
	tst.l  TimerLogoFade
	beq    @FadedOut
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	subq.l #0x1, d0
	move.l d0, TimerLogoFade
	cmp.l  #0x1, d0
	bne    @NotElapsed
	
	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_DemoDisclaimerScreen, d0
	move.l #DemoDisclaimerScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #DemoDisclaimerScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter controls screen state
	lea GameStateControlsScreen, a0
	;lea GameStateGameplay, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
DemoDisclaimerScreen_Render:
	rts
	
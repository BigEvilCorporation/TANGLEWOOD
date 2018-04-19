;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   legal.asm - Legal disclaimer screen state
;==============================================================

; Constants
LegalScreenDelayTime	equ 0x00B0
LegalScreenFadeTime		equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
LegalScreenNumColours	equ 0xF ; For palette lerping

GameStateLegalScreen:
	dc.l LegalScreen_Enter
	dc.l LegalScreen_Exit
	dc.l LegalScreen_Update
	dc.l LegalScreen_Render
	dc.l 0x0
	
LegalScreen_Enter:

	; Clear all palettes
	jsr    PAL_ClearAll

	; Clear planes
	jsr    VDP_ClearMapPlaneA
	jsr    VDP_ClearMapPlaneB

	; Clear VRAM pools
	jsr    VRAM_ClearPools

	; Set BG colour
	move.w #(PaletteId_LegalScreen<<4), d0
	VDP_SETREG 7, d0

	; Load tiles
	moveq #0x0, d1
	lea    tiles_Legal_screen, a0
	move.w #tiles_Legal_screen_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load BG map
	lea    map_blocks_Legal_screen, a0
	lea    map_blockmap_Legal_screen, a1
	move.l #(map_blockmap_Legal_screen_width<<16)|map_blockmap_Legal_screen_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_LegalScreen, d3
	jsr    VDP_LoadBlockMapPlaneA
	
	; Begin fade up
	lea    palette_Legal_screen, a0
	move.l #PaletteId_LegalScreen, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	MOVE_NTSC_L LegalScreenDelayTime, TimerLogoFade, d0
	
	rts
	
LegalScreen_Exit:
	
	rts
	
LegalScreen_Update:

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
	move.l #PaletteId_LegalScreen, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter controls screen state
	lea GameStateMainMenu, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
LegalScreen_Render:
	rts
	
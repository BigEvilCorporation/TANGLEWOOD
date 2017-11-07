;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   megafndr.asm - Megafounder advert screen state
;==============================================================

; Constants
MegafounderScreenDelayTime	equ 0x00B0
MegafounderScreenFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
MegafounderScreenNumColours	equ 0xF ; For palette lerping

GameStateMegafounderScreen:
	dc.l MegafounderScreen_Enter
	dc.l MegafounderScreen_Exit
	dc.l MegafounderScreen_Update
	dc.l MegafounderScreen_Render
	dc.l 0x0
	
MegafounderScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Clear all palettes
	jsr    PAL_ClearAll

	; Clear planes
	jsr    VDP_ClearMapPlaneA
	jsr    VDP_ClearMapPlaneB

	; Clear VRAM pools
	jsr    VRAM_ClearPools

	; Set BG colour
	move.w #(PaletteId_MegafounderScreen<<4), d0
	VDPSETREG 7, d0

	; Load tiles
	clr.l d1
	lea    tiles_megafounder_screen, a0
	move.w #tiles_megafounder_screen_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load BG map
	lea    map_blocks_megafounder_screen, a0
	lea    map_blockmap_megafounder_screen, a1
	move.l #(map_blockmap_megafounder_screen_width<<16)|map_blockmap_megafounder_screen_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_MegafounderScreen, d3
	jsr    VDP_LoadBlockMapPlaneA
	
	; Begin fade up
	lea    palette_megafounder_screen, a0
	move.l #PaletteId_MegafounderScreen, d0
	move.l #MegafounderScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #MegafounderScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #MegafounderScreenDelayTime, TimerLogoFade
	
	rts
	
MegafounderScreen_Exit:
	
	rts
	
MegafounderScreen_Update:

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
	move.l #PaletteId_MegafounderScreen, d0
	move.l #MegafounderScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #MegafounderScreenNumColours, d4
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
	
MegafounderScreen_Render:
	rts
	
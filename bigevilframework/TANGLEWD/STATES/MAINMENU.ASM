;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   mainmenu.asm - Main Menu state
;==============================================================

; Constants
MainMenuFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)

GameStateMainMenu:
	dc.l MainMenu_Enter
	dc.l MainMenu_Exit
	dc.l MainMenu_Update
	dc.l MainMenu_Render
	
MainMenu_Enter:

	; Clear all palettes
	jsr    ClearPalettes
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_TanglewoodLogo, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_tanglewood_logo, a0
	move.w #tiles_twd_logo_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    LoadTiles
	
	; Load map
    lea    map_tanglewood_logo, a0		; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_twd_logo_width<<16)|map_twd_logo_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_twd_logo_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_TanglewoodLogo, d5; d5 (b)  Palette ID
	jsr    LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_tanglewood_logo, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.l #0x0, d2
	move.l #0x7, d3
	jsr    PaletteLerpStart
	
	; Flush VDP queue
	jsr    VDPQueue_ExecuteAll
	
	; Reset timer
	move.l #0x0, TimerLogoFade
	
	rts
	
MainMenu_Exit:
	
	rts
	
MainMenu_Update:

	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_Speed(a0), d0
	cmp.w  #0x0, d0
	bne    @Fading
	
	; If already started fade to black
	lea    PaletteLerp_Array, a0
	move.l PaletteLerp_DstAddr(a0), a1
	lea    palette_fade_black, a2
	cmp.l  a1, a2
	beq    @FadedOut
	
	; Wait for start button press
	jsr    ReadPadA
	btst  #pad_button_start, d0	; Check start pressed
	bne   @End

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	
	; Fade out music
	jsr    Echo_FadeBGM
	bra    @End
	
	@FadedOut:
	
	; Enter game state
	lea GameStateGameplay, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
MainMenu_Render:
	rts
	
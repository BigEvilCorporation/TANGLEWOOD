;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   mainmenu.asm - Main Menu state
;==============================================================

; Constants
MainMenuFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)

; Struct
	rsset	0x0
;---------------------------------
MainMenuState_NextState		rs.l 1
;---------------------------------
MainMenuState_Struct_Pad	rs.b 0
MainMenuState_Struct_Size	rs.b 0
;---------------------------------

GameStateMainMenu:
	dc.l MainMenu_Enter
	dc.l MainMenu_Exit
	dc.l MainMenu_Update
	dc.l MainMenu_Render
	
MainMenu_Enter:

	; Clear all palettes
	jsr    PAL_ClearAll
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_TanglewoodLogo, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_twd_logo, a0
	move.w #tiles_twd_logo_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    VDP_LoadTiles
	
	; Load map
    lea    map_twd_logo, a0		; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_twd_logo_width<<16)|map_twd_logo_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_twd_logo_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_TanglewoodLogo, d5; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_twd_logo, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	
	; Flush VDP queue
	jsr    VDPQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade
	
	rts
	
MainMenu_Exit:
	
	rts
	
MainMenu_Update:

	; Get menu data
	lea    GameStateMainMenuData, a2
	
	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_Speed(a0), d0
	cmp.w  #0x0, d0
	bne    @Fading
	
	; If already started fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check start button
	move.l #GameStateDemoDisclaimerScreen, MainMenuState_NextState(a2)
	btst   #pad_button_start, d0
	bne    @StartGame
	
	; Check C button
	move.l #GameStateSoundTest, MainMenuState_NextState(a2)
	btst   #pad_button_c, d0
	bne    @StartSoundTest
	
	bra    @End
	
	@StartGame:
	@StartSoundTest:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	
	; Mark fading out
	move.l #0x0, TimerLogoFade
	
	; Fade out music
	jsr    Echo_FadeBGM
	bra    @End
	
	@FadedOut:
	
	; Enter next state
	move.l MainMenuState_NextState(a2), a0
	jsr    GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
MainMenu_Render:
	rts
	
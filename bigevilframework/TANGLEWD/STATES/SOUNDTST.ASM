;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   soundtest.asm - Sound test state
;==============================================================

; Constants
SoundTestFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)

GameStateSoundTest:
	dc.l SoundTest_Enter
	dc.l SoundTest_Exit
	dc.l SoundTest_Update
	dc.l SoundTest_Render
	
SoundTest_Enter:

	; Clear all palettes
	jsr    ClearPalettes
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_SoundTest, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_soundtest, a0
	move.w #tiles_soundtest_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    LoadTiles
	
	; Load map
    lea    map_soundtest, a0		; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_soundtest_width<<16)|map_soundtest_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_soundtest_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_SoundTest, d5; d5 (b)  Palette ID
	jsr    LoadMapSegmentPlaneA
	
	; Load font
	PUSHL  a0
	lea    Tiles_PixelFont, a0
	move.w #Tiles_PixelFontVRAM, d0
	move.w #Tiles_PixelFontSizeT, d1
	jsr    LoadFont
	POPL   a0
	
	; Begin fade up
	lea    palette_soundtest, a0
	move.l #PaletteId_SoundTest, d0
	move.l #SoundTestFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	
	lea    palette_fade_white, a0
	move.l #PaletteId_SoundTestText, d0
	move.l #SoundTestFadeTime, d1
	move.l #0x0, d2
	move.l #0x1, d3
	jsr    PaletteLerpStart
	
	; Flush VDP queue
	jsr    VDPQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade
	
	rts
	
SoundTest_Exit:
	
	rts
	
SoundTest_Update:

	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_Speed(a0), d0
	cmp.w  #0x0, d0
	bne    @Fading
	
	; If already started fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Wait for start button press
	jsr    ReadPadA
	btst  #pad_button_start, d0	; Check start pressed
	beq   @End

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_SoundTest, d0
	move.l #SoundTestFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	
	lea    palette_fade_black, a0
	move.l #PaletteId_SoundTestText, d0
	move.l #SoundTestFadeTime, d1
	move.l #0x0, d2
	move.l #0x1, d3
	jsr    PaletteLerpStart
	
	; Mark fading out
	move.l #0x0, TimerLogoFade
	
	; Fade out music
	jsr    Echo_FadeBGM
	bra    @End
	
	@FadedOut:
	
	; Enter menu state
	lea GameStateMainMenu, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
SoundTest_Render:

	PUSHL a0
	lea    Str_SoundTestLabel, a0
	move.w #Tiles_PixelFont_ID, d0		; String
	move.w #0x0810, d1					; X/Y coord
	move.b #PaletteId_SoundTestText, d2	; Palette
	move.b #0x0, d3						; Plane
	jsr    DrawTextToPlane
	POPL  a0
	
	rts
	
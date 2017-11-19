;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   soundtest.asm - Sound test state
;==============================================================

; Constants
SoundTestFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
SoundTestSoundFadeSpeed	equ -10

; Struct
	rsset	0x0
;---------------------------------
SoundTestState_SoundId		rs.w 1
SoundTestState_PrevPadState rs.w 1
;---------------------------------
	RS_ALIGN
SoundTestState_Struct_Size	rs.b 0
;---------------------------------

GameStateSoundTest:
	dc.l SoundTest_Enter
	dc.l SoundTest_Exit
	dc.l SoundTest_Update
	dc.l SoundTest_Render
	dc.l 0x0
	
SoundTest_Enter:

	; Clear all palettes
	jsr    PAL_ClearAll
	
	; Set BG colour
	move.w #(PaletteId_SoundTest<<4), d0
	VDPSETREG 7, d0

	; Load tiles
	moveq #0x0, d1
	lea    tiles_soundtest, a0
	move.w #tiles_soundtest_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load map
    lea    map_soundtest, a0		; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_soundtest_width<<16)|map_soundtest_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_soundtest_width, d3		; d3 (w)  Source map total width (tiles)
	moveq #0x0, d4
	move.w (vram_addr_leveltiles), d4	; d4 (w)  Art tile ID
	BYTES2TILES d4
	move.l #PaletteId_SoundTest, d5; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Load font
	PUSHL  a0
	lea    tiles_twfont, a0
	move.w (vram_addr_systemfont), d0
	move.w #tiles_twfont_size_t, d1
	jsr    TXT_LoadFont
	POPL   a0
	
	; Begin fade up
	lea    palette_soundtest, a0
	move.l #PaletteId_SoundTest, d0
	move.l #SoundTestFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	lea    palette_fade_white, a0
	move.l #PaletteId_SoundTestText, d0
	move.l #SoundTestFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0x1, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade
	
	rts
	
SoundTest_Exit:
	
	rts
	
SoundTest_Update:

	; Get menu data
	lea    GameStateSoundTestData, a2

	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading
	
	; If already started fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Handle menu controls
	move.w SoundTestState_PrevPadState(a2), d1
	
	btst   #pad_button_right, d0
	beq    @NoRight
	btst   #pad_button_right, d1
	bne    @NoRight
	addq.w #0x1, SoundTestState_SoundId(a2)
	@NoRight:
	
	; Handle start button
	btst   #pad_button_start, d0
	beq    @End
	
	move.w d0, SoundTestState_PrevPadState(a2)

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_SoundTest, d0
	move.l #SoundTestFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	lea    palette_fade_black, a0
	move.l #PaletteId_SoundTestText, d0
	move.l #SoundTestFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0x1, d4
	jsr    GameScenePaletteFadeTo
	
	; Mark fading out
	move.l #0x0, TimerLogoFade
	
	; Fade out music
	move.b #SoundTestSoundFadeSpeed, d0
	jsr    SND_BeginFadeTrack
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

	; Get menu data
	lea    GameStateSoundTestData, a2
	
	PUSHL a0
	lea    Str_SoundTestLabel, a0
	move.w (vram_addr_systemfont), d0	; String
	move.l #0x00080010, d1				; X/Y coord
	move.b #PaletteId_SoundTestText, d2	; Palette
	move.b #0x0, d3						; Plane
	jsr    TXT_DrawPlane
	POPL  a0
	
	PUSHL a0
	subq.l #0x8, sp
	move.w SoundTestState_SoundId(a2), d0
	move.l sp, a0
	jsr    TXT_ItoA_Hex_w
	
	move.w (vram_addr_systemfont), d0	; String
	move.l #0x00120010, d1				; X/Y coord
	move.b #PaletteId_SoundTestText, d2	; Palette
	move.b #0x0, d3						; Plane
	jsr    TXT_DrawPlane
	addq.l #0x8, sp
	POPL  a0
	
	rts
	
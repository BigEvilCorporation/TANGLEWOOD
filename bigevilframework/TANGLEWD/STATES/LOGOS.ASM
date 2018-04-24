;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   logos.asm - Intro logos state
;==============================================================

; Constants
LogosDelayTime			equ 0x00F0
LogosFadeTime			equ (0x2<<fade_frame_shift)
LogosFadeTimeLetters	equ (0x1<<fade_frame_shift)
LogosNextColourDelay	equ 0x0006
LogosMaxPalettes		equ 0x3
LogosColoursPerChar		equ 0x3

LogosFadeTicksPerUpdate	equ 0x6

LogosColourPerPalette:
	dc.b 11
	dc.b 14
	dc.b 16
	even

GameStateLogos:
	dc.l Logos_Enter
	dc.l Logos_Exit
	dc.l Logos_Update
	dc.l Logos_Render
	dc.l Logos_Render
	dc.l 0x0
	
; Struct
	rsset	0x0
;-------------------------------
LogoState_NextColourTimer rs.w 1
LogoState_CurrColourIdx	  rs.b 1
LogoState_CurrPaletteIdx  rs.b 1
;-------------------------------
	RS_ALIGN
LogoState_Struct_Size	  rs.b 0
;-------------------------------
	
Logos_Enter:

	; Reset
	PUSHL  a0
	move.b #GamestateReset_ResetAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #(PaletteId_BigEvilLogo0<<4), d0
	VDP_SETREG 7, d0

	; Load tiles
	lea    tiles_bigevil_logo, a0
	move.w #tiles_bec_logo_size_t, d0
	jsr    LevelLoadCompressedTileset
	
	; Load map
	lea    map_bigevil_logo, a0			; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_bec_logo_width<<16)|map_bec_logo_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_bec_logo_width, d3		; d3 (w)  Source map total width (tiles)
	moveq #0x0, d4
	move.w (vram_addr_leveltiles), d4	; d4 (w)  Art tile ID
	BYTES2TILES d4
	move.l #PaletteId_BigEvilLogo0, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA

	; Reset audio fader
	move.b #0x0, audio_fader_speed
	
	; Start title theme
	PUSHM  a0/d0-d1
	lea    track_bgm_titles, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timers
	lea    GameStateLogoData, a3
	MOVE_NTSC_L LogosDelayTime, TimerLogoFade, d0
	MOVE_NTSC_W LogosNextColourDelay, LogoState_NextColourTimer(a3), d0
	move.b #1, LogoState_CurrColourIdx(a3)
	
	rts
	
Logos_Exit:
	
	rts
	
Logos_Update:

	; Process colour fade timer
	lea    GameStateLogoData, a3
	cmp.b  #LogosMaxPalettes, LogoState_CurrPaletteIdx(a3)
	beq    @FadeOut
	
	subq.w #0x1, LogoState_NextColourTimer(a3)
	tst.w  LogoState_NextColourTimer(a3)
	bne    @ColourTimerRunning
	
	; Get current colour
	move.b LogoState_CurrColourIdx(a3), d4
	
	; Next character
	addq.b #LogosColoursPerChar, d4

	; Get current palette
	moveq  #0x0, d0
	move.b LogoState_CurrPaletteIdx(a3), d0

	; If end of palette
	lea    LogosColourPerPalette, a0
	add.l  d0, a0
	move.b (a0), d1
	cmp.b  d1, d4
	blt    @NotEndOfPalette

	; Next palette
	addq.b #0x1, d0
	move.b d0, LogoState_CurrPaletteIdx(a3)
	move.b #LogosColoursPerChar, d4

	@NotEndOfPalette:

	move.b d4, LogoState_CurrColourIdx(a3)

	; Get palette address
	lea    palette_bec_logo, a0
	move.l d0, d1
	mulu   #size_palette_b, d1
	add.l  d1, a0
	
	; Reset timer
	MOVE_NTSC_W LogosNextColourDelay, LogoState_NextColourTimer(a3), d1
	
	; Start lerping palette, up to CurrColourIdx
	move.l #LogosFadeTimeLetters, d1
	move.b d4, d2		; Use num colours as ticks per update for smoother lerp
	move.b #0x0, d3
	PUSHL  a3
	jsr    GameScenePaletteFadeTo
	POPL   a3

	bra    @End

	@FadeOut:
	
	; Wait for fade in to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading

	; If already done, fade to black
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
	move.l #PaletteId_BigEvilLogo0, d0
	move.l #LogosFadeTime, d1
	move.b #LogosFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_BigEvilLogo1, d0
	move.l #LogosFadeTime, d1
	move.b #LogosFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_BigEvilLogo2, d0
	move.l #LogosFadeTime, d1
	move.b #LogosFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter legal screen state
	lea GameStateLegalScreen, a0
	jsr GameStateEnter
	
	@ColourTimerRunning:
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
Logos_Render:
	rts
	
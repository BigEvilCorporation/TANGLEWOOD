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
LogosFadeTimeLetters	equ (0x1<<fade_frame_shift)/2
LogosNextColourDelay	equ 0x0008
LogosMaxColours			equ 0xC

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
;-------------------------------
LogoState_Struct_Pad	  rs.b 1
LogoState_Struct_Size	  rs.b 0
;-------------------------------
	
Logos_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	move.b #GamestateReset_ResetAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #(PaletteId_BigEvilLogo<<4), d0
	VDPSETREG 7, d0

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
	move.l #PaletteId_BigEvilLogo, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
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
	move.b #0x0, LogoState_CurrColourIdx(a3)
	
	rts
	
Logos_Exit:
	
	rts
	
Logos_Update:

	; Process colour fade timer
	lea    GameStateLogoData, a3
	cmp.b  #LogosMaxColours, LogoState_CurrColourIdx(a3)
	beq    @FadeOut
	
	subq.w #0x1, LogoState_NextColourTimer(a3)
	tst.w  LogoState_NextColourTimer(a3)
	bne    @ColourTimerRunning
	
	; Next colour
	addq.b #0x1, LogoState_CurrColourIdx(a3)
	
	; Reset timer
	MOVE_NTSC_W LogosNextColourDelay, LogoState_NextColourTimer(a3), d0
	
	; Start lerping palette, up to CurrColourIdx
	lea    palette_bec_logo, a0
	move.l #PaletteId_BigEvilLogo, d0
	move.l #LogosFadeTimeLetters, d1
	move.b #0x3, d2
	move.l #0x0, d3
	moveq #0x0, d4
	move.b LogoState_CurrColourIdx(a3), d4
	jsr    GameScenePaletteFadeTo
	
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
	move.l #PaletteId_BigEvilLogo, d0
	move.l #LogosFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter Megafounder screen state
	lea GameStateMegafounderScreen, a0
	jsr GameStateEnter
	
	@ColourTimerRunning:
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
Logos_Render:
	rts
	
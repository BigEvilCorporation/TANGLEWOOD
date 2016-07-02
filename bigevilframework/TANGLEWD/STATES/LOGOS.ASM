;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   logos.asm - Intro logos state
;==============================================================

; Constants
LogosDelayTime	equ 0x00F0
LogosFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)

GameStateLogos:
	dc.l Logos_Enter
	dc.l Logos_Exit
	dc.l Logos_Update
	dc.l Logos_Render
	dc.l Logos_Render
	
Logos_Enter:

	; Clear all palettes
	jsr    ClearPalettes
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_BigEvilLogo, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_bigevil_logo, a0
	move.w #tiles_bec_logo_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    LoadTiles
	
	; Load map
    lea    map_bigevil_logo, a0			; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_bec_logo_width<<16)|map_bec_logo_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_bec_logo_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_BigEvilLogo, d5	; d5 (b)  Palette ID
	jsr    LoadMapSegmentPlaneA
	
	; Start title theme
	lea    bgm_titles, a0
	;jsr    Echo_PlayBGM
	
	; Begin fade up
	lea    palette_bec_logo, a0
	move.l #PaletteId_BigEvilLogo, d0
	move.l #LogosFadeTime, d1
	move.l #0x0, d2
	move.l #0x7, d3
	jsr    PaletteLerpStart
	
	; Flush VDP queue
	jsr    VDPQueue_ExecuteAll
	
	; Reset timer
	move.l #LogosDelayTime, TimerLogoFade
	
	rts
	
Logos_Exit:
	
	rts
	
Logos_Update:

	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_Speed(a0), d0
	cmp.w  #0x0, d0
	bne    @Fading

	; If already done fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	sub.l  #0x1, d0
	move.l d0, TimerLogoFade
	cmp.l  #0x1, d0
	bne    @NotElapsed
	
	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_BigEvilLogo, d0
	move.l #LogosFadeTime, d1
	move.l #0x0, d2
	move.l #0xF, d3
	jsr    PaletteLerpStart
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter main menu state
	lea GameStateMainMenu, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
Logos_Render:
	rts
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   kickstrt.asm - Kickstarter advert screen state
;==============================================================

; Constants
KickstarterScreenDelayTime	equ 0x0180
KickstarterScreenFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
KickstarterScreenNumColours	equ 0xF ; For palette lerping

GameStateKickstarterScreen:
	dc.l KickstarterScreen_Enter
	dc.l KickstarterScreen_Exit
	dc.l KickstarterScreen_Update
	dc.l KickstarterScreen_Render
	dc.l KickstarterScreen_Render
	dc.l 0x0
	
KickstarterScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Set BG colour
	move.w #(PaletteId_KSLogo<<4), d0
	VDPSETREG 7, d0
	
	; Load tiles
	clr.l d1
	lea    tiles_ks_logo, a0
	move.w #tiles_ks_logo_size_t, d1
	move.w (vram_addr_leveltiles), d0
	jsr    VDP_LoadTiles
	
	; Load map
    lea    map_ks_logo, a0	; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_ks_logo_width<<16)|map_ks_logo_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_ks_logo_width, d3		; d3 (w)  Source map total width (tiles)
	move.w (vram_addr_leveltiles), d4		; d4 (w)  Art tile ID
	move.l #PaletteId_KSLogo, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_ks_logo, a0
	move.l #PaletteId_KSLogo, d0
	move.l #KickstarterScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #KickstarterScreenNumColours, d4
	jsr    PAL_LerpStart
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #KickstarterScreenDelayTime, TimerLogoFade
	
	rts
	
KickstarterScreen_Exit:
	
	rts
	
KickstarterScreen_Update:

	; Wait for fade to finish
	lea    PaletteLerp_Array, a0
	move.w PaletteLerp_UpdateSpeed(a0), d0
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
	move.l #PaletteId_KSLogo, d0
	move.l #KickstarterScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #KickstarterScreenNumColours, d4
	jsr    PAL_LerpStart
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
	
KickstarterScreen_Render:
	rts
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   DemoDisclaimer.asm - Demo DemoDisclaimer screen state
;==============================================================

; Constants
DemoDisclaimerScreenDelayTime	equ 0x0180
DemoDisclaimerScreenFadeTime	equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
DemoDisclaimerScreenNumColours	equ 0xF ; For palette lerping

GameStateDemoDisclaimerScreen:
	dc.l DemoDisclaimerScreen_Enter
	dc.l DemoDisclaimerScreen_Exit
	dc.l DemoDisclaimerScreen_Update
	dc.l DemoDisclaimerScreen_Render
	dc.l DemoDisclaimerScreen_Render
	dc.l 0x0
	
DemoDisclaimerScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #(PaletteId_DemoDisclaimerScreen<<4), d0
	VDPSETREG 7, d0
	
	; Load tiles
	clr.l d1
	lea    tiles_DemoDisclaimer_screen, a0
	move.w #tiles_DemoDisclaimer_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    VDP_LoadTiles
	
	; Load map
    lea    map_DemoDisclaimer_screen, a0	; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_DemoDisclaimer_width<<16)|map_DemoDisclaimer_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_DemoDisclaimer_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_DemoDisclaimerScreen, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_DemoDisclaimer, a0
	move.l #PaletteId_DemoDisclaimerScreen, d0
	move.l #DemoDisclaimerScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #DemoDisclaimerScreenNumColours, d4
	jsr    PAL_LerpStart
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #DemoDisclaimerScreenDelayTime, TimerLogoFade
	
	rts
	
DemoDisclaimerScreen_Exit:
	
	rts
	
DemoDisclaimerScreen_Update:

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
	move.l #PaletteId_DemoDisclaimerScreen, d0
	move.l #DemoDisclaimerScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #DemoDisclaimerScreenNumColours, d4
	jsr    PAL_LerpStart
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter controls screen state
	lea GameStateControlsScreen, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
DemoDisclaimerScreen_Render:
	rts
	
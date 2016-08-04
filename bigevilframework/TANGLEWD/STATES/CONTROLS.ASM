;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   controls.asm - Controls screen state
;==============================================================

; Constants
ControlsScreenDelayTime	equ 0x0180
ControlsScreenFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)
ControlsScreenNumColours	equ 0xE ; For palette lerping

GameStateControlsScreen:
	dc.l ControlsScreen_Enter
	dc.l ControlsScreen_Exit
	dc.l ControlsScreen_Update
	dc.l ControlsScreen_Render
	dc.l ControlsScreen_Render
	
ControlsScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_ControlsScreen, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_controls_screen, a0
	move.w #tiles_controls_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    VDP_LoadTiles
	
	; Load map
    lea    map_controls_screen, a0			; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_controls_width<<16)|map_controls_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_controls_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_ControlsScreen, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_controls, a0
	move.l #PaletteId_ControlsScreen, d0
	move.l #ControlsScreenFadeTime, d1
	move.l #0x0, d2
	move.l #ControlsScreenNumColours, d3
	jsr    PaletteLerpStart
	
	; Flush VDP queue
	jsr    VDPQueue_ExecuteAll
	
	; Reset timer
	move.l #ControlsScreenDelayTime, TimerLogoFade
	
	rts
	
ControlsScreen_Exit:
	
	rts
	
ControlsScreen_Update:

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
	move.l #PaletteId_ControlsScreen, d0
	move.l #ControlsScreenFadeTime, d1
	move.l #0x0, d2
	move.l #ControlsScreenNumColours, d3
	jsr    PaletteLerpStart
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter gameplay state
	lea GameStateGameplay, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
ControlsScreen_Render:
	rts
	
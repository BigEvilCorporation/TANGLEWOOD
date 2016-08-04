;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   demoend.asm - End of demo state
;==============================================================

; Constants
DemoEndStateDelayTime	equ 0x0280
DemoEndStateFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)
DemoEndStateNumColours	equ 0xE ; For palette lerping

GameStateDemoEnd:
	dc.l DemoEndState_Enter
	dc.l DemoEndState_Exit
	dc.l DemoEndState_Update
	dc.l DemoEndState_Render
	dc.l DemoEndState_Render
	
DemoEndState_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset
	PUSHL  a0
	jsr    GameStateReset
	POPL   a0
	
	; Set BG colour
	move.w #0x8700, d1
	move.b #PaletteId_DemoEndState, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	; Load tiles
	clr.l d1
	lea    tiles_DemoEnd_screen, a0
	move.w #tiles_DemoEnd_size_t, d1
	move.l #LevelMapVRAM, d0
	jsr    VDP_LoadTiles
	
	; Load map
    lea    map_DemoEnd_screen, a0			; a0 (l)  Map data address (ROM)
	move.l #0x00000000, d0				; d0 (ww) Source top/left (tiles)
	move.l #0x00000000, d1				; d1 (ww) Destination top/left (tiles)
	move.l #((map_DemoEnd_width<<16)|map_DemoEnd_height), d2		; d2 (ww) Segment width/height (tiles)
	move.w #map_DemoEnd_width, d3		; d3 (w)  Source map total width (tiles)
	move.w #Tiles_LevelMap_ID, d4		; d4 (w)  Art tile ID
	move.l #PaletteId_DemoEndState, d5	; d5 (b)  Palette ID
	jsr    VDP_LoadMapSegmentPlaneA
	
	; Begin fade up
	lea    palette_DemoEnd, a0
	move.l #PaletteId_DemoEndState, d0
	move.l #DemoEndStateFadeTime, d1
	move.l #0x0, d2
	move.l #DemoEndStateNumColours, d3
	jsr    PAL_LerpStart
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #DemoEndStateDelayTime, TimerLogoFade
	
	rts
	
DemoEndState_Exit:
	
	rts
	
DemoEndState_Update:

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
	move.l #PaletteId_DemoEndState, d0
	move.l #DemoEndStateFadeTime, d1
	move.l #0x0, d2
	move.l #DemoEndStateNumColours, d3
	jsr    PAL_LerpStart
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Back to ident logo state
	lea GameStateLogos, a0
	jsr GameStateEnter
	
	@Fading:
	@NotElapsed:
	@End:
	
	rts
	
DemoEndState_Render:
	rts
	
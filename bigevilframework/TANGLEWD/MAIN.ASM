;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   main.asm - Entry point, main game loop, main VINT
;==============================================================

__main:

	; Init game state stack
	move.l #GameStateStack, GameStateStackPtr

	; Load font
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfont)
	lea    tiles_twfont, a0
	jsr    TXT_LoadFont

	; Clear counters
	move.l #0x0, hblank_counter
	move.l #0x0, vblank_counter

	; Init autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	move.b #AUTOTEST_TESTMODE, d0
	jsr    AutotestInit
	ENDIF
	ENDIF
	
	; Enter first game state
	move.l #InitialState, a0
	jsr    GameStateEnter

	; ************************************
	; Main game loop
	; ************************************
GameLoop:

	; Begin frame
	jsr    RenderBeginFrame
	
	; Update current state
	jsr    GameStateUpdate
	
	; Render current state
	jsr    GameStateRender
	
	; Update palette lerping
	jsr    PAL_LerpUpdate

	; Update audio
	jsr    SND_Update

	; Update map streaming (don't flush VDP queue)
	move.b #0x0, d0
	jsr    MAP_UpdateStreaming

	; Update VFX
	jsr    VFX_Update
	
	; End frame
	jsr    RenderEndFrame

	; Update autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	jsr    AutotestUpdate
	ENDIF
	ENDIF

	; Back to top
	bra    GameLoop

	; ************************************
	; Rendering
	; ************************************
RenderBeginFrame:

	IF FRAME_TIMING_DEBUG
	VDP_GETREG 1, d0
	andi.b #~vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0
	ENDIF

	; Reset sprite link counter
	move.w #0x0, next_sprite_index

	; Move first sprite to border and unlink
	lea    vdp_sprite_table, a0
	move.w #0x1, Sprite_CoordX(a0)
	move.w #0x1, Sprite_CoordY(a0)
	move.b #0x0, Sprite_NextID(a0)
	
	IFD DEBUG
	jsr    DBG_Profile_BeginFrame
	ENDIF
	
	rts
	
RenderEndFrame:

	IF FRAME_TIMING_DEBUG
	VDP_GETREG 1, d0
	ori.b  #vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0
	ENDIF

	;==============================================================
	; DMA the sprite table
	move.w next_sprite_index, d1
	bne    @SpritesValid
	moveq  #0x1, d1			; If no sprites, still need to DMA "blank" sprite
	@SpritesValid:
	lea    vdp_sprite_table, a0
	move.w #vram_addr_sprite_table, d0
	mulu.w #Sprite_Struct_Size/size_word, d1
	move.b #DMAVDPQueue_VRAM, d2
	move.b #0x2, d3
	jsr    VDP_DMAQueue_AddJob

	;==============================================================
	; DMA palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	@PaletteLp:
	btst   d0, DirtyPalettesMask
	beq    @NotDirty
	PUSHM  d0/a0

	; Colourblind testing
	IF COLOURBLIND_TEST_RG
	PUSHW  d0
	lea    ColourblindScratchPalette, a1
	jsr    VFX_CreateColourblindPalettePaletteRG
	lea    ColourblindScratchPalette, a0
	POPW   d0
	ENDIF
	IF COLOURBLIND_TEST_BG
	PUSHW  d0
	lea    ColourblindScratchPalette, a1
	jsr    VFX_CreateColourblindPalettePaletteBG
	lea    ColourblindScratchPalette, a0
	POPW   d0
	ENDIF

	lsl.w  #0x5, d0				; Colour index to CRAM destination address
	move.w #size_palette_w, d1
	move.b #DMAVDPQueue_CRAM, d2
	move.b #0x2, d3
	jsr    VDP_DMAQueue_AddJob
	POPM   d0/a0
	@NotDirty:
	lea    size_palette_b(a0), a0
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLp

	; Reset dirty palette mask
	move.b #0x0, DirtyPalettesMask
	
	; Get current render counter
	move.l vblank_counter, d0
	
	; Wait for next VINT
	@WaitForVINT:
	move.l vblank_counter, d1
	cmp.l  d0, d1
	beq    @WaitForVINT

	;==============================================================
	; VBLANK START
	;==============================================================

	IF VBLANK_TIMING_DEBUG
	VDP_GETREG 1, d0
	andi.b #~vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0
	ENDIF

	IFD DEBUG
	lea    Str_Render, a0
	jsr    DBG_Profile_PushScope
	ENDIF

	;==============================================================
	; Execute DMA job queue
	jsr    VDP_DMAQueue_ExecuteAll

	;==============================================================
	; Execute VDP job queue
	jsr    VDP_JobQueue_ExecuteAll

	;==============================================================
	; Update current raster effect
	move.l raster_effect_update, a0
	cmpa.w #0x0, a0
	beq    @NoRasterEffect
	jsr    (a0)
	@NoRasterEffect:
	
	IFD DEBUG
	jsr    DBG_Profile_PopScope
	ENDIF

	IFD DEBUG
	jsr    DBG_DebugDraw
	ENDIF
	
	IFD DEBUG
	jsr    DBG_Profile_EndFrame
	jsr    DBG_Profile_DrawResults
	ENDIF

	IF VBLANK_TIMING_DEBUG
	VDP_GETREG 1, d0
	ori.b  #vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0
	ENDIF
	
	rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   main.asm - Entry point, main game loop, main VINT
;==============================================================

__main:

	; Disable vint during loading
	move.b #0x0, vint_enabled
	
	; Load water level raster effect by default
	jsr    RasterEffectUnderwaterInit
	;jsr    RasterEffectInterlacePlaneBInit
	
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
	move.l #0x0, frame_counter_update
	move.l #0x0, frame_counter_render

	; Init autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	move.b #AUTOTEST_TESTMODE, d0
	jsr  AutotestInit
	ENDIF
	ENDIF
	
	; Enter first game state
	move.l #InitialState, a0
	jsr GameStateEnter

	; ************************************
	; Main game loop
	; ************************************
GameLoop:

	; Begin frame
	jsr RenderBeginFrame
	
	; Update current state
	jsr GameStateUpdate
	
	; Render current state
	jsr GameStateRender
	
	; Update palette lerping
	jsr PAL_LerpUpdate

	; Update audio
	jsr SND_Update
	
	; End frame
	jsr RenderEndFrame

	; Update autotest
	IFND FINAL
	IF AUTOTEST_ENABLED
	jsr  AutotestUpdate
	ENDIF
	ENDIF

	; Back to top
	bra GameLoop

	; ************************************
	; Rendering
	; ************************************
RenderBeginFrame:

	; Disable vint
	move.b #0x0, vint_enabled
	
	; Reset sprite link counter
	move.w #0x0, next_sprite_index

	; Move first sprite to border and unlink
	lea     vdp_sprite_table, a0
	move.w  #0x1, Sprite_CoordX(a0)
	move.w  #0x1, Sprite_CoordY(a0)
	move.b  #0x0, Sprite_NextID(a0)
	
	IFD DEBUG
	; Profiler frame start
	jsr DBG_Profile_BeginFrame
	ENDIF
	
	rts
	
RenderEndFrame:

	; Update VFX
	jsr    VFX_Update

	; Convert underwater palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	lea    UnderwaterPalettes, a1
	@PaletteLp:
	btst.b d0, (UnderwaterDirtyPalettesMask)
	beq    @NotDirty
	PUSHM  d0/a0-a1
	jsr    VFX_CreateUnderwaterPalette
	POPM   d0/a0-a1
	@NotDirty:
	lea    size_palette_b(a0), a0
	lea    size_palette_b(a1), a1
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLp

	; Reset dirty palette mask
	move.b #0x0, (UnderwaterDirtyPalettesMask)

	; Update frame counter
	addq.l #0x1, frame_counter_update
	
	; Get current render counter
	move.l (frame_counter_render), d0
	
	; Enable VINT
	move.b #0x1, vint_enabled
	
	; Wait for next render
	@WaitForVINT:
	move.l (frame_counter_render), d1
	cmp.l  d0, d1
	beq    @WaitForVINT
	
	IFD DEBUG
	; Profiler frame end
	jsr DBG_Profile_EndFrame
	jsr DBG_Profile_DrawResults
	ENDIF
	
	rts
	
	; ************************************
	; VINT
	; ************************************
__vinterrupt:

	IFD DEBUG
	lea Str_Render, a0
	jsr DBG_Profile_PushScope
	ENDIF

	; Update current raster effect
	move.l (raster_effect_update), a0
	cmp.l  #0x0, a0
	beq    @NoRasterEffect
	jsr    (a0)
	@NoRasterEffect:

	; DMA the sprite table
	move.w (next_sprite_index), d1
	bne    @SpritesValid
	moveq  #0x1, d1			; If no sprites, still need to DMA "blank" sprite
	@SpritesValid:
	lea    vdp_sprite_table, a0
	move.l #vram_addr_sprite_table, d0
	mulu.w #Sprite_Struct_Size/size_word, d1
	jsr    VDP_DMACopyVRAM

	; DMA palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	@PaletteLp:
	btst   d0, (DirtyPalettesMask)
	beq    @NotDirty
	PUSHM  d0/a0
	jsr    PAL_LoadDMA
	POPM   d0/a0
	@NotDirty:
	lea    size_palette_b(a0), a0
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @PaletteLp

	; Reset dirty palette mask
	move.b #0x0, (DirtyPalettesMask)
	
	; Execute DMA job queue
	jsr    VDP_DMAQueue_ExecuteAll
	
	; Execute VDP job queue
	jsr    VDP_JobQueue_ExecuteAll
	
	IFD DEBUG
	jsr DBG_Profile_PopScope
	ENDIF

	; NOT FOR RELEASE
	IFD DEBUG
	;jsr DBG_DebugDraw
	ENDIF
	
	; Update frame counter
	addq.l #0x1, frame_counter_render

	rts
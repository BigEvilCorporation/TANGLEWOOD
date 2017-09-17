;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   raster.asm - Raster (HINT) effects
;==============================================================

;==============================================================
;   Cutscene letterbox mode
;==============================================================

RasterEffectLetterboxInit:
	rte

RasterEffectLetterboxUpdate:
	rte

RasterEffectLetterboxHINT:
	rte

;==============================================================
;   Water level palette swap
;==============================================================

RasterEffectUnderwaterInit:
	; Set update func
	move.l #RasterEffectUnderwaterUpdate, raster_effect_update

	; Set HINT
	lea    RasterEffectUnderwaterHINT, a0
	jsr    INT_LoadHBlank
	rts

RasterEffectUnderwaterUpdate:
	; Set water level HINT
	move.b (raster_water_level), d0
	jsr    VDP_SetHINTFreq
	rts

RasterEffectUnderwaterHINT:

	; Disable interrupts
	PUSHW  sr
	ori.w  #status_reg_int_disable, sr

	; DMA underwater palette to player palette
	PUSHW  d0
	VDP_DMA_CRAM (UnderwaterPalettes+(PaletteId_WaterRaster*size_palette_b)), (PaletteId_WaterRaster*size_palette_b), size_palette_b, d0
	POPW   d0
	bset.b #PaletteId_WaterRaster, (DirtyPalettesMask)

	; Restore interrupts
	POPW    sr

	rte

;==============================================================
;   Software interlace (Plane B)
;==============================================================

RasterEffectInterlacePlaneBInit:
	; Set update func
	move.l #RasterEffectInterlacePlaneBUpdate, raster_effect_update

	; Set HINT
	lea    RasterEffectInterlacePlaneBHINT, a0
	jsr    INT_LoadHBlank

	; Set HINT frequency
	move.w #0x0, d0
	jsr    VDP_SetHINTFreq

	rts

RasterEffectInterlacePlaneBUpdate:

	; Reset odd/even line
	;move.b #0x0, raster_interlace_odd

	; Half-page scroll val in lower word, 0 in upper
	move.l #(8*32), raster_interlace_scroll

	rts

RasterEffectInterlacePlaneBHINT:

	; Swap Plane B from upper to lower 32 tiles each scanline
	tst.b raster_interlace_odd
	beq   @Even

	; Odd line
	VDP_SETVSCROLL_PLANEB #(8*32)
	move.b #0x0, raster_interlace_odd
	bra   @End

	@Even:

	; Even line
	VDP_SETVSCROLL_PLANEB #0x0000
	move.b #0x1, raster_interlace_odd
	@End:

	rte
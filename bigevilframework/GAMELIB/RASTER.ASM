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
	move.l #RasterEffectUnderwaterUpdate, raster_effect_update
	lea RasterEffectUnderwaterHINT, a0
	jsr INT_LoadHBlank
	rts

RasterEffectUnderwaterUpdate:
	; Set water level HINT
	move.b (raster_water_level), d0
	jsr VDP_SetHINTFreq
	rts

RasterEffectUnderwaterHINT:

	; DMA underwater palette to player palette
	PUSHW  d0
	VDP_DMA_CRAM (UnderwaterPalettes+(PaletteId_WaterRaster*size_palette_b)), (PaletteId_WaterRaster*size_palette_b), size_palette_b, d0
	POPW   d0
	bset.b #PaletteId_WaterRaster, (DirtyPalettesMask)

	rte

;==============================================================
;   Software interlace (Plane B)
;==============================================================

RasterEffectInterlacePlaneBInit:
	rts

RasterEffectInterlacePlaneBUpdate:
	rts

RasterEffectInterlacePlaneBHINT:

	; Swap Plane B from upper to lower 32 tiles each scanline

	rte
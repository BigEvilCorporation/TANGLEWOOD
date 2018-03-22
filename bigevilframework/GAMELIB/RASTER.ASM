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

LetterboxBarHeight	equ 0x18

RasterEffectLetterboxInit:

	; End prev
	move.l raster_effect_end, a0
	cmpa.w #0x0, a0
	beq    @NoPrev
	lea    INT_LoadHBlank, a5
	jsr    VDP_JobQueue_PushJob
	@NoPrev:

	; Set update func
	move.l #RasterEffectLetterboxUpdate, raster_effect_update

	; Set end func
	move.l #RasterEffectLetterboxEnd, raster_effect_end

	; Set initial on time
	move.b #0x0, raster_letterbox_top

	; Set initial speed
	move.b #0x0, raster_letterbox_speed

	; Disable HINT
	VDP_GETREG 0, d0
	andi.b  #~vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	; Load HINT routine (during next blank)
	lea    RasterEffectLetterboxHINT, a0
	lea    INT_LoadHBlank, a5
	jsr    VDP_JobQueue_PushJob

	; Set initial state (during next blank)
	lea    RasterEffectLetterboxUpdate, a5
	jsr    VDP_JobQueue_PushJob

	rts

RasterEffectLetterboxUpdate:

	; Animate top bar
	move.b raster_letterbox_top, d0
	move.b raster_letterbox_speed, d1
	add.b  d1, d0
	CLAMPB d0, #0x0, #LetterboxBarHeight
	move.b d0, raster_letterbox_top

	; Invert for bottom bar
	move.b #screen_height, d1
	sub.b  d0, d1
	sub.b  d0, d1
	sub.b  d0, d1
	move.b d1, raster_letterbox_bottom

	; Set top border HINT counter
	move.w #0x8A00, d0
	or.b   raster_letterbox_top, d0
	move.w d0, vdp_control

	; Reset counter
	move.b #0x0, raster_letterbox_counter

	; Enable HINT
	VDP_GETREG 0, d0
	ori.b   #vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	; Turn off screen
	VDP_GETREG 1, d0
	andi.b #~vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0

	@End:

	rts

RasterEffectLetterboxEnd:

	; Disable HINT
	VDP_GETREG 0, d0
	andi.b  #~vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	; Enable display
	VDP_GETREG 1, d0
	ori.b  #vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0

	rts

RasterEffectLetterboxHINT:

	PUSHW  d0

	; Ignore odd fires, counter is latched too late
	btst.b #0x0, raster_letterbox_counter
	bne    @Ignore

	; Toggle screen on/off
	VDP_GETREG 1, d0
	eor.b  #vdp_reg1_enabledisplay, d0
	VDP_SETREG 1, d0

	@Ignore:

	; Set bottom border HINT counter
	move.w #0x8A00, d0
	move.b raster_letterbox_bottom, d0
	move.w d0, vdp_control

	; Increment counter
	addi.b #0x1, raster_letterbox_counter

	POPW   d0

	rte

;==============================================================
;   Water level palette swap
;==============================================================

RasterEffectUnderwaterInit:

	; End prev
	move.l raster_effect_end, a0
	cmpa.w #0x0, a0
	beq    @NoPrev
	lea    INT_LoadHBlank, a5
	jsr    VDP_JobQueue_PushJob
	@NoPrev:

	; Set update func
	move.l #RasterEffectUnderwaterUpdate, raster_effect_update

	; Set end func
	move.l #RasterEffectUnderwaterEnd, raster_effect_end

	; Set HINT
	lea    RasterEffectUnderwaterHINT, a0
	lea    INT_LoadHBlank, a5
	jsr    VDP_JobQueue_PushJob

	rts

RasterEffectUnderwaterUpdate:

	; Set water level HINT
	move.b (raster_water_level), d0
	jsr    VDP_SetHINTFreq

	; Enable HINT
	VDP_GETREG 0, d0
	ori.b   #vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	rts

RasterEffectUnderwaterEnd:

	; Disable HINT
	VDP_GETREG 0, d0
	andi.b  #~vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	rts

RasterEffectUnderwaterHINT:

	; Disable interrupts
	PUSHW  sr
	PUSHW  d0
	ori.w  #status_reg_int_disable, sr

	; DMA underwater palette to player palette
	VDP_DMA_CRAM (UnderwaterPalettes+(PaletteId_WaterRaster*size_palette_b)), (PaletteId_WaterRaster*size_palette_b), size_palette_b, d0
	bset.b #PaletteId_WaterRaster, (DirtyPalettesMask)

	; Disable HINT
	VDP_GETREG 0, d0
	andi.b  #~vdp_reg0_enablehint, d0
	VDP_SETREG 0, d0

	; Restore interrupts
	POPW   d0
	POPW   sr

	rte

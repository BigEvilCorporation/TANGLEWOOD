;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   effects.asm - Screen effects
;==============================================================

VFXGreyscaleLerp	equ 0x0
VFXGreyscaleInst	equ 0x1
	
VFXUnderwaterSubR	equ 0x6
VFXUnderwaterSubB	equ 0x6
VFXUnderwaterSubG	equ 0x1

VFX_Reset:

	; Reset screen shake
	move.w #0x0, VFXShakeAmplitudeDecay
	move.w #0x0, VFXShakeFrequencyDecay

	; Reset flash effect
	move.w #0x0, VFXFlashTimer

	; Reset wave effect
	move.w #0x0, VFXWaveSpeedPlaneB
	move.w #0x0, VFXWaveAmpShiftPlaneB
	move.w #0x0, VFXWaveSinePlaneB

	; Reset row scroll effect
	move.w #0x0, VFXRowScrollCountPlaneB
	move.l #0x0, VFXRowScrollPosTablePlaneB
	move.l #0x0, VFXRowScrollSpeedTablePlaneB

	; Reset scroll type
	move.b #0x0, d0
	VDP_SETREG 0xB,d0

	rts

VFX_StartScreenShake:
	; d0 (w) Max amplitude
	; d1 (w) Max frequency
	; d2 (w) Amplitude decay
	; d3 (w) Frequency decay

	move.w d0, CameraShakeAmpY
	move.w d1, CameraShakeSpeedY
	move.w d2, VFXShakeAmplitudeDecay
	move.w d3, VFXShakeFrequencyDecay

	rts

VFX_StartFlash:
	; d0 (w) Flash frames

	; Set flash timer
	move.w d0, VFXFlashTimer

	PUSHM  a0-a2

	; Load palettes without using game colour system (so can revert back by setting dirty flags)
	move.b #0x0, d0
	lea    palette_fade_white, a0
	jsr    PAL_LoadDMA

	move.b #0x1, d0
	lea    palette_fade_white, a0
	jsr    PAL_LoadDMA

	move.b #0x2, d0
	lea    palette_fade_white, a0
	jsr    PAL_LoadDMA

	move.b #0x3, d0
	lea    palette_fade_white, a0
	jsr    PAL_LoadDMA

	POPM   a0-a2

	rts

VFX_StartPlaneRowScrollB:
	; d0 (w) Num table entries
	; a0 --- Y row position table (bytes, cells)
	; a1 --- Row speed table (16.16 longwords, multipliers of plane A scroll)

	; Set params
	move.w d0, VFXRowScrollCountPlaneB
	move.l a0, VFXRowScrollPosTablePlaneB
	move.l a1, VFXRowScrollSpeedTablePlaneB

	; Set cell scroll mode
	move.b #0x2, d0
	VDP_SETREG 0xB,d0

	rts

VFX_StartPlaneSineWaveB:
	; d0 (w) Speed
	; d1 (w) Amplitude
	; d2 (w) Frequency

	; Set params
	move.w d0, VFXWaveSpeedPlaneB
	move.w d1, VFXWaveAmpShiftPlaneB
	move.w d2, VFXWaveFreqPlaneB

	; Set line scroll mode
	move.b #0x3, d0
	VDP_SETREG 0xB,d0

	rts

VFX_Update:

	; Update shake
	move.w VFXShakeAmplitudeDecay, d0
	beq    @NoShake
	move.w VFXShakeFrequencyDecay, d1
	sub.w  d0, CameraShakeAmpY				; Decay amplitude
	blt    @EndShake
	sub.w  d1, CameraShakeSpeedY			; Decay frequency
	blt    @EndShake
	bra    @FinishedShake
	@EndShake:

	; Shake finished, reset
	move.w #0x0, VFXShakeAmplitudeDecay
	move.w #0x0, VFXShakeFrequencyDecay
	move.w #0x0, CameraShakeAmpY
	move.w #0x0, CameraShakeSpeedY

	@FinishedShake:
	@NoShake:

	;==============================================================

	; Update flash
	move.w VFXFlashTimer, d0
	beq    @Flashing
	subq.w #0x1, d0
	move.w d0, VFXFlashTimer
	tst.w  d0
	bne    @Flashing

	; Revert all palettes
	jsr    VFX_RevertToScenePalettes

	@Flashing:

	;==============================================================

	; Update plane B sine wave
	move.w VFXWaveSpeedPlaneB, d0
	beq    @NoPlaneBWave

	; Sine step
	move.w VFXWaveSinePlaneB, d1
	add.w  d0, d1
	move.w d1, VFXWaveSinePlaneB

	; Set line scroll
	lea    sintable, a2
	lea    vdp_hscroll_table_b, a3

	; Take initial B scroll value
	move.w vdp_hscroll_b, d4
	move.w d4, d5		; Temp scroll value
	move.w VFXWaveFreqPlaneB, d7		; Frequency
	move.w VFXWaveAmpShiftPlaneB, d6	; Amplitude
	lsr.w  #0x8, d1		; Speed to integer
	lsr.w  #0x8, d7		; Frequency to integer

	move.w #screen_height-1, d2
	@lp:
	move.b (a2), d3		; Get next sine
	asr.b  d6, d3		; Shift (amplitude)
	ext.w  d3			; Sign extend
	add.w  d3, d5		; Add
	add.b  d7, d1		; Advance sine offset (wrap > 255)
	lea    sintable, a2
	add.l  d1, a2		; Advance sine addr
	move.w d5, (a3)+	; Apply scroll value
	move.w d4, d5		; Reset scroll value
	dbra   d2, @lp

	; Take initial A scroll value
	move.w vdp_hscroll_a, d4

	; Duplicate word
	swap   d4
	move.w vdp_hscroll_a, d4

	; Copy to plane A scroll table
	lea    vdp_hscroll_table_a, a3
	move.w #(screen_height/2)-1, d0
	@PlaneALp:
	move.l d4, (a3)+
	dbra   d0, @PlaneALp

	; DMA scroll tables
	lea    vdp_hscroll_table_a, a0
	move.w #vram_addr_hscroll, d0
	move.w #screen_height, d1
	move.b #DMAVDPQueue_VRAM, d2
	move.b #0x4, d3
	jsr    VDP_DMAQueue_AddJob

	lea    vdp_hscroll_table_b, a0
	move.w #vram_addr_hscroll+2, d0
	move.w #screen_height, d1
	move.b #DMAVDPQueue_VRAM, d2
	move.b #0x4, d3
	jsr    VDP_DMAQueue_AddJob

	@NoPlaneBWave:

	;==============================================================

	; Update plane B row scroll effect
	move.w VFXRowScrollCountPlaneB, d2
	beq    @NoPlaneBRowScroll

	move.w vdp_hscroll_a, d7				; Get plane A scroll
	lea    vdp_hscroll_table_b, a0			; Get plane B table
	move.l VFXRowScrollPosTablePlaneB, a1	; Get pos table
	move.l VFXRowScrollSpeedTablePlaneB, a2	; Get mul table
	move.w VFXRowScrollCountPlaneB, d6		; Get table size
	moveq  #0x0, d2							; Prev row count
	move.l d7, d0							; Initial plane A scroll

	; For all cell rows
	move.w #0x0, d3
	@PlaneBRowScrollLp:

	move.l #(screen_height/8), d5	; Default to bottom row
	move.l #0x00010000, d1			; Default to multiplier of 1
	tst.w  d6						; If last section
	beq    @AtEnd1
	move.b (a1)+, d5				; Get cell row pos
	move.l (a2)+, d1				; Get next multiplier
	@AtEnd1:
	
	; Mul plane A scroll
	move.l d7, d0
	TOSUBPIXELS d0
	jsr    Mulu1616
	TOPIXELS d0

	; For all rows up to this offset
	move.w d5, d4
	sub.w  d2, d4
	ble    @EndPlaneBRowScroll
	subq.w #0x1, d4
	@PlaneBCellLp:
	move.w d0, (a0)				; Write row scroll
	addi.l #0x8*size_word, a0	; Increment 1 cell row
	addq.w #0x1, d3				; Increment row counter
	dbra   d4, @PlaneBCellLp
	
	tst.w  d6					; If last section, done
	beq    @EndPlaneBRowScroll

	add.w  d5, d2				; Advance row counter

	dbra   d6, @PlaneBRowScrollLp
	@EndPlaneBRowScroll:

	; Write plane A scroll table
	lea    vdp_hscroll_table_a, a0
	move.w #(screen_height/8)-1, d0
	move.w vdp_hscroll_a, d4
	@PlaneACellLp:
	move.w d4, (a0)					; Write plane A value
	addi.l #0x8*size_word, a0		; Increment 1 cell row
	dbra   d0, @PlaneACellLp

	; DMA scroll tables
	lea    vdp_hscroll_table_a, a0
	move.w #vram_addr_hscroll, d0
	move.w #screen_height, d1
	move.b #DMAVDPQueue_VRAM, d2
	move.b #0x4, d3
	jsr    VDP_DMAQueue_AddJob

	lea    vdp_hscroll_table_b, a0
	move.w #vram_addr_hscroll+2, d0
	move.w #screen_height, d1
	move.b #DMAVDPQueue_VRAM, d2
	move.b #0x4, d3
	jsr    VDP_DMAQueue_AddJob


	@NoPlaneBRowScroll:

	;==============================================================

	; Convert underwater palettes if dirty
	move.l #0x0, d0
	lea    CurrentPalettes, a0
	lea    UnderwaterPalettes, a1
	@WaterPaletteLp:
	btst.b d0, UnderwaterDirtyPalettesMask
	beq    @WaterNotDirty
	PUSHM  d0/a0-a1
	jsr    VFX_CreateUnderwaterPalette
	POPM   d0/a0-a1
	@WaterNotDirty:
	lea    size_palette_b(a0), a0
	lea    size_palette_b(a1), a1
	addq.b #0x1, d0
	cmp.b  #num_palettes, d0
	bne    @WaterPaletteLp

	; Reset dirty palette mask
	move.b #0x0, UnderwaterDirtyPalettesMask

	rts

VFX_RevertToScenePalettes:

	move.b #0xF, DirtyPalettesMask

	rts

VFX_StartScreenEffectGreyscale:
	; d0 (b) - Palette idx
	; d1 (b) - Lerped (0) or instant (1)
	; d2 (w) - Lerp speed

	; Backup lerp speed
	move.w d2, d5
	
	; Backup palette idx
	moveq #0x0, d7
	move.b d0, d7

	; Get source palette address
	lea     CurrentPalettes, a0
	andi.l  #0xFF, d0
	mulu    #size_palette_b, d0
	add.l   d0, a0

	; Alloc dest palette on stack
	ALLOCSTACKB size_palette_b
	move.l sp, a1

	; Push lerp param
	PUSHL  d1
	
	; Source/dest address backup
	move.l a1, a3
	move.l a0, a4

	; Loop through component words
	move.l #(size_palette_b/size_word)-1, d0
	@PaletteCopyLp:
	PUSHL  d0
	move.w (a0)+, d1				; Copy components from source palette
	
	; Split into bytes
	move.w d1, d2
	move.w d1, d3
	lsr.w  #0x4, d2
	lsr.w  #0x8, d3
	andi.w #0xF, d0 ; Red
	andi.w #0xF, d1 ; Green
	andi.w #0xF, d2 ; Blue
	
	; Sum
	add.w  d2, d1
	add.w  d3, d1
	
	; Avg.
	andi.l #0xFFFF, d1
	divu   #0x3, d1
	
	; Copy result to all 3 components
	clr.w  d2
	or.b d1, d2		; Red
	lsl.w  #0x4, d2
	or.b d1, d2		; Green
	lsl.w  #0x4, d2
	or.b d1, d2		; Blue
	
	move.w d2, (a1)+				; Copy components to dest palette
	POPL   d0
	dbra   d0, @PaletteCopyLp
	
	; Pop lerp param
	POPL   d1
	
	cmp.b  #VFXGreyscaleLerp, d1
	bne    @Instant
	
	; Begin palette lerp
	move.l a3, a0					; Dest palette address
	move.l d7, d0					; Palette idx
	move.w d5, d1					; Speed
	move.b #0x3, d2					; Ticks per update
	move.b #0x0, d3					; First colour
	move.b #0xF, d4					; Last colour
	jsr    PAL_LerpStart
	bra    @EndLoadPalette
	
	@Instant:

	; Copy source to dest
	move.l  #(size_palette_b/size_long), d6
	MEMCPYL a4, a3, d6

	; Mark palette dirty
	bset   d7, DirtyPalettesMask
	bset   d7, UnderwaterDirtyPalettesMask

	@EndLoadPalette:

	; Free stack
	FREESTACKB size_palette_b
	
	rts
	
VFX_StopScreenEffectGreyscale:
	; d0 (b) - Palette idx
	
	rts
	
VFX_CreateUnderwaterPalette:
	; a0 --- Source palette addr
	; a1 --- Dest palette addr

	move.w #(size_palette_b/size_word)-1, d0
	@Loop:

	; Get colour
	move.w (a0)+, d1

	; Extract R/G/B components
	move.w d1, d2
	move.w d1, d3
	andi.w #0x0F00, d1	; Blue
	andi.w #0x000F, d2	; Red
	andi.w #0x00F0, d3	; Green
	lsr.w  #0x8, d1
	lsr.w  #0x4, d3

	; Sub 1 from R
	cmp.b  #VFXUnderwaterSubR, d2
	ble    @ClampRed
	subq.b  #VFXUnderwaterSubR, d2
	bra    @EndRed
	@ClampRed:
	move.b #0x0, d2
	@EndRed:

	; Sub 1 from G
	cmp.b  #VFXUnderwaterSubG, d3
	ble    @ClampGreen
	subq.b  #VFXUnderwaterSubG, d3
	bra    @EndGreen
	@ClampGreen:
	move.b #0x0, d3
	@EndGreen:

	; Sub 1 from B
	cmp.b  #VFXUnderwaterSubB, d1
	ble    @ClampBlue
	subq.b  #VFXUnderwaterSubB, d1
	bra    @EndBlue
	@ClampBlue:
	move.b #0x0, d1
	@EndBlue:

	; Back to colour
	lsl.w  #0x8, d1
	lsl.w  #0x4, d3
	or.w   d2, d1
	or.w   d3, d1

	; Write
	move.w d1, (a1)+

	dbra   d0, @Loop

	rts

VFX_CreateColourblindPalettePaletteRG:
	; a0 --- Source palette addr
	; a1 --- Dest palette addr

	move.w #(size_palette_b/size_word)-1, d0
	@Loop:

	; Get colour
	move.w (a0)+, d1

	; Extract R/G/B components
	move.w d1, d2
	move.w d1, d3
	andi.w #0x0F00, d1	; Blue
	andi.w #0x000F, d2	; Red
	andi.w #0x00F0, d3	; Green
	lsr.w  #0x8, d1
	lsr.w  #0x4, d3

	; Average R and G
	add.w  d2, d3
	lsr.w  #0x1, d3
	move.w d3, d2

	; Back to colour
	lsl.w  #0x8, d1
	lsl.w  #0x4, d3
	or.w   d2, d1
	or.w   d3, d1

	; Write
	move.w d1, (a1)+

	dbra   d0, @Loop

	rts

VFX_CreateColourblindPalettePaletteBG:
	; a0 --- Source palette addr
	; a1 --- Dest palette addr

	move.w #(size_palette_b/size_word)-1, d0
	@Loop:

	; Get colour
	move.w (a0)+, d1

	; Extract R/G/B components
	move.w d1, d2
	move.w d1, d3
	andi.w #0x0F00, d1	; Blue
	andi.w #0x000F, d2	; Red
	andi.w #0x00F0, d3	; Green
	lsr.w  #0x8, d1
	lsr.w  #0x4, d3

	; Average B and G
	add.w  d1, d3
	lsr.w  #0x1, d3
	move.w d3, d1

	; Back to colour
	lsl.w  #0x8, d1
	lsl.w  #0x4, d3
	or.w   d2, d1
	or.w   d3, d1

	; Write
	move.w d1, (a1)+

	dbra   d0, @Loop

	rts

VFX_BrightenPalette:
	; a0 --- Source palette addr
	; a1 --- Dest palette addr
	; d0 (b) Brightness factor

	move.b d0, d4
	move.w #(size_palette_b/size_word)-1, d0
	@Loop:

	; Get colour
	move.w (a0)+, d1

	; Extract R/G/B commponents
	move.w d1, d2
	move.w d1, d3
	andi.w #0x0F00, d1	; Blue
	andi.w #0x000F, d2	; Red
	andi.w #0x00F0, d3	; Green
	lsr.w  #0x8, d1
	lsr.w  #0x4, d3

	; Add to R
	add.b  d4, d2
	cmp.b  #0xF, d2
	blt    @NoClampRed
	move.b #0xF, d2
	@NoClampRed:

	; Add to G
	add.b  d4, d3
	cmp.b  #0xF, d3
	blt    @NoClampGreen
	move.b #0xF, d3
	@NoClampGreen:

	; Add to B
	add.b  d4, d1
	cmp.b  #0xF, d1
	blt    @NoClampBlue
	move.b #0xF, d1
	@NoClampBlue:

	; Back to colour
	lsl.w  #0x8, d1
	lsl.w  #0x4, d3
	or.w   d2, d1
	or.w   d3, d1

	; Write
	move.w d1, (a1)+

	dbra   d0, @Loop

	rts
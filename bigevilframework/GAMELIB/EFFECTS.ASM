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

VFX_StartScreenEffectGreyscale:
	; d0 (b) - Palette idx
	; d1 (b) - Lerped (0) or instant (1)
	
	; Backup palette idx
	clr.l  d7
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
	move.w #TimeOfDayCycleSpeed, d1	; Speed
	move.b #0x1, d2					; Ticks per update
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

	; Extract R/G/B commponents
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
	sub.b  #VFXUnderwaterSubR, d2
	bra    @EndRed
	@ClampRed:
	move.b #0x0, d2
	@EndRed:

	; Sub 1 from G
	cmp.b  #VFXUnderwaterSubG, d3
	ble    @ClampGreen
	sub.b  #VFXUnderwaterSubG, d3
	bra    @EndGreen
	@ClampGreen:
	move.b #0x0, d3
	@EndGreen:

	; Sub 1 from B
	cmp.b  #VFXUnderwaterSubB, d1
	ble    @ClampBlue
	sub.b  #VFXUnderwaterSubB, d1
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
;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   effects.asm - Screen effects
;==============================================================

StartEffectGreyscale:
	; d0 (b) - Palette idx
	
	; Alloc source/dest palette space on stack
	ALLOCSTACKB size_palette_b
	move.l sp, a0
	ALLOCSTACKB size_palette_b
	move.l sp, a1
	
	; Palette index and dest address backup
	move.l d0, d7
	move.l a1, a3
	
	; Read source palette
	PUSHL  a0
	PUSHL  d0
	jsr    ReadPalette
	POPL   d0
	POPL   a0

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
	
	; Begin palette lerp
	move.l a3, a0					; Dest palette address
	move.l d7, d0					; Palette idx
	move.w #TimeOfDayCycleSpeed, d1	; Speed
	move.b #0x0, d2					; First colour
	move.b #0xF, d3					; Last colour
	jsr    PaletteLerpStart
	
	; Free source/dest palette space
	FREESTACKB size_palette_b
	FREESTACKB size_palette_b
	
	rts
	
StopEffectGreyscale:
	; d0 (b) - Palette idx
	
	rts
	
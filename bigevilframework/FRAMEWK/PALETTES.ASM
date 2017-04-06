;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   palettes.asm - Palette loading and manipulation
;==============================================================

PAL_Load:
    ; d0 (b) Palette index
	; a0 --- Palette ROM address

	mulu.w #size_palette_b, d0      ; Colour index to CRAM destination address
	rol.l   #0x2, d0				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_cram_write, d0 ; OR in CRAM write command
	move.l  d0, vdp_control        	; Move dest address to VDP control port

	move.l #(size_palette_b/size_word)-1, d0 ; Size of palette in words (-1 for loop counter)
	@PaletteCopy:
	move.w (a0)+, vdp_data          ; Move word to CRAM
	dbra.w d0, @PaletteCopy

	rts
	
PAL_LoadDMA:
	; d0 (b) Palette index
	; a0 --- Palette ROM address

	mulu.w #size_palette_b, d0	; Palette index to CRAM destination address
	move.w #size_palette_w, d1	; Palette size to copy (in words)
	jsr VDP_DMACopyCRAM			; DMA copy
	
	rts
	
PAL_Read:
    ; d0 (b) Palette index
	; a0 --- Dest RAM address

	mulu.w #size_palette_b, d0        ; Colour index to CRAM source address
	swap   d0                      ; Move address to upper word
	ori.l  #vdp_read_palettes, d0  ; OR CRAM read command
	move.l d0, vdp_control         ; Send dest address to VDP
	
	PUSHL  d1

	move.l #(size_palette_b/size_word)-1, d0 ; Size of palette (-1 for loop counter)
	@PaletteCopy:
	move.w vdp_data, d1       		; Move word from CRAM
	andi.w #%0000111011101110, d1	; Mask to get colour components only
	move.w d1, (a0)+				; To RAM
	dbra.w d0, @PaletteCopy
	
	POPL   d1

	rts

PAL_Copy:
	; a0 --- Source palette
	; a1 --- Dest address

	move.l #(size_palette_b/size_long)-1, d0
	@PaletteCopy:
	move.l (a0)+, (a1)+
	dbra.w d0, @PaletteCopy

	rts

PAL_ClearAll:

	move.l #0x3, d0
	@PaletteLp:
	move.l d0, -(sp)
	jsr    PAL_Clear
	move.l (sp)+, d0
	dbra   d0, @PaletteLp

	rts
	
PAL_Clear:
	; d0 (b) Palette index
	
	mulu.w #size_palette_b, d0      ; Colour index to CRAM destination address
	rol.l   #0x2, d0				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_cram_write, d0 ; OR in CRAM write command
	move.l  d0, vdp_control        	; Move dest address to VDP control port

	move.l #(size_palette_b/size_word)-1, d0 ; Size of palette in words (-1 for loop counter)
	@PaletteClr:
	move.w #0x0, vdp_data          ; Move word to CRAM
	dbra.w d0, @PaletteClr
	
	rts

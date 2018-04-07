;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   tiles.asm - Tile loading routines
;==============================================================

VDP_LoadTiles:
	; a0 - Tiles address (l)
	; d0 - VRAM address (w)
	; d1 - Num tiles (w)

	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	andi.l  #0x0000FFFF, d0
	addi.l  #vram_addr_tiles, d0	; Add VRAM address offset
	rol.l   #0x2, d0				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d0 ; OR in VRAM write command

	DISABLE_INTERRUPTS
	
	move.l  d0, vdp_control        	; Move dest address to VDP control port
	
	and.l   #0x0000FFFF, d1
	sub.w	#0x1, d1				; Num tiles - 1
	@CharCopy:
	
	; 8 longwords in tile
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	move.l	(a0)+, vdp_data
	
	dbra	d1, @CharCopy

	RESTORE_INTERRUPTS
	
	rts
	
VDP_LoadTilesDMA:
	; a0 - Tiles address (l)
	; d0 - VRAM address (l)
	; d1 - Num tiles (w)

	lsl.w   #0x4, d1			; Num tiles to words (32 bytes, 16 words)
	jsr  VDP_DMACopyVRAM		; DMA copy
	
	rts
	
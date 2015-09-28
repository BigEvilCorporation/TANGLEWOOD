;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   planes.asm - Plane A/B map loading and scrolling
;==============================================================

SetCellPlaneA:
	; d0 (w) - Tile ID
	; d1 (ww)- XY coord (in tiles)
	; d2 (b) - Palette

	clr.l    d3                     ; Clear d3 ready to work with
	move.w   d1, d3                 ; Move Y coord (lower word of d1) to d3
	mulu.w   #vdp_plane_width, d3   ; Multiply Y by line width to get Y offset
	clr.w    d1						; Clear Y coord
	swap     d1                     ; Shift X coord from upper to lower word of d1
	add.l    d1, d3                 ; Add X coord to offset
	lsl.l    #0x1, d3               ; Convert to words
	lsl.l    #0x8, d3              ; Shift address offset to bits 16-30
	lsl.l    #0x8, d3
	ori.l    #vdp_write_plane_a, d3 ; OR in the VRAM write cmd + PlaneA address
	move.l   d3, vdp_control        ; Send to VDP control port

	clr.l    d3                     ; Clear d3 ready to work with again
	move.b   d2, d3                 ; Move palette ID (lower byte of d2) to d3
	lsl.l    #0x8, d3               ; Shift palette ID to bits 14 and 15 of d3
	lsl.l    #0x5, d3
	or.w     d0, d3                 ; OR in the tile ID
	move.w   d3, vdp_data           ; Move palette and pattern ID to VDP data port
	
	rts
	
LoadMapPlaneA:
    ; a0 (l) - Map address (ROM)
	; d0 (w) - Size in words
	; d1 (b) - Y offset
	; d2 (w) - First tile ID
	; d3 (b) - Palette ID

	mulu.w  #0x0040, d1            ; Multiply Y offset by line width (in words)

	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	add.l   #vram_addr_plane_a, d1	; Add VRAM address offset
	rol.l   #0x2, d1				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d1				; Shift lower word back
	swap    d1                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d1 ; OR in VRAM write command
	move.l  d1, vdp_control        	; Move dest address to VDP control port

	rol.l   #0x08, d3              ; Shift palette ID to bits 14-15
	rol.l   #0x05, d3              ; Can only rol 8 bits at a time

	subq.w  #0x01, d0              ; Num words in d0, minus 1 for counter
	
	@Copy:
	move.w  (a0)+, d4              ; Move tile ID from map data to lower d4
	and.l   #%0011111111111111, d4 ; Mask out original palette ID
	or.l    d3, d4                 ; Replace with our own
	add.w   d2, d4                 ; Add first tile offset to d4
	move.w  d4, vdp_data           ; Move to VRAM
	dbra.w  d0, @Copy              ; Loop

    rts

LoadMapSegmentPlaneA:
    ; a0 (l)  Map data address (ROM)
	; d0 (ww) Source top/left (tiles)
	; d1 (ww) Destination top/left (tiles)
	; d2 (ww) Segment width/height (tiles)
	; d3 (w)  Source map total width (tiles)
	; d4 (w)  Art tile ID
	; d5 (b)  Palette ID
	
	and.l  #0x0000FFFF, d3
	
	; Source top/left to tile offset (mul Y by total map width, add X)
	clr.l  d6
	move.w d0, d6	; Y to d6
	mulu   d3, d6	; To tile offset
	clr.w  d0
	swap   d0		; X to lower word
	add.l  d6, d0	; Add Y to X offset
	lsl.l  #0x1, d0	; To byte offset
	add.l  d0, a0	; Offset source address
	
	; Dest top/left to tile offset (mul Y by VDP width, add X)
	clr.l  d6
	move.w d1, d6					; Y to d6
	mulu   #vdp_plane_width, d6		; To tile offset
	clr.w  d1
	swap   d1						; X to lower word
	add.l  d6, d1					; Add Y to X offset
	lsl.l  #0x1, d1					; To byte offset
	
	; Segment width to column counter
	swap   d2
	clr.l  d7
	move.w d2, d7
	sub.w  #0x1, d7
	
	; Segment height to row counter
	clr.w  d2
	swap   d2
	sub.w  #0x1, d2
	
	; Total map width to bytes
	lsl.w  #0x1, d3
	
	; Shift palette ID to bits 14-15
	and.w  #0x00FF, d5
	lsl.w  #0x08, d5
	lsl.w  #0x05, d5
	
	; Loop rows
	@RowLp:
	
		; Set source address (start of curr row in a0)
		move.l a0, a1
		
		; Set dest address	(start of curr row in d1)
		; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
		move.l d1, d0
		add.l   #vram_addr_plane_a, d0	; Add VRAM address offset
		rol.l   #0x2, d0				; Roll bits 14/15 of address to bits 16/17
		lsr.w   #0x2, d0				; Shift lower word back
		swap    d0                     	; Swap address hi/lo
		ori.l   #vdp_cmd_vram_write, d0 ; OR in VRAM write command
		move.l  d0, vdp_control        	; Move dest address to VDP control port
	
		; Loop columns
		move.l d7, d6
		@ColumnLp:
		
			; Read tile and increment
			move.w (a1)+, d0

			; Map tile bit pattern: LPPH VTTT TTTT TTTT (L=lo/hi plane, P=Palette, H=HFlip, V=VFlip, T=TileId)
			
			; Offset first tile
			add.w   d4, d0

			; Mask out palette, replace with new
			;and.w   #%1001111111111111, d0
			;or.w    d5, d0
			
			; Write to VDP
			move.w  d0, vdp_data
		
		dbra d6, @ColumnLp
		
		; Increment start of curr row (source) by 1 row (total map width)
		add.l d3, a0
		
		; Increment start of curr row (dest) by 1 row (VDP width in words)
		add.l  #(vdp_plane_width*2), d1
		
	dbra d2, @RowLp
	
	rts
	
SetHScrollPlaneA:
	; d0 (w) HScroll value
	move.l #vdp_write_hscroll, vdp_control
	move.w d0, vdp_data
	rts

SetVScrollPlaneA:
	; d0 (w) VScroll value
	move.l #vdp_write_vscroll, vdp_control
	move.w d0, vdp_data
	rts
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   planes.asm - Plane A/B map loading and scrolling
;==============================================================

VDP_SetCellPlaneA:
	; d0 (w) - Tile ID
	; d1 (ww)- XY coord (in tiles)
	; d2 (b) - Palette

	; Position to VRAM offset
	moveq #0x0, d3                     ; Clear d3 ready to work with
	move.w   d1, d3                 ; Move Y coord (lower word of d1) to d3
	lsl.w    #0x6, d3 ;mulu.w   #vdp_plane_width, d3   ; Multiply Y by line width to get Y offset
	clr.w    d1						; Clear Y coord
	swap     d1                     ; Shift X coord from upper to lower word of d1
	add.w    d1, d3                 ; Add X coord to offset
	lsl.w    #0x1, d3               ; Convert to words
	
	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	addi.l  #vram_addr_plane_a, d3	; Add VRAM address offset
	rol.l   #0x2, d3				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d3				; Shift lower word back
	swap    d3                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d3 ; OR in VRAM write command
	move.l  d3, vdp_control        	; Move dest address to VDP control port

	andi.w  #0x3, d2
	ror.w   #0x3, d2				; Shift palette ID to bits 14-13
	or.w     d0, d2                 ; OR in the tile ID
	move.w   d2, vdp_data           ; Move palette and pattern ID to VDP data port
	
	rts

VDP_SetCellPlaneB:
	; d0 (w) - Tile ID
	; d1 (ww)- XY coord (in tiles)
	; d2 (b) - Palette

	; Position to VRAM offset
	moveq #0x0, d3                     ; Clear d3 ready to work with
	move.w   d1, d3                 ; Move Y coord (lower word of d1) to d3
	lsl.w    #0x6, d3 ;mulu.w   #vdp_plane_width, d3   ; Multiply Y by line width to get Y offset
	clr.w    d1						; Clear Y coord
	swap     d1                     ; Shift X coord from upper to lower word of d1
	add.w    d1, d3                 ; Add X coord to offset
	lsl.w    #0x1, d3               ; Convert to words
	
	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	addi.l  #vram_addr_plane_b, d3	; Add VRAM address offset
	rol.l   #0x2, d3				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d3				; Shift lower word back
	swap    d3                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d3 ; OR in VRAM write command
	move.l  d3, vdp_control        	; Move dest address to VDP control port

	andi.w  #0x3, d2
	ror.w   #0x3, d2				; Shift palette ID to bits 14-13
	or.w     d0, d2                 ; OR in the tile ID
	move.w   d2, vdp_data           ; Move palette and pattern ID to VDP data port
	
	rts
	
VDP_LoadMapPlaneA:
    ; a0 (l) - Map address (ROM)
	; d0 (w) - Size in words
	; d1 (b) - Y offset
	; d2 (w) - First tile ID
	; d3 (b) - Palette ID

	mulu.w  #0x0040, d1            ; Multiply Y offset by line width (in words)

	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	addi.l  #vram_addr_plane_a, d1	; Add VRAM address offset
	rol.l   #0x2, d1				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d1				; Shift lower word back
	swap    d1                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d1 ; OR in VRAM write command
	move.l  d1, vdp_control        	; Move dest address to VDP control port

	andi.w  #0x3, d3
	ror.w   #0x3, d3				; Shift palette ID to bits 14-13

	subq.w  #0x01, d0              ; Num words in d0, minus 1 for counter
	
	@Copy:
	move.w  (a0)+, d4              ; Move tile ID from map data to lower d4
	and.l   #%1001111111111111, d4 ; Mask out original palette ID
	or.l    d3, d4                 ; Replace with our own
	add.w   d2, d4                 ; Add first tile offset to d4
	move.w  d4, vdp_data           ; Move to VRAM
	dbra.w  d0, @Copy              ; Loop

    rts
	
VDP_LoadMapPlaneB:
    ; a0 (l) - Map address (ROM)
	; d0 (w) - Size in words
	; d1 (b) - Y offset
	; d2 (w) - First tile ID
	; d3 (b) - Palette ID

	mulu.w  #0x0040, d1            ; Multiply Y offset by line width (in words)

	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	addi.l  #vram_addr_plane_b, d1	; Add VRAM address offset
	rol.l   #0x2, d1				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d1				; Shift lower word back
	swap    d1                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d1 ; OR in VRAM write command
	move.l  d1, vdp_control        	; Move dest address to VDP control port

	andi.w  #0x3, d3
	ror.w   #0x3, d3				; Shift palette ID to bits 14-13

	subq.w  #0x01, d0              ; Num words in d0, minus 1 for counter
	
	@Copy:
	move.w  (a0)+, d4              ; Move tile ID from map data to lower d4
	and.l   #%1001111111111111, d4 ; Mask out original palette ID
	or.l    d3, d4                 ; Replace with our own
	add.w   d2, d4                 ; Add first tile offset to d4
	move.w  d4, vdp_data           ; Move to VRAM
	dbra.w  d0, @Copy              ; Loop

    rts

VDP_LoadBlockMapPlaneA:
	; a0 (l)  - Block data address (ROM)
	; a1 (l)  - Block map address (ROM)
	; d1 (ww) - Map width/height (in blocks)
	; d2 (w)  - First tile ID
	; d3 (b)  - Palette ID

	; Backup block address
	move.l  a0, a2

	; Row/col counters
	move.w  d1, d4	; Y
	swap    d1
	move.w  d1, d5	; X
	subq.w   #0x1, d4
	subq.w   #0x1, d5

	; X/Y coord
	moveq #0x0, d1

	; Loop rows
	@LoopY:

		; Loop cols
		move.w  d5, d6			; Reset X counter
		andi.l  #0x0000FFFF, d1	; Reset X pos
		@LoopX:

			moveq #0x0, d7
			move.w (a1)+, d7		; Fetch next block ID
			mulu   #map_block_width*map_block_height*size_word, d7	; To block offset
			move.l a2, a0			; Get first block address
			add.l  d7, a0			; Add block offset

			PUSHM  a0-a1/d1-d6
			jsr    VDP_LoadBlockPlaneA
			POPM   a0-a1/d1-d6

			; Increment X
			addi.l #map_block_width<<16, d1

		; Loop
		dbra.w d6, @LoopX

		; Increment Y
		addi.w #map_block_height, d1

	; Loop
	dbra.w d4, @LoopY

	rts

VDP_LoadBlockMapPlaneB:
	; a0 (l)  - Block data address (ROM)
	; a1 (l)  - Block map address (ROM)
	; d1 (ww) - Map width/height (in blocks)
	; d2 (w)  - First tile ID
	; d3 (b)  - Palette ID

	; Backup block address
	move.l  a0, a2
	move.l  a1, a6

	; Row/col counters
	move.w  d1, d4	; Y
	swap    d1
	move.w  d1, d5	; X
	subq.w   #0x1, d4
	subq.w   #0x1, d5

	; X/Y coord
	moveq #0x0, d1

	lea    map_blockmap_L1BG_rowoffsets, a4	; Get row offset table entry

	; Loop rows
	@LoopY:

		PUSHM  d0-d5/a2/a6

		; Decompress row
		moveq  #0x0, d0
		move.w (a4)+, d0		; Read row data address offset
		add.l  d0, a6			; Offset to start of row
		lea    BlockMapDecompressionBuffer, a5

		jsr    DecompressSlz
		
		; Check buffer overflow
		IFND FINAL
		move.l a5, d0
		move.l #BlockMapDecompressionBuffer, d1
		sub.l  d1, d0
		cmp.l  #BlockMapBufferSize, d0
		blt    @SizeOk
		RAISE_EXCEPTION *
		@SizeOk:
		ENDIF

		POPM   d0-d5/a2/a6
	
		; Set decompressed row address
		lea    BlockMapDecompressionBuffer, a1

		; Loop cols
		move.w  d5, d6			; Reset X counter
		andi.l  #0x0000FFFF, d1	; Reset X pos
		@LoopX:

			moveq #0x0, d7
			move.w (a1)+, d7		; Fetch next block ID
			mulu   #map_block_width*map_block_height*size_word, d7	; To block offset
			move.l a2, a0			; Get first block address
			add.l  d7, a0			; Add block offset

			PUSHM  a0-a4/d1-d6
			jsr    VDP_LoadBlockPlaneB
			POPM   a0-a4/d1-d6

			; Increment X
			addi.l #map_block_width<<16, d1

		; Loop
		dbra.w d6, @LoopX

		; Increment Y
		addi.w #map_block_height, d1

	; Loop
	dbra.w d4, @LoopY

	rts

VDP_LoadBlockPlaneA:
    ; a0 (l)  - Block address (ROM)
	; d1 (ww) - X/Y coord
	; d2 (w)  - First tile ID
	; d3 (b)  - Palette ID

	; X/Y offset to destination address
	moveq #0x0, d4
	move.w  d1, d4					; Y to d4
	lsl.w    #0x6, d4 ;mulu    #vdp_plane_width, d4	; Multiply Y by line width
	clr.w   d1						; Clear lower word
	swap    d1						; X to lower word
	add.l   d1, d4					; Add X offset
	lsl.l   #0x1, d4				; Offset to bytes

	andi.w  #0x3, d3
	ror.w   #0x3, d3				; Shift palette ID to bits 14-13

	; For each row in block
	move.w  #map_block_height-1, d5
	@RowLoop:

		; Fetch address offset
		move.l  d4, d1

		; Set VDP dest address
		VDP_SETADDRESS d1, #vram_addr_plane_a, #vdp_cmd_vram_write

		; For each col in block
		move.w  #map_block_width-1, d0
		@ColLoop:

			; ABBC DEEE EEEE EEEE
			; A = Prio
			; B = Palette
			; C = Flip X
			; D = Flip Y
			; E = Tile ID

			moveq #0x0, d1
			move.w  (a0)+, d1              ; Move tile ID from map data to lower d1
			and.l   #%1001111111111111, d1 ; Mask out original palette ID
			or.l    d3, d1                 ; Replace with our own
			add.w   d2, d1                 ; Add first tile offset to d1
			move.w  d1, vdp_data           ; Move to VRAM
			
		dbra.w  d0, @ColLoop               ; Loop

		; Offset to next row
		addi.l  #vdp_plane_width*size_word, d4

	; Loop to next row
	dbra.w  d5, @RowLoop

    rts

VDP_LoadBlockPlaneB:
    ; a0 (l)  - Block address (ROM)
	; d1 (ww) - X/Y coord
	; d2 (w)  - First tile ID
	; d3 (b)  - Palette ID

	; X/Y offset to destination address
	moveq #0x0, d4
	move.w  d1, d4					; Y to d4
	lsl.w    #0x6, d4 ;mulu    #vdp_plane_width, d4	; Multiply Y by line width
	clr.w   d1						; Clear lower word
	swap    d1						; X to lower word
	add.l   d1, d4					; Add X offset
	lsl.l   #0x1, d4				; Offset to bytes

	andi.w  #0x3, d3
	ror.w   #0x3, d3				; Shift palette ID to bits 14-13

	; For each row in block
	move.w  #map_block_height-1, d5
	@RowLoop:

		; Fetch address offset
		move.l  d4, d1

		; Set VDP dest address
		VDP_SETADDRESS d1, #vram_addr_plane_b, #vdp_cmd_vram_write

		; For each col in block
		move.w  #map_block_width-1, d0
		@ColLoop:
			moveq #0x0, d1
			move.w  (a0)+, d1              ; Move tile ID from map data to lower d1
			and.l   #%1001111111111111, d1 ; Mask out original palette ID
			or.l    d3, d1                 ; Replace with our own
			add.w   d2, d1                 ; Add first tile offset to d1
			move.w  d1, vdp_data           ; Move to VRAM
		dbra.w  d0, @ColLoop               ; Loop

		; Offset to next row
		addi.l  #vdp_plane_width*size_word, d4

	; Loop to next row
	dbra.w  d5, @RowLoop

    rts

VDP_LoadMapBlockSegmentPlaneA:
    ; a0 (l)  Map blocks data address (ROM)
	; a1 (l)  Map blockmap data address (ROM)
	; d0 (ww) Source top/left (blocks)
	; d1 (ww) Destination top/left (blocks)
	; d2 (ww) Segment width/height (blocks)
	; d3 (w)  Source map total width (blocks)
	; d4 (w)  Art tile ID
	; d5 (b)  Palette ID
	
	and.l  #0x0000FFFF, d3
	and.l  #0x0000FFFF, d4
	
	; Dest top/left to tile offset
	lsl.l   #0x2, d1
	
	; Segment width to column counter
	swap   d2
	moveq #0x0, d7
	move.w d2, d7
	subq.w  #0x1, d7
	
	; Segment height to row counter
	clr.w  d2
	swap   d2
	subq.w  #0x1, d2
	
	; Total map width to bytes
	lsl.w  #0x1, d3
	
	; Shift palette ID to bits 14-13
	andi.w  #0x3, d5
	ror.w   #0x3, d5

	; Backup X coord to reset after every row
	move.l d1, d6

	; Backup block data address
	move.l a0, a3
	
	; Loop rows
	@RowLp:

		PUSHALL

		; Decompress row
		lea    map_blockmap_L1A2_rowoffsets, a4	; Get row offset table entry
		andi.l #0xFFFF, d0		; Add Y offset (words)
		lsl.w  #0x1, d0			; To words
		add.l  d0, a4			; Offset into table
		
		moveq  #0x0, d0
		move.w (a4), d0			; Read row data address offset
		move.l a1, a6			; Get compressed blockmap data
		add.l  d0, a6			; Offset to start of row
		lea    BlockMapDecompressionBuffer, a5

		jsr    DecompressSlz
		
		; Check buffer overflow
		IFND FINAL
		move.l a5, d0
		move.l #BlockMapDecompressionBuffer, d1
		sub.l  d1, d0
		cmp.l  #BlockMapBufferSize, d0
		blt    @SizeOk
		RAISE_EXCEPTION *
		@SizeOk:
		ENDIF

		POPALL
	
		; Set decompressed row address
		lea    BlockMapDecompressionBuffer, a2

		PUSHL  d0
		
		; Add X offset
		move.w #0x0, d0
		swap   d0					; Get X coord (blocks)
		lsl.w  #0x1, d0				; To words
		add.l  d0, a2

		; Loop columns
		PUSHL d7
		@ColumnLp:
		
			moveq #0x0, d0
			move.w (a2)+, d0		; Fetch next block ID
			mulu   #map_block_width*map_block_height*size_word, d0	; To block offset
			move.l a3, a0			; Get first block address
			add.l  d0, a0			; Add block offset

			; Load block
			PUSHALL
			; a0 (l)  - Block address (ROM)
			; d1 (ww) - X/Y coord
			move.l d4, d2	; d2 (w)  - First tile ID
			move.b d5, d3	; d3 (b)  - Palette ID
			jsr   VDP_LoadBlockPlaneA
			POPALL

			; Increment X coord
			addi.l #map_block_width<<16, d1
		
		dbra d7, @ColumnLp
		POPL d7

		POPL d0
		
		; Increment source Y coord (blocks)
		addq.w #0x1, d0
		
		; Increment dest Y coord (tiles)
		addi.w #map_block_height, d6

		; Reset dest coords to start of row + new Y offset
		move.l d6, d1
		
	dbra d2, @RowLp
	
	rts

VDP_LoadMapSegmentPlaneA:
    ; a0 (l)  Map blocks data address (ROM)
	; a1 (l)  Map blockmap data address (ROM)
	; d0 (ww) Source top/left (tiles)
	; d1 (ww) Destination top/left (tiles)
	; d2 (ww) Segment width/height (tiles)
	; d3 (w)  Source map total width (tiles)
	; d4 (w)  Art tile ID
	; d5 (b)  Palette ID
	
	and.l  #0x0000FFFF, d3
	and.l  #0x0000FFFF, d4
	
	; Source top/left to tile offset (mul Y by total map width, add X)
	moveq #0x0, d6
	move.w d0, d6	; Y to d6
	mulu   d3, d6	; To tile offset
	clr.w  d0
	swap   d0		; X to lower word
	add.l  d6, d0	; Add Y to X offset
	lsl.l  #0x1, d0	; To byte offset
	add.l  d0, a0	; Offset source address
	
	; Dest top/left to tile offset (mul Y by VDP width, add X)
	moveq #0x0, d6
	move.w d1, d6					; Y to d6
	lsl.w    #0x6, d6 ; mulu   #vdp_plane_width, d6		; To tile offset
	clr.w  d1
	swap   d1						; X to lower word
	add.l  d6, d1					; Add Y to X offset
	lsl.l  #0x1, d1					; To byte offset
	
	; Segment width to column counter
	swap   d2
	moveq #0x0, d7
	move.w d2, d7
	subq.w  #0x1, d7
	
	; Segment height to row counter
	clr.w  d2
	swap   d2
	subq.w  #0x1, d2
	
	; Total map width to bytes
	lsl.w  #0x1, d3
	
	; Shift palette ID to bits 14-15
	andi.w  #0x3, d5
	ror.w   #0x3, d5
	
	; Loop rows
	@RowLp:
		
		; Set dest address	(start of curr row in d1)
		; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
		move.l d1, d0
		addi.l  #vram_addr_plane_a, d0	; Add VRAM address offset
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
		addi.l #(vdp_plane_width*2), d1
		
	dbra d2, @RowLp
	
	rts

VDP_ClearMapPlaneA:

	;move.w #vram_addr_plane_a, d0
	;move.w #vdp_plane_size_t, d1
	;move.w #0x0, d2
	;jsr    VPDDMAFillVRAM
	
	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	move.l  #vram_addr_plane_a, d1	; Add VRAM address offset
	rol.l   #0x2, d1				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d1				; Shift lower word back
	swap    d1                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d1 ; OR in VRAM write command
	move.l  d1, vdp_control        	; Move dest address to VDP control port

	move.w  #vdp_plane_size_t, d0  ; Num words in d0, minus 1 for counter
	
	@Copy:
	move.w  #0x0, vdp_data           ; Move to VRAM
	dbra.w  d0, @Copy              ; Loop
	
	rts

VDP_ClearMapPlaneB:

	;move.w #vram_addr_plane_b, d0
	;move.w #vdp_plane_size_t, d1
	;move.w #0x0, d2
	;jsr    VPDDMAFillVRAM
	
	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	move.l  #vram_addr_plane_b, d1	; Add VRAM address offset
	rol.l   #0x2, d1				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d1				; Shift lower word back
	swap    d1                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d1 ; OR in VRAM write command
	move.l  d1, vdp_control        	; Move dest address to VDP control port

	move.w  #vdp_plane_size_t, d0  ; Num words in d0, minus 1 for counter
	
	@Copy:
	move.w  #0x0, vdp_data           ; Move to VRAM
	dbra.w  d0, @Copy              ; Loop
	
	rts
	
VDP_SetHScrollPlaneA:
	; d0 (w) HScroll value
	move.l #vdp_write_hscroll_a, vdp_control
	move.w d0, vdp_data
	rts

VDP_SetVScrollPlaneA:
	; d0 (w) VScroll value
	move.l #vdp_write_vscroll_a, vdp_control
	move.w d0, vdp_data
	rts
	
VDP_SetHScrollPlaneB:
	; d0 (w) HScroll value
	move.l #vdp_write_hscroll_b, vdp_control
	move.w d0, vdp_data
	rts

VDP_SetVScrollPlaneB:
	; d0 (w) VScroll value
	move.l #vdp_write_vscroll_b, vdp_control
	move.w d0, vdp_data
	rts

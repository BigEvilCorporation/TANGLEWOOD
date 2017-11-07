;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   ledges.asm - Ledge grabbing
;==============================================================

; TODO: Could be a generic FindTerrainType routine
FindLedge:
	; a0 --- Collision tile data addr
	; a1 --- Level map data addr
	; d0 (l) XY coord in/out (scroll space) (0xFFFFFFFF if not found)
	; d1 (b) Ledge bit type to find
	; d2 (w) Map total width (tiles)
	
	; Backup map width for return coord
	move.w d2, d7
	
	; Convert XY coord to tile offset
	clr.l  d3
	move.w d0, d3					; Y to d3
	PIXELS2TILES d3					; To tiles
	mulu   d2, d3 					; To Y offset (map width in d2)
	clr.w  d0
	swap   d0						; X to lower d1
	PIXELS2TILES d0					; To tiles
	add.l  d0, d3					; Add X offset
	move.l d3, d0					; Backup for return val
	
	; =====================================================================
	
	; Fetch tile ID from RAM
	lsl.l  #0x1, d3					; Tile offset to words
	add.l  d3, a0					; Advance ptr
	move.w (a0), d2					; Fetch map tile
	TILES2BYTES d2					; Tile ID to byte offset
	add.l  d2, a1					; Add offset to collision data addr
	
	; =====================================================================
	
	; Find ledge collision bit
	move.l #(size_tile_b/4)-1, d3 ; Longwords per tile (-1 for loop)
	clr.l  d5						 ; Nybble counter in d5
	@ByteCheckLp:
	move.l (a1)+, d2				 ; Fetch collision longword from tile
	bne    @CheckNybbles			 ; Check if nonzero
	addq.w #0x8, d5					 ; Skip nybble counter by 8
	dbra   d3, @ByteCheckLp			 ; No collision data in longword, loop
	bra    @EndOfData				 ; End of data
	
	@CheckNybbles:
	move.l #0x7, d4					 ; 8 nybbles per longword (-1 for loop counter)
	@CheckNybbleLp:
	rol.l  #0x4, d2					 ; Shift longword contents left by one nybble
	btst   d1, d2		 			 ; Check ledge bit
	bne    @LedgeFound
	addq.w #0x1, d5					 ; Skip nybble counter by 1
	dbra   d4, @CheckNybbleLp		 ; No ledge bit found in nybble, loop
	dbra   d3, @ByteCheckLp			 ; No Ledge bit not found in longword, loop
	
	; =====================================================================
	
	@EndOfData:
	move.l #0xFFFFFFFF, d0			 ; Ledge not found, set return val to -1
	bra    @Return
	
	@LedgeFound:
	
	; Nybble offset into tile in d5
	divu   #0x8, d5					; Div/tilewidth for Y offset, remainder is X offset
	move.w d5, d6
	swap   d5

	; Div/mapwidth (tiles, scroll space) for tile Y, remainder is tile X
	divu   d7, d0
	
	; Y coord to nybbles
	move.l d0, d1
	and.l  #0x0000FFFF, d1
	lsl.l  #0x3, d1
	add.w  d6, d1					; Add Y offset
	
	; X coord to nybbles
	clr.w  d0
	swap   d0
	lsl.l  #0x3, d0
	add.w  d5, d0	; Add X offset
	swap   d0		; X in upper word
	move.w d1, d0	; Y in lower word
	
	@Return:
	rts

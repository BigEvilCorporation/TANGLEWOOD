;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   collision.asm - Collision data loading, collision tests
;==============================================================

heightmap_column_blank		equ 0x0
heightmap_column_solid		equ 0x8
heightmap_max_search_tiles	equ 0x2
wall_max_search_tiles		equ 0x2

PHYS_GetTerrainTile:
	; a0 ---- : Collision blocks data addr
	; a1 ---- : Collision tileset data addr / OUT: collision tile addr
	; a2 ---- : Collision block map data addr
	; d0 (w)  : OUT: Tile flags
	; d1 (ww) : XY coord (pixels, scroll space)
	; d2 (w)  : Map width (blocks)
	; d3 (w)  : OUT: Tile pos X (tiles)
	; d4 (w)  : OUT: Tile pos Y (tiles)

	; XY coord to blocks + tile offset
	clr.l  d3
	clr.l  d4
	move.w d1, d3					; Y to d3
	PIXELS2TILES d3					; To tiles
	move.w d3, d4					; Backup for tile offset
	TILES2BLOCKS d3					; To blocks
	mulu   d2, d3 					; To Y offset

	swap   d1						; X to lower d1

	clr.l  d5
	clr.l  d6
	move.w d1, d5					; X to d5
	PIXELS2TILES d5					; To tiles
	move.w d5, d6					; Backup for tile offset
	TILES2BLOCKS d5					; To blocks
	add.w  d5, d3 					; Add to Y offset

	; Backup tile X/Y for return values
	move.w d4, d2	; Y to d2
	move.w d6, d1	; X to d1

	; Tile X/Y to block remainders
	andi.w  #map_block_height-1, d4
	andi.w  #map_block_width-1, d6

	; Blocks to byte offset
	lsl.l  #0x1, d3
	add.l  d3, a2

	; Fetch block ID from map
	move.w (a2), d3

	; Get block address
	lsl.l  #0x5, d3		; mulu   #map_block_width*map_block_height*size_word, d3
	add.l  d3, a0

	; Tile remainder to byte offset
	lsl.l  #0x2, d4		; mulu   #map_block_width, d4
	add.w  d6, d4
	lsl.l  #0x1, d4
	add.l  d4, a0

	; Restore tile X/Y for return values
	clr.l  d3
	clr.l  d4
	move.w d1, d3	; X to d3
	move.w d2, d4	; Y to d4
	
	; Fetch collision tile ID from block
	clr.l  d0
	move.w (a0), d0
	move.w d0, d1
	
	; Mask out id (to get address) and flags (to return)
	andi.l #col_tile_mask_flags, d0
	andi.l #col_tile_mask_tileid, d1
	
	; Get collision tile addr
	lsl.w  #0x3, d1 				; Index to collision tile (8 bytes)
	add.l  d1, a1
	
	rts

PHYS_GetTerrainHeight:
	; a0 ---- : Collision blocks data addr
	; a1 ---- : Collision tileset data addr
	; a2 ---- : Collision block map data addr
	; d0 (w)  : OUT: Floor height, or -1
	; d1 (ww) : Probe XY coord (pixels, scroll space)
	; d2 (ww) : Map W/H (blocks)
	; d3 (w)  : OUT: Tile flags
	
	; Clear highest found height
	clr.w  d7
	
	; Get starting height to nearest tile + 1 (used as base for result)
	clr.l  d3
	move.w d1, d3
	move.w d1, d6
	andi.w #0x7, d3	; Y coord to nearest tile remainder
	sub.w  d3, d6	; Sub from Y coord
	addi.w #0x8, d6	; + 1 tile
	
	; Clear total blank tiles skipped
	clr.l  d5
	
	@NextTile:
	
	PUSHM  a0-a2/d1-d3
	PUSHM  d5-d6
	
	; Get terrain tile
	PUSHL  d1
	swap   d2				; Map width to d2
	andi.l #0x0000FFFF, d2	; Clear height
	jsr    PHYS_GetTerrainTile
	move.w d0, d4			; Backup tile flags to d4
	POPL   d1
	
	; Get X offset into tile
	move.l d1, d2	; Backup d1
	clr.w  d1		; Clear Y
	swap   d1		; X to lower word
	andi.w #0x7, d1	; Div by tile width remainder
	
	; Get height
	clr.l  d0		; Clear return reg
	add.l  d1, a1	; Add X offset (bytes) to tile addr
	move.b (a1), d0	; Get height value
	add.w  d0, d7	; Add to total found height
	
	POPM   d5-d6
	POPM   a0-a2/d1-d3
	
	; If solid tile, search next tile up
	cmp.b  #heightmap_column_solid, d0
	beq    @SolidTile
	
	; If blank total result, search next tile down
	cmp.w  #heightmap_column_blank, d7
	beq    @EmptyTile
	
	; Valid height found
	bra    @HeightFound
	
	@SolidTile:
	sub.w  #0x8, d1							; Next tile upwards
	move.w d4, d3							; Backup last valid tile flags
	bra    @NextTile						; Search again
	
	@EmptyTile:
	cmp.b  #heightmap_max_search_tiles, d5	; Check if reached max tile search
	beq    @NoHeight						; Bail if reached
	addq.b #0x1, d5							; Increment blank tiles skipped
	add.w  #0x8, d1							; Next search tile downwards
	add.w  #0x8, d6							; Next top Y offset downwards
	bra    @NextTile						; Search again
	
	@HeightFound:
	
	; If valid tile (not defaulted here from blank/solid tile)
	cmp.w  #0x0, d0
	beq    @UseOldFlags
	move.w d4, d3		; Flags to d3
	@UseOldFlags:
	
	; Sub from Y (heightmap Y values are +ve, coord sys Y is -ve)
	sub.w  d7, d6
	
	; Result to d0
	move.w d6, d0

	@NoHeight:
	
	rts

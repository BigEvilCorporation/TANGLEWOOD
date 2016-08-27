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

PHYS_GetTerrainTile:
	; a0 ---- : Collision map data addr
	; a1 ---- : Collision tileset data addr / OUT: collision tile addr
	; d0 (w)  : OUT: Tile flags
	; d1 (ww) : XY coord (pixels, scroll space)
	; d2 (w)  : Map width (tiles)
	
	; Convert XY coord to tile offset
	clr.l  d3
	move.w d1, d3					; Y to d3
	PIXELS2TILES d3					; To tiles
	mulu   d2, d3 					; To Y offset
	clr.w  d1
	swap   d1						; X to lower d1
	PIXELS2TILES d1					; To tiles
	add.l  d1, d3					; Add X offset
	
	; Fetch collision tile ID from RAM
	clr.l  d0
	lsl.l  #0x1, d3					; Tile offset to words
	add.l  d3, a0					; Offset ptr, needed for next tile
	move.w (a0), d0					; Fetch map tile
	move.w d0, d1
	
	; Mask out id (to get address) and flags (to return)
	andi.l #col_tile_mask_flags, d0
	andi.l #col_tile_mask_tileid, d1
	
	; Get collision tile addr
	lsl.w  #0x3, d1 				; Index to collision tile (8 bytes)
	add.l  d1, a1 
	
	rts
	
PHYS_GetCollisionTileFlags:
	; a0 ---- : Collision map data addr
	; d0 (w)  : OUT: Tile flags
	; d1 (ww) : XY coord (pixels, scroll space)
	; d2 (w)  : Map width (tiles)
	; d3 (w)  : OUT: Tile pos X (tiles)
	; d4 (w)  : OUT: Tile pos Y (tiles)
	
	clr.l  d3
	clr.l  d4
	clr.l  d5
	
	; Convert XY coord to tile offset
	move.w d1, d4					; Y to d4
	PIXELS2TILES d4					; To tiles
	mulu   d2, d4 					; To Y offset
	move.l d4, d5					; To d5 (to get tile index)
	clr.w  d1
	swap   d1						; X to lower d1
	PIXELS2TILES d1					; To tiles
	move.l d1, d4					; To d4 (for return val)
	add.l  d1, d5					; Add X offset to get tile index
	
	; Fetch collision tile ID from RAM
	clr.l  d0
	lsl.l  #0x1, d5					; Tile offset to words
	add.l  d5, a0					; Offset ptr, needed for next tile
	move.w (a0), d0					; Fetch map tile
	
	; Mask out id
	andi.l #col_tile_mask_flags, d0
	
	rts

PHYS_GetTerrainHeight:
	; a0 ---- : Collision map data addr
	; a1 ---- : Collision tileset data addr
	; d0 (w)  : OUT: Floor height, or -1
	; d1 (ww) : Probe XY coord (pixels, scroll space)
	; d2 (ww) : Map W/H (tiles)
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
	
	PUSHL a0
	PUSHL a1
	PUSHL d1
	PUSHL d2
	PUSHL d3
	PUSHL d5
	
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
	
	POPL d5
	POPL d3
	POPL d2
	POPL d1
	POPL a1
	POPL a0
	
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

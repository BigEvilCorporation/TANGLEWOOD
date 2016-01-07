;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   collision.asm - Collision data loading, collision tests
;==============================================================

heightmap_column_blank	equ 0x0
heightmap_column_solid	equ 0x8

GetTerrainTile:
	; a0 ---- : Collision map data addr
	; a1 ---- : Collision tileset data addr / OUT: collision tile addr
	; d0 (w)  : OUT: Tile flags
	; d1 (ww) : XY coord (pixels, scroll space)
	; d2 (w)  : Map width (tiles)
	
	; Convert XY coord to tile offset
	clr.l  d3
	move.w d1, d3					; Y to d3
	divu   #0x8, d3					; To tiles
	and.l  #0x0000FFFF, d3			; Clear remainder
	mulu   d2, d3 					; To Y offset
	clr.w  d1
	swap   d1						; X to lower d1
	divu   #0x8, d1					; To tiles
	and.l  #0x0000FFFF, d1			; Clear remainder
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
	mulu   #size_collision_tile_b, d1
	add.l  d1, a1 
	
	rts
	
GetCollisionTileFlags:
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
	divu   #0x8, d4					; To tiles
	and.l  #0x0000FFFF, d4			; Clear remainder
	mulu   d2, d4 					; To Y offset
	move.l d4, d5					; To d5 (to get tile index)
	clr.w  d1
	swap   d1						; X to lower d1
	divu   #0x8, d1					; To tiles
	and.l  #0x0000FFFF, d1			; Clear remainder
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

GetTerrainHeight:
	; a0 ---- : Collision map data addr
	; a1 ---- : Collision tileset data addr
	; d0 (w)  : Return - floor height, or -1
	; d1 (ww) : Probe XY coord (pixels, scroll space)
	; d2 (ww) : Map W/H (tiles)
	
	; Clear highest found height
	clr.w  d7
	
	; Get starting height to nearest tile + 1 (used as base for result)
	clr.l  d3
	move.w d1, d3
	move.w d1, d6
	divu   #0x8, d3	; Y coord to nearest tile
	swap   d3		; Remainder to lower d3
	sub.w  d3, d6	; Sub from Y coord
	addi.w #0x8, d6	; + 1 tile
	move.w d6, d1	; Use as probe Y
	
	@NextTile:
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.l d1, -(sp)
	move.l d2, -(sp)
	
	; Get terrain tile
	move.l d1, -(sp)
	swap   d2				; Map width to d2
	andi.l #0x0000FFFF, d2	; Clear height
	jsr    GetTerrainTile
	move.l (sp)+, d1
	
	; Get X offset into tile
	move.l d1, d2	; Backup d1
	clr.w  d1		; Clear Y
	swap   d1		; X to lower word
	divu   #0x8, d1	; Div by tile width
	clr.w  d1		; Clear exponent
	swap   d1		; Remainder to lower word
	
	; Get height
	clr.l  d0		; Clear return reg
	add.l  d1, a1	; Add X offset (bytes) to tile addr
	move.b (a1), d0	; Get height value
	add.w  d0, d7	; Add to total found height
	
	move.l (sp)+, d2
	move.l (sp)+, d1
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	; If solid, search next tile up
	cmp.b  #heightmap_column_solid, d0
	bne    @BelowMaxHeight
	
	sub.w  #0x8, d1		; Next tile upwards
	bra    @NextTile	; Search again
	
	@BelowMaxHeight:
	
	; Total found height from all tiles in d7
	cmp.w  #heightmap_column_blank, d7	; If blank, no height
	beq    @NoHeight
	
	; Sub from Y (heightmap Y values are +ve, coord sys Y is -ve)
	sub.w  d7, d6
	
	; Result to d0
	move.w d6, d0

	@NoHeight:
	
	rts

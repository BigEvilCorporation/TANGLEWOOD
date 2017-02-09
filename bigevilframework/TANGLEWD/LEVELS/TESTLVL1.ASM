;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   testlvl1.asm - Mechanics test level
;==============================================================	

Tst1_Forest:

	dc.l tiles_tst1				; Tileset
	dc.l 0x0 ;map_blocks_L1A1		; Blocks
	dc.l 0x0 ;map_blockmap_L1A1		; Block map
	dc.l collisiontiles_tst1	; Collision tileset
	dc.l collisionmap_tst1		; Collision map
	dc.l Tst11_DefaultPalettes	; Palettes
	dc.l Tst1_Init				; Init routine
	dc.l Tst1_Update			; Update routine
	dc.l Tst1_Serialise			; Serialise routine
	dc.l 0x00000000				; Load game objects routine
	dc.l 0x0					; Next level
	dc.w Gravity				; Default gravity
	dc.w map_tst1_width			; Map width
	dc.w map_tst1_height		; Map height
	dc.w tiles_tst1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
Tst11_DefaultPalettes:

	dc.l palette_tst1			; World
	dc.l 0x0					; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
Tst1_Init:

	; Fuzzls
	move.l #EntityArray_Fuzzl, a0
	jsr    LoadGameObjects_tst1_Fuzzl
	
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaf, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	; Enable player 1 control
	move.b #0x1, Player1ControlEnabled
	
	rts
	
Tst1_Update:
	rts
	
Tst1_Serialise:
	rts
	
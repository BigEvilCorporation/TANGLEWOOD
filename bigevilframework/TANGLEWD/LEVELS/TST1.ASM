;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2018
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   tst1.asm - Test level
;==============================================================	

; ************************************
; Static data
; ************************************
tst1_TestLevel1:

	dc.l 0x0							; Name
	dc.l 0x0							; Userdata
	dc.l tiles_tst1						; Tileset
	dc.l map_blocks_tst1				; Blocks
	dc.l map_blockmap_tst1				; Block map
	dc.l map_blockmap_tst1_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_tst1			; Collision tileset
	dc.l collisionmap_blocks_tst1		; Collision blocks
	dc.l collisionmap_blockmap_tst1		; Collision block map
	dc.l collisionmap_blockmap_yoffs_tst1		; Collision block map Y offsets table
	dc.l terrainmap_tst1_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l tst1_DefaultPalettes			; Palettes
	dc.l tst1_Init						; Init routine
	dc.l tst1_Update					; Update routine
	dc.l tst1_Serialise					; Serialise routine
	dc.l tst1_LoadGameObjects			; Load game objects routine
	dc.l tst1_End						; End routine
	dc.l 0x0							; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_tst1_width					; Map width (tiles)
	dc.w map_tst1_height				; Map height (tiles)
	dc.w map_blockmap_tst1_width		; Map width (blocks)
	dc.w map_blockmap_tst1_height		; Map height (blocks)
	dc.w terrainmap_tst1_width			; Collision map width (tiles)
	dc.w terrainmap_tst1_height			; Collision map height (tiles)
	dc.w terrainmap_tst1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_tst1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_tst1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_tst1_height; Collision map height (blocks)
	dc.w tiles_tst1_size_t				; Num tiles
	dc.w terrainmap_tst1_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x0							; Index
	
	even

tst1_DefaultPalettes:

	dc.l palette_l1_day		; World
	dc.l 0x0
	dc.l 0x0
	dc.l Pal_Nymn_Red		; Player
	
	even
	
tst1_Init:

	rts
	
tst1_Update:
	rts
	
tst1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

tst1_End:
	; a1 --- Level addr

	rts

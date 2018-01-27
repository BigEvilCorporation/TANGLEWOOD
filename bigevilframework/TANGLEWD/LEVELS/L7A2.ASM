;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l7a2.asm - Level 7 - Oasis Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l7a2_OasisAct2:

	dc.l LevelSelect_Str_07				; Name
	dc.l LevelData_l7a2					; Userdata
	dc.l tiles_L7						; Tileset
	dc.l map_blocks_L7					; Blocks
	dc.l map_blockmap_l7a2				; Block map
	dc.l map_blockmap_l7a2_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L7				; Collision tileset
	dc.l collisionmap_blocks_L7			; Collision blocks
	dc.l collisionmap_blockmap_l7a2		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l7a2	; Collision block map Y offsets table
	dc.l terrainmap_l7a2_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l7a2_DefaultPalettes			; Palettes
	dc.l l7a2_Init						; Init routine
	dc.l l7a2_Update					; Update routine
	dc.l l7a2_Serialise					; Serialise routine
	dc.l l7a2_LoadGameObjects			; Load game objects routine
	dc.l l7a2_End						; End routine
	;dc.l l7a3_OasisAct3					; Next level
	dc.l l8a1_TurntailAct1
	dc.l DefaultGravity					; Default gravity
	dc.w map_l7a2_width					; Map width (tiles)
	dc.w map_l7a2_height				; Map height (tiles)
	dc.w map_blockmap_l7a2_width		; Map width (blocks)
	dc.w map_blockmap_l7a2_height		; Map height (blocks)
	dc.w terrainmap_l7a2_width			; Collision map width (tiles)
	dc.w terrainmap_l7a2_height			; Collision map height (tiles)
	dc.w terrainmap_l7a2_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l7a2_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l7a2_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l7a2_height; Collision map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles
	dc.w terrainmap_l7a2_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x15							; Index
	
	even
	
l7a2_DefaultPalettes:

	dc.l palette_l7_day				; World
	dc.l palette_wyrm				; Wyrm
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
	RS_ALIGN
l7a2Data_Struct_Size     		rs.b 0
	
l7a2_Init:
	
	; Load BG map
	;lea    map_blocks_L7, a0
	;lea    map_blockmap_L7bg, a1
	;move.l #(map_blockmap_L7bg_width<<16)|map_blockmap_L7bg_height, d1
	;move.w (vram_addr_leveltiles), d2
	;BYTES2TILES d2
	;move.l #PaletteId_World0, d3
	;jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_l7_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l7_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l7_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l7_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L7_LoadSceneAnimations

	;==============================================================

	; HACK: Load L7 specific object sprites
	jsr    L7_LoadObjectSprites
	
	;==============================================================
	
	rts
	
l7a2_Update:

	rts
	
l7a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l7a2_End:
	rts
	
l7a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

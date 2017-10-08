;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a6.asm - Level 8 - Turntail Act 6
;==============================================================	

; ************************************
; Static data
; ************************************
l8a6_TurntailAct6:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a6					; Userdata
	dc.l tiles_L1						; Tileset (using L1 tileset)
	dc.l map_blocks_L1					; Blocks (using L1 tileset)
	dc.l map_blockmap_l8a6				; Block map
	dc.l collisiontiles_L1				; Collision tileset (using L1 tileset)
	dc.l collisionmap_blocks_L1			; Collision blocks (using L1 tileset)
	dc.l collisionmap_blockmap_l8a6		; Collision block map
	dc.l terrainmap_l8a6_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a6_DefaultPalettes			; Palettes
	dc.l l8a6_Init						; Init routine
	dc.l l8a6_Update					; Update routine
	dc.l l8a6_Serialise					; Serialise routine
	dc.l l8a6_LoadGameObjects			; Load game objects routine
	dc.l l8a6_End						; End routine
	dc.l 0x00000000						; End of game
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a6_width					; Map width (tiles)
	dc.w map_l8a6_height				; Map height (tiles)
	dc.w map_blockmap_l8a6_width		; Map width (blocks)
	dc.w map_blockmap_l8a6_height		; Map height (blocks)
	dc.w terrainmap_l8a6_width			; Collision map width (tiles)
	dc.w terrainmap_l8a6_height			; Collision map height (tiles)
	dc.w terrainmap_l8a6_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a6_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a6_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a6_height; Collision map height (blocks)
	dc.w tiles_L1_size_t				; Num tiles (using L1 tileset)
	dc.w terrainmap_l8a6_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l8a6_DefaultPalettes:

	dc.l palette_L1_night			; World (using L1 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a6Data_WaitingInput			rs.b 1
;---------------------------------
l8a6Data_Struct_Pad      		rs.b 3
l8a6Data_Struct_Size     		rs.b 0
	
l8a6_Init:
	
	; Load BG map (using L1 tileset)
	lea    map_blocks_L1, a0
	lea    map_blockmap_L1bg, a1
	move.l #(map_blockmap_L1bg_width<<16)|map_blockmap_L1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L1 tileset)
	move.l  #palette_L1_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L1 tileset)
	jsr    L1_LoadSceneAnimations
	
	;==============================================================
	
	rts
	
l8a6_Update:

	rts
	
l8a6_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a6_End:
	rts
	
l8a6_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

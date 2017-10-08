;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a3.asm - Level 8 - Turntail Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l8a3_TurntailAct3:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a3					; Userdata
	dc.l tiles_L5						; Tileset (using L5 tileset)
	dc.l map_blocks_L5					; Blocks (using L5 tileset)
	dc.l map_blockmap_l8a3				; Block map
	dc.l collisiontiles_L5				; Collision tileset (using L5 tileset)
	dc.l collisionmap_blocks_L5			; Collision blocks (using L5 tileset)
	dc.l collisionmap_blockmap_l8a3		; Collision block map
	dc.l terrainmap_l8a3_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a3_DefaultPalettes			; Palettes
	dc.l l8a3_Init						; Init routine
	dc.l l8a3_Update					; Update routine
	dc.l l8a3_Serialise					; Serialise routine
	dc.l l8a3_LoadGameObjects			; Load game objects routine
	dc.l l8a3_End						; End routine
	;dc.l l8a3_TurntailAct2				; Next level
	dc.l 0x0
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a3_width					; Map width (tiles)
	dc.w map_l8a3_height				; Map height (tiles)
	dc.w map_blockmap_l8a3_width		; Map width (blocks)
	dc.w map_blockmap_l8a3_height		; Map height (blocks)
	dc.w terrainmap_l8a3_width			; Collision map width (tiles)
	dc.w terrainmap_l8a3_height			; Collision map height (tiles)
	dc.w terrainmap_l8a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a3_height; Collision map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles (using L5 tileset)
	dc.w terrainmap_l8a3_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l8a3_DefaultPalettes:

	dc.l palette_L5					; World (using L5 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a3Data_WaitingInput			rs.b 1
;---------------------------------
l8a3Data_Struct_Pad      		rs.b 3
l8a3Data_Struct_Size     		rs.b 0
	
l8a3_Init:
	
	; Load BG map (using L5 tileset)
	lea    map_blocks_L5, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L5 tileset)
	move.l  #palette_L5,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	;move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L5 tileset)
	jsr    L5_LoadSceneAnimations
	
	;==============================================================
	
	rts
	
l8a3_Update:

	rts
	
l8a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a3_End:
	rts
	
l8a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l8a3_Trigger_Lift:

	ENTITY_GETBYNAME Lift, l8a3_LiftExit, a0
	jsr    LiftActivate

	rts
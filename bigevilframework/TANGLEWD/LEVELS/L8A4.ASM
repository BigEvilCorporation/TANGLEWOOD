;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a4.asm - Level 8 - Turntail Act 4
;==============================================================	

; ************************************
; Static data
; ************************************
l8a4_TurntailAct4:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a4					; Userdata
	dc.l tiles_L4						; Tileset (using L4 tileset)
	dc.l map_blocks_L4					; Blocks (using L4 tileset)
	dc.l map_blockmap_l8a4				; Block map
	dc.l collisiontiles_L4				; Collision tileset (using L4 tileset)
	dc.l collisionmap_blocks_L4			; Collision blocks (using L4 tileset)
	dc.l collisionmap_blockmap_l8a4		; Collision block map
	dc.l terrainmap_l8a4_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a4_DefaultPalettes			; Palettes
	dc.l l8a4_Init						; Init routine
	dc.l l8a4_Update					; Update routine
	dc.l l8a4_Serialise					; Serialise routine
	dc.l l8a4_LoadGameObjects			; Load game objects routine
	dc.l l8a4_End						; End routine
	dc.l l8a5_TurntailAct5				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a4_width					; Map width (tiles)
	dc.w map_l8a4_height				; Map height (tiles)
	dc.w map_blockmap_l8a4_width		; Map width (blocks)
	dc.w map_blockmap_l8a4_height		; Map height (blocks)
	dc.w terrainmap_l8a4_width			; Collision map width (tiles)
	dc.w terrainmap_l8a4_height			; Collision map height (tiles)
	dc.w terrainmap_l8a4_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a4_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a4_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a4_height; Collision map height (blocks)
	dc.w tiles_L4_size_t				; Num tiles (using L4 tileset)
	dc.w terrainmap_l8a4_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l8a4_DefaultPalettes:

	dc.l palette_L4					; World (using L4 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
l8a4Data_Struct_Pad      		rs.b 0
l8a4Data_Struct_Size     		rs.b 0
	
l8a4_Init:
	
	; Load BG map (using L4 tileset)
	lea    map_blocks_L4, a0
	lea    map_blockmap_L4bg, a1
	move.l #(map_blockmap_L4bg_width<<16)|map_blockmap_L4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L4 tileset)
	move.l  #palette_L4,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	;move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L4 tileset)
	jsr    L4_LoadSceneAnimations
	
	;==============================================================

	ENTITY_GETBYNAME Lift, l8a4_LiftEntrance, a0
	jsr    LiftActivate
	
	rts
	
l8a4_Update:

	rts
	
l8a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a4_End:
	rts
	
l8a4_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

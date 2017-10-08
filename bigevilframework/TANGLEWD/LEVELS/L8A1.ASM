;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a1.asm - Level 8 - Turntail Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l8a1_TurntailAct1:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a1					; Userdata
	dc.l tiles_L7						; Tileset (using L7 tileset)
	dc.l map_blocks_L7					; Blocks (using L7 tileset)
	dc.l map_blockmap_l8a1				; Block map
	dc.l collisiontiles_L7				; Collision tileset (using L7 tileset)
	dc.l collisionmap_blocks_L7			; Collision blocks (using L7 tileset)
	dc.l collisionmap_blockmap_l8a1		; Collision block map
	dc.l terrainmap_l8a1_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a1_DefaultPalettes			; Palettes
	dc.l l8a1_Init						; Init routine
	dc.l l8a1_Update					; Update routine
	dc.l l8a1_Serialise					; Serialise routine
	dc.l l8a1_LoadGameObjects			; Load game objects routine
	dc.l l8a1_End						; End routine
	dc.l l8a2_TurntailAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a1_width					; Map width (tiles)
	dc.w map_l8a1_height				; Map height (tiles)
	dc.w map_blockmap_l8a1_width		; Map width (blocks)
	dc.w map_blockmap_l8a1_height		; Map height (blocks)
	dc.w terrainmap_l8a1_width			; Collision map width (tiles)
	dc.w terrainmap_l8a1_height			; Collision map height (tiles)
	dc.w terrainmap_l8a1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a1_height; Collision map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles (using L7 tileset)
	dc.w terrainmap_l8a1_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l8a1_DefaultPalettes:

	dc.l palette_l7					; World (using L7 tileset)
	dc.l palette_wyrm				; Wyrm
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a1Data_WaitingInput			rs.b 1
;---------------------------------
l8a1Data_Struct_Pad      		rs.b 3
l8a1Data_Struct_Size     		rs.b 0
	
l8a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_l8a1, (a2)+
	move.l #LevelData_L8A2, (a2)+
	move.l #LevelData_L8A3, (a2)+
	move.l #LevelData_L8A4, (a2)+
	move.l #LevelData_L8A5, (a2)+
	move.l #LevelData_L8A6, (a2)+
	move.w #0x6, CurrentLevelNumActs
	
	; Load BG map
	;lea    map_blocks_L7, a0
	;lea    map_blockmap_L7bg, a1
	;move.l #(map_blockmap_L7bg_width<<16)|map_blockmap_L7bg_height, d1
	;move.w (vram_addr_leveltiles), d2
	;BYTES2TILES d2
	;move.l #PaletteId_World0, d3
	;jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L7 tileset)
	move.l  #palette_l7,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	;move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L7_LoadSceneAnimations
	
	;==============================================================
	
	rts
	
l8a1_Update:

	rts
	
l8a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a1_End:
	rts
	
l8a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

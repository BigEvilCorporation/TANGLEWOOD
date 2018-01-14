;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l7a3.asm - Level 7 - Oasis Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l7a3_OasisAct3:

	dc.l LevelSelect_Str_07				; Name
	dc.l LevelData_l7a3					; Userdata
	dc.l tiles_L7						; Tileset
	dc.l map_blocks_L7					; Blocks
	dc.l map_blockmap_l7a3				; Block map
	dc.l map_blockmap_l7a3_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L7				; Collision tileset
	dc.l collisionmap_blocks_L7			; Collision blocks
	dc.l collisionmap_blockmap_l7a3		; Collision block map
	dc.l terrainmap_l7a3_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l7a3_DefaultPalettes			; Palettes
	dc.l l7a3_Init						; Init routine
	dc.l l7a3_Update					; Update routine
	dc.l l7a3_Serialise					; Serialise routine
	dc.l l7a3_LoadGameObjects			; Load game objects routine
	dc.l l7a3_End						; End routine
	IF INCLUDE_LEVEL_8
	dc.l l8a1_TurntailAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l7a3_width					; Map width (tiles)
	dc.w map_l7a3_height				; Map height (tiles)
	dc.w map_blockmap_l7a3_width		; Map width (blocks)
	dc.w map_blockmap_l7a3_height		; Map height (blocks)
	dc.w terrainmap_l7a3_width			; Collision map width (tiles)
	dc.w terrainmap_l7a3_height			; Collision map height (tiles)
	dc.w terrainmap_l7a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l7a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l7a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l7a3_height; Collision map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles
	dc.w terrainmap_l7a3_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x16							; Index
	
	even
	
l7a3_DefaultPalettes:

	dc.l palette_l7					; World
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
l7a3Data_Struct_Size     		rs.b 0
	
l7a3_Init:
	
	; Load BG map
	;lea    map_blocks_L7, a0
	;lea    map_blockmap_L7bg, a1
	;move.l #(map_blockmap_L7bg_width<<16)|map_blockmap_L7bg_height, d1
	;move.w (vram_addr_leveltiles), d2
	;BYTES2TILES d2
	;move.l #PaletteId_World0, d3
	;jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
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
	
l7a3_Update:

	rts
	
l7a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l7a3_End:
	rts
	
l7a3_Trigger_End:

	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter

	; Not sleeping, force fade state
	lea    GameStateEndLevelData, a2
	move.w #0x1, EndLevelState_Timer(a2)
	
	rts

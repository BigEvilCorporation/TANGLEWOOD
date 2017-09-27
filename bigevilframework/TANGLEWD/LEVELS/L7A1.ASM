;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L7a1.asm - Level 7 - Oasis Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L7a1_OasisAct1:

	dc.l LevelSelect_Str_07				; Name
	dc.l LevelData_L7A1					; Userdata
	dc.l tiles_L7						; Tileset
	dc.l map_blocks_L7					; Blocks
	dc.l map_blockmap_L7a1				; Block map
	dc.l collisiontiles_L7				; Collision tileset
	dc.l collisionmap_blocks_L7			; Collision blocks
	dc.l collisionmap_blockmap_L7a1		; Collision block map
	dc.l terrainmap_L7A1_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l L7a1_DefaultPalettes			; Palettes
	dc.l L7a1_Init						; Init routine
	dc.l L7a1_Update					; Update routine
	dc.l L7a1_Serialise					; Serialise routine
	dc.l L7a1_LoadGameObjects			; Load game objects routine
	dc.l L7a1_End						; End routine
	IF INCLUDE_LEVEL_8
	dc.l l8a1_TurntailAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_L7a1_width					; Map width (tiles)
	dc.w map_L7a1_height				; Map height (tiles)
	dc.w map_blockmap_L7a1_width		; Map width (blocks)
	dc.w map_blockmap_L7a1_height		; Map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles
	dc.w terrainmap_L7A1_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
L7a1_DefaultPalettes:

	dc.l palette_l7					; World
	dc.l palette_wyrm				; Wyrm
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
L7a1Data_WaitingInput			rs.b 1
;---------------------------------
L7a1Data_Struct_Pad      		rs.b 3
L7a1Data_Struct_Size     		rs.b 0
	
L7a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L7A1, (a2)+
	;move.l #LevelData_L7A2, (a2)+
	;move.l #LevelData_L7A3, (a2)+
	move.w #0x1, CurrentLevelNumActs
	
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
	
L7a1_Update:

	rts
	
L7a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L7a1_End:
	rts
	
L7a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

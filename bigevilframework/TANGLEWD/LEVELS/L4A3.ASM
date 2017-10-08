;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a3.asm - Level 4 - Tethered Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l4a3_TetheredAct3:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_l4a3					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4					; Blocks
	dc.l map_blockmap_l4a3				; Block map
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a3		; Collision block map
	dc.l terrainmap_l4a3_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l4a3_DefaultPalettes			; Palettes
	dc.l l4a3_Init						; Init routine
	dc.l l4a3_Update					; Update routine
	dc.l l4a3_Serialise					; Serialise routine
	dc.l l4a3_LoadGameObjects			; Load game objects routine
	dc.l l4a3_End						; End routine
	IF INCLUDE_LEVEL_5
	dc.l L5a1_BygoneAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a3_width					; Map width (tiles)
	dc.w map_l4a3_height				; Map height (tiles)
	dc.w map_blockmap_l4a3_width		; Map width (blocks)
	dc.w map_blockmap_l4a3_height		; Map height (blocks)
	dc.w terrainmap_l4a3_width			; Collision map width (tiles)
	dc.w terrainmap_l4a3_height			; Collision map height (tiles)
	dc.w terrainmap_l4a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l4a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l4a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l4a3_height; Collision map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w terrainmap_l4a3_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l4a3_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l palette_djubb				; Monsters
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a3Data_WaitingInput			rs.b 1
;---------------------------------
l4a3Data_Struct_Pad      		rs.b 3
l4a3Data_Struct_Size     		rs.b 0
	
l4a3_Init:
	
	; Load BG map
	lea    map_blocks_l4, a0
	lea    map_blockmap_l4bg, a1
	move.l #(map_blockmap_l4bg_width<<16)|map_blockmap_l4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations
	
	;==============================================================

	; 'Special' terrain is water surface, don't collide
	; TODO: Terrain type flag for water
	move.l (Player1), a2
	move.l (Player2), a3
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a3)
	move.b #0x1, Player_SpecialTerrainIsWater(a2)
	move.b #0x1, Player_SpecialTerrainIsWater(a3)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l4a3_Update:

	rts
	
l4a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a3_End:
	rts
	
l4a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

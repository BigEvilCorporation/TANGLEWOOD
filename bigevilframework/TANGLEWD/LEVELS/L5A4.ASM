;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l5a4.asm - Level 5 - Bygone Mines Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l5a4_BygoneAct4:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_l5a4					; Userdata
	dc.l tiles_L4						; Tileset (using L4 tileset)
	dc.l map_blocks_l4					; Blocks (using L4 tileset)
	dc.l map_blockmap_l5a4				; Block map
	dc.l collisiontiles_L4				; Collision tileset (using L4 tileset)
	dc.l collisionmap_blocks_l5a4		; Collision blocks
	dc.l collisionmap_blockmap_l5a4		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l5a4_DefaultPalettes			; Palettes
	dc.l l5a4_Init						; Init routine
	dc.l l5a4_Update					; Update routine
	dc.l l5a4_Serialise					; Serialise routine
	dc.l l5a4_LoadGameObjects			; Load game objects routine
	dc.l l5a4_End						; End routine
	IF INCLUDE_LEVEL_6
	dc.l L6a1_DeadwoodAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l5a4_width					; Map width (tiles)
	dc.w map_l5a4_height				; Map height (tiles)
	dc.w map_blockmap_l5a4_width		; Map width (blocks)
	dc.w map_blockmap_l5a4_height		; Map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l5a4_DefaultPalettes:

	dc.l palette_L4					; World (using L4 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a4Data_WaitingInput			rs.b 1
;---------------------------------
l5a4Data_Struct_Pad      		rs.b 3
l5a4Data_Struct_Size     		rs.b 0
	
l5a4_Init:
	
	; Load BG map (using L4 tileset)
	lea    map_blocks_L4, a0
	lea    map_blockmap_L4bg, a1
	move.l #(map_blockmap_L4bg_width<<16)|map_blockmap_L4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L4 tileset)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations (using L4 tileset)
	jsr    L4_LoadSceneAnimations

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l5a4_Update:

	rts
	
l5a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a4_End:
	rts
	
l5a4_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

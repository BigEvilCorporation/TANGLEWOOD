;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a2.asm - Level 4 - Tethered Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l4a2_TetheredAct2:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_L4A2					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4a2				; Blocks
	dc.l map_blockmap_l4a2				; Block map
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4a2		; Collision blocks
	dc.l collisionmap_blockmap_l4a2		; Collision block map
	dc.l l4a2_DefaultPalettes			; Palettes
	dc.l l4a2_Init						; Init routine
	dc.l l4a2_Update					; Update routine
	dc.l l4a2_Serialise					; Serialise routine
	dc.l l4a2_LoadGameObjects			; Load game objects routine
	dc.l l4a2_End						; End routine
	IF INCLUDE_LEVEL_5
	dc.l L5a1_BygoneAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_l4a2_width					; Map width (tiles)
	dc.w map_l4a2_height				; Map height (tiles)
	dc.w map_blockmap_l4a2_width		; Map width (blocks)
	dc.w map_blockmap_l4a2_height		; Map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	
	even
	
l4a2_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a2Data_WaitingInput			rs.b 1
;---------------------------------
l4a2Data_Struct_Pad      		rs.b 3
l4a2Data_Struct_Size     		rs.b 0
	
l4a2_Init:
	
	; Load BG map
	lea    map_blocks_l4bg, a0
	lea    map_blockmap_l4bg, a1
	move.l #(map_blockmap_l4bg_width<<16)|map_blockmap_l4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations
	
	;==============================================================
	
	rts
	
l4a2_Update:

	rts
	
l4a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a2_End:
	rts
	
l4a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

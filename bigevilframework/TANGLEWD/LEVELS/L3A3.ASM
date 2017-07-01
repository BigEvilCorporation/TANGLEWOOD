;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l3a3.asm - Level 3 - Heritage Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l3a3_HeritageAct3:

	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3a3				; Blocks
	dc.l map_blockmap_l3a3				; Block map
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3a3		; Collision blocks
	dc.l collisionmap_blockmap_l3a3		; Collision block map
	dc.l l3a3_DefaultPalettes			; Palettes
	dc.l l3a3_Init						; Init routine
	dc.l l3a3_Update					; Update routine
	dc.l l3a3_Serialise					; Serialise routine
	dc.l l3a3_LoadGameObjects			; Load game objects routine
	dc.l l3a3_End						; End routine
	IF INCLUDE_LEVEL_4
	dc.l l4a1_TetheredAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_l3a3_width					; Map width (tiles)
	dc.w map_l3a3_height				; Map height (tiles)
	dc.w map_blockmap_l3a3_width		; Map width (blocks)
	dc.w map_blockmap_l3a3_height		; Map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	
	even
	
l3a3_DefaultPalettes:

	dc.l palette_l3					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l3a3Data_WaitingInput			rs.b 1
;---------------------------------
l3a3Data_Struct_Pad      		rs.b 3
l3a3Data_Struct_Size     		rs.b 0
	
l3a3_Init:
	
	; Load BG map
	lea    map_blocks_l3bg, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations
	
	rts
	
l3a3_Update:

	rts
	
l3a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l3a3_End:
	rts
	
l3a3_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

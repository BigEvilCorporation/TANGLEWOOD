;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a2.asm - Level 1 - Harlequin Forest Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l1a2_HarlequinForestAct2:

	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1a2				; Blocks
	dc.l map_blockmap_l1a2				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1a2		; Collision blocks
	dc.l collisionmap_blockmap_l1a2		; Collision block map
	dc.l l1a2_DefaultPalettes			; Palettes
	dc.l l1a2_Init						; Init routine
	dc.l l1a2_Update					; Update routine
	dc.l l1a2_Serialise					; Serialise routine
	dc.l l1a2_LoadGameObjects			; Load game objects routine
	dc.l l1a3_HarlequinForestAct3		; Next level
	dc.w Gravity						; Default gravity
	dc.w map_l1a2_width					; Map width (tiles)
	dc.w map_l1a2_height				; Map height (tiles)
	dc.w map_blockmap_l1a2_width		; Map width (blocks)
	dc.w map_blockmap_l1a2_height		; Map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	
	even
	
l1a2_DefaultPalettes:

	dc.l palette_l1_day				; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l1a2Data_WaitingInput			rs.b 1
;---------------------------------
l1a2Data_Struct_Pad      		rs.b 3
l1a2Data_Struct_Size     		rs.b 0
	
l1a2_Init:
	
	; Load BG map
	lea    map_blocks_l1bg, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB
	
	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations
	
	;==============================================================

	; Link Flue B with Flue A
	move.l #l1a2_Flue_B_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a0
	add.l  d0, a0
	
	move.l #l1a2_Flue_A_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a1
	add.l  d0, a1
	
	move.l a1, Flue_OutputFlue(a0)
	
	rts
	
l1a2_Update:

	rts
	
l1a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
l1a2_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l1a2_Trigger_NearCave:

	PUSHL  a0
	PUSHL  a1
	
	move.l #Player1, a0
	jsr    PlayerStopColourAbility
	move.b #ColourRed, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	
	POPL   a1
	POPL   a0
	
	rts

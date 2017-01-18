;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L1A1.asm - Level 1 - Herlequin Forest Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L1A1_HarlequinForest:

	dc.l tiles_L1				; Tileset
	dc.l map_L1A1				; Map
	dc.l collisiontiles_L1		; Collision tileset
	dc.l collisionmap_L1A1		; Collision map
	dc.l L1A1_DefaultPalettes	; Palettes
	dc.l L1A1_Init				; Init routine
	dc.l L1A1_Update			; Update routine
	dc.l L1A1_Serialise			; Serialise routine
	dc.l L1A1_LoadGameObjects	; Load game objects routine
	dc.l 0x00000000				; Next level
	dc.w Gravity				; Default gravity
	dc.w map_L1A1_width			; Map width
	dc.w map_L1A1_height		; Map height
	dc.w tiles_L1_size_t		; Num tiles
	
	even
	
L1A1_DefaultPalettes:

	dc.l palette_L1				; World
	dc.l 0x0					; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
L1A1Data_WaitingInput			rs.b 1
;---------------------------------
L1A1Data_Struct_Pad      		rs.b 1
L1A1Data_Struct_Size     		rs.b 0
	
L1A1_Init:
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaf, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	;==============================================================
	
	; Load BG map
	lea    map_L1BG, a0
	move.l #map_L1BG_size_w, d0
	move.l #0x0, d1
	move.l #Tiles_LevelMap_ID, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadMapPlaneB
	
	;==============================================================

	; Get player 1
	move.l #Player1, a0
	
	; Disable player 1 control
	move.b #0x0, Player1ControlEnabled
	
	; Start sleep anim
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, L1A1Data_WaitingInput(a2)
	
	;==============================================================
	
	rts
	
L1A1_Update:

	move.l #LevelData_L1A1, a2
	cmp.b  #0x0, L1A1Data_WaitingInput(a2)
	beq    @FinishedLevelStartSequence
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check for input
	andi.w #(pad_button_a|pad_button_b|pad_button_c), d0
	cmp.w  #0x0, d0
	beq    @NoInput
	
	; Start wake up sequence
	PUSHL  a1
	PUSHL  a2
	move.l #Player1, a0
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Wake*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1
	
	; Enable player 1 control
	move.b #0x1, Player1ControlEnabled
	
	; Release animation control
	move.l #Player1, a0
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Done
	move.b #0x0, L1A1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
L1A1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
L1A1_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

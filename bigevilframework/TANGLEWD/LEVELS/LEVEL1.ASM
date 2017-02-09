;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level1.asm - Level 1 - Herlequin Forest Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
Lvl1_HarlequinForest:

	dc.l tiles_lvl1					; Tileset
	dc.l map_blocks_L1A1			; Blocks
	dc.l map_blockmap_L1A1			; Block map
	dc.l collisiontiles_lvl1		; Collision tileset
	dc.l collisionmap_lvl1			; Collision map
	dc.l Lvl1_DefaultPalettes		; Palettes
	dc.l Lvl1_Init					; Init routine
	dc.l Lvl1_Update				; Update routine
	dc.l Lvl1_Serialise				; Serialise routine
	dc.l lvl1_LoadGameObjects		; Load game objects routine
	dc.l Lvl2_HarlequinForestAct2	; Next level
	dc.w Gravity					; Default gravity
	dc.w map_lvl1_width				; Map width (tiles)
	dc.w map_lvl1_height			; Map height (tiles)
	dc.w map_blockmap_lvl1_width	; Map width (blocks)
	dc.w map_blockmap_lvl1_height	; Map height (blocks)
	dc.w tiles_lvl1_size_t			; Num tiles
	
	even
	
Lvl1_DefaultPalettes:

	dc.l palette_lvl1_day			; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
Lvl1Data_WaitingInput			rs.b 1
;---------------------------------
Lvl1Data_Struct_Pad      		rs.b 3
Lvl1Data_Struct_Size     		rs.b 0
	
Lvl1_Init:
	
	; Load BG map
	;lea    map_lvl1_bg, a0
	;move.l #map_lvl1_bg_size_w, d0
	;move.l #0x0, d1
	;move.w (vram_addr_leveltiles), d2
	;move.l #PaletteId_World0, d3
	;jsr    VDP_LoadMapPlaneB

	; Load BG map
	lea    map_blocks_l1bg, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_lvl1_bg_width<<16)|map_blockmap_lvl1_bg_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB
	
	;==============================================================
	
	; Set Fuzzl colours
	move.l #Lvl1_Fuzzl_Yellow_idx, d0
	mulu   #Fuzzl_Struct_Size, d0
	move.l #EntityArray_Fuzzl, a0
	add.l  d0, a0
	move.b #ColourYellow, d0
	jsr    FuzzlSetColour
	
	move.l #Lvl1_Fuzzl_Green_idx, d0
	mulu   #Fuzzl_Struct_Size, d0
	move.l #EntityArray_Fuzzl, a0
	add.l  d0, a0
	move.b #ColourGreen, d0
	jsr    FuzzlSetColour
	
	move.l #Lvl1_Fuzzl_Blue_idx, d0
	mulu   #Fuzzl_Struct_Size, d0
	move.l #EntityArray_Fuzzl, a0
	add.l  d0, a0
	move.b #ColourBlue, d0
	jsr    FuzzlSetColour
	
	;==============================================================
	
	; Start level intro tune
	IFND DEBUG
	;lea    bgm_lvlintro, a0
	lea    bgm_dawn, a0
	jsr    SND_PlayTrack
	ENDIF
	
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
	
	move.l #LevelData_1, a2
	move.b #0x1, Lvl1Data_WaitingInput(a2)
	
	rts
	
Lvl1_Update:

	move.l #LevelData_1, a2
	
	; Check waiting for input
	move.l #LevelData_1, a2
	cmp.b #0x0, Lvl1Data_WaitingInput(a2)
	beq    @FinishedLevelStartSequence
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check for input
	andi.w #(pad_button_a|pad_button_b|pad_button_c), d0
	cmp.w  #0x0, d0
	beq   @NoInput
	
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
	move.b #0x0, Lvl1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
Lvl1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
Lvl1_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

Lvl1_Trigger_NearCave:

	PUSHL  a0
	PUSHL  a1
	
	move.l #Player1, a0
	jsr    PlayerStopColourAbility
	move.b #ColourRed, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	
	POPL   a1
	POPL   a0
	
	rts
	
Lvl1_Trigger_NearEndLevel:

	rts

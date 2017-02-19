;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a3.asm - Level 1 - Harlequin Forest Act 3
;==============================================================	

l1a3_HarlequinForestAct3:

	dc.l tiles_l1						; Tileset
	dc.l map_blocks_L1A3				; Blocks
	dc.l map_blockmap_L1A3				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1a3		; Collision blocks
	dc.l collisionmap_blockmap_l1a3		; Collision block map
	dc.l l1a3_DefaultPalettes			; Palettes
	dc.l l1a3_Init						; Init routine
	dc.l l1a3_Update					; Update routine
	dc.l l1a3_Serialise					; Serialise routine
	dc.l l1a3_LoadGameObjects			; Load game objects routine
	dc.l l1a4_HarlequinForestAct4		; Next level
	dc.w Gravity						; Default gravity
	dc.w map_l1a3_width					; Map width
	dc.w map_l1a3_height				; Map height
	dc.w map_blockmap_l1a3_width		; Map width (blocks)
	dc.w map_blockmap_l1a3_height		; Map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	
	even
	
l1a3_DefaultPalettes:

	dc.l palette_l1_night		; World
	dc.l palette_monster		; Djakk
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l1a3Data_WaitingInput			rs.b 1
;---------------------------------
l1a3Data_Struct_Pad      		rs.b 3
l1a3Data_Struct_Size     		rs.b 0
	
l1a3_Init:

	; Load BG map
	lea    map_blocks_l1bg, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB
	
	;==============================================================
	
	; Don't bother with Djakk emerge sequence
	move.l #l1a3_Djakk_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monster, a0
	add.l  d0, a0
	move.b #0x0, Monster_DoIntro(a0)
	
	; Lower catch-up speed mul (or he'll bust through walls)
	move.w #0x2, Monster_CatchUpSpeedMul(a0)
	
	;==============================================================
	
	; Link Flue A with Flue B
	move.l #l1a3_Flue_A_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a0
	add.l  d0, a0
	
	move.l #l1a3_Flue_B_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a1
	add.l  d0, a1
	
	move.l a1, Flue_OutputFlue(a0)
	
	; Link Flue D with Flue E
	move.l #l1a3_Flue_D_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a0
	add.l  d0, a0
	
	move.l #l1a3_Flue_E_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a1
	add.l  d0, a1
	
	move.l a1, Flue_OutputFlue(a0)
	
	; Link Flue F with Flue G
	move.l #l1a3_Flue_F_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a0
	add.l  d0, a0
	
	move.l #l1a3_Flue_G_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flue, a1
	add.l  d0, a1
	
	move.l a1, Flue_OutputFlue(a0)
	
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
	
	move.l #LevelData_2, a2
	move.b #0x1, l1a3Data_WaitingInput(a2)
	
	;==============================================================
	
	rts
	
l1a3_Update:

	move.l #LevelData_2, a2
	cmp.b #0x0, l1a3Data_WaitingInput(a2)
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
	move.b #0x0, l1a3Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:
	
	rts
	
l1a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
l1a3_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
l1a3_Trigger_WakeDjakk:

	PUSHL  a0
	
	move.l #l1a3_Djakk_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monster, a0
	add.l  d0, a0
	jsr    MonsterStartTrackPlayer
	
	POPL   a0
	
	rts
	
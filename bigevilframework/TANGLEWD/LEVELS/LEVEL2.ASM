;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level2.asm - Level 2 - Harlequin Forest Act 2
;==============================================================	

Lvl2_HarlequinForestAct2:

	dc.l tiles_lvl2				; Tileset
	dc.l map_lvl2				; Map
	dc.l collisiontiles_lvl2	; Collision tileset
	dc.l collisionmap_lvl2		; Collision map
	dc.l Lvl2_DefaultPalettes	; Palettes
	dc.l Lvl2_Init				; Init routine
	dc.l Lvl2_Update			; Update routine
	dc.l 0x0					; Next level
	dc.w Gravity				; Default gravity
	dc.w map_lvl2_width			; Map width
	dc.w map_lvl2_height		; Map height
	dc.w tiles_lvl2_size_t		; Num tiles
	
	even
	
Lvl2_DefaultPalettes:

	dc.l palette_lvl2			; World
	dc.l palette_monster		; Djakk
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
Lvl2Data_WaitingInput			rs.b 1
;---------------------------------
Lvl2Data_Struct_Pad      		rs.b 3
Lvl2Data_Struct_Size     		rs.b 0
	
Lvl2_Init:

	; Trigger boxes
	move.l #EntityArray_Triggers, a0
	jsr    LoadGameObjects_lvl2_TriggerBox
	
	; Checkpoints
	move.l #EntityArray_Checkpoints, a0
	jsr    LoadGameObjects_lvl2_Checkpoint
	
	; Monsters
	move.l #EntityArray_Monsters, a0
	jsr    LoadGameObjects_lvl2_Monster
    
	; Fuzzls
	move.l #EntityArray_Fuzzls, a0
	jsr    LoadGameObjects_lvl2_Fuzzl
	
	; Fuzzl nests
	move.l #EntityArray_Nests, a0
	jsr    LoadGameObjects_lvl2_Nest
    
	; Flues
	move.l #EntityArray_Flues, a0
	jsr    LoadGameObjects_lvl2_Flue
	
	; Boulders
	move.l #EntityArray_Boulders, a0
	jsr    LoadGameObjects_lvl2_Boulder
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	jsr    LoadGameObjects_lvl2_Firefly
	
	; Water bodies
	move.l #EntityArray_WaterBodies, a0
	jsr    LoadGameObjects_lvl2_WaterBody
	
	; Locations
	;move.l #EntityArray_Locations, a0
	;jsr    LoadGameObjects_lvl2_Location
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	;==============================================================
	
	; Don't bother with Djakk emerge sequence
	move.l #Djakk_Lvl2_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monsters, a0
	add.l  d0, a0
	move.b #0x0, Monster_DoIntro(a0)
	
	;==============================================================
	
	; Set Fuzzl colours
	move.l #Lvl2_Fuzzl_Yellow_idx, d0
	mulu   #Fuzzl_Struct_Size, d0
	move.l #EntityArray_Fuzzls, a0
	add.l  d0, a0
	move.b #ColourYellow, d0
	jsr    FuzzlSetColour
	
	move.l #Lvl2_Fuzzl_Green_idx, d0
	mulu   #Fuzzl_Struct_Size, d0
	move.l #EntityArray_Fuzzls, a0
	add.l  d0, a0
	move.b #ColourGreen, d0
	jsr    FuzzlSetColour
	
	;==============================================================
	
	; Link Flue A with Flue B
	move.l #Lvl2_Flue_A_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flues, a0
	add.l  d0, a0
	
	move.l #Lvl2_Flue_B_idx, d0
	mulu   #Flue_Struct_Size, d0
	move.l #EntityArray_Flues, a1
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
	move.b #0x1, Lvl2Data_WaitingInput(a2)
	
	;==============================================================
	
	rts
	
Lvl2_Update:

	move.l #LevelData_2, a2
	cmp.b #0x0, Lvl2Data_WaitingInput(a2)
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
	move.b #0x0, Lvl2Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:
	
	rts
	
Lvl2_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
Lvl2_Trigger_WakeDjakk:

	PUSHL  a0
	
	move.l #Djakk_Lvl2_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monsters, a0
	add.l  d0, a0
	jsr    MonsterStartTrackPlayer
	
	POPL   a0
	
	rts
	
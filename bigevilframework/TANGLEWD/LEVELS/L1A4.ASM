;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a4.asm - Level 1 - Harlequin Forest Act 4
;==============================================================	

l1a4_HarlequinForestAct4:

	dc.l tiles_l1						; Tileset
	dc.l map_blocks_L1A4				; Blocks
	dc.l map_blockmap_L1A4				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1a4		; Collision blocks
	dc.l collisionmap_blockmap_l1a4		; Collision block map
	dc.l l1a4_DefaultPalettes			; Palettes
	dc.l l1a4_Init						; Init routine
	dc.l l1a4_Update					; Update routine
	dc.l l1a4_Serialise					; Serialise routine
	dc.l l1a4_LoadGameObjects			; Load game objects routine
	dc.l 0x0							; Next level
	dc.w Gravity						; Default gravity
	dc.w map_l1a4_width					; Map width
	dc.w map_l1a4_height				; Map height
	dc.w map_blockmap_l1a4_width		; Map width (blocks)
	dc.w map_blockmap_l1a4_height		; Map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	
	even
	
l1a4_DefaultPalettes:

	dc.l palette_l1_night		; World
	dc.l 0x0					; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l1a4Data_WaitingInput			rs.b 1
;---------------------------------
l1a4Data_Struct_Pad      		rs.b 3
l1a4Data_Struct_Size     		rs.b 0
	
l1a4_Init:
	
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
	
	; Disable Djakk lost player timeout
	move.l #l1a4_Djakk_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monster, a0
	add.l  d0, a0
	move.w #-1, Monster_LoseSightTimer(a0)
	
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
	
	move.l #LevelData_L1A3, a2
	move.b #0x1, l1a4Data_WaitingInput(a2)
	
	;==============================================================
	
	rts
	
l1a4_Update:

	move.l #LevelData_L1A3, a2
	cmp.b #0x0, l1a4Data_WaitingInput(a2)
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
	move.b #0x0, l1a4Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:
	
	rts
	
l1a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
l1a4_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
l1a4_Trigger_WakeDjakk:

	PUSHL  a0
	
	move.l #l1a4_Djakk_idx, d0
	mulu   #Monster_Struct_Size, d0
	move.l #EntityArray_Monster, a0
	add.l  d0, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0
	
	rts
	
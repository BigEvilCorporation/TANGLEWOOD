;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L6a1.asm - Level 6 - Deadwood Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L6a1_DeadwoodAct1:

	dc.l tiles_L6						; Tileset
	dc.l map_blocks_L6a1				; Blocks
	dc.l map_blockmap_L6a1				; Block map
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6a1		; Collision blocks
	dc.l collisionmap_blockmap_L6a1		; Collision block map
	dc.l L6a1_DefaultPalettes			; Palettes
	dc.l L6a1_Init						; Init routine
	dc.l L6a1_Update					; Update routine
	dc.l L6a1_Serialise					; Serialise routine
	dc.l L6a1_LoadGameObjects			; Load game objects routine
	dc.l l6a1_End						; End routine
	IF INCLUDE_LEVEL_7
	dc.l l7a1_TurntailAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_L6a1_width					; Map width (tiles)
	dc.w map_L6a1_height				; Map height (tiles)
	dc.w map_blockmap_L6a1_width		; Map width (blocks)
	dc.w map_blockmap_L6a1_height		; Map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	
	even
	
L6a1_DefaultPalettes:

	dc.l palette_L6					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l 0x0						; Fuzzl
	dc.l 0x0						; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
L6a1Data_WaitingInput			rs.b 1
;---------------------------------
L6a1Data_Struct_Pad      		rs.b 3
L6a1Data_Struct_Size     		rs.b 0
	
L6a1_Init:
	
	; Load BG map
	lea    map_blocks_L6bg, a0
	lea    map_blockmap_L6bg, a1
	move.l #(map_blockmap_L6bg_width<<16)|map_blockmap_L6bg_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    L6_LoadSceneAnimations
	
	;==============================================================
	
	move.l #Player1, a0
	
	; Disable player 1 control
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, L6a1Data_WaitingInput(a2)
	
	rts
	
L6a1_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	cmp.b #0x0, L6a1Data_WaitingInput(a2)
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

	move.l #Player1, a0
	
	; Enable player 1 control
	move.b #0x1, Player_ControlEnabled(a0)
	
	; Release animation control
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Done
	move.b #0x0, L6a1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
L6a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L6a1_End:
	rts
	
L6a1_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

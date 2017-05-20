;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l2a2.asm - Level 3 - Storm Warning Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l2a2_StormWarningAct2:

	dc.l tiles_l2						; Tileset
	dc.l map_blocks_l2a2				; Blocks
	dc.l map_blockmap_l2a2				; Block map
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2a2		; Collision blocks
	dc.l collisionmap_blockmap_l2a2		; Collision block map
	dc.l l2a2_DefaultPalettes			; Palettes
	dc.l l2a2_Init						; Init routine
	dc.l l2a2_Update					; Update routine
	dc.l l2a2_Serialise					; Serialise routine
	dc.l l2a2_LoadGameObjects			; Load game objects routine
	dc.l l2a2_End						; End routine
	IF INCLUDE_LEVEL_3
	dc.l l3a1_HeritageAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_l2a2_width					; Map width (tiles)
	dc.w map_l2a2_height				; Map height (tiles)
	dc.w map_blockmap_l2a2_width		; Map width (blocks)
	dc.w map_blockmap_l2a2_height		; Map height (blocks)
	dc.w tiles_l2_size_t				; Num tiles
	
	even
	
l2a2_DefaultPalettes:

	dc.l palette_l2					; World
	dc.l palette_l1					; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l2a2Data_WaitingInput			rs.b 1
;---------------------------------
l2a2Data_Struct_Pad      		rs.b 3
l2a2Data_Struct_Size     		rs.b 0
	
l2a2_Init:
	
	; Load BG map
	lea    map_blocks_l2bg, a0
	lea    map_blockmap_l2bg, a1
	move.l #(map_blockmap_l2bg_width<<16)|map_blockmap_l2bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    l2_LoadSceneAnimations
	
	;==============================================================

	; Init weather
	;jsr    RainInit

	;==============================================================

	; Connect button to lift
	;ENTITY_GETBYNAME Button, l2a2_Button1, a0
	;ENTITY_GETBYNAME Lift, l2a2_Lift1, a1
	;move.l a1, Button_UserData(a0)
	;move.l #LiftActivate, Button_OnDown(a0)
	;move.l #LiftStop, Button_OnUp(a0)

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
	move.b #0x1, l2a2Data_WaitingInput(a2)
	
	rts
	
l2a2_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	cmp.b #0x0, l2a2Data_WaitingInput(a2)
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
	move.b #0x0, l2a2Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
l2a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l2a2_End:
	rts

l2a2_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

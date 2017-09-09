;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l2a1.asm - Level 2 - Storm Warning Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l2a1_StormWarningAct1:

	dc.l LevelSelect_Str_02				; Name
	dc.l LevelData_L2A1					; Userdata
	dc.l tiles_l2						; Tileset
	dc.l map_blocks_l2a1				; Blocks
	dc.l map_blockmap_l2a1				; Block map
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2a1		; Collision blocks
	dc.l collisionmap_blockmap_l2a1		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l2a1_DefaultPalettes			; Palettes
	dc.l l2a1_Init						; Init routine
	dc.l l2a1_Update					; Update routine
	dc.l l2a1_Serialise					; Serialise routine
	dc.l l2a1_LoadGameObjects			; Load game objects routine
	dc.l l2a1_End						; End routine
	dc.l l2a2_StormWarningAct2			; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l2a1_width					; Map width (tiles)
	dc.w map_l2a1_height				; Map height (tiles)
	dc.w map_blockmap_l2a1_width		; Map width (blocks)
	dc.w map_blockmap_l2a1_height		; Map height (blocks)
	dc.w tiles_l2_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	
	even
	
l2a1_DefaultPalettes:

	dc.l palette_l2_day				; World
	dc.l palette_djakk				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l2a1Data_WaitingInput			rs.b 1
;---------------------------------
l2a1Data_Struct_Pad      		rs.b 3
l2a1Data_Struct_Size     		rs.b 0
	
l2a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L2A1, (a2)+
	move.l #LevelData_L2A2, (a2)+
	move.l #LevelData_L2A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_l2bg, a0
	lea    map_blockmap_l2bg, a1
	move.l #(map_blockmap_l2bg_width<<16)|map_blockmap_l2bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_l2_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l2_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l2_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l2_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l2_LoadSceneAnimations
	
	;==============================================================

	; Init weather
	;jsr    RainInit

	; Wind
	move.w  #0x0004, WindAccel
	move.w  #0x0080, WindRandStrengthMin
	move.w  #0x0100, WindRandStrengthMax
	move.w  #0x0120, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x0180, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer

	;==============================================================
	
	move.l (Player1), a0
	
	; Disable player 1 control
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, l2a1Data_WaitingInput(a2)
	
	rts
	
l2a1_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	tst.b l2a1Data_WaitingInput(a2)
	beq    @FinishedLevelStartSequence
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check for input
	andi.w #(pad_button_a|pad_button_b|pad_button_c), d0
	tst.w  d0
	beq   @NoInput
	
	; Start wake up sequence
	PUSHL  a1
	PUSHL  a2
	move.l (Player1), a0
	lea    Player_Animations+(PlayerAnimIdx_Wake*Animation_Struct_Size)(a0), a1
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1

	move.l (Player1), a0
	
	; Enable player 1 control
	move.b #0x1, Player_ControlEnabled(a0)
	
	; Release animation control
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Done
	move.b #0x0, l2a1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
l2a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l2a1_End:
	rts

l2a1_Trigger_WindSpeed1:
	move.w  #0x0004, WindAccel
	move.w  #-0x0200, WindRandStrengthMin
	move.w  #0x0200, WindRandStrengthMax
	move.w  #0x0120, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x0180, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer
	rts

l2a1_Trigger_WindSpeed2:
	move.w  #0x0004, WindAccel
	move.w  #-0x0280, WindRandStrengthMin
	move.w  #0x0280, WindRandStrengthMax
	move.w  #0x0120, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x0180, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer
	rts

l2a1_Trigger_WindSpeed3:
	move.w  #0x0010, WindAccel
	move.w  #-0x0600, WindRandStrengthMin
	move.w  #-0x0700, WindRandStrengthMax
	move.w  #0x0170, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x01F0, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer
	rts

l2a1_Trigger_WindSpeed4:
	move.w  #0x0010, WindAccel
	move.w  #-0x0900, WindRandStrengthMin
	move.w  #-0x0A00, WindRandStrengthMax
	move.w  #0x0170, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x01F0, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer
	rts

l2a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

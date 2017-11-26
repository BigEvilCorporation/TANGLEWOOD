;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a1.asm - Level 1 - Harlequin Forest Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l1a1_HarlequinForestAct1:

	dc.l LevelSelect_Str_01				; Name
	dc.l LevelData_L1A1					; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_l1a1				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1			; Collision blocks
	dc.l collisionmap_blockmap_l1a1		; Collision block map
	dc.l terrainmap_L1A1_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l1a1_DefaultPalettes			; Palettes
	dc.l l1a1_Init						; Init routine
	dc.l l1a1_Update					; Update routine
	dc.l l1a1_Serialise					; Serialise routine
	dc.l l1a1_LoadGameObjects			; Load game objects routine
	dc.l l1a1_End						; End routine
	dc.l l1a2_HarlequinForestAct2		; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l1a1_width					; Map width (tiles)
	dc.w map_l1a1_height				; Map height (tiles)
	dc.w map_blockmap_l1a1_width		; Map width (blocks)
	dc.w map_blockmap_l1a1_height		; Map height (blocks)
	dc.w terrainmap_L1A1_width			; Collision map width (tiles)
	dc.w terrainmap_L1A1_height			; Collision map height (tiles)
	dc.w terrainmap_L1A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L1A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L1A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L1A1_height; Collision map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	dc.w terrainmap_L1A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x0							; Index
	
	even
	
l1a1_DefaultPalettes:

	dc.l palette_l1_day				; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l1a1Data_WaitingInput			rs.b 1
;---------------------------------
	RS_ALIGN
l1a1Data_Struct_Size     		rs.b 0
	
l1a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L1A1, (a2)+
	move.l #LevelData_L1A2, (a2)+
	move.l #LevelData_L1A3, (a2)+
	move.l #LevelData_L1A4, (a2)+
	move.w #0x4, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD palettes
	move.l  #palette_l1_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations
	
	;==============================================================
	
	; Start level intro tune
	IFND DEBUG
	;lea    track_bgm_lvlintro, a0
	lea    track_bgm_dawn, a0
	jsr    SND_PlayTrack
	ENDIF

	move.l (Player1), a0
	
	; Disable player 1 control
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	lea    (Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size))(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, l1a1Data_WaitingInput(a2)
	
	rts
	
l1a1_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	tst.b l1a1Data_WaitingInput(a2)
	beq    @FinishedLevelStartSequence
	
	; Read pad
	jsr    PAD_ReadPadA
	
	; Check for input
	andi.w #(pad_button_a|pad_button_b|pad_button_c), d0
	beq   @NoInput
	
	; Start wake up sequence
	PUSHL  a1
	PUSHL  a2
	move.l (Player1), a0
	lea    Player_Animations+(PlayerAnimIdx_Wake*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1

	move.l (Player1), a0
	
	; Enable player 1 control
	move.b #0x1, Player_ControlEnabled(a0)
	
	; Release animation control
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Done
	move.b #0x0, l1a1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
l1a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l1a1_End:
	; a1 --- Level addr

	rts
	
l1a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts
	
l1a1_Trigger_NearEndLevel:

	rts

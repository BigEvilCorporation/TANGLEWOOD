;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l3a1.asm - Level 3 - Heritage Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l3a1_HeritageAct1:

	dc.l LevelSelect_Str_03				; Name
	dc.l LevelData_L3A1					; Userdata
	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3					; Blocks
	dc.l map_blockmap_l3a1				; Block map
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3			; Collision blocks
	dc.l collisionmap_blockmap_l3a1		; Collision block map
	dc.l terrainmap_L3A1_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l3a1_DefaultPalettes			; Palettes
	dc.l l3a1_Init						; Init routine
	dc.l l3a1_Update					; Update routine
	dc.l l3a1_Serialise					; Serialise routine
	dc.l l3a1_LoadGameObjects			; Load game objects routine
	dc.l l3a1_End						; End routine
	dc.l l3a2_HeritageAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l3a1_width					; Map width (tiles)
	dc.w map_l3a1_height				; Map height (tiles)
	dc.w map_blockmap_l3a1_width		; Map width (blocks)
	dc.w map_blockmap_l3a1_height		; Map height (blocks)
	dc.w terrainmap_L3A1_width			; Collision map width (tiles)
	dc.w terrainmap_L3A1_height			; Collision map height (tiles)
	dc.w terrainmap_L3A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L3A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L3A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L3A1_height; Collision map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	dc.w terrainmap_L3A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x7							; Index
	
	even
	
l3a1_DefaultPalettes:

	dc.l palette_l3_day				; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l3a1Data_WaitingInput			rs.b 1
;---------------------------------
	RS_ALIGN
l3a1Data_Struct_Size     		rs.b 0
	
l3a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L3A1, (a2)+
	move.l #LevelData_L3A2, (a2)+
	move.l #LevelData_L3A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_l3, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD palettes
	move.l  #palette_l3_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l3_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations
	
	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l3a1_Generator1, a0
	ENTITY_GETBYNAME Cogs, l3a1_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l3a1_Generator2, a0
	ENTITY_GETBYNAME Cogs, l3a1_Cogs2, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l3a1_Generator3, a0
	ENTITY_GETBYNAME Cogs, l3a1_Cogs3, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l3a1_Generator1, a0
	ENTITY_GETBYNAME Button, l3a1_Button1, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	ENTITY_GETBYNAME Generator, l3a1_Generator2, a0
	ENTITY_GETBYNAME Button, l3a1_Button2, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	ENTITY_GETBYNAME Generator, l3a1_Generator3, a0
	ENTITY_GETBYNAME Button, l3a1_Button3, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l3a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l3a1_Bridge1, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.l #BridgeBeginRoll, Button_OnUp(a0)

	ENTITY_GETBYNAME Button, l3a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l3a1_Bridge2, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l3a1_Button3, a0
	ENTITY_GETBYNAME Lift, l3a1_Lift3, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateUp, Button_OnDown(a0)
	move.l #LiftActivateDown, Button_OnUp(a0)

	; Connect lifts to counterweights
	ENTITY_GETBYNAME Lift, l3a1_Lift1, a0
	ENTITY_GETBYNAME Lift, l3a1_Lift2, a2
	jsr    LiftAttachCounterweightLift

	; Lock Fuzzls in cages
	ENTITY_GETBYNAME FuzzlCage, l3a1_FuzzlCage1, a0
	ENTITY_GETBYNAME Fuzzl, l3a1_FuzzlCaged1, a2
	jsr    FuzzlCageSetFuzzl

	ENTITY_GETBYNAME FuzzlCage, l3a1_FuzzlCage2, a0
	ENTITY_GETBYNAME Fuzzl, l3a1_FuzzlCaged2, a2
	jsr    FuzzlCageSetFuzzl

	;==============================================================
	
	move.l (Player1), a0
	
	; Disable player 1 control
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	move.l #LevelData_L1A1, a2
	move.b #0x1, l3a1Data_WaitingInput(a2)

	; Start level intro tune
	lea    track_bgm_dawn, a0
	jsr    SND_PlayTrack
	
	rts
	
l3a1_Update:

	move.l #LevelData_L1A1, a2
	
	; Check waiting for input
	move.l #LevelData_L1A1, a2
	tst.b l3a1Data_WaitingInput(a2)
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
	move.b #0x0, l3a1Data_WaitingInput(a2)
	
	@FinishedLevelStartSequence:
	@NoInput:

	rts
	
l3a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l3a1_End:
	rts
	
l3a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

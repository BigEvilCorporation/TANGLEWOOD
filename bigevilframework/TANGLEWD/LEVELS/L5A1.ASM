;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L5a1.asm - Level 5 - Bygone Mines Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L5a1_BygoneAct1:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_L5A1					; Userdata
	dc.l tiles_L5						; Tileset
	dc.l map_blocks_L5					; Blocks
	dc.l map_blockmap_L5a1				; Block map
	dc.l collisiontiles_L5				; Collision tileset
	dc.l collisionmap_blocks_L5			; Collision blocks
	dc.l collisionmap_blockmap_L5a1		; Collision block map
	dc.l terrainmap_L5A1_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l L5a1_DefaultPalettes			; Palettes
	dc.l L5a1_Init						; Init routine
	dc.l L5a1_Update					; Update routine
	dc.l L5a1_Serialise					; Serialise routine
	dc.l L5a1_LoadGameObjects			; Load game objects routine
	dc.l l5a1_End						; End routine
	dc.l l5a2_BygoneAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_L5a1_width					; Map width (tiles)
	dc.w map_L5a1_height				; Map height (tiles)
	dc.w map_blockmap_L5a1_width		; Map width (blocks)
	dc.w map_blockmap_L5a1_height		; Map height (blocks)
	dc.w terrainmap_L5A1_width			; Collision map width (tiles)
	dc.w terrainmap_L5A1_height			; Collision map height (tiles)
	dc.w terrainmap_L5A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L5A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L5A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L5A1_height; Collision map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles
	dc.w terrainmap_L5A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
L5a1_DefaultPalettes:

	dc.l palette_L5					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a1Data_CutsceneCargoLift		rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
L5a1Data_Struct_Size     		rs.b 0
	
L5a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L5A1, (a2)+
	move.l #LevelData_L5A2, (a2)+
	move.l #LevelData_L5A3, (a2)+
	move.l #LevelData_L5A4, (a2)+
	move.w #0x4, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_L5, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L5_LoadSceneAnimations

	;==============================================================

	; Init cutscene
	PUSHM  a0-a1
	lea    LevelData_L5A1, a2
	lea    l5a1Data_CutsceneCargoLift(a2), a0
	move.l #l5a1_CutsceneCargoLift, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l5a1_Generator1, a0
	ENTITY_GETBYNAME Cogs, l5a1_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l5a1_Generator1, a0
	ENTITY_GETBYNAME Button, l5a1_Button1, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l5a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l5a1_Bridge1, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l5a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l5a1_Bridge2, a1
	move.l a1, Button_UserData(a0)
	move.b #0x1, Button_Active(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)

	; Disable AI on log
	ENTITY_GETBYNAME Log, l5a1_Log1, a0
	move.b #0x1, Log_NoAI(a0)

	;==============================================================

	; 'Special' terrain is cart rails, don't collide
	move.l (Player1), a2
	move.l (Player2), a3
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a3)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow

	;==============================================================

	; Start cargo lift cutscene
	PUSHL  a0
	lea    LevelData_L5A1, a2
	lea    l5a1Data_CutsceneCargoLift(a2), a0
	jsr    CutscenePlay
	POPL   a0
	
	rts
	
L5a1_Update:

	rts
	
L5a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a1_End:
	rts
	
L5a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l5a1_CutsceneCargoLift:
	; a0 --- Cutscene

	CUTSCENE_START

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Start lift
	CUTSCENE_GET_ENTITY CargoLift, l5a1_CargoLift,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateDown

	; Wait until hit floor
	CUTSCENE_GET_ENTITY CargoLift, l5a1_CargoLift,a2
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR a2

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a1.asm - Level 4 - Tethered Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l4a1_TetheredAct1:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_L4A1					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4					; Blocks
	dc.l map_blockmap_l4a1				; Block map
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a1		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l4a1_DefaultPalettes			; Palettes
	dc.l l4a1_Init						; Init routine
	dc.l l4a1_Update					; Update routine
	dc.l l4a1_Serialise					; Serialise routine
	dc.l l4a1_LoadGameObjects			; Load game objects routine
	dc.l l4a1_End						; End routine
	dc.l l4a2_TetheredAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a1_width					; Map width (tiles)
	dc.w map_l4a1_height				; Map height (tiles)
	dc.w map_blockmap_l4a1_width		; Map width (blocks)
	dc.w map_blockmap_l4a1_height		; Map height (blocks)
	dc.w terrainmap_L4A1_width			; Collision map width (tiles)
	dc.w terrainmap_L4A1_height			; Collision map height (tiles)
	dc.w terrainmap_L4A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L4A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L4A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L4A1_height; Collision map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l4a1_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a1Data_ComboButton1Count		rs.b 1
l4a1Data_ComboButton2Count		rs.b 1
l4a1Data_WaitingInput			rs.b 1
;---------------------------------
l4a1Data_Struct_Pad      		rs.b 1
l4a1Data_Struct_Size     		rs.b 0
	
l4a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L4A1, (a2)+
	move.l #LevelData_L4A2, (a2)+
	move.l #LevelData_L4A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_l4, a0
	lea    map_blockmap_l4bg, a1
	move.l #(map_blockmap_l4bg_width<<16)|map_blockmap_l4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l4a1_Generator1, a0
	ENTITY_GETBYNAME Cogs, l4a1_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l4a1_Generator1, a0
	ENTITY_GETBYNAME Button, l4a1_Button2, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l4a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l4a1_Bridge1, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l4a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l4a1_DropBridge1, a1
	move.b #0x0, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginDrop, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a1_Button3, a0
	ENTITY_GETBYNAME Bridge, l4a1_Bridge2, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)

	; Lock Fuzzls in cages
	ENTITY_GETBYNAME FuzzlCage, l4a1_FuzzlCage1, a0
	ENTITY_GETBYNAME Fuzzl, l4a1_FuzzlCaged1, a2
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	jsr    FuzzlCageSetFuzzl

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l4a1_Update:

	rts
	
l4a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a1_End:
	rts

l4a1_Trigger_EchoUnderground:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Start linear follow
	jsr    EchoAIStart_LinearFollow

	POPL  a0

	rts
	
l4a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

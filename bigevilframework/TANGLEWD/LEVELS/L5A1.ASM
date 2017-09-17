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
	dc.l map_blocks_L5a1				; Blocks
	dc.l map_blockmap_L5a1				; Block map
	dc.l collisiontiles_L5				; Collision tileset
	dc.l collisionmap_blocks_L5a1		; Collision blocks
	dc.l collisionmap_blockmap_L5a1		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
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
	dc.w tiles_L5_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
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
L5a1Data_WaitingInput			rs.b 1
;---------------------------------
L5a1Data_Struct_Pad      		rs.b 3
L5a1Data_Struct_Size     		rs.b 0
	
L5a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L5A1, (a2)+
	move.l #LevelData_L5A2, (a2)+
	;move.l #LevelData_L5A3, (a2)+
	move.w #0x1, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_L5bg, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
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

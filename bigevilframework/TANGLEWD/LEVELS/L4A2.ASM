;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a2.asm - Level 4 - Tethered Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l4a2_TetheredAct2:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_L4A2					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4					; Blocks
	dc.l map_blockmap_l4a2				; Block map
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4a2		; Collision blocks
	dc.l collisionmap_blockmap_l4a2		; Collision block map
	dc.l terrainmap_L4A2_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l4a2_DefaultPalettes			; Palettes
	dc.l l4a2_Init						; Init routine
	dc.l l4a2_Update					; Update routine
	dc.l l4a2_Serialise					; Serialise routine
	dc.l l4a2_LoadGameObjects			; Load game objects routine
	dc.l l4a2_End						; End routine
	IF INCLUDE_LEVEL_5
	dc.l L5a1_BygoneAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a2_width					; Map width (tiles)
	dc.w map_l4a2_height				; Map height (tiles)
	dc.w map_blockmap_l4a2_width		; Map width (blocks)
	dc.w map_blockmap_l4a2_height		; Map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w terrainmap_L4A2_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l4a2_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l palette_djubb				; Monsters
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a2Data_WaitingInput			rs.b 1
;---------------------------------
l4a2Data_Struct_Pad      		rs.b 3
l4a2Data_Struct_Size     		rs.b 0
	
l4a2_Init:
	
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

	; 'Special' terrain is water surface, don't collide
	; TODO: Terrain type flag for water
	move.l (Player1), a2
	move.l (Player2), a3
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a3)
	move.b #0x1, Player_SpecialTerrainIsWater(a2)
	move.b #0x1, Player_SpecialTerrainIsWater(a3)

	;==============================================================

	; Update logs out of view so Echo can use them

	ENTITY_GETBYNAME Log, l4a2_Log1, a2
	ENTITY_GETBYNAME Log, l4a2_Log2, a3
	move.b #0x1, AnimObj_UpdateOutOfView(a2)
	move.b #0x1, AnimObj_UpdateOutOfView(a3)

	;==============================================================

	; Setup water pools and locks
	ENTITY_GETBYNAME Lock, l4a2_Lock1, a0
	move.l #l4a2_ActivatePool1, Lock_OnRaised(a0)
	jsr    Lock_SetLowered

	ENTITY_GETBYNAME Lock, l4a2_Lock2, a0
	move.l #l4a2_ActivatePool2, Lock_OnRaised(a0)
	jsr    Lock_SetLowered

	ENTITY_GETBYNAME Pool, l4a2_Pool1, a0
	jsr    Pool_SetLowered
	ENTITY_GETBYNAME Pool, l4a2_Pool2, a0
	jsr    Pool_SetLowered
	ENTITY_GETBYNAME Pool, l4a2_Pool3, a0
	jsr    Pool_SetLowered

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l4a2_Generator1, a0
	ENTITY_GETBYNAME Cogs, l4a2_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to winches
	ENTITY_GETBYNAME Generator, l4a2_Generator1, a0
	ENTITY_GETBYNAME Winch, l4a2_Winch3, a1
	move.l a1, Generator_UserData(a0)
	move.l #Winch_RunClockwise, Generator_OnActivate(a0)

	; Connect winches together
	ENTITY_GETBYNAME Winch, l4a2_Winch1, a0
	ENTITY_GETBYNAME Winch, l4a2_Winch2, a1
	move.l a1, Winch_Mirror(a0)

	ENTITY_GETBYNAME Winch, l4a2_Winch3, a0
	ENTITY_GETBYNAME Winch, l4a2_Winch4, a1
	move.l a1, Winch_Mirror(a0)

	; Connect rafts to winches
	ENTITY_GETBYNAME Winch, l4a2_Winch1, a0
	ENTITY_GETBYNAME Raft, l4a2_Raft1, a1
	move.l a1, Winch_PhysObject(a0)

	ENTITY_GETBYNAME Winch, l4a2_Winch3, a0
	ENTITY_GETBYNAME Raft, l4a2_Raft2, a1
	move.l a1, Winch_PhysObject(a0)

	; Connect buttons to winches
	ENTITY_GETBYNAME Button, l4a2_ButtonWinch1, a0
	ENTITY_GETBYNAME Winch, l4a2_Winch1, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #Winch_RunClockwise, Button_OnDown(a0)
	;move.l #Winch_Stop, Button_OnUp(a0)

	; Connect buttons to locks/pools
	ENTITY_GETBYNAME Button, l4a2_ButtonLock1, a0
	move.b #0x1, Button_Active(a0)
	move.l #l4a2_ActivateLock1, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock2, a0
	move.b #0x1, Button_Active(a0)
	move.l #l4a2_ActivateLock2, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock3, a0
	move.b #0x1, Button_Active(a0)
	move.l #l4a2_ActivatePool3, Button_OnDown(a0)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l4a2_Update:

	rts
	
l4a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a2_End:
	rts
	
l4a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l4a2_ActivateLock1:
	
	; Raise lock
	ENTITY_GETBYNAME Lock, l4a2_Lock1, a0
	jsr    Lock_Raise

	rts

l4a2_ActivateLock2:
	
	; Raise lock
	ENTITY_GETBYNAME Lock, l4a2_Lock2, a0
	jsr    Lock_Raise

	rts

l4a2_ActivatePool1:

	; Raise pool
	ENTITY_GETBYNAME Pool, l4a2_Pool1, a0
	jsr    Pool_Raise

	rts

l4a2_ActivatePool2:

	; Raise pool
	ENTITY_GETBYNAME Pool, l4a2_Pool2, a0
	jsr    Pool_Raise
	
	; Lower prev lock
	ENTITY_GETBYNAME Lock, l4a2_Lock1, a0
	jsr    Lock_Lower

	rts

l4a2_ActivatePool3:

	; Raise pool
	ENTITY_GETBYNAME Pool, l4a2_Pool3, a0
	jsr    Pool_Raise
	
	; Lower prev lock
	ENTITY_GETBYNAME Lock, l4a2_Lock2, a0
	jsr    Lock_Lower

	rts
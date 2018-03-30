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
	dc.l map_blockmap_l4a2_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a2		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l4a2	; Collision block map Y offsets table
	dc.l terrainmap_L4A2_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l4a2_DefaultPalettes			; Palettes
	dc.l l4a2_Init						; Init routine
	dc.l l4a2_Update					; Update routine
	dc.l l4a2_Serialise					; Serialise routine
	dc.l l4a2_LoadGameObjects			; Load game objects routine
	dc.l l4a2_End						; End routine
	dc.l l4a3_TetheredAct3				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a2_width					; Map width (tiles)
	dc.w map_l4a2_height				; Map height (tiles)
	dc.w map_blockmap_l4a2_width		; Map width (blocks)
	dc.w map_blockmap_l4a2_height		; Map height (blocks)
	dc.w terrainmap_L4A2_width			; Collision map width (tiles)
	dc.w terrainmap_L4A2_height			; Collision map height (tiles)
	dc.w terrainmap_L4A2_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L4A2_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L4A2_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L4A2_height; Collision map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w terrainmap_L4A2_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x6							; Background colour idx
	dc.b 0xB							; Index
	
	even
	
l4a2_DefaultPalettes:

	dc.l palette_l4_day				; World
	dc.l palette_djubb				; Monsters
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
	RS_ALIGN
l4a2Data_Struct_Size     		rs.b 0
	
l4a2_Init:

	; Set data for all acts in level
	jsr    L4_SetActData
	
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

	; Set TOD palettes
	move.l  #palette_l4_day, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l4_night, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations

	;==============================================================

	; HACK: Load L4 specific object sprites
	jsr    L4_LoadObjectSprites

	;==============================================================

	; HACK: Load L4 specific object sprites
	move.l EntityPoolStart_Generator, a0
	move.w EntityCount_Generator, d0
	subq   #0x1, d0
	@GeneratorLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM generatr,compressor_l4,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT generatr,compressor_l4,spin,Generator_Animations,GeneratorAnimIdx_Spin,1,0,0
	POPW   d0
	lea    Generator_Struct_Size(a0), a0
	dbra   d0, @GeneratorLp

	move.l EntityPoolStart_Cogs, a0
	move.w EntityCount_Cogs, d0
	subq   #0x1, d0
	@CogsLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM cogs,cogs_l4,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT cogs,cogs_l4,spin,Cogs_Animations,CogsAnimIdx_Spin,1,0,0
	POPW   d0
	lea    Cogs_Struct_Size(a0), a0
	dbra   d0, @CogsLp

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

	ENTITY_GETBYNAME Lock, l4a2_Lock3, a0
	jsr    Lock_SetRaised

	ENTITY_GETBYNAME Lock, l4a2_Lock4, a0
	jsr    Lock_SetRaised

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

	; Connect generators to buttons
	ENTITY_GETBYNAME Generator, l4a2_Generator1, a0
	move.l #l4a2_GeneratorActivated, Generator_OnActivate(a0)

	; Connect buttons to locks/pools, disable buttons
	ENTITY_GETBYNAME Button, l4a2_ButtonLock1, a0
	move.b #0x0, Button_Active(a0)
	move.l #l4a2_ActivateLock1, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock2, a0
	move.b #0x0, Button_Active(a0)
	move.l #l4a2_ActivateLock2, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock3, a0
	move.b #0x0, Button_Active(a0)
	move.l #l4a2_ActivatePool3, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock4, a0
	move.b #0x1, Button_Active(a0)
	move.l #l4a2_ActivateLock3, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a2_ButtonLock5, a0
	move.b #0x1, Button_Active(a0)
	move.l #l4a2_ActivateLock4, Button_OnDown(a0)

	;==============================================================

	; Set Echo's predator Skivv
	move.l (Player2), a0
	ENTITY_GETBYNAME Skivv, l4a2_SkivvEcho, a2
	jsr    EchoSetSkivv

	; Start Echo AI follow state
	move.l (Player2), a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Disable Echo footstep SFX
	jsr    EchoDisableFootstepSFX
	
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

l4a2_GeneratorActivated:

	; Enable first lock button
	PUSHL  a0
	ENTITY_GETBYNAME Button, l4a2_ButtonLock1, a0
	jsr    ButtonActivate
	POPL   a0

	; Enable checkpoint
	ENTITY_GETBYNAME Checkpoint, l4a2_CheckpointGenerator, a2
	move.b #0x1, Entity_Active(a2)

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

l4a2_ActivateLock3:
	
	; Lower lock
	ENTITY_GETBYNAME Lock, l4a2_Lock3, a0
	jsr    Lock_Lower

	rts

l4a2_ActivateLock4:
	
	; Raise lock
	ENTITY_GETBYNAME Lock, l4a2_Lock4, a0
	jsr    Lock_Lower

	rts

l4a2_ActivatePool1:

	; Raise pool
	ENTITY_GETBYNAME Pool, l4a2_Pool1, a0
	jsr    Pool_Raise

	; Disable AI marker, let Echo onto raft
	; TODO: Only once pool raised
	ENTITY_GETBYNAME AIMarker, l4a2_MarkerEchoLockStop, a0
	move.b #0x0, Entity_Active(a0)

	; Set Echo to wait at water
	move.l Player2, a0
	;move.b #0x1, Echo_AIWaitAtWater(a0)

	; Enable next lock button
	ENTITY_GETBYNAME Button, l4a2_ButtonLock2, a0
	move.b #0x1, Button_Active(a0)

	rts

l4a2_ActivatePool2:

	; Set callback to lower prev lock
	ENTITY_GETBYNAME Pool, l4a2_Pool2, a0
	ENTITY_GETBYNAME Lock, l4a2_Lock1, a2
	move.l #Lock_Lower, Pool_OnFinished(a0)
	move.l a2, Pool_OnFinishedData(a0)

	; Raise pool
	jsr    Pool_Raise

	; Enable next lock button
	ENTITY_GETBYNAME Button, l4a2_ButtonLock3, a0
	move.b #0x1, Button_Active(a0)

	rts

l4a2_ActivatePool3:

	; Set callback to lower prev lock
	ENTITY_GETBYNAME Pool, l4a2_Pool3, a0
	ENTITY_GETBYNAME Lock, l4a2_Lock2, a2
	move.l #Lock_Lower, Pool_OnFinished(a0)
	move.l a2, Pool_OnFinishedData(a0)

	; Raise pool
	ENTITY_GETBYNAME Pool, l4a2_Pool3, a0
	jsr    Pool_Raise

	rts

l4a2_EchoAIPanic:
	ENTITY_GETBYNAME AIMarker, l4a2_EchoAIMarker1, a3
	jsr EchoAIPanic
	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a4.asm - Level 1 - Harlequin Forest Act 4
;==============================================================	

l1a4_HarlequinForestAct4:

	dc.l LevelSelect_Str_01				; Name
	dc.l LevelData_L1A4					; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_L1					; Blocks
	dc.l map_blockmap_L1A4				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1			; Collision blocks
	dc.l collisionmap_blockmap_l1a4		; Collision block map
	dc.l terrainmap_L1A4_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l1a4_DefaultPalettes			; Palettes
	dc.l l1a4_Init						; Init routine
	dc.l l1a4_Update					; Update routine
	dc.l l1a4_Serialise					; Serialise routine
	dc.l l1a4_LoadGameObjects			; Load game objects routine
	dc.l l1a4_End						; End routine
	IF INCLUDE_LEVEL_2
	dc.l l2a1_StormWarningAct1			; Next level
	ELSE
	IF INCLUDE_LEVEL_3
	dc.l l3a1_HeritageAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l1a4_width					; Map width
	dc.w map_l1a4_height				; Map height
	dc.w map_blockmap_l1a4_width		; Map width (blocks)
	dc.w map_blockmap_l1a4_height		; Map height (blocks)
	dc.w terrainmap_L1A4_width			; Collision map width (tiles)
	dc.w terrainmap_L1A4_height			; Collision map height (tiles)
	dc.w terrainmap_L1A4_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L1A4_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L1A4_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L1A4_height; Collision map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	dc.w terrainmap_L1A4_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	
	even
	
l1a4_DefaultPalettes:

	dc.l palette_l1_night		; World
	dc.l 0x0					; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l1a4Data_WaitingInput			rs.b 1
;---------------------------------
l1a4Data_Struct_Pad      		rs.b 3
l1a4Data_Struct_Size     		rs.b 0
	
l1a4_Init:
	
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
	move.b  #TimeOfDay_Night, TimeOfDay
	
	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations
	
	;==============================================================

	; Link Flue B with Flue A
	ENTITY_GETBYNAME Flue, l1a4_Flue_EndLink_A, a0
	ENTITY_GETBYNAME Flue, l1a4_Flue_EndLink_B, a1
	move.l a1, Flue_OutputFlue(a0)
	
	; Link secret area flue A with B
	ENTITY_GETBYNAME Flue, l1a4_Flue_Secret_A, a0
	ENTITY_GETBYNAME Flue, l1a4_Flue_Secret_B, a1
	move.l a1, Flue_OutputFlue(a0)

	; Link secret area flue C with D
	ENTITY_GETBYNAME Flue, l1a4_Flue_Secret_C, a0
	ENTITY_GETBYNAME Flue, l1a4_Flue_Secret_D, a1
	move.l a1, Flue_OutputFlue(a0)

	;==============================================================
	
	; Disable Djakk lost player timeout
	ENTITY_GETBYNAME Monster, l1a4_Djakk, a0
	move.w #-1, Monster_LoseSightTimer(a0)

	;==============================================================

	; Disable tree Fuzzls 1-6 until end, to improve performance
	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl1, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl2, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl3, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl4, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl5, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl6, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	rts
	
l1a4_Update:

	rts
	
l1a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l1a4_End:
	; a1 --- Level addr

	rts
	
l1a4_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l (Player1), a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
l1a4_Trigger_WakeDjakk:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l1a4_Djakk, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0
	
	rts

l1a4_Trigger_DismountDjakk:

	PUSHL  a0
	move.l (Player1), a0
	tst.b  Character_Riding(a0)
	beq    @NotRiding

	; Set power to expire next frame
	move.w #0x1, Player_ColourChangeTimer(a0)

	@NotRiding:
	POPL   a0

	rts
	
l1a4_Trigger_FuzzlTreeEntrance:

	PUSHL  a0

	; Disarm and disable Djakk if still alive (rare but possible)
	ENTITY_GETBYNAME Monster, l1a4_Djakk, a0
	jsr    MonsterDie
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	; Enable tree Fuzzls
	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl1, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl2, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl3, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl4, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl5, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	ENTITY_GETBYNAME Fuzzl, l1a4_TreeFuzzl6, a0
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	; Start 'Rain' track
	IFND DEBUG
	lea    track_bgm_cue_l2, a0
	jsr    SND_PlayTrack
	ENDIF

	POPL   a0

	rts
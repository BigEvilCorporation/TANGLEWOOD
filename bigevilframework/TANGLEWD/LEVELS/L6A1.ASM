;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L6a1.asm - Level 6 - Deadwood Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L6a1_DeadwoodAct1:

	dc.l LevelSelect_Str_06				; Name
	dc.l LevelData_L6A1					; Userdata
	dc.l tiles_L6						; Tileset
	dc.l map_blocks_L6					; Blocks
	dc.l map_blockmap_L6a1				; Block map
	dc.l map_blockmap_l6a1_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6			; Collision blocks
	dc.l collisionmap_blockmap_L6a1		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l6a1	; Collision block map Y offsets table
	dc.l terrainmap_L6A1_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l L6a1_DefaultPalettes			; Palettes
	dc.l L6a1_Init						; Init routine
	dc.l L6a1_Update					; Update routine
	dc.l L6a1_Serialise					; Serialise routine
	dc.l L6a1_LoadGameObjects			; Load game objects routine
	dc.l l6a1_End						; End routine
	dc.l l6a2_DeadwoodAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_L6a1_width					; Map width (tiles)
	dc.w map_L6a1_height				; Map height (tiles)
	dc.w map_blockmap_L6a1_width		; Map width (blocks)
	dc.w map_blockmap_L6a1_height		; Map height (blocks)
	dc.w terrainmap_L6A1_width			; Collision map width (tiles)
	dc.w terrainmap_L6A1_height			; Collision map height (tiles)
	dc.w terrainmap_L6A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L6A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L6A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L6A1_height; Collision map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	dc.w terrainmap_L6A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x7							; Background colour idx
	dc.b 0x11							; Index
	
	even
	
L6a1_DefaultPalettes:

	; L6 is silhouetted throughout
	dc.l palette_L6					; World
	dc.l palette_fade_black			; Monster (silhouette)
	dc.l palette_fuzzl				; Fuzzl (used for fireflies)
	dc.l pal_nymn_red				; Player (used for totem poles)
	
	even

; Rolling log
L6A1_LogRollAccel			equ 0x0800
L6A1_LogRollCamLerpSpeed	equ 0x40
L6A1_LogRollCamLerpTime		equ 0x1E
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l6a1Data_CutsceneLogRoll1		rs.b Cutscene_Struct_Size
l6a1Data_LogRollCamLerpTimer	rs.w 1
;---------------------------------
	RS_ALIGN
L6a1Data_Struct_Size     		rs.b 0
	
L6a1_Init:

	; Set data for all acts in level
	jsr    L6_SetActData
	
	; Load BG map
	lea    map_blocks_L6, a0
	lea    map_blockmap_L6bg, a1
	move.l #(map_blockmap_L6bg_width<<16)|map_blockmap_L6bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L6_LoadSceneAnimations

	;==============================================================

	; Setup silhouette palettes
	jsr    L6_SetupSilhouetteEffect

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L6A1, a2
	lea    l6a1Data_CutsceneLogRoll1(a2), a0
	move.l #l6a1_CutsceneLogRoll1, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l6a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge1, a1
	move.b #0x1, Button_Active(a0)
	move.l #l6a1_LogRoll1Begin, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge2, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button3, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge3, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.b  #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button4, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge4, a1
	move.b #0x1, Button_Active(a0)
	move.l #l6a1_LogRoll2Begin, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button5, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge6, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	; Set logs to update out of view
	ENTITY_GETBYNAME Log, l6a1_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Log, l6a1_Log2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Log, l6a1_Log3, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Don't lerp Djakk palette
	ENTITY_GETBYNAME Monster, l6a1_Djakk1, a0
	move.b #0x0, Monster_LerpPalette(a0)

	; Don't hold player control
	move.b #0x0, Monster_BlockPlayerCtrl(a0)

	;==============================================================

	; Init camera lerp timer
	move.l #LevelData_L6A1, a2
	move.w #0x0, l6a1Data_LogRollCamLerpTimer(a2)
	
	rts
	
L6a1_Update:

	; Update camera lerp timer
	move.l #LevelData_L6A1, a2
	move.w l6a1Data_LogRollCamLerpTimer(a2), d0
	beq    @NoLerpTimer

	subq.w  #0x1, d0
	move.w d0, l6a1Data_LogRollCamLerpTimer(a2)
	tst.w  d0
	bne    @NoLerpTimer

	; Timer elapsed, lerp camera back to player
	PUSHM  a0-a2
	move.l Player1, a1
	move.w #L6A1_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpToEntity
	POPM   a0-a2

	@NoLerpTimer:

	rts
	
L6a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L6a1_End:
	rts

l6a1_Trigger_MusicCue:

	lea    track_bgm_cue_l6, a0
	jsr    SND_PlayTrack

	rts

L6a1_LogRoll1Begin

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L6A1, a2
	lea    l6a1Data_CutsceneLogRoll1(a2), a0
	jsr    CutscenePlay
	POPL   a0

	rts

L6a1_LogRoll2Begin

	; Roll bridges
	ENTITY_GETBYNAME Bridge, l6a1_Bridge4, a0
	jsr    BridgeBeginRoll
	ENTITY_GETBYNAME Bridge, l6a1_Bridge5, a0
	jsr    BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	ENTITY_GETBYNAME Log, l6a1_Log3, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	jsr    LogBeginHazardousRoll

	; Disable button
	ENTITY_GETBYNAME Button, l6a1_Button4, a0
	move.b #0x0, Button_Active(a0)

	; Start camera lerp
	PUSHM  a0-a2
	ENTITY_GETBYNAME Log, l6a1_Log3, a1
	move.w #L6A1_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpToEntity
	POPM   a0-a2

	; Begin lerp timer
	move.l #LevelData_L6A1, a2
	MOVE_NTSC_W L6A1_LogRollCamLerpTime, l6a1Data_LogRollCamLerpTimer(a2), d0

	rts
	
L6a1_Trigger_WakeDjakk:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a1_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0

	rts

L6a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l6a1_CutsceneLogRoll1:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Camera lerp
	CUTSCENE_GET_ENTITY Log, l6a1_Log1, a2
	CUTSCENE_CAMERA_LERP a2,#0x08

	; Roll bridge
	CUTSCENE_GET_ENTITY Bridge, l6a1_Bridge1, a2
	CUTSCENE_OBJECT_ROUTINE a2,#BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	CUTSCENE_GET_ENTITY Log, l6a1_Log1, a2
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	neg.w  d0
	CUTSCENE_OBJECT_ROUTINE a2,#LogBeginHazardousRoll

	; Disable button
	CUTSCENE_GET_ENTITY Button, l6a1_Button1, a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Button_Active,#0x0

	; Wait until log stopped
	CUTSCENE_GET_ENTITY Log, l6a1_Log1,a2
	CUTSCENE_OBJECT_WAIT_STOP a2

	; Camera lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x08

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

L6_SetActData:
	lea    CurrentActDatas, a2
	move.l #LevelData_L6A1, (a2)+
	move.l #LevelData_L6A2, (a2)+
	move.l #LevelData_L6A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	rts

L6_SetupSilhouetteEffect:

	; Force every sprite object to use monster palette (id 1, silhouette)
	LIST_GET_HEAD EntityUpdate,a0
	@UpdateLp:
	cmpa.w #0x0, a0
	beq    @UpdateListEnd
	move.l Entity_TypeBits(a0), d0
	andi.l #entity_type_spriteobj, d0
	beq    @NotSpriteUpdate
	move.b #PaletteId_Monster, SpriteObj_PaletteIdx(a0)
	move.b #0x0, SpriteObj_PaletteAutoLoad(a0)
	@NotSpriteUpdate:
	LIST_GET_NEXT EntityUpdate,a0,a0
	bra    @UpdateLp
	@UpdateListEnd:

	LIST_GET_HEAD EntityWorldGrid,a0
	@WorldGridLp:
	cmpa.w #0x0, a0
	beq    @WorldGridListEnd
	move.l Entity_TypeBits(a0), d0
	andi.l #entity_type_spriteobj, d0
	beq    @NotSpriteWorldGrid
	move.b #PaletteId_Monster, SpriteObj_PaletteIdx(a0)
	move.b #0x0, SpriteObj_PaletteAutoLoad(a0)
	@NotSpriteWorldGrid:
	LIST_GET_NEXT EntityWorldGrid,a0,a0
	bra    @WorldGridLp
	@WorldGridListEnd:

	; ...except totem poles
	move.l EntityPoolStart_Checkpoint, a0
	move.w EntityCount_Checkpoint, d0
	beq    @NoCheckpoints
	subq   #0x1, d0
	@CheckpointLp:
	PUSHW  d0
	move.b #PaletteId_Player, SpriteObj_PaletteIdx(a0)
	POPW   d0
	lea    Checkpoint_Struct_Size(a0), a0
	dbra   d0, @CheckpointLp
	@NoCheckpoints:

	; ...and fireflies
	move.l EntityPoolStart_Firefly, a0
	move.w EntityCount_Firefly, d0
	beq    @NoFireflies
	subq   #0x1, d0
	@FireflyLp:
	PUSHW  d0
	move.b #PaletteId_Fuzzl, SpriteObj_PaletteIdx(a0)
	POPW   d0
	lea    Firefly_Struct_Size(a0), a0
	dbra   d0, @FireflyLp
	@NoFireflies:

	rts
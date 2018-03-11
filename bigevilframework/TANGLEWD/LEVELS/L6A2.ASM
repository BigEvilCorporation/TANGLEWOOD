;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l6a2.asm - Level 6 - Deadwood Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l6a2_DeadwoodAct2:

	dc.l LevelSelect_Str_06				; Name
	dc.l LevelData_l6a2					; Userdata
	dc.l tiles_L6						; Tileset
	dc.l map_blocks_L6					; Blocks
	dc.l map_blockmap_l6a2				; Block map
	dc.l map_blockmap_l6a2_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6			; Collision blocks
	dc.l collisionmap_blockmap_l6a2		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l6a2	; Collision block map Y offsets table
	dc.l terrainmap_L6A2_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l6a2_DefaultPalettes			; Palettes
	dc.l l6a2_Init						; Init routine
	dc.l l6a2_Update					; Update routine
	dc.l l6a2_Serialise					; Serialise routine
	dc.l l6a2_LoadGameObjects			; Load game objects routine
	dc.l l6a2_End						; End routine
	dc.l l6a3_DeadwoodAct3				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l6a2_width					; Map width (tiles)
	dc.w map_l6a2_height				; Map height (tiles)
	dc.w map_blockmap_l6a2_width		; Map width (blocks)
	dc.w map_blockmap_l6a2_height		; Map height (blocks)
	dc.w terrainmap_L6A2_width			; Collision map width (tiles)
	dc.w terrainmap_L6A2_height			; Collision map height (tiles)
	dc.w terrainmap_L6A2_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L6A2_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L6A2_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L6A2_height; Collision map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	dc.w terrainmap_L6A2_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x7							; Background colour idx
	dc.b 0x12							; Index
	
	even
	
l6a2_DefaultPalettes:

	; L6 is silhouetted throughout
	dc.l palette_L6					; World
	dc.l palette_fade_black			; Monster
	dc.l palette_fade_black			; Fuzzl
	dc.l palette_fade_black			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l6a2Data_LogRollCamLerpTimer	rs.w 1
;---------------------------------
	RS_ALIGN
l6a2Data_Struct_Size     		rs.b 0
	
l6a2_Init:

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

	; Don't lerp Djakk palettes, disable catchup behaviour, use silhouetted palettes, don't change music
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk3, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk4, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk5, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	;ENTITY_GETBYNAME Monster, l6a2_Djakk6, a0
	;move.b #0x0, Monster_LerpPalette(a0)
	;move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	;move.b #0x1, Monster_CatchUpSpeedMul(a0)
	;jsr    MonsterSkipIntro
	;move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	;move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk7, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk8, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk9, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	ENTITY_GETBYNAME Monster, l6a2_Djakk10, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.l #palette_fade_black, SpriteObj_PaletteAddr(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)

	; Remove dropping logs from world grid (floating in air until triggered)
	ENTITY_GETBYNAME Log, l6a2_Log2, a0
	jsr    EntityRemoveFromUpdateList
	jsr    PhysicsWorldRemoveObject
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_worldGridFlags(a0)
	bclr.b #EntityWorldGridFlag_GridPhysics, Entity_worldGridFlags(a0)
	ENTITY_GETBYNAME Log, l6a2_Log3, a0
	jsr    EntityRemoveFromUpdateList
	jsr    PhysicsWorldRemoveObject
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_worldGridFlags(a0)
	bclr.b #EntityWorldGridFlag_GridPhysics, Entity_worldGridFlags(a0)

	; Force every sprite object to use palette 1 (silhouette)
	LIST_GET_HEAD EntityUpdate,a0
	@UpdateLp:
	cmpa.w #0x0, a0
	beq    @UpdateListEnd
	move.l Entity_TypeBits(a0), d0
	andi.l #entity_type_spriteobj, d0
	beq    @NotSpriteUpdate
	move.b #0x1, SpriteObj_PaletteIdx(a0)
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
	move.b #0x1, SpriteObj_PaletteIdx(a0)
	move.b #0x0, SpriteObj_PaletteAutoLoad(a0)
	@NotSpriteWorldGrid:
	LIST_GET_NEXT EntityWorldGrid,a0,a0
	bra    @WorldGridLp
	@WorldGridListEnd:

	;==============================================================

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l6a2_Button1, a0
	ENTITY_GETBYNAME Lift, l6a2_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateDown, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	;==============================================================

	; Share Djakk 1-3 VRAM around
	ENTITY_GETBYNAME Monster, l6a2_Djakk3, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk4, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk5, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	;ENTITY_GETBYNAME Monster, l6a2_Djakk6, a0
	;ENTITY_GETBYNAME Monster, l6a2_Djakk2, a2
	;SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk7, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk8, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk9, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	ENTITY_GETBYNAME Monster, l6a2_Djakk10, a0
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a2
	SPRITE_LOAD_COPY djakk,idle,palette_fade_black,PaletteId_Monster,0x0,a2

	;==============================================================

	; Start chase music
	PUSHM  a0/d0-d1
	lea    track_bgm_boss_l6, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	
	rts
	
l6a2_Update:

	rts
	
l6a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l6a2_End:
	rts

l6a2_Trigger_EndChase:

	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack
	
	rts

l6a2_Trigger_WakeDjakk1:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk2:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk3:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk3, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk1, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk4:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk4, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk2, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_LoadDjakk5:

	rts

l6a2_Trigger_WakeDjakk5:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk5, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk3, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk6:

	PUSHL  a0
	
	;ENTITY_GETBYNAME Monster, l6a2_Djakk6, a0
	;cmp.b  #MonsterState_InCave, Monster_State(a0)
	;bne    @MonsterAlreadyWoke
	;jsr    MonsterStartRoaring
	;@MonsterAlreadyWoke:

	;ENTITY_GETBYNAME Monster, l6a2_Djakk4, a0
	;jsr    EntityRemoveFromWorldGrid
	;jsr    EntityRemoveFromUpdateList
	;jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk7:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk7, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk5, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk8:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk8, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	;ENTITY_GETBYNAME Monster, l6a2_Djakk6, a0
	;jsr    EntityRemoveFromWorldGrid
	;jsr    EntityRemoveFromUpdateList
	;jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk9:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk9, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk7, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_WakeDjakk10:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a2_Djakk10, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:

	ENTITY_GETBYNAME Monster, l6a2_Djakk8, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	POPL   a0

	rts

l6a2_Trigger_Log1:

	PUSHL  a0

	; Start log rolling
	ENTITY_GETBYNAME Log, l6a2_Log1, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	neg.w  d0
	jsr    LogBeginHazardousRoll
	jsr    EntityAddToWorldGrid

	POPL   a0

	rts

l6a2_Trigger_Log2:

	PUSHL  a0

	; Re-add log to physics world
	ENTITY_GETBYNAME Log, l6a2_Log2, a0
	jsr    EntityAddToUpdateList
	jsr    PhysicsWorldAddObject

	; Start log rolling
	ENTITY_GETBYNAME Log, l6a2_Log2, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	jsr    LogBeginHazardousRoll

	POPL   a0

	rts

l6a2_Trigger_Log3:

	PUSHL  a0

	; Re-add log to physics world
	ENTITY_GETBYNAME Log, l6a2_Log3, a0
	jsr    EntityAddToUpdateList
	jsr    PhysicsWorldAddObject

	; Start log rolling
	ENTITY_GETBYNAME Log, l6a2_Log3, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	jsr    LogBeginHazardousRoll

	POPL   a0

	rts

l6a2_StealDjakkVRAM:

	; Find a dead one
	move.w (EntityCount_Monster), d6
	beq    @NoMonsters
	move.l (EntityPoolStart_Monster), a2
	subq.w  #0x1, d6
	@MonsterLoop:

	tst.b  Entity_Active(a2)
	beq    @NextMonster

	tst.b  Character_Dead(a2)
	bne    @Found

	@NextMonster:
	lea    Monster_Struct_Size(a2), a2
	dbra   d6, @MonsterLoop
	@NoMonsters:

	; If none dead, your level design sucks
	RAISE_EXCEPTION *

	@Found:

	; Deactivate it
	PUSHL  a0
	move.l a2, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	jsr    EntityRemoveFromWorldGrid
	move.b #0x0, Entity_Active(a0)
	POPL   a0

	rts

l6a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

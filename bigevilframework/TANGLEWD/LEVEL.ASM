;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level asset loading, scrolling, state, collision
;==============================================================

GamestateReset_LeaveAudio	equ 0
GamestateReset_ResetAudio	equ 1

LevelMaxActs				equ 0x6

	rsset 0
LevelData_FireflyCount		rs.w 1
;---------------------------------
	RS_ALIGN
LevelData_Struct_Size		rs.b 0

GameStartNew:

	; Clear total firefly count
	move.w #0x0, FireflyPickupCountTotalSave

	; Set initial level
	move.l #InitialLevel, CurrentLevel

	; Clear password
	move.l #0x0, CurrentSavePassword

	; Clear save data
	move.l #0x0, LastActivatedCheckpoint
	move.w #0x0, LastSaveVersion

	rts

GameStateReset:
	; d0 (b) 1 = Reset audio, 0 = leave audio

	; Reset audio volume, stop current track, clear all tracks
	cmp.b  #GamestateReset_LeaveAudio, d0
	beq    @LeaveAudio
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume
	jsr    SND_StopTrack
	jsr    SND_ClearTracks
	bra    @EndResetAudio

	@LeaveAudio:

	; Just fade out ambience and threat tracks
	move.l audio_current_track, a0
	cmpa.w #0x0, a0
	beq    @EndResetAudio
	cmp.b  #Track_Type_Threat, Track_Type(a0)
	beq    @FadeOutTrack
	cmp.b  #Track_Type_Ambience, Track_Type(a0)
	beq    @FadeOutTrack
	bra    @EndResetAudio

	@FadeOutTrack:

	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack

	; Remove from queue
	lea    audio_queued_tracks, a1
	lea    (Track_Type_Threat*size_long)(a1), a1
	move.l #0x0, (a1)
	lea    audio_queued_tracks, a1
	lea    (Track_Type_Ambience*size_long)(a1), a1
	move.l #0x0, (a1)

	@EndResetAudio:

	; Stop amient SFX
	jsr    StopAmbientSFX
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Clear all palettes
	jsr    PAL_ClearAll

	; Clear palette cache
	lea    CurrentPalettes, a0
	move.l #(size_palette_b*num_palettes)/size_long, d0
	MEMZEROL a0, d0
	lea    UnderwaterPalettes, a0
	move.l #(size_palette_b*num_palettes)/size_long, d0
	MEMZEROL a0, d0

	; Clear palette addrs
	lea    ScenePaletteAddrs, a0
	move.l #num_palettes, d0
	MEMZEROL a0, d0
	
	; Clear planes
	jsr    VDP_ClearMapPlaneA
	jsr    VDP_ClearMapPlaneB

	; Clear VRAM pools
	jsr    VRAM_ClearPools
	
	; Reset scrolling
	move.l #0x0, WorldScrollX
	move.l #0x0, WorldScrollY
	move.w #0x0, d0
	jsr    VDP_SetHScrollPlaneA
	jsr    VDP_SetHScrollPlaneB
	jsr    VDP_SetVScrollPlaneA
	jsr    VDP_SetVScrollPlaneB
	move.w d0, vdp_hscroll_a
	move.w d0, vdp_hscroll_b
	move.w d0, vdp_vscroll_a
	move.w d0, vdp_vscroll_b
	
	; Reset camera
	jsr    CAM_Init
	
	; Reset streaming
	jsr    MAP_StreamInit
	
	; Clear local sprite table
	move.w #0x0, next_sprite_index
	lea    vdp_sprite_table, a0
	move.l #(Sprite_Struct_Size*vdp_max_sprites)/size_long, d0
	MEMZEROL a0, d0
	
	; DMA to VDP
	lea    vdp_sprite_table, a0
	move.l #vram_addr_sprite_table, d0
	move.w #(Sprite_Struct_Size*vdp_max_sprites)/size_word, d1
	jsr    VDP_DMACopyVRAM
	
	; Reset entities
	jsr    EntityClearUpdateList
	jsr    EntityClearRenderList
	jsr    EntityClearSerialiseList

	; Init entity pool
	RAMPOOL_INIT Pool_Entities,EntityRAMPoolSize
	
	; Clear entity pointer array and counts
	move.l #EntityPoolMemStart, a0
	move.l #(EntityPoolMemEnd-EntityPoolMemStart), d0
	MEMZEROB a0, d0

	; Clear shared VRAM ptrs
	move.l #SharedVRAM_Start, a0
	move.l #(SharedVRAM_End-SharedVRAM_Start), d0
	MEMZEROB a0, d0
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Reset ropes
	move.l (EntityPoolStart_Rope), NextFreeRopeSegment

	; Reset water level
	move.b #0xFF, raster_water_level

	; Reset potential flue occupants
	move.b #0x0, FlueNumPotentialOccupants

	; Reset VFX
	jsr    VFX_Reset
	
	; Reset entity linked lists
	LIST_CLEAR PhysicsObjs,a4,a3
	LIST_CLEAR Characters,a4,a3
	LIST_CLEAR Platforms,a4,a3
	LIST_CLEAR Barriers,a4,a3
	LIST_CLEAR MovingBarriers,a4,a3
	LIST_CLEAR MovingPlatforms,a4,a3
	LIST_CLEAR PushableObjs,a4,a3
	LIST_CLEAR AIMarkers,a4,a3

	; Reset cutscenes
	LIST_CLEAR ActiveCutscenes,a4,a3

	; Reload font
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfont)
	lea    tiles_twfont, a0
	jsr    TXT_LoadFont

	; HACK: Clear pause state VRAM alloc
	lea    GameStatePauseData, a2
	move.w #0x0, PauseState_VRAMAddr(a2)

	; Clear firefly count
	move.l (CurrentLevel), a1
	cmpa.w #0x0, a1
	beq    @NoLevel
	move.l Level_UserData(a1), a2
	cmpa.w #0x0, a2
	beq    @NoUserData
	move.w #0x0, LevelData_FireflyCount(a2)
	@NoLevel:
	@NoUserData:

	; Reset physics world
	jsr    PhysicsWorldInit

	; Reset entity world grid
	jsr    EntityInitWorldGrid

	; Reset weather
	jsr    WeatherInit

	lea Thunder, a2
	move.b #0x0, Thunder_Enabled(a2)

	; Load water level raster effect
	jsr    RasterEffectUnderwaterInit
	
	rts

LevelLoad:
	
	; Fetch current level addr
	move.l (CurrentLevel), a1

	; Load level palettes
	jsr LevelLoadPalettes

	; Load level tiles
	jsr LevelLoadArt

	; Load level SFX
	jsr LevelAddSFX

	; Load level VFX
	jsr LevelLoadVFX

	; Setup physics world before loading objects
	jsr LevelSetupPhysicsWorld

	; Load level game objects
	move.l (CurrentLevel), a1
	move.l Level_LoadGameObjsRoutine(a1), a2
	jsr    (a2)

	; Load players
	jsr    LevelLoadPlayers
	
	; Init level
	move.l Level_InitRoutine(a1), a2
	jsr    (a2)
	
	; Stream map last, needs player pos
	; TODO: In Gameplay_Enter() to account for checkpoints, move somewhere more appropriate
	; jsr LevelPreStreamMap
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	rts

LevelLoadPlayers:

	move.l #0x0, Player1
	move.l #0x0, Player2

	; Set default player addrs
	tst.w  EntityCount_Nymn
	beq    @NoNymn

	; Check active
	move.l (EntityPoolStart_Nymn), a2
	tst.b  Entity_Active(a2)
	beq    @NoNymn

	; Nymn is P1
	move.l a2, Player1

	tst.w  EntityCount_Echo
	beq    @NoEcho

	; Check active
	move.l (EntityPoolStart_Echo), a2
	tst.b  Entity_Active(a2)
	beq    @NoEcho

	; Echo is P2
	move.l (EntityPoolStart_Echo), a3
	move.l (EntityPoolStart_Echo), Player2
	bra    @EndDefaultPlayers

	@NoNymn:

	; Echo is P1, no Nymn
	move.l (EntityPoolStart_Echo), Player1
	move.l #0x0, Player2

	@NoEcho:
	@EndDefaultPlayers:

	rts

LevelLoadPalettes:
	; a1 --- Level struct address
	
	; Start black
	move.l #((size_palette_b*num_palettes)/size_long), d0
	lea    CurrentPalettes, a0
	@Loop:
	move.l #0x0, (a0)+
	dbra   d0, @Loop

	; Set all palettes dirty
	move.b #0xF, DirtyPalettesMask
	move.b #0xF, UnderwaterDirtyPalettesMask

	moveq #0x0, d6
	moveq #0x0, d7
	move.b #0x3, d7						; Num palettes to d7 (-1)
	move.l #PaletteId_World0, d0		; First level palette offset to d0
	move.l Level_PalettesAddr(a1), a3	; First palette addr to a3
	@PaletteLoop:
	PUSHM  d0/d7/a1/a3
	move.l (a3), a0					; Get palette address
	cmpa.w #0x0, a0
	beq    @SkipPalette
	
	IFD DEBUG
	
	jsr    PAL_Load
	
	ELSE
	
	; Fade all palettes up
	move.w #LevelFadeUpSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	ENDIF
	
	@SkipPalette:
	POPM   d0/d7/a1/a3
	addq.w #0x1, d0
	addq.l #size_long, a3
	dbra d7, @PaletteLoop				; PAL_Load leaves incremented palette address in a0
	
	rts

LevelLoadCompressedTileset:
	; Loads compressed tileset to VRAM
	; - Allocs level VRAM
	; - Uses entity pool for decompression buffer

	; a0 --- Compressed tileset
	; d0 (w) Num tiles

	; Backup num tiles
	move.w d0, d1

	; Get uncompressed tilset size (first word of compression stream)
	moveq  #0x0, d2
	move.w (a0), d2

	; Alloc decompression buffer
	PUSHM  d0-d1
	RAMPOOL_ALLOC Pool_Entities, d2
	POPM   d0-d1

	; Decompress tiles
	move.l a0, a6	; Compressed data
	move.l a1, a5	; Decompressed data
	PUSHM  d0-d1
	jsr    DecompressSlz
	POPM   d0-d1

	; Alloc VRAM
	TILES2BYTES d0
	PUSHM  d1/a0-a1
	jsr    VRAM_PoolAlloc
	POPM   d1/a0-a1
	move.w d0, vram_addr_leveltiles

	; Load tiles
	move.l a1, a0
	jsr    VDP_LoadTilesDMA

	; Free decompression buffer
	RAMPOOL_INIT Pool_Entities,EntityRAMPoolSize

	rts
	
LevelLoadArt:

	PUSHM  a0-a1

	; Load
	move.l Level_TilesAddr(a1), a0
	move.w Level_NumTiles(a1), d0
	jsr    LevelLoadCompressedTileset

	POPM   a0-a1
	
	rts
	
LevelPreStreamMap:
	
	PUSHL  a0
	PUSHL  a1
	
	;==============================================================

	; Tick camera first
	jsr    CAM_Update

	move.l CurrentLevel, a1
	
	; Set initial streamed col
	move.w WorldScrollX, d1			;  (top word = integer part)
	PIXELS2TILES d1					; To tiles
	TILES2BLOCKS d1					; To blocks
	cmp.w  Level_MapWidthBlocks(a1), d1 ; Clamp to map width
	blt    @NoClampX
	move.w Level_MapWidthBlocks(a1), d1
	@NoClampX:
	move.w d1, MapStreamLoadedCol

	; Set initial streamed row
	move.w WorldScrollY, d0			;  (top word = integer part)
	PIXELS2TILES d0					; To tiles
	TILES2BLOCKS d0					; To blocks
	addi.w #MapStreamHeight, d0		; + 1 screen, ready to stream it in (starting from bottom, streaming rows upwards)
	cmp.w  Level_MapHeightBlocks(a1), d0 ; Clamp to map height
	blt    @NoClampY
	move.w Level_MapHeightBlocks(a1), d0
	@NoClampY:
	move.w d0, MapStreamLoadedRow
    
	;==============================================================
    
	; Stream initial map section (and process VDP queue immediately)
	move.b #0x1, d0
	DISABLE_INTERRUPTS
	jsr    MAP_UpdateStreaming
	RESTORE_INTERRUPTS
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	POPL   a1
	POPL   a0
	
	rts
	
LevelAddSFX:

	IFND DEBUG
	
	lea    AmbientSFX, a2
	move.l #SFX_Ambience_Day1, (a2)+
	move.l #SFX_Ambience_Day2, (a2)+
	move.l #SFX_Ambience_Day3, (a2)+
	move.l #SFX_Ambience_Day4, (a2)+
	move.l #SFX_Ambience_Night1, (a2)+
	;move.l #SFX_Chirp3, (a2)+
	;move.l #SFX_Chirp4, (a2)+
	
	ENDIF

	rts

LevelLoadVFX:

	; Init VFX
	lea    EntityArray_VFX+(VfxId_WaterSplashLarge*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_water_splash, a2
	lea    vfx_animation_water_splash_small, a3
	jsr    VfxInit

	rts

LevelSetupPhysicsWorld:

	; Get physics world
	lea    PhysicsWorld, a2

	; Set gravity
	MOVE_NTSC_ACCEL_L DefaultGravity, PhysicsWorld_Gravity(a2), d0

	; Set underwater velocity/acceleration scale
	move.l #DefaultUnderwaterScaleX, PhysicsWorld_UnderwaterVelXScale(a2)
	move.l #DefaultUnderwaterScaleY, PhysicsWorld_UnderwaterVelYScale(a2)
	move.l #DefaultUnderwaterScaleX, PhysicsWorld_UnderwaterAccelScale(a2)

	; Set wind
	move.l #0x0, PhysicsWorld_Wind(a2)

	; Set ground height
	move.w  Level_MapHeight(a1), d0
	TILES2PIXELS d0
	add.l   vdp_sprite_border_y, d0
	TOSUBPIXELS d0
	move.l  d0, PhysicsWorld_GroundHeight(a2)

	rts
	
LevelReset:

	; Fetch current level addr
	move.l (CurrentLevel), a1

	;==============================================================

	; System
	move.w  #0x0, Gamepad1PrevState
	move.w  #0x0, Gamepad2PrevState

	;==============================================================
	
	; Switching palettes
	lea     SwitchingPalettesP1, a0
	move.l  #Pal_Nymn_Yellow, (a0)+; Drained
	move.l  #Pal_Nymn_Red, (a0)+	; Orange
	move.l  #Pal_Nymn_Red, (a0)+	; Red
	move.l  #Pal_Nymn_Blue, (a0)+	; Blue
	move.l  #Pal_Nymn_Green, (a0)+	; Green
	move.l  #Pal_Nymn_Yellow, (a0)+; Yellow
	move.l  #Pal_Nymn_White, (a0)+; White

	;==============================================================
	
	; Colour abilities
	move.b  #0x1, GlobalTimeDiv

	;==============================================================
	
	; Fireflies
	move.w  #0x0, FireflyPickupCountAct

	;==============================================================
	
	; World
	move.w  #0x0, TimeOfDayShiftDelay

	;==============================================================
	
	; Camera
	move.l  #0x0, WorldScrollX
	move.l  #0x0, WorldScrollY
	move.l  #CameraStartPosWorldX, CameraWorldPosX
	move.l  #CameraStartPosWorldY, CameraWorldPosY
	move.l  (Player1), CameraTargetGameObj

	;==============================================================
	
	; Set BG colour
	clr.w  d0
	move.b Level_BgColour(a1), d0
	ori.w  #(PaletteId_World0<<4), d0
	VDP_SETREG 7, d0

	;==============================================================

	IFD EMUBUILD
	; Clear persistent achievement data
	jsr    LevelClearAchievementData
	ENDIF
	
	rts

	IFD EMUBUILD
LevelClearAchievementData:

	move.b #0x0, Ach_Data_BoulderSmashCount
	move.b #0x0, Ach_Data_HoggWallCount

	rts
	ENDIF

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level asset loading, scrolling, state, collision
;==============================================================

GamestateReset_LeaveAudio	equ 0
GamestateReset_ResetAudio	equ 1

LevelMaxActs				equ 0x4

	rsset 0
LevelData_FireflyCount		rs.w 1
;---------------------------------
LevelData_Struct_Pad		rs.b 2
LevelData_Struct_Size		rs.b 0

GameStateReset:
	; d0 (b) 1 = Reset audio, 0 = leave audio

	; Reset audio volume, stop current track, clear all tracks
	cmp.b  #GamestateReset_LeaveAudio, d0
	beq    @LeaveAudio
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume
	jsr    SND_StopTrack
	jsr    SND_ClearTracks
	@LeaveAudio:
	
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
	
	; Reset camera
	move.l #0x0, CameraWorldPosX
	move.l #0x0, CameraWorldPosY
	move.l #0x0, CameraTargetGameObj
	
	; Reset streaming
	move.w #0x0, MapStreamLoadedCol
	move.w #0x0, MapStreamLoadedRow
	
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
	
	; Reset entity counts
	move.w #0x0, EntityCount_Actor
	move.w #0x0, EntityCount_AIMarker
	move.w #0x0, EntityCount_Boulder
	move.w #0x0, EntityCount_BouncePlant
	move.w #0x0, EntityCount_Bridge
	move.w #0x0, EntityCount_Button
	move.w #0x0, EntityCount_Cart
	move.w #0x0, EntityCount_Cogs
	move.w #0x0, EntityCount_Crate
	move.w #0x0, EntityCount_DjakkCage
	move.w #0x0, EntityCount_Echo
	move.w #0x0, EntityCount_Firefly
	move.w #0x0, EntityCount_Flue
	move.w #0x0, EntityCount_Fuzzl
	move.w #0x0, EntityCount_FuzzlCage
	move.w #0x0, EntityCount_Generator
	move.w #0x0, EntityCount_Leaf
	move.w #0x0, EntityCount_Lift
	move.w #0x0, EntityCount_Location
	move.w #0x0, EntityCount_Log
	move.w #0x0, EntityCount_Monster
	move.w #0x0, EntityCount_Nest
	move.w #0x0, EntityCount_Nymn
	move.w #0x0, EntityCount_Pillar
	move.w #0x0, EntityCount_Rope
	move.w #0x0, EntityCount_Stone
	move.w #0x0, EntityCount_TriggerBox
	move.w #0x0, EntityCount_VFX
	move.w #0x0, EntityCount_WaterBody
	move.w #0x0, EntityCount_Wyrm

	; Clear shared VRAM
	move.w #0x0, SharedVRAM_Lift
	move.w #0x0, SharedVRAM_Stone
	move.w #0x0, SharedVRAM_DjakCage
	move.w #0x0, SharedVRAM_Crate
	move.w #0x0, SharedVRAM_Log

	; Clear UI
	move.w #0x0, WidgetCount_Text
	move.w #0x0, WidgetCount_Cursor
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Reset ropes
	move.l (EntityPoolStart_Rope), NextFreeRopeSegment

	; Reset water level
	move.b #0xFF, raster_water_level

	; Reset potential flue occupants
	move.b #0x0, FlueNumPotentialOccupants
	
	; Reset linked lists
	LIST_CLEAR Characters,a4,a3
	LIST_CLEAR Platforms,a4,a3
	LIST_CLEAR Barriers,a4,a3
	LIST_CLEAR MovingBarriers,a4,a3
	LIST_CLEAR MovingPlatforms,a4,a3
	LIST_CLEAR PushableObjs,a4,a3
	LIST_CLEAR AIMarkers,a4,a3

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
	cmp.l  #0x0, a1
	beq    @NoLevel
	move.l Level_UserData(a1), a2
	cmp.l  #0x0, a2
	beq    @NoUserData
	move.w #0x0, LevelData_FireflyCount(a2)
	@NoLevel:
	@NoUserData:
	
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

	; Set default player addrs
	tst.w  EntityCount_Nymn
	beq    @NoNymn

	; Nymn is P1
	move.l (EntityPoolStart_Nymn), Player1

	tst.w  EntityCount_Echo
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

	clr.l  d6
	clr.l  d7
	move.b #0x3, d7						; Num palettes to d7 (-1)
	move.l #PaletteId_World0, d0		; First level palette offset to d0
	move.l Level_PalettesAddr(a1), a3	; First palette addr to a3
	@PaletteLoop:
	PUSHM  d0/d7/a3
	move.l (a3), a0					; Get palette address
	cmp.l  #0x0, a0
	beq    @SkipPalette
	
	IFD DEBUG
	
	jsr    PAL_Load
	
	ELSE
	
	; Fade all palettes up
	move.w #LevelFadeUpSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	
	ENDIF
	
	@SkipPalette:
	POPM   d0/d7/a3
	addq.w #0x1, d0
	addq.l #size_long, a3
	dbra d7, @PaletteLoop				; PAL_Load leaves incremented palette address in a0
	
	rts
	
LevelLoadArt:

	clr.l d0
	clr.l d1

	; Alloc VRAM
	move.w Level_NumTiles(a1), d0
	mulu   #size_tile_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, vram_addr_leveltiles

	; Load tiles
	move.l Level_TilesAddr(a1), a0
	move.w Level_NumTiles(a1), d1
	jsr    VDP_LoadTiles
	
	rts
	
LevelPreStreamMap:
	
	PUSHL  a0
	PUSHL  a1
	
	;==============================================================

	; Tick camera first
	jsr    CAM_Update
	
	; Set initial streamed col
	move.l WorldScrollX, d1			;  (top word = integer part)
	PIXELS2TILES d1					; To tiles
	TILES2BLOCKS d1					; To blocks
	move.w d1, MapStreamLoadedCol

	; Set initial streamed row
	move.w WorldScrollY, d0			;  (top word = integer part)
	PIXELS2TILES d0					; To tiles
	TILES2BLOCKS d0					; To blocks
	add.w  #MapStreamHeight, d0		; + 1 screen, ready to stream it in (starting from bottom, streaming rows upwards)
	move.w d0, MapStreamLoadedRow
    
	;==============================================================
    
	; Stream initial map section (and process VDP queue immediately)
	move.b #0x1, d0
	jsr    MAP_UpdateStreaming
	
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
	move.l #EntityArray_VFX, a0
	addi.l #(VfxId_WaterSplashLarge*VfxObj_Struct_Size), a0
	lea    vfx_spritesheet_water_splash, a2
	lea    vfx_animation_water_splash_small, a3
	jsr    VfxInit

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

	;==============================================================
	
	; Colour abilities
	move.b  #0x1, GlobalTimeDiv

	;==============================================================
	
	; Fireflies
	move.w  #0x0, FireflyPickupCount

	;==============================================================
	
	; World
	move.w  #0x0, TimeOfDayShiftDelay

	;==============================================================

	; Weather
	move.l  #0x0, WindAccel
	move.l  #0x0, WindMaxStrength
	move.l  #0x0, WindRandStrengthMin
	move.l  #0x0, WindRandStrengthMax
	move.w  #0x0, WindDelayTimer
	move.w  #0x0, WindDurationTimer

	;==============================================================

	; Physics world
	lea    PhysicsWorld, a2
	move.l Level_Gravity(a1), PhysicsWorld_Gravity(a2)
	move.l #0x0, PhysicsWorld_Wind(a2)

	move.w  Level_MapHeight(a1), d0
	TILES2PIXELS d0
	add.l   vdp_sprite_border_y, d0
	TOSUBPIXELS d0
	move.l  d0, PhysicsWorld_GroundHeight(a2)

	;==============================================================
	
	; Camera
	move.l  #0x0, WorldScrollX
	move.l  #0x0, WorldScrollY
	move.l  #CameraStartPosWorldX, CameraWorldPosX
	move.l  #CameraStartPosWorldY, CameraWorldPosY
	move.l  (Player1), CameraTargetGameObj

	;==============================================================
	
	; Set BG colour
	move.w #(PaletteId_World0<<4)|0xD, d0
	VDPSETREG 7, d0
	
	rts

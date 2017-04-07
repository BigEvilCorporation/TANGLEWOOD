;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level asset loading, scrolling, state, collision
;==============================================================

GameStateReset:
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Clear all palettes
	jsr    PAL_ClearAll
	
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
	move.w #(Sprite_Struct_Size*vdp_max_sprites), d1
	jsr    VDP_DMACopyVRAM
	
	; Reset entities
	jsr    EntityClearUpdateList
	jsr    EntityClearRenderList
	jsr    EntityClearSerialiseList
	
	; Reset entity counts
	move.w #0x0, EntityCount_Actor
	move.w #0x0, EntityCount_Monster
	move.w #0x0, EntityCount_Firefly
	move.w #0x0, EntityCount_Flue
	move.w #0x0, EntityCount_Fuzzl
	move.w #0x0, EntityCount_Leaf
	move.w #0x0, EntityCount_Nest
	move.w #0x0, EntityCount_Boulder
	move.w #0x0, EntityCount_TriggerBox
	move.w #0x0, EntityCount_WaterBody
	move.w #0x0, EntityCount_Location
	move.w #0x0, EntityCount_BouncePlant
	move.w #0x0, EntityCount_Lift
	move.w #0x0, EntityCount_Rope
	move.w #0x0, EntityCount_BouncePlant
	move.w #0x0, EntityCount_Stone
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Reset audio volume, stop current track, clear all tracks
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume
	jsr    SND_StopTrack
	jsr    SND_ClearTracks
	
	; Reset ropes
	move.l  #EntityArray_Rope, NextFreeRopeSegment

	; Reset water level
	move.b #0xFF, WaterLevel
	
	; Reset linked lists
	LIST_CLEAR Characters,a4,a3
	LIST_CLEAR Platforms,a4,a3
	LIST_CLEAR Barriers,a4,a3
	LIST_CLEAR PushableObjs,a4,a3

	; Reload debug draw font
	move.l #Tiles_PixelFontSizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfont)
	lea    Tiles_PixelFont, a0
	move.l #Tiles_PixelFontSizeT, d1
	jsr    VDP_LoadTiles
	
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

	; Load level game objects
	move.l (CurrentLevel), a1
	move.l Level_LoadGameObjsRoutine(a1), a2
	jsr    (a2)
	
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

LevelLoadPalettes:
	; a1 --- Level struct address
	
	clr.l  d6
	clr.l  d7
	move.b #0x3, d7						; Num palettes to d7 (-1)
	move.l #PaletteId_World0, d0		; First level palette offset to d0
	move.l Level_PalettesAddr(a1), a3	; First palette addr to a3
	@PaletteLoop:
	PUSHL  d0							; Backup palette index
	move.l (a3)+, a0					; Get palette address
	cmp.l  #0x0, a0
	beq    @SkipPalette
	
	IFD DEBUG
	
	jsr    PAL_Load			
	
	ELSE
	
	move.w #LevelFadeUpSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	
	ENDIF
	
	@SkipPalette:
	POPL   d0							; Restore palette index
	addi.w #0x1, d0					
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
	move.l WorldScrollX, d1
	TOPIXELS     d1					; To screen space
	PIXELS2TILES d1					; To tiles
	TILES2BLOCKS d1					; To blocks
	move.w d1, MapStreamLoadedCol

	; Set initial streamed row
	move.l WorldScrollY, d0
	TOPIXELS     d0					; To screen space
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
	move.l #SFX_Ambience_Night1, (a2)+
	;move.l #SFX_Chirp3, (a2)+
	;move.l #SFX_Chirp4, (a2)+
	
	ENDIF

	rts
	
LevelReset:

	; System
	move.w  #0x0, Gamepad1PrevState
	move.w  #0x0, Gamepad2PrevState
	
	; Time of Day
	move.l  #palette_l1_day,	TimeOfDayPalettes+(size_long*0)	; Day
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*1)	; Dusk
	move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*2)	; Night
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*3)	; Dawn
	move.b  #TimeOfDay_Day, TimeOfDay
	move.b  #0x1, TimeOfDayEnabled
	
	; Switching palettes
	lea     SwitchingPalettesP1, a0
	move.l  #Pal_Nymn_Yellow, (a0)+; Drained
	move.l  #Pal_Nymn_Red, (a0)+	; Orange
	move.l  #Pal_Nymn_Red, (a0)+	; Red
	move.l  #Pal_Nymn_Blue, (a0)+	; Blue
	move.l  #Pal_Nymn_Green, (a0)+	; Green
	move.l  #Pal_Nymn_Yellow, (a0)+; Yellow
	
	; Colour abilities
	move.b  #0x1, GlobalTimeDiv
	
	; Fireflies
	move.w  #0x0, FireflyPickupCount
	
	; World
	move.w  #Gravity, LevelGravity
	move.w  #0x0, TimeOfDayShiftDelay
	
	; Camera
	move.l  #0x0, WorldScrollX
	move.l  #0x0, WorldScrollY
	move.l  #CameraStartPosWorldX, CameraWorldPosX
	move.l  #CameraStartPosWorldY, CameraWorldPosY
	move.l  #Player1, CameraTargetGameObj
	
	; Set BG colour (level palette 1, colour 0)
	move.w #(PaletteId_World0<<4), d0
	VDPSETREG 7, d0
	
	rts

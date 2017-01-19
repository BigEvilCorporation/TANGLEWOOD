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
	
	; Clear Plane B
	jsr    VDP_ClearMapPlaneB
	
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
	
	; Stop BGM
	IFND DEBUG
	jsr    Echo_StopBGM
	ENDIF
	
	; Flush VDP job/DMA queues
	jsr    VDP_JobQueue_ExecuteAll
	jsr	   VDP_DMAQueue_ExecuteAll
	
	; Reset Echo
	IFND DEBUG
	lea echo_instruments, a0
	jsr Echo_Init
	ENDIF
	
	; Reset ropes
	move.l  #EntityArray_Rope, NextFreeRopeSegment
	
	; Reset pushables
	LIST_CLEAR PushingObjs
	
	rts

LevelLoad:
	
	; Fetch current level addr
	move.l (CurrentLevel), a1

	jsr LevelLoadPalettes
	jsr LevelLoadArt
	jsr LevelAddSFX

	; Load level game objects
	move.l (CurrentLevel), a1
	move.l Level_LoadGameObjsRoutine(a1), a2
	jsr    (a2)
	
	; Init level
	move.l Level_InitRoutine(a1), a2
	jsr    (a2)
	
	jsr LevelLoadGameObjArt
	
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
	lsr.l  #0x8, d1					; To screen space
	PIXELS2TILES d1					; To tiles
	move.w d1, MapStreamLoadedRow

	; Set initial streamed row
	move.l WorldScrollY, d0
	lsr.l  #0x8, d0					; To screen space
	PIXELS2TILES d0					; To tiles
	add.w  #MapStreamHeight, d0		; + 1 screen, ready to stream it in (starting from bottom, streaming rows upwards)
	move.w d0, MapStreamLoadedCol
    
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
	
LevelLoadGameObjArt:

	; SpriteObjLoad:
	; a0 --- GameObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite dimentions bits array address
	; a3 --- Multi-sprite tiles per subsprite array address
	; d0 (l) VRAM address
	; d1 (w) Num tiles
	; d2 (w) Sprite W/H dimentions
	; d3 (b) Palette ID

	; Player 1
	;move.l #Player1, a0
	;lea    spritesheets_nymn, a1
	;lea    sprite_nymn_subsprite_dimensions_bits, a2
	;lea    sprite_nymn_subsprite_pos_offsets, a3
	;lea    sprite_nymn_numtiles_per_subsprite, a4
	;move.l #Tiles_Player1VRAM, d0
	;move.l #sprite_nymn_size_t, d1
	;move.b #sprite_nymn_size_subsprites, d2
	;move.w #sprite_nymn_widthheight_subsprites, d3
	;move.b #PaletteID_Player, d4
	;jsr    SpriteObjLoad
	
	; Player 2
	;move.l #Player2, a0
	;lea    spritesheets_echo, a1
	;lea    sprite_echo_subsprite_dimensions_bits, a2
	;lea    sprite_echo_subsprite_pos_offsets, a3
	;lea    sprite_echo_numtiles_per_subsprite, a4
	;move.l #Tiles_Player2VRAM, d0
	;move.l #sprite_echo_size_t, d1
	;move.b #sprite_echo_size_subsprites, d2
	;move.w #sprite_echo_widthheight_subsprites, d3
	;move.b #PaletteID_Player, d4
	;jsr    SpriteObjLoad

	; Monsters
	IFND DEBUG
	cmp.w  #0x0, EntityCount_Monster
	beq    @NoMonsters
	move.l #EntityArray_Monster, a0
	lea    spritesheets_djakk, a1
	lea    sprite_djakk_subsprite_dimensions_bits, a2
	lea    sprite_djakk_subsprite_pos_offsets, a3
	lea    sprite_djakk_numtiles_per_subsprite, a4
	move.l #tiles_monsterVRAM, d0
	move.l #sprite_djakk_size_t, d1
	move.b #sprite_djakk_size_subsprites, d2
	move.w #sprite_djakk_widthheight_subsprites, d3
	move.b #PaletteID_Monster, d4
	jsr    SpriteObjLoad
	@NoMonsters:
    ENDIF
	
	; Djrakes
	IFND DEBUG
	cmp.w  #0x0, EntityCount_Djrake
	beq    @NoDjrakes
	move.l #EntityArray_Djrake, a0
	lea    spritesheets_djrake, a1
	lea    sprite_djrake_subsprite_dimensions_bits, a2
	lea    sprite_djrake_subsprite_pos_offsets, a3
	lea    sprite_djrake_numtiles_per_subsprite, a4
	;move.l #tiles_DjrakeVRAM, d0
	move.l #tiles_MonsterVRAM, d0
	move.l #sprite_djrake_size_t, d1
	move.b #sprite_djrake_size_subsprites, d2
	move.w #sprite_djrake_widthheight_subsprites, d3
	;move.b #PaletteID_Djrake, d4
	move.b #PaletteID_Monster, d4
	jsr    SpriteObjLoad
	@NoDjrakes:
    ENDIF
	
	; Fuzzls
	cmp.w  #0x0, EntityCount_Fuzzl
	beq    @NoFuzzls
	move.l #EntityArray_Fuzzl, a0
	move.w (EntityCount_Fuzzl), d1
	sub.w  #0x1, d1
	move.l #Tiles_FuzzlVRAM, d0
	@FuzzlLoop:
	movem.l d0-d1/a0, -(sp)
	
	lea    spritesheets_fuzzl, a1
	lea    sprite_fuzzl_subsprite_dimensions_bits, a2
	lea    sprite_fuzzl_subsprite_pos_offsets, a3
	lea    sprite_fuzzl_numtiles_per_subsprite, a4
	move.l #sprite_fuzzl_size_t, d1
	move.b #sprite_fuzzl_size_subsprites, d2
	move.w #sprite_fuzzl_widthheight_subsprites, d3
	move.b #PaletteID_Fuzzl, d4
	jsr    SpriteObjLoad
	
	movem.l (sp)+, d0-d1/a0
	add.l  #Fuzzl_Struct_Size, a0
	add.l  #sprite_fuzzl_size_b, d0
	dbra   d1, @FuzzlLoop
	@NoFuzzls:
    
	; Leaves
	cmp.w  #0x0, EntityCount_Leaf
	beq    @NoLeaves
	move.l #EntityArray_Leaf, a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf1VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad
    
	move.l #EntityArray_Leaf+Leaf_Struct_Size, a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf2VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad
    
	move.l #EntityArray_Leaf+(Leaf_Struct_Size*2), a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf3VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad
	@NoLeaves:

	; Boulders
	IFND DEBUG
	cmp.w  #0x0, EntityCount_Boulder
	beq    @NoBoulders
	move.l #EntityArray_Boulder, a0
	move.w (EntityCount_Boulder), d1
	sub.w  #0x1, d1
	move.l #Tiles_BoulderVRAM, d0
	@BoulderLoop:
	movem.l d0-d1/a0, -(sp)
	
	lea    spritesheets_boulder, a1
	lea    sprite_boulder_subsprite_dimensions_bits, a2
	lea    sprite_boulder_subsprite_pos_offsets, a3
	lea    sprite_boulder_numtiles_per_subsprite, a4
	move.l #sprite_boulder_size_t, d1
	move.b #sprite_boulder_size_subsprites, d2
	move.w #sprite_boulder_widthheight_subsprites, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad
	
	movem.l (sp)+, d0-d1/a0
	add.l  #Boulder_Struct_Size, a0
	add.l  #sprite_boulder_size_b, d0
	dbra   d1, @BoulderLoop
	@NoBoulders:
	ENDIF
	
	; Plants
	IFND DEBUG
	cmp.w  #0x0, EntityCount_BouncePlant
	beq    @NoPlants
	move.l #EntityArray_BouncePlant, a0
	move.w (EntityCount_BouncePlant), d1
	sub.w  #0x1, d1
	move.l #Tiles_PlantVRAM, d0
	@PlantLoop:
	movem.l d0-d1/a0, -(sp)
	
	lea    spritesheets_mushroom, a1
	lea    sprite_mushroom_subsprite_dimensions_bits, a2
	lea    sprite_mushroom_subsprite_pos_offsets, a3
	lea    sprite_mushroom_numtiles_per_subsprite, a4
	move.l #sprite_mushroom_size_t, d1
	move.b #sprite_mushroom_size_subsprites, d2
	move.w #sprite_mushroom_widthheight_subsprites, d3
	move.b #PaletteId_World0, d4
	jsr    SpriteObjLoad
	
	movem.l (sp)+, d0-d1/a0
	add.l  #BouncePlant_Struct_Size, a0
	add.l  #sprite_mushroom_size_b, d0
	dbra   d1, @PlantLoop
	@NoPlants:
	ENDIF
	
	; Lifts
	;IFND DEBUG
	;cmp.w  #0x0, EntityCount_Lift
	;beq    @NoLifts
	;move.l #EntityArray_Lift, a0
	;move.w (EntityCount_Lift), d1
	;sub.w  #0x1, d1
	;move.l #Tiles_LiftVRAM, d0
	;@LiftLoop:
	;movem.l d0-d1/a0, -(sp)
	;
	;jsr    LiftLoadDefaultSprite
	;
	;movem.l (sp)+, d0-d1/a0
	;add.l  #Lift_Struct_Size, a0
	;add.l  #sprite_Lift_size_b, d0
	;dbra   d1, @LiftLoop
	;@NoLifts:
	;ENDIF
	
	; Ropes
	;IFND DEBUG
	;cmp.w  #0x0, EntityCount_Rope
	;beq    @NoRopes
	;move.l #EntityArray_Rope, a0
	;move.w (EntityCount_Rope), d1
	;sub.w  #0x1, d1
	;move.l #Tiles_RopeVRAM, d0
	;@RopeLoop:
	;movem.l d0-d1/a0, -(sp)
	;
	;jsr    RopeSegmentLoadDefaultSprite
	;
	;movem.l (sp)+, d0-d1/a0
	;add.l  #RopeSegment_Struct_Size, a0
	;add.l  #sprite_Rope_size_b, d0
	;dbra   d1, @RopeLoop
	;@NoRopes:
	;ENDIF
	
	; Fireflies
	IFND DEBUG
	cmp.w  #0x0, EntityCount_Firefly
	beq    @NoFireflies
	move.l #EntityArray_Firefly, a0
	move.w (EntityCount_Firefly), d1
	sub.w  #0x1, d1
	move.l #Tiles_fireflyVRAM, d0
	@FireflyLoop:
	movem.l d0-d1/a0, -(sp)
	
	lea    spritesheets_firefly, a1
	lea    sprite_firefly_subsprite_dimensions_bits, a2
	lea    sprite_firefly_subsprite_pos_offsets, a3
	lea    sprite_firefly_numtiles_per_subsprite, a4
	move.l #sprite_firefly_size_t, d1
	move.b #sprite_firefly_size_subsprites, d2
	move.w #sprite_firefly_widthheight_subsprites, d3
	move.b #PaletteId_Fuzzl, d4
	jsr    SpriteObjLoad
    
	movem.l (sp)+, d0-d1/a0
	add.l  #Firefly_Struct_Size, a0
	add.l  #sprite_firefly_size_b, d0
	dbra   d1, @FireflyLoop
	@NoFireflies:
	ENDIF
	
	rts
	
LevelAddSFX:

	IFND DEBUG
	
	lea    AmbientSFX, a2
	move.l #SFX_Chirp1, (a2)+
	move.l #SFX_Chirp2, (a2)+
	move.l #SFX_Chirp3, (a2)+
	move.l #SFX_Chirp4, (a2)+
	
	ENDIF

	rts
	
LevelReset:

	; System
	move.w  #0x0, Gamepad1PrevState
	move.w  #0x0, Gamepad2PrevState
	
	; Time of Day
	;move.l  #palette_lvl1_day,		TimeOfDayPalettes+(size_long*0)	; Day
	;move.l  #palette_lvl1_dusk,		TimeOfDayPalettes+(size_long*1)	; Dusk
	;move.l  #palette_lvl1_night,	TimeOfDayPalettes+(size_long*2)	; Night
	;move.l  #palette_lvl1_dawn,		TimeOfDayPalettes+(size_long*3)	; Dawn
	;move.b  #TimeOfDay_Day, TimeOfDay
	
	move.l  #palette_lvl1_day,		TimeOfDayPalettes+(size_long*0)	; Day
	move.l  #palette_lvl1_dawn,		TimeOfDayPalettes+(size_long*1)	; Dusk
	move.l  #palette_lvl1_night,	TimeOfDayPalettes+(size_long*2)	; Night
	move.l  #palette_lvl1_dawn,		TimeOfDayPalettes+(size_long*3)	; Dawn
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

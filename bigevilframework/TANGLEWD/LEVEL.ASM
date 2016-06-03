;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level asset loading, scrolling, state, collision
;==============================================================

LevelLoad:
	
	; Fetch current level addr
	move.l (CurrentLevel), a1
	
	; Reset sprites
	move.w #0x0, next_sprite_index
	
	; Reset entities
	jsr    EntityClearUpdateList
	jsr    EntityClearRenderList
	
	; Reset entity counts
	move.w #0x0, EntityCount_Players
	move.w #0x0, EntityCount_Monsters
	move.w #0x0, EntityCount_Fireflies
	move.w #0x0, EntityCount_Flues
	move.w #0x0, EntityCount_Fuzzls
	move.w #0x0, EntityCount_Leaves
	move.w #0x0, EntityCount_Nests
	move.w #0x0, EntityCount_Boulders
	move.w #0x0, EntityCount_Triggers
	move.w #0x0, EntityCount_WaterBodies

	IFD DEBUG
	
	;TODO: Move to LoadGlobalData
	lea Pal_Nymn_Red, a0
	move.l #PaletteId_Player, d0
	jsr LoadPalette
	
	lea palette_monster_incave, a0
	move.l #PaletteId_Monster, d0
	jsr LoadPalette
    
	lea palette_fuzzl_yellow, a0
	move.l #PaletteId_Fuzzl, d0
	jsr LoadPalette
	
	ELSE
	
	; Load all black palettes
	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	jsr    LoadPalette
	
	lea    palette_fade_black, a0
	move.l #PaletteId_Player, d0
	jsr    LoadPalette
	
	lea    palette_fade_black, a0
	move.l #PaletteId_Monster, d0
	jsr    LoadPalette
	
	lea    palette_fade_black, a0
	move.l #PaletteId_Fuzzl, d0
	jsr    LoadPalette
	
	; Set palettes for fade up
	move.w #LevelFadeUpSpeed, d1
	move.b #0x0, d2
	move.b #0xF, d3
	
	lea    Pal_Nymn_Red, a0
	;lea    palette_nymn, a0
	move.l #PaletteId_Player, d0
	jsr    PaletteLerpStart
	
	lea    palette_monster_eyes, a0
	move.l #PaletteId_Monster, d0
	jsr    PaletteLerpStart
	
	lea    palette_fuzzl_yellow, a0
	move.l #PaletteId_Fuzzl, d0
	jsr    PaletteLerpStart
	
	ENDIF
	
	jsr LevelLoadPalettes
	jsr LevelLoadArt
	
	jsr LevelCreatePlayers
	jsr LevelCreateGameObjects
	
	; Init level
	move.l (CurrentLevel), a1
	move.l Level_InitRoutine(a1), a2
	jsr    (a2)
	
	jsr LevelLoadGameObjArt
	
	; Stream map last, needs player pos
	; TODO: In Gameplay_Enter() to account for checkpoints, move somewhere more appropriate
	; jsr LevelPreStreamMap
	
	; Flush VDP queue
	jsr VDPQueue_ExecuteAll
	
	rts

LevelLoadPalettes:
	; a1 --- Level struct address
	
	clr.l  d6
	clr.l  d7
	move.b Level_NumPalettes(a1), d7	; Num palettes to d6
	subi.b #0x1, d7						; -1 for loop
	move.l #PaletteId_World0, d0		; First level palette offset to d0
	@PaletteLoop:
	PUSHL  d0							; Backup palette index
	move.l Level_PalettesAddr(a1), a0	; First palette addr to a0
	
	IFD DEBUG
	
	jsr    LoadPalette			
	
	ELSE
	
	move.w #LevelFadeUpSpeed, d1
	move.b #0x0, d2
	move.b #0xF, d3
	jsr    PaletteLerpStart
	
	ENDIF
	
	POPL   d0							; Restore palette index
	addi.w #0x1, d0					
	dbra d7, @PaletteLoop				; LoadPalette leaves incremented palette address in a0
	
	rts
	
LevelLoadArt:

	clr.l d1

	move.l Level_TilesAddr(a1), a0 ; Move tiles address to a0
	move.w Level_NumTiles(a1), d1  ; Move number of tiles to d1
	move.l #LevelMapVRAM, d0       ; Move VRAM dest address to d0
	jsr    LoadTiles
	
	rts
	
LevelPreStreamMap:
	
	PUSHL  a0
	PUSHL  a1
	
	;==============================================================

	; Initial camera pos X to world scroll
	move.l #Player1, a0
	move.l Entity_WorldPosX(a0), d0
	sub.l  #(SpritePlaneBorderX*SubpixelsPerPixel), d0	; To camera space
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0		; Centre on player
	jsr    CameraPosToWorldScrollX
	move.l d0, WorldScrollX
	move.l d0, d1
    
	; Set inital scroll X
	neg.l  d0						; To camera space
	lsr.l  #0x8, d0					; To screen space
	jsr    SetHScrollPlaneA
    
	; Set initial streamed column
	lsr.l  #0x8, d1					; To screen space
	divu   #0x8, d1					; To tiles
	move.w d1, MapStreamLoadedCol
    
	;==============================================================
    
	; Initial camera pos Y to world scroll
	move.l #Player1, a0
	move.l Entity_WorldPosY(a0), d0
	sub.l  #(SpritePlaneBorderY*SubpixelsPerPixel), d0	; To camera space
	add.l  #(Player1Height*SubpixelsPerPixel)*2, d0		; Centre on player
	jsr    CameraPosToWorldScrollY
	move.l d0, WorldScrollY
    
	; Set initial scroll Y
	lsr.l  #0x8, d0					; To screen space
	jsr    SetVScrollPlaneA
    
	; Set initial streamed row (starting from bottom, streaming rows upwards)
	divu   #0x8, d0					; To tiles
	add.w  #MapStreamHeight, d0
	move.w d0, MapStreamLoadedrow
    
	;==============================================================
    
	; Stream rows, bottom to top
	add.l  #(MapStreamHeight*SubpixelsPerPixel), WorldScrollY
    
	move.l #(MapStreamHeight-1), d2
	@Loop:
	sub.l  #(8*SubpixelsPerPixel), WorldScrollY
	move.l d2, -(sp)
	jsr    StreamRows
	move.l (sp)+, d2
	dbra   d2, @Loop

	;==============================================================
	
	;Load BG map
	lea    map_lvl1_bg, a0
	move.l #map_lvl1_bg_size_w, d0
	move.l #0x0, d1
	move.l #Tiles_LevelMap_ID, d2
	move.l #PaletteId_World0, d3
	;jsr    LoadMapPlaneB
	
	POPL   a1
	POPL   a0
	
	rts
	
LevelLoadGameObjArt:

	; GameObjLoadMultiSprite:
	; a0 --- GameObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite dimentions bits array address
	; a3 --- Multi-sprite tiles per subsprite array address
	; d0 (l) VRAM address
	; d1 (w) Num tiles
	; d2 (w) Sprite W/H dimentions
	; d3 (b) Palette ID

	; Player 1
	cmp.w  #0x0, EntityCount_Players
	beq    @NoPlayers
	move.l #EntityArray_Players, a0
	lea    spritesheets_nymn, a1
	lea    sprite_nymn_subsprite_dimensions_bits, a2
	lea    sprite_nymn_subsprite_pos_offsets, a3
	lea    sprite_nymn_numtiles_per_subsprite, a4
	move.l #Tiles_Player1VRAM, d0
	move.l #sprite_nymn_size_t, d1
	move.b #sprite_nymn_size_subsprites, d2
	move.w #sprite_nymn_widthheight_subsprites, d3
	move.b #PaletteID_Player, d4
	jsr    GameObjLoadMultiSprite
	@NoPlayers:

	; Monsters
	cmp.w  #0x0, EntityCount_Monsters
	beq    @NoMonsters
	move.l #EntityArray_Monsters, a0
	lea    spritesheets_djakk, a1
	lea    sprite_djakk_subsprite_dimensions_bits, a2
	lea    sprite_djakk_subsprite_pos_offsets, a3
	lea    sprite_djakk_numtiles_per_subsprite, a4
	move.l #tiles_monsterVRAM, d0
	move.l #sprite_djakk_size_t, d1
	move.b #sprite_djakk_size_subsprites, d2
	move.w #sprite_djakk_widthheight_subsprites, d3
	move.b #PaletteID_Monster, d4
	jsr    GameObjLoadMultiSprite
	@NoMonsters:
    
	; Fuzzls
	cmp.w  #0x0, EntityCount_Fuzzls
	beq    @NoFuzzls
	move.l #EntityArray_Fuzzls, a0
	lea    Tiles_Fuzzl, a1
	lea    sprite_fuzzl_subsprite_dimensions_bits, a2
	lea    sprite_fuzzl_subsprite_pos_offsets, a3
	lea    sprite_fuzzl_numtiles_per_subsprite, a4
	move.l #Tiles_Fuzzl1VRAM, d0
	move.l #tiles_fuzzl_size_t, d1
	move.b #sprite_fuzzl_size_subsprites, d2
	move.w #sprite_fuzzl_dimensions, d3
	move.b #PaletteID_Fuzzl, d4
	jsr    GameObjLoadMultiSprite
	
	;move.l #EntityArray_Fuzzls+Fuzzl_Struct_Size, a0
	;lea    Tiles_Fuzzl, a1
	;lea    sprite_fuzzl_subsprite_dimensions_bits, a2
	;lea    sprite_fuzzl_subsprite_pos_offsets, a3
	;lea    sprite_fuzzl_numtiles_per_subsprite, a4
	;move.l #Tiles_Fuzzl2VRAM, d0
	;move.l #tiles_fuzzl_size_t, d1
	;move.b #sprite_fuzzl_size_subsprites, d2
	;move.w #sprite_fuzzl_dimensions, d3
	;move.b #PaletteID_Fuzzl, d4
	;jsr    GameObjLoadMultiSprite
	@NoFuzzls:
    
	; Leaves
	cmp.w  #0x0, EntityCount_Leaves
	beq    @NoLeaves
	move.l #EntityArray_Leaves, a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf1VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
    
	move.l #EntityArray_Leaves+Leaf_Struct_Size, a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf2VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
    
	move.l #EntityArray_Leaves+(Leaf_Struct_Size*2), a0
	lea    tiles_leaf, a1
	lea    sprite_leaf_subsprite_dimensions_bits, a2
	lea    sprite_leaf_subsprite_pos_offsets, a3
	lea    sprite_leaf_numtiles_per_subsprite, a4
	move.l #Tiles_Leaf3VRAM, d0
	move.l #tiles_leaf_size_t, d1
	move.b #sprite_leaf_size_subsprites, d2
	move.w #sprite_leaf_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
	@NoLeaves:
    
	; Boulders
	cmp.w  #0x0, EntityCount_Boulders
	beq    @NoBoulders
	move.l #EntityArray_Boulders, a0
	lea    Tiles_Boulder, a1
	lea    sprite_Boulder_subsprite_dimensions_bits, a2
	lea    sprite_Boulder_subsprite_pos_offsets, a3
	lea    sprite_Boulder_numtiles_per_subsprite, a4
	move.l #Tiles_BoulderVRAM, d0
	move.l #tiles_Boulder_size_t, d1
	move.b #sprite_Boulder_size_subsprites, d2
	move.w #sprite_Boulder_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
	@NoBoulders:
	
	; Fireflies
	cmp.w  #0x0, EntityCount_Fireflies
	beq    @NoFireflies
	move.l #EntityArray_Fireflies, a0
	move.w (EntityCount_Fireflies), d1
	sub.w  #0x1, d1
	move.l #Tiles_fireflyVRAM, d0
	@FireflyLoop:
	movem.l d0-d1/a0, -(sp)
	
	lea    tiles_firefly, a1
	lea    sprite_firefly_subsprite_dimensions_bits, a2
	lea    sprite_firefly_subsprite_pos_offsets, a3
	lea    sprite_firefly_numtiles_per_subsprite, a4
	move.l #tiles_firefly_size_t, d1
	move.b #sprite_firefly_size_subsprites, d2
	move.w #sprite_firefly_dimensions, d3
	move.b #PaletteId_Fuzzl, d4
	jsr    GameObjLoadMultiSprite
    
	movem.l (sp)+, d0-d1/a0
	add.l  #Firefly_Struct_Size, a0
	add.l  #tiles_firefly_size_b, d0
	dbra   d1, @FireflyLoop
	@NoFireflies:
	
	rts
	
LevelCreateGameObjects:

	; Moved to respective Level#_Init()
	
	rts

LevelCreatePlayers:

	; Player 1
	move.l #Player1, a0
	jsr     PlayerInit

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
	move.w #0x8700, d1
	move.b #PaletteId_World0, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	rts

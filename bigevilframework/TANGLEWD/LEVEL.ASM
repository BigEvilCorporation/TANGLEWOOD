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

	;TODO: Move to LoadGlobalData
	lea Pal_Nymn_Yellow, a0
	move.l #PaletteId_Player, d0
	jsr LoadPalette
	
	lea palette_monster, a0
	move.l #PaletteId_Monster, d0
	jsr LoadPalette

	lea palette_fuzzl_red, a0
	move.l #PaletteId_Fuzzl, d0
	jsr LoadPalette
	
	jsr LevelLoadPalettes
	jsr LevelLoadArt
	jsr LevelLoadMap
	
	jsr LevelCreatePlayers
	jsr LevelCreateGameObjects
	jsr LevelLoadGameObjArt
	
	; Flush VDP queue
	jsr VDPQueue_ExecuteAll
	
	rts

LevelLoadPalettes:
	; a1 --- Level struct address
	
	clr.l  d6
	move.b Level_NumPalettes(a1), d6; Num palettes to d6
	subi.b #0x1, d6					; -1 for loop
	move.l #PaletteId_World0, d0	; First level palette offset to d0
	@PaletteLoop:
	move.b d0, -(sp)				; Backup palette index
	move.l Level_PalettesAddr(a1), a0	; First palette addr to a0
	jsr LoadPalette			
	move.b (sp)+, d0				; Restore palette index
	addi.w #0x1, d0					
	dbra d6, @PaletteLoop			; LoadPalette leaves incremented palette address in a0
	
	rts
	
LevelLoadArt:

	clr.l d1

	move.l Level_TilesAddr(a1), a0 ; Move tiles address to a0
	move.w Level_NumTiles(a1), d1  ; Move number of tiles to d1
	move.l #LevelMapVRAM, d0       ; Move VRAM dest address to d0
	jsr    LoadTiles
	
	rts
	
LevelLoadMap:
	
	;==============================================================

	; Initial camera pos X to world scroll
	move.l #Player1StartPosWorldX, d0
	sub.l  #(SpritePlaneBorderX*SubpixelsPerPixel), d0	; To camera space
	add.l  #(Player1Width*SubpixelsPerPixel)/2, d0		; Centre on player
	jsr    CameraPosToWorldScrollX
	move.l d0, WorldScrollX

	; Set inital scroll X
	neg.l  d0						; To camera space
	lsr.l  #0x8, d0					; To screen space
	jsr    SetHScrollPlaneA

	; Set initial streamed column
	divu   #0x8, d0
	move.w d0, MapStreamLoadedCol

	;==============================================================

	; Initial camera pos Y to world scroll
	move.l #Player1StartPosWorldY, d0
	sub.l  #(SpritePlaneBorderY*SubpixelsPerPixel), d0	; To camera space
	add.l  #(Player1Height*SubpixelsPerPixel)/2, d0		; Centre on player
	jsr    CameraPosToWorldScrollY
	move.l d0, WorldScrollY

	; Set initial scroll Y
	lsr.l  #0x8, d0					; To screen space
	jsr    SetVScrollPlaneA

	; Set initial streamed row (starting from bottom, streaming rows upwards)
	divu   #0x8, d0
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
	move.l #EntityArray_Players, a0
	lea    Tiles_Nymn, a1
	lea    sprite_nymn_subsprite_dimensions_bits, a2
	lea    sprite_nymn_subsprite_pos_offsets, a3
	lea    sprite_nymn_numtiles_per_subsprite, a4
	move.l #Tiles_Player1VRAM, d0
	move.l #tiles_nymn_size_t, d1
	move.b #sprite_nymn_size_subsprites, d2
	move.w #sprite_nymn_dimensions, d3
	move.b #PaletteID_Player, d4
	jsr    GameObjLoadMultiSprite

	; Monsters
	;move.l #EntityArray_Monsters, a0
	;lea    tiles_monster, a1
	;lea    sprite_monster_subsprite_dimensions_bits, a2
	;lea    sprite_monster_subsprite_pos_offsets, a3
	;lea    sprite_monster_numtiles_per_subsprite, a4
	;move.l #tiles_monsterVRAM, d0
	;move.l #tiles_monster_size_t, d1
	;move.b #sprite_monster_size_subsprites, d2
	;move.w #sprite_monster_dimensions, d3
	;move.b #PaletteID_Monster, d4
	;jsr    GameObjLoadMultiSprite
    
	; Fuzzls
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
	
	move.l #EntityArray_Fuzzls+Fuzzl_Struct_Size, a0
	lea    Tiles_Fuzzl, a1
	lea    sprite_fuzzl_subsprite_dimensions_bits, a2
	lea    sprite_fuzzl_subsprite_pos_offsets, a3
	lea    sprite_fuzzl_numtiles_per_subsprite, a4
	move.l #Tiles_Fuzzl2VRAM, d0
	move.l #tiles_fuzzl_size_t, d1
	move.b #sprite_fuzzl_size_subsprites, d2
	move.w #sprite_fuzzl_dimensions, d3
	move.b #PaletteID_Fuzzl, d4
	jsr    GameObjLoadMultiSprite
    
	; Leaves
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
    
	; Vines
	move.w #gameobjects_obstacle_count, d0
	cmp.w  #0x0, d0
	beq    @NoObstacles
	move.l #EntityArray_Obstacles, a0
	lea    tiles_vines, a1
	lea    sprite_vines_subsprite_dimensions_bits, a2
	lea    sprite_vines_subsprite_pos_offsets, a3
	lea    sprite_vines_numtiles_per_subsprite, a4
	move.l #Tiles_VinesVRAM, d0
	move.l #tiles_vines_size_t, d1
	move.b #sprite_vines_size_subsprites, d2
	move.w #sprite_vines_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
    
	move.l #EntityArray_Obstacles+Obstacle_Struct_Size, a0
	lea    tiles_vines, a1
	lea    sprite_vines_subsprite_dimensions_bits, a2
	lea    sprite_vines_subsprite_pos_offsets, a3
	lea    sprite_vines_numtiles_per_subsprite, a4
	move.l #Tiles_VinesVRAM, d0
	move.l #tiles_vines_size_t, d1
	move.b #sprite_vines_size_subsprites, d2
	move.w #sprite_vines_dimensions, d3
	move.b #PaletteId_World0, d4
	jsr    GameObjLoadMultiSprite
	@NoObstacles:
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	move.l #gameobjects_Firefly_count-1, d1
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
	
	rts
	
LevelCreateGameObjects:

	; Monsters
	;move.l #EntityArray_Monsters, a0
	;jsr    LoadGameObjects_Monster
    
	; Fuzzls
	move.l #EntityArray_Fuzzls, a0
	jsr    LoadGameObjects_Fuzzl
	
	; Fuzzl nests
	move.l #EntityArray_Nests, a0
	jsr    LoadGameObjects_Nest
    
	; Flues
	move.l #EntityArray_Flues, a0
	jsr    LoadGameObjects_Flue
    
	; Obstacles
	move.l #EntityArray_Obstacles, a0
	jsr    LoadGameObjects_Obstacle
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	jsr    LoadGameObjects_Firefly
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
    
	; Fuzzl colours
	; TODO: Per-instance params
	lea    EntityArray_Fuzzls, a0
	move.b #ColourRed, Fuzzl_Colour(a0)
	
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
	
	; Switching palettes
	lea     SwitchingPalettesP1, a0
	move.l  #Pal_Nymn_Yellow, (a0)+; Drained
	move.l  #Pal_Nymn_Red, (a0)+	; Orange
	move.l  #Pal_Nymn_Red, (a0)+	; Red
	move.l  #Pal_Nymn_Blue, (a0)+	; Blue
	move.l  #Pal_Nymn_Green, (a0)+	; Green
	move.l  #Pal_Nymn_Yellow, (a0)+; Yellow
	
	; World
	move.w  #Gravity, LevelGravity
	move.w  #0x0, TimeOfDayShiftDelay
	
	; Camera
	move.l  #0x0, WorldScrollX
	move.l  #0x0, WorldScrollY
	move.l  #CameraStartPosWorldX, CameraWorldPosX
	move.l  #CameraStartPosWorldY, CameraWorldPosY
	move.l  #Player1, CameraTargetGameObjX
	move.l  #Player1, CameraTargetGameObjY
	
	; Set BG colour (level palette 1, colour 0)
	move.w #0x8700, d1
	move.b #PaletteId_World0, d1
	lsl.b  #0x4, d1
	move.w d1, vdp_control
	
	rts

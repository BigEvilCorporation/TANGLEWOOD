;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level.asm - Level asset loading, scrolling, state, collision
;==============================================================

LevelLoad:
	
	; Fetch current level addr
	move.l (CurrentLevel), a1
	
	jsr LevelLoadPalettes
	jsr LevelLoadArt
	jsr LevelLoadMap
	jsr LevelCreateGameObjects
	jsr LevelCreatePlayers
	jsr LevelLoadGameObjArt
	
	rts

LevelLoadPalettes:
	; a1 --- Level struct address
	
	; World palettes
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

	; Player palette
	lea Pal_Sonic_Yellow, a0
	move.l #PaletteId_Player, d0
	jsr LoadPalette
	
	rts
	
LevelLoadArt:

	lea      tiles_lvl1, a0       ; Move tiles address to a0
	move.l   #LevelMapVRAM, d0      ; Move VRAM dest address to d0
	move.l   #tiles_lvl1_size_t, d1 ; Move number of tiles to d1
	jsr      LoadTiles
	
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
	lea    Tiles_Sonic, a1
	lea    sprite_sonic_subsprite_dimensions_bits, a2
	lea    sprite_sonic_subsprite_dimensions, a3
	lea    sprite_sonic_numtiles_per_subsprite, a4
	move.l #Tiles_Player1VRAM, d0
	move.l #tiles_sonic_size_t, d1
	move.b #sprite_sonic_size_subsprites, d2
	move.w #sprite_sonic_dimensions, d3
	move.b #PaletteID_Player, d4
	jsr    GameObjLoadMultiSprite
	
	rts

LevelCreatePlayers:

	; Player 1
	move.l #Player1, a0
	jsr     PlayerInit

	rts
	
LevelCreateGameObjects:
	
	rts

LevelUpdateGameObjs:

	move.l (CurrentLevel), a1
	
	; TODO: This needs a macro, or vtable or something
	
	; Characters
	move.l #EntityArray_Players, a0
	move.l #Player_MaxEntities-1, d0
	@CharLoop:
	move.l d0, -(sp)
	jsr PlayerUpdate
	move.l (sp)+, d0
	add.l  #Player_Struct_Size, a0
	dbra   d0, @CharLoop
	
	rts
	
LevelDrawGameObjs:

	; Players
	move.l #EntityArray_Players, a0
	move.l #Player_MaxEntities-1, d0
	@CharLoop:
	move.l d0, -(sp)
	jsr PlayerDraw
	move.l (sp)+, d0
	add.l  #Player_Struct_Size, a0
	dbra   d0, @CharLoop
	
	rts
	
LevelReset:

	; System
	move.w  #0x0, Gamepad1PrevState
	move.w  #0x0, Gamepad2PrevState

	; World
	move.w  #Gravity, LevelGravity
	
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

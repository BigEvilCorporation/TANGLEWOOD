;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   utils.asm - Misc routines that don't belong in framework/gamelib
;==============================================================

; Teleports player to a new position and updates streaming
PlayerTeleport:
	; d0 (w) X pos
	; d1 (w) Y pos

	move.l Player1, a2
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)
	jsr    LevelPreStreamMap

	rts

; Reset mid-game (return to main menu)
GameSoftReset:

	move.l #0x0, LastActivatedCheckpoint
	move.w #0x0, LastSaveVersion

	move.b #GamestateReset_ResetAudio, d0
	jsr    GameStateReset
	
	move.l #InitialLevel, CurrentLevel
	lea    GameStateMainMenu, a0
	jsr    GameStateEnter

	rts

;==============================================================
; Camera peek
;==============================================================
CameraHandlePeekUp:
	; d0-d1 - gamepad input, don't touch

	move.w CameraPeekInputTimer, d3
	beq    @Handle

	subq.w #0x1, d3
	move.w d3, CameraPeekInputTimer

	bra    @End

	@Handle:

	jsr    CAM_PeekUp

	@End:

	rts

CameraHandlePeekDown:
	; d0-d1 - gamepad input, don't touch

	move.w CameraPeekInputTimer, d3
	beq    @Handle

	subq.w #0x1, d3
	move.w d3, CameraPeekInputTimer

	bra    @End

	@Handle:

	jsr    CAM_PeekDown

	@End:

	rts

CameraHandlePeekOff:
	move.w #CameraPeekInputHoldTime, CameraPeekInputTimer
	jsr    CAM_PeekReturn
	rts

;==============================================================
; Palettes
;==============================================================

; Sets a palette to load using game colour system
; The "game safe" way to load scene palettes
GameScenePaletteLoad:
	; a0 --- Palette
	; d0 (b) Slot

	PUSHM  d0-d1/a0-a1

	; Set dirty mask
	andi.l #0xFF, d0
	bset   d0, (DirtyPalettesMask)

	; Set address
	move.l d0, d1
	lsl.l  #0x2, d1
	lea    ScenePaletteAddrs, a1
	add.l  d1, a1
	move.l a0, (a1)

	; Set current DMA palette
	mulu   #size_palette_b, d0
	PUSHM  d0/a0
	lea    CurrentPalettes, a1
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0
	POPM   d0/a0

	; Set scene palette
	lea    ScenePalettes, a1
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	POPM   d0-d1/a0-a1

	rts

; Sets a temp palette to load using game colour system
; The "game safe" way to load temporary palettes
GameTempPaletteLoad:
	; a0 --- Palette
	; d0 (b) Slot

	PUSHM  d0/a0-a1

	; Set dirty mask
	andi.l #0xFF, d0
	bset   d0, (DirtyPalettesMask)

	; Set current DMA palette
	mulu   #size_palette_b, d0
	lea    CurrentPalettes, a1
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	POPM   d0/a0-a1

	rts

; Lerps a palette using game colour system
; The "game safe" way to fade scene palettes
GameScenePaletteFadeTo:
	; a0 --- Palette
	; d0 (b) Slot
	; d1 (b) Speed
	; d2 (b) Ticks per update
	; d3 (b) Start colour idx
	; d4 (b) End colour idx

	PUSHM  d0-d5/a0-a1

	andi.l #0xFF, d0

	; Set address
	move.l d0, d5
	lsl.l  #0x2, d5
	lea    ScenePaletteAddrs, a1
	add.l  d5, a1
	move.l a0, (a1)

	; Set scene palette
	PUSHM  d0-d4/a0-a1
	lea    ScenePalettes, a1
	mulu   #size_palette_b, d0
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0
	POPM   d0-d4/a0-a1

	; Fade up
	jsr    PAL_LerpStart

	POPM   d0-d5/a0-a1

	rts

; Lerps a temp palette using game colour system
; The "game safe" way to fade temporary palettes
GameTempPaletteFadeTo:
	; a0 --- Palette
	; d0 (b) Slot
	; d1 (b) Speed
	; d2 (b) Ticks per update
	; d3 (b) Start colour idx
	; d4 (b) End colour idx

	PUSHM  d0-d4/a0-a1

	andi.l #0xFF, d0

	; Fade up
	jsr    PAL_LerpStart

	POPM   d0-d4/a0-a1

	rts

PhysicsPointUnderwater:
	; d0 (w) X pos
	; d1 (w) Y pos
	; d2 (w) Water pool left bounds
	; d3 (w) Water pool right bounds
	; d4 (w) Water surface

	;==============================================================
	
	; Check all water bodies
	move.l (EntityPoolStart_WaterBody), a2
	move.w (EntityCount_WaterBody), d6
	beq    @NoWaterBodies
	subq.w #0x1, d6
	@BodyLoop:
	
	; Check player vs. box
	PUSHMW d0-d4
	move.w d0, d3
	swap   d3
	move.w d1, d3
	ENTITY_GETBOUNDS d1,d2,d5,a2
	jsr    PHYS_TestPointInsideBox
	move.b d0, d5
	POPMW  d0-d4
	tst.b  d5
	beq    @NoIntersect
	
	; Set in water
	move.w Entity_WorldPosX(a2), d2	; Left bounds
	move.w d2, d3
	add.w  Entity_Width(a2), d3		; Right bounds
	move.w Entity_WorldPosY(a2), d4	; Water level

	bra    @Found
	
	@NoIntersect:
	
	; Next body
	lea  WaterBody_Struct_Size(a2), a2
	dbra d6, @BodyLoop
	
	@NoWaterBodies:

	;==============================================================

	; Check all water pools
	move.l (EntityPoolStart_Pool), a2
	move.w (EntityCount_Pool), d6
	beq    @NoPools
	subq.w #0x1, d6
	@PoolLoop:
	
	; Check player vs. box
	PUSHMW d0-d4
	move.w d0, d3
	swap   d3
	move.w d1, d3
	ENTITY_GETBOUNDS d1,d2,d5,a2
	lea    Pool_Platform(a2), a3	; Use pool platform Y as bounds top
	move.w Platform_PosY(a3), d1
	jsr    PHYS_TestPointInsideBox
	move.b d0, d5
	POPMW  d0-d4
	tst.b  d5
	beq    @NoIntersectPool
	
	; Set in water
	move.w Entity_WorldPosX(a2), d2	; Left bounds
	move.w d2, d3
	add.w  Entity_Width(a2), d3		; Right bounds
	move.w Platform_PosY(a3), d4	; Water level

	bra    @Found
	
	@NoIntersectPool:
	
	; Next body
	lea  Pool_Struct_Size(a2), a2
	dbra d6, @PoolLoop
	
	@NoPools:

	;==============================================================

	; Check all water terrain
	subi.w #vdp_sprite_border_x, d0
	subi.w #vdp_sprite_border_y, d1

	move.w Level_NumTerrainDescs(a1), d6	; Get 'special' terrain count
	beq    @NoWaterTerrain
	subq.w  #0x1, d6						; -1 for loop counter
	move.l Level_TerrainDescAddr(a1), a2	; Get 'special' terrain desc table

	@TerrainLp:
	
	; Get terrain spline start/end/flags
	move.l (a2)+, d4
	move.l (a2)+, d5
	move.w (a2)+, d6

	; Check water type
	andi.w #col_tile_flag_water, d6
	beq    @NextTerrain

	; Get X
	swap   d4
	swap   d5

	; Check if within X bounds
	cmp.w  d0, d4
	bge    @NextTerrain
	cmp.w  d0, d5
	ble    @NextTerrain

	; Check under surface
	swap   d4
	cmp.w  d4, d1
	blt    @NextTerrain

	; Set in water
	move.w d4, d2					; Water level
	swap   d4
	move.w d4, d2					; Left bounds
	move.w d5, d3					; Right bounds
	addi.w #vdp_sprite_border_y, d4	; Water level
	PUSHL  d6
	jsr    PlayerEnteredWater
	POPL   d6

	bra    @Found
	
	@NextTerrain:
	dbra   d6, @TerrainLp
	bra    @NoWaterTerrain

	@NoWaterTerrain:

	clr.w  d2
	clr.w  d3
	clr.w  d4

	;==============================================================

	@Found:

	rts

;==============================================================
; Cutscene routines
;==============================================================

CutsceneStep_GameScenePaletteLoad:
	; a0 --- Cutscene
	; a2 --- Palette
	; d0 ---- Slot
	; d0 (b) OUT: Step running

	PUSHL  a0
	move.l a2, a0
	jsr    GameScenePaletteLoad
	POPL   a0

	move.b #0x0, d0

	rts

CutsceneStep_GameScenePaletteFadeTo:
	; a0 --- Cutscene
	; a2 --- Palette
	; d0 ---- Slot
	; d1 (b) Speed
	; d2 (b) Ticks per update
	; d3 (b) Start colour idx
	; d4 (b) End colour idx
	; d0 (b) OUT: Step running

	PUSHL  a0
	move.l a2, a0
	jsr    GameScenePaletteFadeTo
	POPL   a0

	move.b #0x0, d0

	rts

CutsceneStep_GameTempPaletteFadeTo:
	; a0 --- Cutscene
	; a2 --- Palette
	; d0 ---- Slot
	; d1 (b) Speed
	; d2 (b) Ticks per update
	; d3 (b) Start colour idx
	; d4 (b) End colour idx
	; d0 (b) OUT: Step running

	PUSHL  a0
	move.l a2, a0
	jsr    GameTempPaletteFadeTo
	POPL   a0

	move.b #0x0, d0

	rts

CutsceneStep_StartLetterbox:
	; a0 --- Cutscene

	; Load letterbox HINT
	jsr    RasterEffectLetterboxInit

	; Begin
	move.b #1, raster_letterbox_speed

	move.b #0x0, d0

	rts

CutsceneStep_EndLetterbox:
	; a0 --- Cutscene

	; Shrink letterbox
	move.b #-1, raster_letterbox_speed

	; Wait until finished
	tst.b  raster_letterbox_top
	bne    @Animating

	; Restore underwater HINT
	jsr    RasterEffectUnderwaterInit

	move.b #0x0, d0
	bra    @End

	@Animating:
	move.b #0x1, d0

	@Finshed:
	

	@End:

	rts

CUTSCENE_GAME_PALETTE_LOAD: macro palette,slotId
	move.l \palette, a2
	move.b \slotId, d0
	CUTSCENE_RUN_STEP CutsceneStep_GameScenePaletteLoad
	endm

CUTSCENE_GAME_PALETTE_FADETO: macro palette,slotId,speed,ticksperupdate,startidx,endidx
	move.l \palette, a2
	move.b \slotId, d0
	move.b \speed, d1
	move.b \ticksperupdate, d2
	move.b \startidx, d3
	move.b \endidx, d4
	CUTSCENE_RUN_STEP CutsceneStep_GameScenePaletteFadeTo
	endm

CUTSCENE_TEMP_PALETTE_FADETO: macro palette,slotId,speed,ticksperupdate,startidx,endidx
	move.l \palette, a2
	move.b \slotId, d0
	move.b \speed, d1
	move.b \ticksperupdate, d2
	move.b \startidx, d3
	move.b \endidx, d4
	CUTSCENE_RUN_STEP CutsceneStep_GameTempPaletteFadeTo
	endm

CUTSCENE_START_LETTERBOX: macro
	CUTSCENE_RUN_STEP CutsceneStep_StartLetterbox
	endm

CUTSCENE_END_LETTERBOX: macro
	CUTSCENE_RUN_STEP CutsceneStep_EndLetterbox
	endm

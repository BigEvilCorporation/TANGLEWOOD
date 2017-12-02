;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   utils.asm - Misc routines that don't belong in framework/gamelib
;==============================================================

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
	PUSHL  d0
	lea    CurrentPalettes, a1
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0
	POPL   a0

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

CUTSCENE_GAME_PALETTE_LOAD: macro palette,slotId
	move.l \palette, a2
	move.b \slotId, d0
	CUTSCENE_RUN_STEP CutsceneStep_GameScenePaletteLoad
	endm
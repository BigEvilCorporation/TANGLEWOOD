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
; The "game safe" way to load palettes
GAME_PALETTE_LOAD: macro palette,slot
	PUSHM  d0/a0-a1
	bset   \slot, (DirtyPalettesMask)
	lea    \palette, a1
	lea    CurrentPalettes+(size_palette_b*\slot), a0
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0
	POPM   d0/a0-a1
	endm

GamePaletteLoad:
	; a0 --- Palette
	; d0 (b) Slot

	PUSHM  d0/a0-a1
	andi.l #0xFF, d0
	bset   d0, (DirtyPalettesMask)
	mulu   #size_palette_b, d0
	lea    CurrentPalettes, a1
	add.l  d0, a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0
	POPM   d0/a0-a1

	rts

; Reads a game palette for backup
; The "game safe" way to read oalettes
GAME_COPY_PALETTE: macro address,slot
	PUSHM  d0/a0-a1
	lea    \address, a0
	lea    CurrentPalettes+(size_palette_b*\slot), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0
	POPM   d0/a0-a1
	endm

;==============================================================
; Cutscene routines
;==============================================================

CutsceneStep_GamePaletteLoad:
	; a0 --- Cutscene
	; a2 --- Palette
	; d0 ---- Slot
	; d0 (b) OUT: Step running

	PUSHL  a0
	move.l a2, a0
	jsr    GamePaletteLoad
	POPL   a0

	move.b #0x0, d0

	rts

CUTSCENE_GAME_PALETTE_LOAD: macro palette,slotId
	move.l \palette, a2
	move.b \slotId, d0
	CUTSCENE_RUN_STEP CutsceneStep_GamePaletteLoad
	endm
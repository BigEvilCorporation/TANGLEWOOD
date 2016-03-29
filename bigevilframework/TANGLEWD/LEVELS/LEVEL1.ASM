;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level1.asm - Level 1 - Herlequin Forest Act 1
;==============================================================	

Lvl1_HarlequinForest:

	dc.l tiles_lvl1				; Tileset
	dc.l map_lvl1				; Map
	dc.l collisiontiles_lvl1	; Collision tileset
	dc.l collisionmap_lvl1		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.l Lvl1_Init				; Init routine
	dc.l Lvl1_Update			; Update routine
	dc.l Lvl2_HarlequinForestAct2	; Next level
	dc.w Gravity				; Default gravity
	dc.w map_lvl1_width			; Map width
	dc.w map_lvl1_height		; Map height
	dc.w tiles_lvl1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
Lvl1_Init:

	; Disable end level trigger box
	
	rts
	
Lvl1_Update:

	; Check if monster has been killed
	
	; Enable end level trigger box

	rts
	
Lvl1_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level2.asm - Level 2 - Harlequin Forest Act 2
;==============================================================	

Lvl2_HarlequinForestAct2:

	dc.l tiles_lvl2				; Tileset
	dc.l map_lvl2				; Map
	dc.l collisiontiles_lvl2	; Collision tileset
	dc.l collisionmap_lvl2		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.l Lvl2_Init				; Init routine
	dc.l Lvl2_Update			; Update routine
	dc.l 0x0					; Next level
	dc.w Gravity				; Default gravity
	dc.w map_lvl2_width			; Map width
	dc.w map_lvl2_height		; Map height
	dc.w tiles_lvl2_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
Lvl2_Init:
	rts
	
Lvl2_Update:
	rts
	
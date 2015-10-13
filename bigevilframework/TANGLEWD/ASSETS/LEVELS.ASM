;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	IFD DEBUG

	; ************************************
	; Test levels
	; ************************************
Tst1_Forest:

	dc.l tiles_tst1				; Tileset
	dc.l map_tst1				; Map
	dc.l collisiontiles_tst1	; Collision tileset
	dc.l collisionmap_tst1		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.w map_tst1_width			; Map width
	dc.w map_tst1_height		; Map height
	dc.w tiles_tst1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even

	ELSE

	; ************************************
	; Game levels
	; ************************************
Lvl1_Tanglewood:

	dc.l tiles_lvl1				; Tileset
	dc.l map_lvl1				; Map
	dc.l collisiontiles_lvl1	; Collision tileset
	dc.l collisionmap_lvl1		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.w map_lvl1_width			; Map width
	dc.w map_lvl1_height		; Map height
	dc.w tiles_lvl1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even

	ENDIF

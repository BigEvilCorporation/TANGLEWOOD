;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

Lvl1_GreenHill:

	dc.l tiles_lvl1				; Tileset
	dc.l map_lvl1				; Map
	dc.l collisiontiles_lvl1	; Collision tileset
	dc.l collisionmap_lvl1		; Collision map
	dc.l palette_lvl1			; Palettes
	dc.w map_lvl1_width			; Map width
	dc.w map_lvl1_height		; Map height
	dc.w tiles_lvl1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
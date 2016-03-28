;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   testlvl1.asm - Mechanics test level
;==============================================================	

Tst1_Forest:

	dc.l tiles_tst1				; Tileset
	dc.l map_tst1				; Map
	dc.l collisiontiles_tst1	; Collision tileset
	dc.l collisionmap_tst1		; Collision map
	dc.l palette_lvl1_dawn		; Palettes
	dc.l Tst1_Init				; Init routine
	dc.l Tst1_Update			; Update routine
	dc.l 0x0					; Next level
	dc.w Gravity				; Default gravity
	dc.w map_tst1_width			; Map width
	dc.w map_tst1_height		; Map height
	dc.w tiles_tst1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
Tst1_Init:
	rts
	
Tst1_Update:
	rts
	
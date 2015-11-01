tiles_monster:

	; Use first sprite set as size template
	include 'assets\sprites\takk_0.asm'

tiles_monster_end                                       ;  Tiles end address

tiles_monster_size_b: equ (tiles_monster_end-tiles_monster)   ; Sprite size in bytes
tiles_monster_size_t: equ (tiles_monster_size_b/32)        ; Sprite size in tiles

sprite_monster_dimensions:		equ 0x0403	; 4x3 subsprites
sprite_monster_size_subsprites:	equ 12		; Sprite size in 4x4 subsprites

	; Include the remaining sprite sets

	; Bite anim
	include 'assets\sprites\takk_1.asm'

; Subsprite dimensions
sprite_monster_subsprite_dimensions:
	dc.w 0x0404
	dc.w 0x0404
	dc.w 0x0402
	dc.w 0x0404
	dc.w 0x0404
	dc.w 0x0402
	dc.w 0x0404
	dc.w 0x0404
	dc.w 0x0402
	dc.w 0x0404
	dc.w 0x0404
	dc.w 0x0402
	even

; Subsprite dimension bits (for sprite descs)
sprite_monster_subsprite_dimensions_bits:
	dc.b (%00001111)
	dc.b (%00001111)
	dc.b (%00001101)
	dc.b (%00001111)
	dc.b (%00001111)
	dc.b (%00001101)
	dc.b (%00001111)
	dc.b (%00001111)
	dc.b (%00001101)
	dc.b (%00001111)
	dc.b (%00001111)
	dc.b (%00001101)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_monster_numtiles_per_subsprite:
	dc.b 0x10
	dc.b 0x10
	dc.b 0x08
	dc.b 0x10
	dc.b 0x10
	dc.b 0x08
	dc.b 0x10
	dc.b 0x10
	dc.b 0x08
	dc.b 0x10
	dc.b 0x10
	dc.b 0x08
	even

tiles_monster:

	; Use first sprite set as size template
	include 'assets\sprites\takk\walk_0.asm'

tiles_monster_end                                       ;  Tiles end address

tiles_monster_size_b: equ (tiles_monster_end-tiles_monster)   ; Sprite size in bytes
tiles_monster_size_t: equ (tiles_monster_size_b/32)        ; Sprite size in tiles

sprite_monster_dimensions:		equ 0x0403	; 4x3 subsprites
sprite_monster_size_subsprites:	equ 12		; Sprite size in 4x4 subsprites

	; Include the remaining sprite sets
	
	; Walk
	include 'assets\sprites\takk\walk_1.asm'
	include 'assets\sprites\takk\walk_2.asm'
	include 'assets\sprites\takk\walk_3.asm'
	include 'assets\sprites\takk\walk_4.asm'
	include 'assets\sprites\takk\walk_5.asm'
	include 'assets\sprites\takk\walk_6.asm'
	include 'assets\sprites\takk\walk_7.asm'

	; Bite anim
	include 'assets\sprites\takk\bite_0.asm'

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped (bb)
sprite_monster_subsprite_pos_offsets:
	dc.w 0x0000, 0x6000
	dc.w 0x0020, 0x6020
	dc.w 0x0040, 0x6040
	dc.w 0x2000, 0x4000
	dc.w 0x2020, 0x4020
	dc.w 0x2040, 0x4040
	dc.w 0x4000, 0x2000
	dc.w 0x4020, 0x2020
	dc.w 0x4040, 0x2040
	dc.w 0x6000, 0x0000
	dc.w 0x6020, 0x0020
	dc.w 0x6040, 0x0040
	even
	
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

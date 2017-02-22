; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_stone:

sprite_stone_size_b		equ 0x0080	; Size in bytes
sprite_stone_size_t		equ 0x0004	; Size in tiles
sprite_stone_size_subsprites		equ 0x0001	; Size in subsprites
sprite_stone_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_stone_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_stone_subsprite_dimensions_bits:
	dc.b 0x5
	Even

; Num tiles per subsprite (for sprite descs)
sprite_stone_numtiles_per_subsprite:
	dc.b 0x04
	Even


spritesheet_stone_stone_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_stone_stone_size_b		equ 0x80	; Size in bytes
spritesheet_stone_stone_size_w		equ 0x40	; Size in words
spritesheet_stone_stone_size_l		equ 0x20	; Size in longwords
spritesheet_stone_stone_size_t		equ 0x04	; Size in tiles


spritesheets_stone:

spritesheet_stone_stone:

	dc.l	0x00000000
	dc.l	0x0000008E
	dc.l	0x000008EE
	dc.l	0x00008488
	dc.l	0x00884444
	dc.l	0x08444844
	dc.l	0x08444444
	dc.l	0x42244444

	dc.l	0x42222224
	dc.l	0x22222222
	dc.l	0x02222222
	dc.l	0x00222222
	dc.l	0x00122121
	dc.l	0x00012221
	dc.l	0x00001111
	dc.l	0x00000BBB

	dc.l	0xEE800000
	dc.l	0xEEE80000
	dc.l	0xEE8E8000
	dc.l	0xEE884400
	dc.l	0xEE888440
	dc.l	0x8E488840
	dc.l	0x4E484840
	dc.l	0x4E488884

	dc.l	0x48488884
	dc.l	0x22228884
	dc.l	0x21112244
	dc.l	0x11111121
	dc.l	0x1B1111B0
	dc.l	0x111BBB00
	dc.l	0xBBBB0000
	dc.l	0xBB000000




; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_mushroom:

sprite_mushroom_size_b		equ 0x0120	; Size in bytes
sprite_mushroom_size_t		equ 0x0009	; Size in tiles
sprite_mushroom_size_subsprites		equ 0x0001	; Size in subsprites
sprite_mushroom_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_mushroom_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_mushroom_subsprite_dimensions_bits:
	dc.b 0xA
	Even

; Num tiles per subsprite (for sprite descs)
sprite_mushroom_numtiles_per_subsprite:
	dc.b 0x09
	Even


spritesheet_mushroom_orient180_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_mushroom_orient180_size_b		equ 0x120	; Size in bytes
spritesheet_mushroom_orient180_size_w		equ 0x90	; Size in words
spritesheet_mushroom_orient180_size_l		equ 0x48	; Size in longwords
spritesheet_mushroom_orient180_size_t		equ 0x09	; Size in tiles


spritesheet_mushroom_orient225_frameoffset	equ 0x01	; Offset to first frame in sprite sheet
spritesheet_mushroom_orient225_size_b		equ 0x120	; Size in bytes
spritesheet_mushroom_orient225_size_w		equ 0x90	; Size in words
spritesheet_mushroom_orient225_size_l		equ 0x48	; Size in longwords
spritesheet_mushroom_orient225_size_t		equ 0x09	; Size in tiles


spritesheet_mushroom_orient270_frameoffset	equ 0x02	; Offset to first frame in sprite sheet
spritesheet_mushroom_orient270_size_b		equ 0x120	; Size in bytes
spritesheet_mushroom_orient270_size_w		equ 0x90	; Size in words
spritesheet_mushroom_orient270_size_l		equ 0x48	; Size in longwords
spritesheet_mushroom_orient270_size_t		equ 0x09	; Size in tiles


spritesheets_mushroom:

spritesheet_mushroom_orient180:

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000002
	dc.l	0x00000212
	dc.l	0x00001226
	dc.l	0x00012266
	dc.l	0x00126266
	dc.l	0x00122266
	dc.l	0x00122266

	dc.l	0x00126626
	dc.l	0x00126622
	dc.l	0x00012222
	dc.l	0x00011221
	dc.l	0x00000111
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x12222221
	dc.l	0x666AA666
	dc.l	0x6AAAAAA6
	dc.l	0x6EEAAAEE
	dc.l	0xEEEEAAEE
	dc.l	0xEEEEAAA6
	dc.l	0x6EE66666

	dc.l	0x66666666
	dc.l	0x22666622
	dc.l	0x22222222
	dc.l	0x11111111
	dc.l	0x14488441
	dc.l	0x18EE8841
	dc.l	0x48EE8844
	dc.l	0x04488440

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x20000000
	dc.l	0x21200000
	dc.l	0x62210000
	dc.l	0x66221000
	dc.l	0x66622100
	dc.l	0x66622100
	dc.l	0x66622100

	dc.l	0x6AA22100
	dc.l	0x2AA22100
	dc.l	0x22221000
	dc.l	0x12211000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000



spritesheet_mushroom_orient225:

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00011112

	dc.l	0x01126222
	dc.l	0x01222222
	dc.l	0x16622666
	dc.l	0x1662266E
	dc.l	0x122266EE
	dc.l	0x122266EE
	dc.l	0x1112266E
	dc.l	0x01112266

	dc.l	0x00111266
	dc.l	0x00141126
	dc.l	0x018E8112
	dc.l	0x44EEE811
	dc.l	0x048E8841
	dc.l	0x08888411
	dc.l	0x00484100
	dc.l	0x00004000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x11200000
	dc.l	0x66210000
	dc.l	0x6A622000
	dc.l	0xEAAA2200
	dc.l	0xEEAAA210
	dc.l	0xEEAAA622
	dc.l	0xEAAAAA61
	dc.l	0x6AAEEA61

	dc.l	0x66AEEA62
	dc.l	0x66666662
	dc.l	0x66666662
	dc.l	0x22666622
	dc.l	0x122AA622
	dc.l	0x122AA221
	dc.l	0x12222211
	dc.l	0x01111100

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x10000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000



spritesheet_mushroom_orient270:

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000011
	dc.l	0x00001122
	dc.l	0x00001266
	dc.l	0x00012266
	dc.l	0x00012222
	dc.l	0x00011226

	dc.l	0x04111226
	dc.l	0x48841226
	dc.l	0x4EE41266
	dc.l	0x8EE81266
	dc.l	0x88881266
	dc.l	0x48841266
	dc.l	0x44441226
	dc.l	0x04111226

	dc.l	0x00011226
	dc.l	0x000122AA
	dc.l	0x000122AA
	dc.l	0x00001222
	dc.l	0x00001122
	dc.l	0x00000011
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x11100000
	dc.l	0x22210000
	dc.l	0x22621000
	dc.l	0x22222200
	dc.l	0x66662100
	dc.l	0x66666220

	dc.l	0x6EE66610
	dc.l	0xEEEEA620
	dc.l	0xEEEEA620
	dc.l	0x6EEAAA20
	dc.l	0x6AAAAA20
	dc.l	0x6AAAA620
	dc.l	0x6AEEA620
	dc.l	0x66EE6610

	dc.l	0x66666220
	dc.l	0x66662100
	dc.l	0x66622200
	dc.l	0x22221000
	dc.l	0x22210000
	dc.l	0x11100000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000




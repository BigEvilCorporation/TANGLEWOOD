; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_leaf:

sprite_leaf_size_b		equ 0x0020	; Size in bytes
sprite_leaf_size_t		equ 0x0001	; Size in tiles
sprite_leaf_size_subsprites		equ 0x0001	; Size in subsprites
sprite_leaf_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_leaf_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_leaf_subsprite_dimensions_bits:
	dc.b 0x0
	Even

; Num tiles per subsprite (for sprite descs)
sprite_leaf_numtiles_per_subsprite:
	dc.b 0x01
	Even


spritesheet_leaf_red_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_leaf_red_size_b		equ 0xA0	; Size in bytes
spritesheet_leaf_red_size_w		equ 0x50	; Size in words
spritesheet_leaf_red_size_l		equ 0x28	; Size in longwords
spritesheet_leaf_red_size_t		equ 0x05	; Size in tiles


spritesheet_leaf_green_frameoffset	equ 0x05	; Offset to first frame in sprite sheet
spritesheet_leaf_green_size_b		equ 0xA0	; Size in bytes
spritesheet_leaf_green_size_w		equ 0x50	; Size in words
spritesheet_leaf_green_size_l		equ 0x28	; Size in longwords
spritesheet_leaf_green_size_t		equ 0x05	; Size in tiles


spritesheets_leaf:

spritesheet_leaf_red:

	dc.l	0x00330000
	dc.l	0x03B82000
	dc.l	0x3B882000
	dc.l	0x38382000
	dc.l	0x02832000
	dc.l	0x00232000
	dc.l	0x00022000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x03300000
	dc.l	0x03B30000
	dc.l	0x038B3000
	dc.l	0x0288B300
	dc.l	0x00238830
	dc.l	0x00022220

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x02330000
	dc.l	0x02882220
	dc.l	0x00228332
	dc.l	0x00002222

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00002220
	dc.l	0x0003B882
	dc.l	0x003B8832
	dc.l	0x02B83220
	dc.l	0x02822000
	dc.l	0x02200000

	dc.l	0x00003300
	dc.l	0x00028B30
	dc.l	0x000288B3
	dc.l	0x00028383
	dc.l	0x00023820
	dc.l	0x00023200
	dc.l	0x00022000
	dc.l	0x00000000



spritesheet_leaf_green:

	dc.l	0x00660000
	dc.l	0x06FC4000
	dc.l	0x6FCC4000
	dc.l	0x6C6C4000
	dc.l	0x04C64000
	dc.l	0x00464000
	dc.l	0x00044000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x06600000
	dc.l	0x06F60000
	dc.l	0x06CF6000
	dc.l	0x04CCF600
	dc.l	0x0046CC60
	dc.l	0x00044440

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x04660000
	dc.l	0x04CC4440
	dc.l	0x0044C664
	dc.l	0x00004444

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00004440
	dc.l	0x0006FCC4
	dc.l	0x006FCC64
	dc.l	0x04FC6440
	dc.l	0x04C44000
	dc.l	0x04400000

	dc.l	0x00006600
	dc.l	0x0004CF60
	dc.l	0x0004CCF6
	dc.l	0x0004C6C6
	dc.l	0x00046C40
	dc.l	0x00046400
	dc.l	0x00044000
	dc.l	0x00000000




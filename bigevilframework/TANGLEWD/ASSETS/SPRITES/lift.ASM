; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_lift:

sprite_lift_size_b		equ 0x0200	; Size in bytes
sprite_lift_size_t		equ 0x0010	; Size in tiles
sprite_lift_size_subsprites		equ 0x0001	; Size in subsprites
sprite_lift_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_lift_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_lift_subsprite_dimensions_bits:
	dc.b 0xF
	Even

; Num tiles per subsprite (for sprite descs)
sprite_lift_numtiles_per_subsprite:
	dc.b 0x10
	Even


spritesheet_lift_lift_platform_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_lift_lift_platform_size_b		equ 0x200	; Size in bytes
spritesheet_lift_lift_platform_size_w		equ 0x100	; Size in words
spritesheet_lift_lift_platform_size_l		equ 0x80	; Size in longwords
spritesheet_lift_lift_platform_size_t		equ 0x10	; Size in tiles


spritesheets_lift:

spritesheet_lift_lift_platform:

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
	dc.l	0x00000003
	dc.l	0x00000040
	dc.l	0x00000400
	dc.l	0x00000400
	dc.l	0x00003000

	dc.l	0x00040000
	dc.l	0x00400000
	dc.l	0x02222222
	dc.l	0x23333333
	dc.l	0x23333443
	dc.l	0x23333333
	dc.l	0x23334444
	dc.l	0x02222222

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
	dc.l	0x00000004
	dc.l	0x00000040
	dc.l	0x00000300
	dc.l	0x00004000
	dc.l	0x00030000

	dc.l	0x00400000
	dc.l	0x03000000
	dc.l	0x40000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x22222222
	dc.l	0x33333333
	dc.l	0x33334433
	dc.l	0x33333333
	dc.l	0x33333334
	dc.l	0x22222222

	dc.l	0x30000000
	dc.l	0x40000000
	dc.l	0x40000000
	dc.l	0x40000000
	dc.l	0x30000000
	dc.l	0x40000000
	dc.l	0x30000000
	dc.l	0x40000000

	dc.l	0x40000000
	dc.l	0x40000000
	dc.l	0x40000000
	dc.l	0x03000000
	dc.l	0x00400000
	dc.l	0x00034000
	dc.l	0x00000400
	dc.l	0x00000030

	dc.l	0x00000004
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x22222222
	dc.l	0x33333333
	dc.l	0x33333334
	dc.l	0x33333333
	dc.l	0x44444333
	dc.l	0x22222222

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
	dc.l	0x30000000
	dc.l	0x40000000
	dc.l	0x03000000
	dc.l	0x00400000
	dc.l	0x00030000
	dc.l	0x00040000
	dc.l	0x00003000

	dc.l	0x00000400
	dc.l	0x00000300
	dc.l	0x22222220
	dc.l	0x33333332
	dc.l	0x44433332
	dc.l	0x44444332
	dc.l	0x33333442
	dc.l	0x22222220




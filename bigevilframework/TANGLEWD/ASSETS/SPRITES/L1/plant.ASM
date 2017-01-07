; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_plant:

sprite_plant_size_b		equ 0x00C0	; Size in bytes
sprite_plant_size_t		equ 0x0006	; Size in tiles
sprite_plant_size_subsprites		equ 0x0001	; Size in subsprites
sprite_plant_widthheight_subsprites		equ 0x0101	; Width/height (bb) in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped X (bb)
sprite_plant_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000
	Even

; Subsprite dimension bits (for sprite descs)
sprite_plant_subsprite_dimensions_bits:
	dc.b 0x9
	Even

; Num tiles per subsprite (for sprite descs)
sprite_plant_numtiles_per_subsprite:
	dc.b 0x06
	Even


spritesheet_plant_active_frameoffset	equ 0x00	; Offset to first frame in sprite sheet
spritesheet_plant_active_size_b		equ 0xC0	; Size in bytes
spritesheet_plant_active_size_w		equ 0x60	; Size in words
spritesheet_plant_active_size_l		equ 0x30	; Size in longwords
spritesheet_plant_active_size_t		equ 0x06	; Size in tiles


spritesheet_plant_idle_frameoffset	equ 0x01	; Offset to first frame in sprite sheet
spritesheet_plant_idle_size_b		equ 0xC0	; Size in bytes
spritesheet_plant_idle_size_w		equ 0x60	; Size in words
spritesheet_plant_idle_size_l		equ 0x30	; Size in longwords
spritesheet_plant_idle_size_t		equ 0x06	; Size in tiles


spritesheets_plant:

spritesheet_plant_active:

	dc.l	0x00000000
	dc.l	0x00000044
	dc.l	0x00044445
	dc.l	0x04445555
	dc.l	0x45555455
	dc.l	0x45554445
	dc.l	0x44555455
	dc.l	0x04455555

	dc.l	0x00444444
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x44444444
	dc.l	0x45555554
	dc.l	0x55555555
	dc.l	0x54455555
	dc.l	0x55555555
	dc.l	0x55555455
	dc.l	0x55555555
	dc.l	0x55555555

	dc.l	0x44555544
	dc.l	0x04455540
	dc.l	0x04555540
	dc.l	0x44455440
	dc.l	0x45555400
	dc.l	0x45554400
	dc.l	0x44554440
	dc.l	0x04555540

	dc.l	0x00000000
	dc.l	0x44000000
	dc.l	0x54440000
	dc.l	0x55544440
	dc.l	0x55555544
	dc.l	0x54555554
	dc.l	0x44554544
	dc.l	0x55555440

	dc.l	0x44444400
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000



spritesheet_plant_idle:

	dc.l	0x00000000
	dc.l	0x00000044
	dc.l	0x00044445
	dc.l	0x04445555
	dc.l	0x45555455
	dc.l	0x45554445
	dc.l	0x44555455
	dc.l	0x04455555

	dc.l	0x00444444
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x44444444
	dc.l	0x45555554
	dc.l	0x55555555
	dc.l	0x54455555
	dc.l	0x55555555
	dc.l	0x55555455
	dc.l	0x55555555
	dc.l	0x55555555

	dc.l	0x44555544
	dc.l	0x04455540
	dc.l	0x04555540
	dc.l	0x44455440
	dc.l	0x45555400
	dc.l	0x45554400
	dc.l	0x44554440
	dc.l	0x04555540

	dc.l	0x00000000
	dc.l	0x44000000
	dc.l	0x54440000
	dc.l	0x55544440
	dc.l	0x55555544
	dc.l	0x54555554
	dc.l	0x44554544
	dc.l	0x55555440

	dc.l	0x44444400
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000




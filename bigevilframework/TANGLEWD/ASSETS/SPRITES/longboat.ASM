; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


actor_longboat:

actor_longboat_VRAM_size_b		equ 0x80	; VRAM size to alloc (size of largest frame, bytes)
actor_longboat_sheet_segment_width		equ 0x20	; Max width of largest frame in pixels
actor_longboat_sheet_segment_height		equ 0x08	; Max height of largest frame in pixels


actor_longboat_sheet_segment_frametable:
actor_longboat_sheet_segment_frame_0_header:
	dc.w 0x0004	; Frame size (tiles)
	dc.w actor_longboat_sheet_segment_frame_0_size_subsprites	; Frame size (subsprites)
	dc.l actor_longboat_sheet_segment_frame_0
	dc.l actor_longboat_sheet_segment_frame_0_subsprite_dimensions_bits
	dc.l actor_longboat_sheet_segment_frame_0_subsprite_pos_offsets

actor_longboat_sheet_segment_frame_0_size_b		equ 0x0080	; Size in bytes
actor_longboat_sheet_segment_frame_0_size_t		equ 0x0004	; Size in tiles
actor_longboat_sheet_segment_frame_0_size_subsprites		equ 0x0001	; Size in subsprites

; Subsprite offsets from 0,0 (in pixels) - unflipped (ww) and flipped X (ww)
actor_longboat_sheet_segment_frame_0_subsprite_pos_offsets:
	dc.l 0x00000000, 0x00000000
	Even

; Subsprite dimension bits (for sprite descs)
actor_longboat_sheet_segment_frame_0_subsprite_dimensions_bits:
	dc.b 0xC
	Even


spritesheets_longboat:

spritesheet_longboat_segment:

actor_longboat_sheet_segment_frame_0:
	dc.l	0xCCFCFCFF
	dc.l	0x44848844
	dc.l	0x88CC8CC8
	dc.l	0x88CFC8FF
	dc.l	0x484CFFC8
	dc.l	0x48884CFF
	dc.l	0x04488888
	dc.l	0x00000448

	dc.l	0xFFCFCFC8
	dc.l	0x44884844
	dc.l	0x8CC8CC84
	dc.l	0xFF8CFC84
	dc.l	0x8CFFC484
	dc.l	0xFFC48884
	dc.l	0x88888440
	dc.l	0x84400000

	dc.l	0xCCFCFCFF
	dc.l	0x44848844
	dc.l	0x88CC8CC8
	dc.l	0x88CFC8FF
	dc.l	0x484CFFC8
	dc.l	0x48884CFF
	dc.l	0x04488888
	dc.l	0x00000448

	dc.l	0xFFCFCFC8
	dc.l	0x44884844
	dc.l	0x8CC8CC84
	dc.l	0xFF8CFC84
	dc.l	0x8CFFC484
	dc.l	0xFFC48884
	dc.l	0x88888440
	dc.l	0x84400000





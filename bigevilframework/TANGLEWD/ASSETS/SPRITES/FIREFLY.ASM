
; Use first sprite set as size template
tiles_firefly:

* --------------------------
	dc.l	0x00000000
	dc.l	0x00500000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

* --------------------------

tiles_firefly_end
tiles_firefly_size_b	equ (tiles_firefly_end-tiles_firefly)	; Size in bytes
tiles_firefly_size_w	equ (tiles_firefly_size_b/2)	; Size in words
tiles_firefly_size_l	equ (tiles_firefly_size_b/4)	; Size in longwords
tiles_firefly_size_t	equ (tiles_firefly_size_b/32)	; Size in tiles

sprite_firefly_dimensions: 		equ 0x0101	; 1x1 subsprites
sprite_firefly_size_subsprites:	equ 1		; Sprite size in 4x4 subsprites

; Remaining tiles

* --------------------------
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x05000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x50000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x50000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x50000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x05000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00500000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00050000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00050000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00050000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00005000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00005000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000500
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000005
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000050
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000500

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00005000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00005000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00005000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00050000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00050000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

	dc.l	0x00000000
	dc.l	0x00500000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000
	dc.l	0x00000000

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped (bb)
sprite_firefly_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000	; Top-left     (1x1)
	even
	
; Subsprite dimensions
sprite_firefly_subsprite_dimensions:
	dc.w 0x0101	; Top-left     (1x1)
	even

; Subsprite dimension bits (for sprite descs)
sprite_firefly_subsprite_dimensions_bits:
	dc.b (%00000000)	; Top-left     (1x1)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_firefly_numtiles_per_subsprite:
	dc.b 0x1	; Top-left
	even

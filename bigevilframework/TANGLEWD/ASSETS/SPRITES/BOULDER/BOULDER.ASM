; Use first sprite set as size template
tiles_boulder:

	include 'assets\sprites\boulder\boulder0.asm'

tiles_boulder_end
tiles_boulder_size_b	equ (tiles_boulder_end-tiles_boulder)	; Size in bytes
tiles_boulder_size_w	equ (tiles_boulder_size_b/2)	; Size in words
tiles_boulder_size_l	equ (tiles_boulder_size_b/4)	; Size in longwords
tiles_boulder_size_t	equ (tiles_boulder_size_b/32)	; Size in tiles

sprite_boulder_dimensions: 		equ 0x0202	; 2x2 subsprites
sprite_boulder_size_subsprites:	equ 4		; Sprite size in 4x4 subsprites

; Remaining tiles

	include 'assets\sprites\boulder\boulder1.asm'
	include 'assets\sprites\boulder\boulder2.asm'
	include 'assets\sprites\boulder\boulder3.asm'
	include 'assets\sprites\boulder\boulder4.asm'
	include 'assets\sprites\boulder\boulder5.asm'
	include 'assets\sprites\boulder\boulder6.asm'
	include 'assets\sprites\boulder\boulder7.asm'
	
; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped (bb)
sprite_boulder_subsprite_pos_offsets:
	dc.w 0x0000, 0x0000	; Top-left      (4x4)
	dc.w 0x0020, 0x0020	; Bottom-left   (4x4)
	dc.w 0x2000, 0x2000	; Top-right     (4x4)
	dc.w 0x2020, 0x2020	; Bottom-right  (4x4)
	even

; Subsprite dimension bits (for sprite descs)
sprite_boulder_subsprite_dimensions_bits:
	dc.b (%00001111)	; Top-left      (4x4)
	dc.b (%00001111)	; Bottom-left   (4x4)
	dc.b (%00001111)	; Top-right     (4x4)
	dc.b (%00001111)	; Bottom-right  (4x4)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_boulder_numtiles_per_subsprite:
	dc.b 0x10	; Top-left
	dc.b 0x10	; Bottom-left
	dc.b 0x10	; Top-Right
	dc.b 0x10	; Bottom-right
	even


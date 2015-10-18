Tiles_Nymn:

	; Use first sprite set as size template
	include 'assets\sprites\nymn_0.asm'

Tiles_NymnEnd                                       ;  Tiles end address

tiles_nymn_size_b: equ (Tiles_NymnEnd-Tiles_Nymn)   ; Sprite size in bytes
tiles_nymn_size_t: equ (tiles_nymn_size_b/32)        ; Sprite size in tiles

sprite_nymn_dimensions:		equ 0x0202	; 2x2 subsprites
sprite_nymn_size_subsprites:	equ 4		; Sprite size in 4x4 subsprites

	; Include the remaining sprite sets
	
	; Walk
	include 'assets\sprites\nymn_1.asm'
	include 'assets\sprites\nymn_2.asm'
	include 'assets\sprites\nymn_3.asm'
	include 'assets\sprites\nymn_4.asm'
	include 'assets\sprites\nymn_5.asm'
	include 'assets\sprites\nymn_6.asm'
	
	; Jump
	include 'assets\sprites\nymn_7.asm'
	include 'assets\sprites\nymn_8.asm'
	include 'assets\sprites\nymn_9.asm'
	include 'assets\sprites\nymn_10.asm'
	
	; Hang
	include 'assets\sprites\nymn_11.asm'
	
	; Push
	include 'assets\sprites\nymn_12.asm'
	include 'assets\sprites\nymn_13.asm'
	include 'assets\sprites\nymn_14.asm'
	include 'assets\sprites\nymn_15.asm'
	
	; Super Nymn switch
	include 'assets\sprites\nymn_16.asm'
	include 'assets\sprites\nymn_17.asm'

; Subsprite dimensions
sprite_nymn_subsprite_dimensions:
	dc.w 0x0404	; Top-left     (4x4)
	dc.w 0x0401	; Bottom-left  (4x1)
	dc.w 0x0104	; Top-right    (1x4)
	dc.w 0x0101	; Bottom-right (1x1)
	even

; Subsprite dimension bits (for sprite descs)
sprite_nymn_subsprite_dimensions_bits:
	dc.b (%00001111)	; Top-left     (4x4)
	dc.b (%00001100)	; Bottom-left  (4x1)
	dc.b (%00000011)	; Top-right    (1x4)
	dc.b (%00000000)	; Bottom-right (1x1)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_nymn_numtiles_per_subsprite:
	dc.b 0x10	; Top-left
	dc.b 0x4	; Bottom-left
	dc.b 0x4	; Top-right
	dc.b 0x1	; Bottom-right
	even

Tiles_Sonic:

	; Use first sprite set as size template
	include 'assets\sprites\sonic_0.asm'

Tiles_SonicEnd                                       ;  Tiles end address

tiles_sonic_size_b: equ (Tiles_SonicEnd-Tiles_Sonic)   ; Sprite size in bytes
tiles_sonic_size_t: equ (tiles_sonic_size_b/32)        ; Sprite size in tiles

sprite_sonic_dimensions:		equ 0x0202	; 2x2 subsprites
sprite_sonic_size_subsprites:	equ 4		; Sprite size in 4x4 subsprites

	; Include the remaining sprite sets
	
	; Walk
	include 'assets\sprites\sonic_1.asm'
	include 'assets\sprites\sonic_2.asm'
	include 'assets\sprites\sonic_3.asm'
	include 'assets\sprites\sonic_4.asm'
	include 'assets\sprites\sonic_5.asm'
	include 'assets\sprites\sonic_6.asm'
	
	; Jump
	include 'assets\sprites\sonic_7.asm'
	include 'assets\sprites\sonic_8.asm'
	include 'assets\sprites\sonic_9.asm'
	include 'assets\sprites\sonic_10.asm'
	
	; Hang
	include 'assets\sprites\sonic_11.asm'
	
	; Push
	include 'assets\sprites\sonic_12.asm'
	include 'assets\sprites\sonic_13.asm'
	include 'assets\sprites\sonic_14.asm'
	include 'assets\sprites\sonic_15.asm'
	
	; Super Sonic switch
	include 'assets\sprites\sonic_16.asm'
	include 'assets\sprites\sonic_17.asm'

; Subsprite dimensions
sprite_sonic_subsprite_dimensions:
	dc.w 0x0404	; Top-left     (4x4)
	dc.w 0x0401	; Bottom-left  (4x1)
	dc.w 0x0104	; Top-right    (1x4)
	dc.w 0x0101	; Bottom-right (1x1)
	even

; Subsprite dimension bits (for sprite descs)
sprite_sonic_subsprite_dimensions_bits:
	dc.b (%00001111)	; Top-left     (4x4)
	dc.b (%00001100)	; Bottom-left  (4x1)
	dc.b (%00000011)	; Top-right    (1x4)
	dc.b (%00000000)	; Bottom-right (1x1)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_sonic_numtiles_per_subsprite:
	dc.b 0x10	; Top-left
	dc.b 0x4	; Bottom-left
	dc.b 0x4	; Top-right
	dc.b 0x1	; Bottom-right
	even
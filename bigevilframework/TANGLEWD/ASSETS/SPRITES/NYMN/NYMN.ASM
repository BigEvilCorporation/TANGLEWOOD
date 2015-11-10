Tiles_Nymn:

	; Use first sprite set as size template
	; Idle
	include 'assets\sprites\nymn\idle_0.asm'

Tiles_NymnEnd                                       ;  Tiles end address

tiles_nymn_size_b: equ (Tiles_NymnEnd-Tiles_Nymn)   ; Sprite size in bytes
tiles_nymn_size_t: equ (tiles_nymn_size_b/32)       ; Sprite size in tiles

sprite_nymn_dimensions:			equ 0x0202	; 2x2 subsprites
sprite_nymn_size_subsprites:	equ 4		; Sprite size in 4x4 subsprites

	; Include the remaining sprite sets
	
	; Walk
	include 'assets\sprites\nymn\walk_0.asm'
	include 'assets\sprites\nymn\walk_1.asm'
	include 'assets\sprites\nymn\walk_2.asm'
	include 'assets\sprites\nymn\walk_3.asm'
	include 'assets\sprites\nymn\walk_4.asm'
	include 'assets\sprites\nymn\walk_5.asm'
	include 'assets\sprites\nymn\walk_6.asm'
	include 'assets\sprites\nymn\walk_7.asm'
	
	; Run
	include 'assets\sprites\nymn\run_0.asm'
	include 'assets\sprites\nymn\run_1.asm'
	include 'assets\sprites\nymn\run_2.asm'
	include 'assets\sprites\nymn\run_3.asm'
	include 'assets\sprites\nymn\run_4.asm'
	
	; Walk to run
	include 'assets\sprites\nymn\walk2run.asm'
	
	; Jump
	; Hang
	; Push
	; Colour switch

; Subsprite dimensions
sprite_nymn_subsprite_dimensions:
	dc.w 0x0404	; Top-left     (4x4)
	dc.w 0x0401	; Bottom-left  (4x1)
	dc.w 0x0304	; Top-right    (3x4)
	dc.w 0x0301	; Bottom-right (3x1)
	even

; Subsprite dimension bits (for sprite descs)
sprite_nymn_subsprite_dimensions_bits:
	dc.b (%00001111)	; Top-left     (4x4)
	dc.b (%00001100)	; Bottom-left  (4x1)
	dc.b (%00001011)	; Top-right    (3x4)
	dc.b (%00001000)	; Bottom-right (3x1)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_nymn_numtiles_per_subsprite:
	dc.b 0x10	; Top-left
	dc.b 0x04	; Bottom-left
	dc.b 0x0C	; Top-right
	dc.b 0x03	; Bottom-right
	even

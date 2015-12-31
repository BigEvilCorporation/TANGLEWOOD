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
	include 'assets\sprites\nymn\jump_0.asm'
	include 'assets\sprites\nymn\jump_1.asm'
	include 'assets\sprites\nymn\jump_2.asm'
	include 'assets\sprites\nymn\jump_3.asm'
	include 'assets\sprites\nymn\jump_4.asm'
	include 'assets\sprites\nymn\jump_5.asm'
	include 'assets\sprites\nymn\jump_6.asm'
	include 'assets\sprites\nymn\jump_7.asm'
	
	; Hang
	
	; Push
	include 'assets\sprites\nymn\push_0.asm'
	include 'assets\sprites\nymn\push_1.asm'
	include 'assets\sprites\nymn\push_2.asm'
	include 'assets\sprites\nymn\push_3.asm'
	include 'assets\sprites\nymn\push_4.asm'
	include 'assets\sprites\nymn\push_5.asm'
	include 'assets\sprites\nymn\push_6.asm'
	include 'assets\sprites\nymn\push_7.asm'
	
	; Colour switch
	include 'assets\sprites\nymn\switch_0.asm'
	include 'assets\sprites\nymn\switch_1.asm'
	include 'assets\sprites\nymn\switch_2.asm'
	include 'assets\sprites\nymn\switch_3.asm'
	include 'assets\sprites\nymn\switch_4.asm'
	include 'assets\sprites\nymn\switch_5.asm'
	include 'assets\sprites\nymn\switch_6.asm'
	include 'assets\sprites\nymn\switch_7.asm'
	
	; Glide
	;include 'assets\sprites\nymn\glide_0.asm'
	;include 'assets\sprites\nymn\glide_1.asm'
	;include 'assets\sprites\nymn\glide_2.asm'

; Subsprite offsets from 0,0 (in pixels) - unflipped (bb) and flipped (bb)
sprite_nymn_subsprite_pos_offsets:
	dc.w 0x0000, 0x1800	; Top-left     (4x4)
	dc.w 0x0020, 0x1820	; Bottom-left  (4x2)
	dc.w 0x2000, 0x0000	; Top-right    (3x4)
	dc.w 0x2020, 0x0020	; Bottom-right (3x2)
	even
	
; Subsprite dimension bits (for sprite descs)
sprite_nymn_subsprite_dimensions_bits:
	dc.b (%00001111)	; Top-left     (4x4)
	dc.b (%00001101)	; Bottom-left  (4x2)
	dc.b (%00001011)	; Top-right    (3x4)
	dc.b (%00001001)	; Bottom-right (3x2)
	even
	
; Num tiles per subsprite (for sprite descs)
sprite_nymn_numtiles_per_subsprite:
	dc.b 0x10	; Top-left
	dc.b 0x08	; Bottom-left
	dc.b 0x0C	; Top-right
	dc.b 0x06	; Bottom-right
	even

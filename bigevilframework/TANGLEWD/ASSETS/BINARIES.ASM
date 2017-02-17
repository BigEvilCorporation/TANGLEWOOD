;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

	; ************************************
	; Tilesets
	; ************************************
tiles_bigevil_logo:
	incbin 'assets\maps\bec_logo\tiles.bin'
tiles_megafounder_screen:
	incbin 'assets\maps\megafndr\tiles.bin'
tiles_controls_screen:
	incbin 'assets\maps\controls\tiles.bin'
tiles_demodisclaimer_screen:
	incbin 'assets\maps\disclmr\tiles.bin'
tiles_demoend_screen:
	incbin 'assets\maps\demoend\tiles.bin'
tiles_soundtest:
	incbin 'assets\maps\soundtst\tiles.bin'
tiles_l1:
	incbin 'assets\maps\l1\tiles.bin'
	
	IFND FINAL
tiles_tst_lift:
	incbin 'assets\maps\tst_lift\tiles.bin'
	ENDIF

	; ************************************
	; Collision tilesets
	; ************************************
collisiontiles_l1:
	incbin 'assets\maps\l1\coltiles.bin'
	
	IFND FINAL
collisiontiles_tst_lift:
	incbin 'assets\maps\tst_lift\coltiles.bin'
	ENDIF

	; ************************************
	; Maps
	; ************************************
map_bigevil_logo:
	incbin 'assets\maps\bec_logo\map.bin'
map_controls_screen:
	incbin 'assets\maps\controls\map.bin'
map_demodisclaimer_screen:
	incbin 'assets\maps\disclmr\map.bin'
map_demoend_screen:
	incbin 'assets\maps\demoend\map.bin'
map_soundtest:
	incbin 'assets\maps\soundtst\map.bin'

	; ************************************
	; Blocks
	; ************************************
map_blocks_main_menu:
	incbin 'assets\maps\mainmenu\blocks.bin'
map_blocks_megafounder_screen:
	incbin 'assets\maps\megafndr\blocks.bin'
map_blocks_l1a1:
;	incbin 'assets\maps\l1\l1a1\blocks.bin'
map_blocks_l1a2:
	incbin 'assets\maps\l1\l1a2\blocks.bin'
map_blocks_l1a3:
	incbin 'assets\maps\l1\l1a3\blocks.bin'
map_blocks_l1a4:
	incbin 'assets\maps\l1\l1a4\blocks.bin'
map_blocks_l1bg:
	incbin 'assets\maps\l1\l1bg\blocks.bin'

	IFND FINAL
map_blocks_tst_lift:
	incbin 'assets\maps\tst_lift\blocks.bin'
	ENDIF

	; ************************************
	; Block Maps
	; ************************************
map_blockmap_main_menu:
	incbin 'assets\maps\mainmenu\blockmap.bin'
map_blockmap_megafounder_screen:
	incbin 'assets\maps\megafndr\blockmap.bin'
map_blockmap_l1a1:
;	incbin 'assets\maps\l1\l1a1\blockmap.bin'
map_blockmap_l1a2:
	incbin 'assets\maps\l1\l1a2\blockmap.bin'
map_blockmap_l1a3:
	incbin 'assets\maps\l1\l1a3\blockmap.bin'
map_blockmap_l1a4:
	incbin 'assets\maps\l1\l1a4\blockmap.bin'
map_blockmap_l1bg:
	incbin 'assets\maps\l1\l1bg\blockmap.bin'

	IFND FINAL
map_blockmap_tst_lift:
	incbin 'assets\maps\tst_lift\blockmap.bin'
	ENDIF

	; ************************************
	; Collision blocks
	; ************************************
collisionmap_blocks_l1a1:
;	incbin 'assets\maps\l1\l1a1\colblock.bin'
collisionmap_blocks_l1a2:
	incbin 'assets\maps\l1\l1a2\colblock.bin'
collisionmap_blocks_l1a3:
	incbin 'assets\maps\l1\l1a3\colblock.bin'
collisionmap_blocks_l1a4:
	incbin 'assets\maps\l1\l1a4\colblock.bin'

	IFND FINAL
collisionmap_blocks_tst_lift:
	incbin 'assets\maps\tst_lift\colblock.bin'
	ENDIF

	; ************************************
	; Collision block Maps
	; ************************************
collisionmap_blockmap_l1a1:
;	incbin 'assets\maps\l1\l1a1\colmap.bin'
collisionmap_blockmap_l1a2:
	incbin 'assets\maps\l1\l1a2\colmap.bin'
collisionmap_blockmap_l1a3:
	incbin 'assets\maps\l1\l1a3\colmap.bin'
collisionmap_blockmap_l1a4:
	incbin 'assets\maps\l1\l1a4\colmap.bin'

	IFND FINAL
collisionmap_blockmap_tst_lift:
	incbin 'assets\maps\tst_lift\colmap.bin'
	ENDIF

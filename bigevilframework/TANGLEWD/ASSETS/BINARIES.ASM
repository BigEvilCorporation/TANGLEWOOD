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

	; Levels
tiles_l1:
	incbin 'assets\maps\l1\tiles.bin'
tiles_l3:
	incbin 'assets\maps\l3\tiles.bin'
tiles_l4:
	incbin 'assets\maps\l4\tiles.bin'
	
	IFND FINAL
tiles_tst_lift:
	incbin 'assets\maps\tst_lift\tiles.bin'
	ENDIF

	; ************************************
	; Collision tilesets
	; ************************************
collisiontiles_l1:
	incbin 'assets\maps\l1\coltiles.bin'
collisiontiles_l3:
	incbin 'assets\maps\l3\coltiles.bin'
collisiontiles_l4:
	incbin 'assets\maps\l4\coltiles.bin'
	
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

	; L1
map_blocks_l1a1:
	incbin 'assets\maps\l1\l1a1\blocks.bin'
map_blocks_l1a2:
	incbin 'assets\maps\l1\l1a2\blocks.bin'
map_blocks_l1a3:
	incbin 'assets\maps\l1\l1a3\blocks.bin'
map_blocks_l1a4:
	incbin 'assets\maps\l1\l1a4\blocks.bin'
map_blocks_l1bg:
	incbin 'assets\maps\l1\l1bg\blocks.bin'

	; L3
map_blocks_l3a1:
	incbin 'assets\maps\l3\l3a1\blocks.bin'
map_blocks_l3bg:
	incbin 'assets\maps\l3\l3bg\blocks.bin'

	; L4
map_blocks_l4a1:
	incbin 'assets\maps\l4\l4a1\blocks.bin'
map_blocks_l4bg:
	incbin 'assets\maps\l4\l4bg\blocks.bin'

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

	; L1
map_blockmap_l1a1:
	incbin 'assets\maps\l1\l1a1\blockmap.bin'
map_blockmap_l1a2:
	incbin 'assets\maps\l1\l1a2\blockmap.bin'
map_blockmap_l1a3:
	incbin 'assets\maps\l1\l1a3\blockmap.bin'
map_blockmap_l1a4:
	incbin 'assets\maps\l1\l1a4\blockmap.bin'
map_blockmap_l1bg:
	incbin 'assets\maps\l1\l1bg\blockmap.bin'

	; L3
map_blockmap_l3a1:
	incbin 'assets\maps\l3\l3a1\blockmap.bin'
map_blockmap_l3bg:
	incbin 'assets\maps\l3\l3bg\blockmap.bin'

	; L4
map_blockmap_l4a1:
	incbin 'assets\maps\l4\l4a1\blockmap.bin'
map_blockmap_l4bg:
	incbin 'assets\maps\l4\l4bg\blockmap.bin'

	IFND FINAL
map_blockmap_tst_lift:
	incbin 'assets\maps\tst_lift\blockmap.bin'
	ENDIF

	; ************************************
	; Collision blocks
	; ************************************

	; L1
collisionmap_blocks_l1a1:
	incbin 'assets\maps\l1\l1a1\colblock.bin'
collisionmap_blocks_l1a2:
	incbin 'assets\maps\l1\l1a2\colblock.bin'
collisionmap_blocks_l1a3:
	incbin 'assets\maps\l1\l1a3\colblock.bin'
collisionmap_blocks_l1a4:
	incbin 'assets\maps\l1\l1a4\colblock.bin'

	; L3
collisionmap_blocks_l3a1:
	incbin 'assets\maps\l3\l3a1\colblock.bin'

	; L4
collisionmap_blocks_l4a1:
	incbin 'assets\maps\l4\l4a1\colblock.bin'

	IFND FINAL
collisionmap_blocks_tst_lift:
	incbin 'assets\maps\tst_lift\colblock.bin'
	ENDIF

	; ************************************
	; Collision block Maps
	; ************************************

	; L1
collisionmap_blockmap_l1a1:
	incbin 'assets\maps\l1\l1a1\colmap.bin'
collisionmap_blockmap_l1a2:
	incbin 'assets\maps\l1\l1a2\colmap.bin'
collisionmap_blockmap_l1a3:
	incbin 'assets\maps\l1\l1a3\colmap.bin'
collisionmap_blockmap_l1a4:
	incbin 'assets\maps\l1\l1a4\colmap.bin'

	; L3
collisionmap_blockmap_l3a1:
	incbin 'assets\maps\l3\l3a1\colmap.bin'

	; L4
collisionmap_blockmap_l4a1:
	incbin 'assets\maps\l4\l4a1\colmap.bin'

	IFND FINAL
collisionmap_blockmap_tst_lift:
	incbin 'assets\maps\tst_lift\colmap.bin'
	ENDIF

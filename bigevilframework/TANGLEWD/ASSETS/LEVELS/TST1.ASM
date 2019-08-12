;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2018
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\tst1\palette.asm'

;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\tst1\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\tst1\tiles.asm'

tiles_tst1:
	incbin 'assets\maps\tst1\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\tst1\blocks.asm'

map_blocks_tst1:
	incbin 'assets\maps\tst1\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\tst1\blockmap.asm'

map_blockmap_tst1:
	incbin 'assets\maps\tst1\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\tst1\coltiles.asm'

collisiontiles_tst1:
	incbin 'assets\maps\tst1\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\tst1\colblock.asm'

collisionmap_blocks_tst1:
	incbin 'assets\maps\tst1\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\tst1\colmap.asm'

collisionmap_blockmap_tst1:
	incbin 'assets\maps\tst1\colmap.bin'

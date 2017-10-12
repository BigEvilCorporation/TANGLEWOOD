;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l1\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l1\stmpanim.asm'

;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l1\l1a1\gameobj.asm'
	include 'assets\maps\l1\l1a2\gameobj.asm'
	include 'assets\maps\l1\l1a3\gameobj.asm'
	include 'assets\maps\l1\l1a4\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l1\tiles.asm'

tiles_l1:
	incbin 'assets\maps\l1\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l1\blocks.asm'

map_blocks_l1:
	incbin 'assets\maps\l1\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l1\l1a1\blockmap.asm'
	include 'assets\maps\l1\l1a2\blockmap.asm'
	include 'assets\maps\l1\l1a3\blockmap.asm'
	include 'assets\maps\l1\l1a4\blockmap.asm'
	include 'assets\maps\l1\l1bg\blockmap.asm'

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

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l1\coltiles.asm'

collisiontiles_l1:
	incbin 'assets\maps\l1\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l1\colblock.asm'

collisionmap_blocks_l1:
	incbin 'assets\maps\l1\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l1\l1a1\colmap.asm'
	include 'assets\maps\l1\l1a2\colmap.asm'
	include 'assets\maps\l1\l1a3\colmap.asm'
	include 'assets\maps\l1\l1a4\colmap.asm'

collisionmap_blockmap_l1a1:
	incbin 'assets\maps\l1\l1a1\colmap.bin'
collisionmap_blockmap_l1a2:
	incbin 'assets\maps\l1\l1a2\colmap.bin'
collisionmap_blockmap_l1a3:
	incbin 'assets\maps\l1\l1a3\colmap.bin'
collisionmap_blockmap_l1a4:
	incbin 'assets\maps\l1\l1a4\colmap.bin'

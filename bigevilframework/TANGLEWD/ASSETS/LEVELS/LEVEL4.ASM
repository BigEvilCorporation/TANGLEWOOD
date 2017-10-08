;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l4\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l4\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l4\l4a1\gameobj.asm'
	include 'assets\maps\l4\l4a2\gameobj.asm'
	include 'assets\maps\l4\l4a3\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l4\tiles.asm'

tiles_l4:
	incbin 'assets\maps\l4\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l4\blocks.asm'

map_blocks_l4:
	incbin 'assets\maps\l4\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l4\l4a1\blockmap.asm'
	include 'assets\maps\l4\l4a2\blockmap.asm'
	include 'assets\maps\l4\l4a3\blockmap.asm'
	include 'assets\maps\l4\l4bg\blockmap.asm'

map_blockmap_l4a1:
	incbin 'assets\maps\l4\l4a1\blockmap.bin'
map_blockmap_l4a2:
	incbin 'assets\maps\l4\l4a2\blockmap.bin'
map_blockmap_l4a3:
	incbin 'assets\maps\l4\l4a3\blockmap.bin'
map_blockmap_l4bg:
	incbin 'assets\maps\l4\l4bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l4\coltiles.asm'

collisiontiles_l4:
	incbin 'assets\maps\l4\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l4\colblock.asm'

collisionmap_blocks_l4:
	incbin 'assets\maps\l4\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l4\l4a1\colmap.asm'
	include 'assets\maps\l4\l4a2\colmap.asm'
	include 'assets\maps\l4\l4a3\colmap.asm'

collisionmap_blockmap_l4a1:
	incbin 'assets\maps\l4\l4a1\colmap.bin'
collisionmap_blockmap_l4a2:
	incbin 'assets\maps\l4\l4a2\colmap.bin'
collisionmap_blockmap_l4a3:
	incbin 'assets\maps\l4\l4a3\colmap.bin'

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l2\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l2\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l2\l2a1\gameobj.asm'
	include 'assets\maps\l2\l2a2\gameobj.asm'
	include 'assets\maps\l2\l2a3\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l2\tiles.asm'

tiles_l2:
	incbin 'assets\maps\l2\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l2\blocks.asm'

map_blocks_l2:
	incbin 'assets\maps\l2\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l2\l2a1\blockmap.asm'
	include 'assets\maps\l2\l2a2\blockmap.asm'
	include 'assets\maps\l2\l2a3\blockmap.asm'
	include 'assets\maps\l2\l2bg\blockmap.asm'

map_blockmap_l2a1:
	incbin 'assets\maps\l2\l2a1\blockmap.bin'
map_blockmap_l2a2:
	incbin 'assets\maps\l2\l2a2\blockmap.bin'
map_blockmap_l2a3:
	incbin 'assets\maps\l2\l2a3\blockmap.bin'
map_blockmap_l2bg:
	incbin 'assets\maps\l2\l2bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l2\coltiles.asm'

collisiontiles_l2:
	incbin 'assets\maps\l2\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l2\colblock.asm'

collisionmap_blocks_l2:
	incbin 'assets\maps\l2\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l2\l2a1\colmap.asm'
	include 'assets\maps\l2\l2a2\colmap.asm'
	include 'assets\maps\l2\l2a3\colmap.asm'

collisionmap_blockmap_l2a1:
	incbin 'assets\maps\l2\l2a1\colmap.bin'
collisionmap_blockmap_l2a2:
	incbin 'assets\maps\l2\l2a2\colmap.bin'
collisionmap_blockmap_l2a3:
	incbin 'assets\maps\l2\l2a3\colmap.bin'

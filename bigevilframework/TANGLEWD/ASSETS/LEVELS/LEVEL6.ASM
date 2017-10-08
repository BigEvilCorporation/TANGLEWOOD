;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l6\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l6\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l6\l6a1\gameobj.asm'
	include 'assets\maps\l6\l6a2\gameobj.asm'
	include 'assets\maps\l6\l6a3\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l6\tiles.asm'

tiles_l6:
	incbin 'assets\maps\l6\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l6\blocks.asm'

map_blocks_l6:
	incbin 'assets\maps\l6\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l6\l6a1\blockmap.asm'
	include 'assets\maps\l6\l6a2\blockmap.asm'
	include 'assets\maps\l6\l6a3\blockmap.asm'
	include 'assets\maps\l6\l6bg\blockmap.asm'

map_blockmap_l6a1:
	incbin 'assets\maps\l6\l6a1\blockmap.bin'
map_blockmap_l6a2:
	incbin 'assets\maps\l6\l6a2\blockmap.bin'
map_blockmap_l6a3:
	incbin 'assets\maps\l6\l6a3\blockmap.bin'
map_blockmap_l6bg:
	incbin 'assets\maps\l6\l6bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l6\coltiles.asm'

collisiontiles_l6:
	incbin 'assets\maps\l6\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l6\colblock.asm'

collisionmap_blocks_l6:
	incbin 'assets\maps\l6\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l6\l6a1\colmap.asm'
	include 'assets\maps\l6\l6a2\colmap.asm'
	include 'assets\maps\l6\l6a3\colmap.asm'

collisionmap_blockmap_l6a1:
	incbin 'assets\maps\l6\l6a1\colmap.bin'
collisionmap_blockmap_l6a2:
	incbin 'assets\maps\l6\l6a2\colmap.bin'
collisionmap_blockmap_l6a3:
	incbin 'assets\maps\l6\l6a3\colmap.bin'

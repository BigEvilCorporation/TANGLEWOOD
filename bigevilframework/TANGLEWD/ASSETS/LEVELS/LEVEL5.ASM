;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l5\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l5\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l5\l5a1\gameobj.asm'
	include 'assets\maps\l5\l5a2\gameobj.asm'
	include 'assets\maps\l5\l5a3\gameobj.asm'
	include 'assets\maps\l5\l5a4\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l5\tiles.asm'

tiles_l5:
	incbin 'assets\maps\l5\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l5\blocks.asm'

map_blocks_l5:
	incbin 'assets\maps\l5\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l5\l5a1\blockmap.asm'
	include 'assets\maps\l5\l5a2\blockmap.asm'
	include 'assets\maps\l5\l5a3\blockmap.asm'
	include 'assets\maps\l5\l5a4\blockmap.asm'
	include 'assets\maps\l5\l5bg\blockmap.asm'

map_blockmap_l5a1:
	incbin 'assets\maps\l5\l5a1\blockmap.bin'
map_blockmap_l5a2:
	incbin 'assets\maps\l5\l5a2\blockmap.bin'
map_blockmap_l5a3:
	incbin 'assets\maps\l5\l5a3\blockmap.bin'
map_blockmap_l5a4:
	incbin 'assets\maps\l5\l5a4\blockmap.bin'
map_blockmap_l5bg:
	incbin 'assets\maps\l5\l5bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l5\coltiles.asm'

collisiontiles_l5:
	incbin 'assets\maps\l5\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l5\colblock.asm'

collisionmap_blocks_l5:
	incbin 'assets\maps\l5\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l5\l5a1\colmap.asm'
	include 'assets\maps\l5\l5a2\colmap.asm'
	include 'assets\maps\l5\l5a3\colmap.asm'
	include 'assets\maps\l5\l5a4\colmap.asm'

collisionmap_blockmap_l5a1:
	incbin 'assets\maps\l5\l5a1\colmap.bin'
collisionmap_blockmap_l5a2:
	incbin 'assets\maps\l5\l5a2\colmap.bin'
collisionmap_blockmap_l5a3:
	incbin 'assets\maps\l5\l5a3\colmap.bin'
collisionmap_blockmap_l5a4:
	incbin 'assets\maps\l5\l5a4\colmap.bin'

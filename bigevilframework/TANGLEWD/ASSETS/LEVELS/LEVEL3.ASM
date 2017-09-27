;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l3\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l3\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l3\l3a1\gameobj.asm'
	include 'assets\maps\l3\l3a2\gameobj.asm'
	include 'assets\maps\l3\l3a3\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l3\tiles.asm'

tiles_l3:
	incbin 'assets\maps\l3\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l3\blocks.asm'

map_blocks_l3:
	incbin 'assets\maps\l3\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l3\l3a1\blockmap.asm'
	include 'assets\maps\l3\l3a2\blockmap.asm'
	include 'assets\maps\l3\l3a3\blockmap.asm'
	include 'assets\maps\l3\l3bg\blockmap.asm'

map_blockmap_l3a1:
	incbin 'assets\maps\l3\l3a1\blockmap.bin'
map_blockmap_l3a2:
	incbin 'assets\maps\l3\l3a2\blockmap.bin'
map_blockmap_l3a3:
	incbin 'assets\maps\l3\l3a3\blockmap.bin'
map_blockmap_l3bg:
	incbin 'assets\maps\l3\l3bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l3\coltiles.asm'

collisiontiles_l3:
	incbin 'assets\maps\l3\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l3\colblock.asm'

collisionmap_blocks_l3:
	incbin 'assets\maps\l3\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l3\l3a1\colmap.asm'
	include 'assets\maps\l3\l3a2\colmap.asm'
	include 'assets\maps\l3\l3a3\colmap.asm'

collisionmap_blockmap_l3a1:
	incbin 'assets\maps\l3\l3a1\colmap.bin'
collisionmap_blockmap_l3a2:
	incbin 'assets\maps\l3\l3a2\colmap.bin'
collisionmap_blockmap_l3a3:
	incbin 'assets\maps\l3\l3a3\colmap.bin'

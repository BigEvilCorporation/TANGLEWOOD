;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Palettes
;==============================================================
	include 'assets\maps\l7\palette.asm'

;==============================================================
; Animations
;==============================================================
	include 'assets\maps\l7\stmpanim.asm'

;==============================================================
; Props
;==============================================================


;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l7\l7a1\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l7\tiles.asm'

tiles_l7:
	incbin 'assets\maps\l7\tiles.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l7\l7a1\blocks.asm'
	;include 'assets\maps\l7\l7bg\blocks.asm'

map_blocks_l7a1:
	incbin 'assets\maps\l7\l7a1\blocks.bin'
map_blocks_l7bg:
	;incbin 'assets\maps\l7\l7bg\blocks.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l7\l7a1\blockmap.asm'
	include 'assets\maps\l7\l7bg\blockmap.asm'

map_blockmap_l7a1:
	incbin 'assets\maps\l7\l7a1\blockmap.bin'
map_blockmap_l7bg:
	;incbin 'assets\maps\l7\l7bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l7\coltiles.asm'

collisiontiles_l7:
	incbin 'assets\maps\l7\coltiles.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l7\l7a1\colblock.asm'

collisionmap_blocks_l7a1:
	incbin 'assets\maps\l7\l7a1\colblock.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l7\l7a1\colmap.asm'

collisionmap_blockmap_l7a1:
	incbin 'assets\maps\l7\l7a1\colmap.bin'

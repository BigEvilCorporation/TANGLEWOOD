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
	include 'assets\maps\l7\l7a2\gameobj.asm'
	include 'assets\maps\l7\l7a3\gameobj.asm'

;==============================================================
; Graphics tileset
;==============================================================
	include 'assets\maps\l7\tiles.asm'

tiles_l7:
	incbin 'assets\maps\l7\tiles.bin'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l7\l7a1\blockmap.asm'
	include 'assets\maps\l7\l7a2\blockmap.asm'
	include 'assets\maps\l7\l7a3\blockmap.asm'
	include 'assets\maps\l7\l7bg\blockmap.asm'

map_blockmap_l7a1:
	incbin 'assets\maps\l7\l7a1\blockmap.bin'
map_blockmap_l7a2:
	incbin 'assets\maps\l7\l7a2\blockmap.bin'
map_blockmap_l7a3:
	incbin 'assets\maps\l7\l7a3\blockmap.bin'
map_blockmap_l7bg:
	incbin 'assets\maps\l7\l7bg\blockmap.bin'

;==============================================================
; Collision tileset
;==============================================================
	include 'assets\maps\l7\coltiles.asm'

collisiontiles_l7:
	incbin 'assets\maps\l7\coltiles.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l7\l7a1\colmap.asm'
	include 'assets\maps\l7\l7a2\colmap.asm'
	include 'assets\maps\l7\l7a3\colmap.asm'

collisionmap_blockmap_l7a1:
	incbin 'assets\maps\l7\l7a1\colmap.bin'
collisionmap_blockmap_l7a2:
	incbin 'assets\maps\l7\l7a2\colmap.bin'

	IFD FINAL
	dcb.b 0x00200100-*, $FF
	dc.b 'SEGA            '
	dc.b '                '
	dc.b '                                                '
	dc.b '                                                '
	dc.b 'GM 00001009-00'
	ENDIF

collisionmap_blockmap_l7a3:
	;incbin 'assets\maps\l7\l7a3\colmap.bin'

;==============================================================
; Collision blocks
;==============================================================
	include 'assets\maps\l7\colblock.asm'

collisionmap_blocks_l7:
	incbin 'assets\maps\l7\colblock.bin'

;==============================================================
; Graphics blocks
;==============================================================
	include 'assets\maps\l7\blocks.asm'

map_blocks_l7:
	incbin 'assets\maps\l7\blocks.bin'
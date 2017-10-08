;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l8\l8a1\gameobj.asm'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l8\l8a1\blockmap.asm'

map_blockmap_l8a1:
	incbin 'assets\maps\l8\l8a1\blockmap.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l8\l8a1\colmap.asm'

collisionmap_blockmap_l8a1:
	incbin 'assets\maps\l8\l8a1\colmap.bin'

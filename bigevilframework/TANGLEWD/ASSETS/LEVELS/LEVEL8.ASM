;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================

;==============================================================
; Game objects
;==============================================================
	include 'assets\maps\l8\l8a1\gameobj.asm'
	include 'assets\maps\l8\l8a2\gameobj.asm'
	include 'assets\maps\l8\l8a3\gameobj.asm'
	include 'assets\maps\l8\l8a4\gameobj.asm'
	include 'assets\maps\l8\l8a5\gameobj.asm'
	include 'assets\maps\l8\l8a6\gameobj.asm'

;==============================================================
; Graphics block maps
;==============================================================
	include 'assets\maps\l8\l8a1\blockmap.asm'
	include 'assets\maps\l8\l8a2\blockmap.asm'
	include 'assets\maps\l8\l8a3\blockmap.asm'
	include 'assets\maps\l8\l8a4\blockmap.asm'
	include 'assets\maps\l8\l8a5\blockmap.asm'
	include 'assets\maps\l8\l8a6\blockmap.asm'

map_blockmap_l8a1:
	incbin 'assets\maps\l8\l8a1\blockmap.bin'
map_blockmap_l8a2:
	incbin 'assets\maps\l8\l8a2\blockmap.bin'
map_blockmap_l8a3:
	incbin 'assets\maps\l8\l8a3\blockmap.bin'
map_blockmap_l8a4:
	incbin 'assets\maps\l8\l8a4\blockmap.bin'
map_blockmap_l8a5:
	incbin 'assets\maps\l8\l8a5\blockmap.bin'
map_blockmap_l8a6:
	incbin 'assets\maps\l8\l8a6\blockmap.bin'

;==============================================================
; Collision block maps
;==============================================================
	include 'assets\maps\l8\l8a1\colmap.asm'
	include 'assets\maps\l8\l8a2\colmap.asm'
	include 'assets\maps\l8\l8a3\colmap.asm'
	include 'assets\maps\l8\l8a4\colmap.asm'
	include 'assets\maps\l8\l8a5\colmap.asm'
	include 'assets\maps\l8\l8a6\colmap.asm'

collisionmap_blockmap_l8a1:
	incbin 'assets\maps\l8\l8a1\colmap.bin'
collisionmap_blockmap_l8a2:
	incbin 'assets\maps\l8\l8a2\colmap.bin'
collisionmap_blockmap_l8a3:
	incbin 'assets\maps\l8\l8a3\colmap.bin'
collisionmap_blockmap_l8a4:
	incbin 'assets\maps\l8\l8a4\colmap.bin'
collisionmap_blockmap_l8a5:
	incbin 'assets\maps\l8\l8a5\colmap.bin'
collisionmap_blockmap_l8a6:
	incbin 'assets\maps\l8\l8a6\colmap.bin'

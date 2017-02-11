; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


terrainmap_blockmap_lvl1_size_b	equ 0x00004362	; Size in bytes
terrainmap_blockmap_lvl1_size_w	equ (terrainmap_blockmap_lvl1_size_b/2)	; Size in words
terrainmap_blockmap_lvl1_size_l	equ (terrainmap_blockmap_lvl1_size_b/4)	; Size in longwords
terrainmap_lvl1_width	equ 0x5DC
terrainmap_lvl1_height	equ 0x5C
terrainmap_blockmap_lvl1_width	equ 0x177
terrainmap_blockmap_lvl1_height	equ 0x17

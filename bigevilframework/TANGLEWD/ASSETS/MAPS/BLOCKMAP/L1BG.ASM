; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


map_blockmap_lvl1_bg_size_b	equ 0x00000100	; Size in bytes
map_blockmap_lvl1_bg_size_w	equ (map_blockmap_lvl1_bg_size_b/2)	; Size in words
map_blockmap_lvl1_bg_size_l	equ (map_blockmap_lvl1_bg_size_b/4)	; Size in longwords
map_lvl1_bg_width	equ 0x40
map_lvl1_bg_height	equ 0x20
map_blockmap_lvl1_bg_width	equ 0x10
map_blockmap_lvl1_bg_height	equ 0x08

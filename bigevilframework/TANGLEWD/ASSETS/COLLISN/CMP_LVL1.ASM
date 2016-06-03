; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


collisionmap_lvl1_size_b	equ 0x00041EB0	; Size in bytes
collisionmap_lvl1_size_w	equ (collisionmap_lvl1_size_b/2)	; Size in words
collisionmap_lvl1_size_l	equ (collisionmap_lvl1_size_b/4)	; Size in longwords
collisionmap_lvl1_width	equ 0x5DC
collisionmap_lvl1_height	equ 0x5A

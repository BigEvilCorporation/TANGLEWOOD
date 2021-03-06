; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


terrainmap_blockmap_L5A2_size_b	equ 0x00005AC0	; Size in bytes
terrainmap_blockmap_L5A2_size_w	equ (terrainmap_blockmap_L5A2_size_b/2)	; Size in words
terrainmap_blockmap_L5A2_size_l	equ (terrainmap_blockmap_L5A2_size_b/4)	; Size in longwords
terrainmap_L5A2_left	equ 0x00
terrainmap_L5A2_top	equ 0x08
terrainmap_L5A2_width	equ 0x2C0
terrainmap_L5A2_height	equ 0x108
terrainmap_blockmap_L5A2_left	equ 0x00
terrainmap_blockmap_L5A2_top	equ 0x02
terrainmap_blockmap_L5A2_width	equ 0xB0
terrainmap_blockmap_L5A2_height	equ 0x42

collisionmap_blockmap_yoffs_L5A2:
	dc.w 0x0000
	dc.w 0x00B0
	dc.w 0x0160
	dc.w 0x0210
	dc.w 0x02C0
	dc.w 0x0370
	dc.w 0x0420
	dc.w 0x04D0
	dc.w 0x0580
	dc.w 0x0630
	dc.w 0x06E0
	dc.w 0x0790
	dc.w 0x0840
	dc.w 0x08F0
	dc.w 0x09A0
	dc.w 0x0A50
	dc.w 0x0B00
	dc.w 0x0BB0
	dc.w 0x0C60
	dc.w 0x0D10
	dc.w 0x0DC0
	dc.w 0x0E70
	dc.w 0x0F20
	dc.w 0x0FD0
	dc.w 0x1080
	dc.w 0x1130
	dc.w 0x11E0
	dc.w 0x1290
	dc.w 0x1340
	dc.w 0x13F0
	dc.w 0x14A0
	dc.w 0x1550
	dc.w 0x1600
	dc.w 0x16B0
	dc.w 0x1760
	dc.w 0x1810
	dc.w 0x18C0
	dc.w 0x1970
	dc.w 0x1A20
	dc.w 0x1AD0
	dc.w 0x1B80
	dc.w 0x1C30
	dc.w 0x1CE0
	dc.w 0x1D90
	dc.w 0x1E40
	dc.w 0x1EF0
	dc.w 0x1FA0
	dc.w 0x2050
	dc.w 0x2100
	dc.w 0x21B0
	dc.w 0x2260
	dc.w 0x2310
	dc.w 0x23C0
	dc.w 0x2470
	dc.w 0x2520
	dc.w 0x25D0
	dc.w 0x2680
	dc.w 0x2730
	dc.w 0x27E0
	dc.w 0x2890
	dc.w 0x2940
	dc.w 0x29F0
	dc.w 0x2AA0
	dc.w 0x2B50
	dc.w 0x2C00
	dc.w 0x2CB0

; Terrain bezier bounds
terrainmap_L5A2_num_special_terrain_descs	equ 0x01
terrainmap_L5A2_special_terrain_descs:
	dc.w 0x07E8, 0x078F, 0x11B0, 0x078F, 0x8000	; Left, top, right, bottom, flags


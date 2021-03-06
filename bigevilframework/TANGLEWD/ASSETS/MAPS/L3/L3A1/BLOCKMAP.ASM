; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   **AUTOGENERATED WITH BEEHIVE** - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Beehive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


map_blockmap_L3A1_size_b	equ 0x000015D6	; Size in bytes
map_blockmap_L3A1_size_w	equ (map_blockmap_L3A1_size_b/2)	; Size in words
map_blockmap_L3A1_size_l	equ (map_blockmap_L3A1_size_b/4)	; Size in longwords
map_L3A1_width	equ 0x320
map_L3A1_height	equ 0x78
map_blockmap_L3A1_width	equ 0xC8
map_blockmap_L3A1_height	equ 0x1E

map_blockmap_L3A1_coloffsets:
	dc.w 0x0000
	dc.w 0x001E
	dc.w 0x0038
	dc.w 0x0054
	dc.w 0x0072
	dc.w 0x0092
	dc.w 0x00B2
	dc.w 0x00D0
	dc.w 0x00EE
	dc.w 0x010A
	dc.w 0x0128
	dc.w 0x0146
	dc.w 0x0164
	dc.w 0x0186
	dc.w 0x01AA
	dc.w 0x01C6
	dc.w 0x01E4
	dc.w 0x0204
	dc.w 0x0220
	dc.w 0x023C
	dc.w 0x025C
	dc.w 0x0288
	dc.w 0x02A4
	dc.w 0x02BC
	dc.w 0x02E2
	dc.w 0x02F8
	dc.w 0x0312
	dc.w 0x032A
	dc.w 0x034A
	dc.w 0x036E
	dc.w 0x038E
	dc.w 0x03AE
	dc.w 0x03D0
	dc.w 0x03EE
	dc.w 0x040E
	dc.w 0x0430
	dc.w 0x0454
	dc.w 0x0478
	dc.w 0x0492
	dc.w 0x04B0
	dc.w 0x04D4
	dc.w 0x04F8
	dc.w 0x0520
	dc.w 0x0544
	dc.w 0x0566
	dc.w 0x0586
	dc.w 0x059E
	dc.w 0x05B8
	dc.w 0x05D2
	dc.w 0x0600
	dc.w 0x0614
	dc.w 0x0628
	dc.w 0x063C
	dc.w 0x0656
	dc.w 0x0670
	dc.w 0x0686
	dc.w 0x06B2
	dc.w 0x06D2
	dc.w 0x06F4
	dc.w 0x0718
	dc.w 0x073C
	dc.w 0x075C
	dc.w 0x0778
	dc.w 0x0798
	dc.w 0x07BA
	dc.w 0x07DC
	dc.w 0x07FE
	dc.w 0x0822
	dc.w 0x0844
	dc.w 0x0864
	dc.w 0x0884
	dc.w 0x08A0
	dc.w 0x08B6
	dc.w 0x08C4
	dc.w 0x08D8
	dc.w 0x08F0
	dc.w 0x090A
	dc.w 0x0922
	dc.w 0x093C
	dc.w 0x0956
	dc.w 0x096E
	dc.w 0x0980
	dc.w 0x099C
	dc.w 0x09BA
	dc.w 0x09DE
	dc.w 0x0A00
	dc.w 0x0A26
	dc.w 0x0A4A
	dc.w 0x0A6A
	dc.w 0x0A88
	dc.w 0x0AA2
	dc.w 0x0AC2
	dc.w 0x0AE6
	dc.w 0x0B0A
	dc.w 0x0B28
	dc.w 0x0B42
	dc.w 0x0B62
	dc.w 0x0B84
	dc.w 0x0BA8
	dc.w 0x0BC6
	dc.w 0x0BE2
	dc.w 0x0BFA
	dc.w 0x0C12
	dc.w 0x0C24
	dc.w 0x0C36
	dc.w 0x0C48
	dc.w 0x0C5A
	dc.w 0x0C76
	dc.w 0x0C8A
	dc.w 0x0CA2
	dc.w 0x0CC0
	dc.w 0x0CE4
	dc.w 0x0D08
	dc.w 0x0D2E
	dc.w 0x0D4A
	dc.w 0x0D6E
	dc.w 0x0D92
	dc.w 0x0DB4
	dc.w 0x0DD2
	dc.w 0x0DF0
	dc.w 0x0E0E
	dc.w 0x0E24
	dc.w 0x0E3C
	dc.w 0x0E54
	dc.w 0x0E6C
	dc.w 0x0E7E
	dc.w 0x0E94
	dc.w 0x0EA4
	dc.w 0x0EB8
	dc.w 0x0ED4
	dc.w 0x0EEC
	dc.w 0x0F06
	dc.w 0x0F1E
	dc.w 0x0F36
	dc.w 0x0F50
	dc.w 0x0F6A
	dc.w 0x0F84
	dc.w 0x0FA0
	dc.w 0x0FBC
	dc.w 0x0FD8
	dc.w 0x0FF2
	dc.w 0x100A
	dc.w 0x102A
	dc.w 0x104A
	dc.w 0x1064
	dc.w 0x1082
	dc.w 0x10A0
	dc.w 0x10BC
	dc.w 0x10DE
	dc.w 0x1104
	dc.w 0x1122
	dc.w 0x1150
	dc.w 0x1176
	dc.w 0x119C
	dc.w 0x11C0
	dc.w 0x11E2
	dc.w 0x11FC
	dc.w 0x120C
	dc.w 0x121C
	dc.w 0x1230
	dc.w 0x1254
	dc.w 0x126E
	dc.w 0x1286
	dc.w 0x12AA
	dc.w 0x12C4
	dc.w 0x12E4
	dc.w 0x1306
	dc.w 0x131E
	dc.w 0x133A
	dc.w 0x1356
	dc.w 0x1372
	dc.w 0x1386
	dc.w 0x1398
	dc.w 0x13AC
	dc.w 0x13BE
	dc.w 0x13D0
	dc.w 0x13E2
	dc.w 0x13F4
	dc.w 0x1406
	dc.w 0x141A
	dc.w 0x142E
	dc.w 0x1440
	dc.w 0x1456
	dc.w 0x146C
	dc.w 0x147E
	dc.w 0x1490
	dc.w 0x14A6
	dc.w 0x14C0
	dc.w 0x14D6
	dc.w 0x14EE
	dc.w 0x1504
	dc.w 0x151A
	dc.w 0x152E
	dc.w 0x1544
	dc.w 0x1558
	dc.w 0x156E
	dc.w 0x1582
	dc.w 0x1598
	dc.w 0x15AE
	dc.w 0x15C2

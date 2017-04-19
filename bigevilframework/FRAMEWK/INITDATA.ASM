;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   initdata.asm - Framework initialisation data
;==============================================================

Z80InitData:
   dc.w 0xaf01, 0xd91f
   dc.w 0x1127, 0x0021
   dc.w 0x2600, 0xf977
   dc.w 0xedb0, 0xdde1
   dc.w 0xfde1, 0xed47
   dc.w 0xed4f, 0xd1e1
   dc.w 0xf108, 0xd9c1
   dc.w 0xd1e1, 0xf1f9
   dc.w 0xf3ed, 0x5636
   dc.w 0xe9e9, 0x8104
   dc.w 0x8f01

PSGInitData:
   dc.w 0x9fbf, 0xdfff

VDPReg0		equ 0x14 ; 0: H interrupt on, palettes on
VDPReg1		equ 0x74 ; 1: V interrupt on, display on, DMA on, Genesis mode on
VDPReg2		equ 0x30 ; 2: Pattern table for Scroll Plane A at VRAM 0xC000 (bits 3-5 = bits 13-15)
VDPReg3		equ 0x00 ; 3: Pattern table for Window Plane at VRAM 0x0000 (disabled) (bits 1-5 = bits 11-15)
VDPReg4		equ 0x07 ; 4: Pattern table for Scroll Plane B at VRAM 0xE000 (bits 0-2 = bits 11-15)
VDPReg5		equ 0x78 ; 5: Sprite table at VRAM 0xF000 (bits 0-6 = bits 9-15)
VDPReg6		equ 0x00 ; 6: Unused
VDPReg7		equ 0x00 ; 7: Background colour - bits 0-3 = colour, bits 4-5 = palette
VDPReg8		equ 0x00 ; 8: Unused
VDPReg9		equ 0x00 ; 9: Unused
VDPRegA		equ 0xFF ; 10: Frequency of Horiz. interrupt in Rasters (number of lines travelled by the beam)
VDPRegB		equ 0x00 ; 11: External interrupts off, V scroll fullscreen, H scroll fullscreen
VDPRegC		equ 0x81 ; 12: Shadows and highlights off, interlace off, H40 mode (320 x 224 screen res)
VDPRegD		equ 0x3F ; 13: Horiz. scroll table at VRAM 0xFC00 (bits 0-5)
VDPRegE		equ 0x00 ; 14: Unused
VDPRegF		equ 0x02 ; 15: Autoincrement 2 bytes
VDPReg10	equ 0x01 ; 16: Vert. scroll 32, Horiz. scroll 64
VDPReg11	equ 0x00 ; 17: Window Plane X pos 0 left (pos in bits 0-4, left/right in bit 7)
VDPReg12	equ 0x00 ; 18: Window Plane Y pos 0 up (pos in bits 0-4, up/down in bit 7)
VDPReg13	equ 0xFF ; 19: DMA length lo byte
VDPReg14	equ 0xFF ; 20: DMA length hi byte
VDPReg15	equ 0x00 ; 21: DMA source address lo byte
VDPReg16	equ 0x00 ; 22: DMA source address mid byte
VDPReg17	equ 0x80 ; 23: DMA source address hi byte, memory-to-VRAM mode (bits 6-7)

VDPRegisters:
	dc.b VDPReg0
	dc.b VDPReg1
	dc.b VDPReg2
	dc.b VDPReg3
	dc.b VDPReg4
	dc.b VDPReg5
	dc.b VDPReg6
	dc.b VDPReg7
	dc.b VDPReg8
	dc.b VDPReg9
	dc.b VDPRegA
	dc.b VDPRegB
	dc.b VDPRegC
	dc.b VDPRegD
	dc.b VDPRegE
	dc.b VDPRegF
	dc.b VDPReg10
	dc.b VDPReg11
	dc.b VDPReg12
	dc.b VDPReg13
	dc.b VDPReg14
	dc.b VDPReg15
	dc.b VDPReg16
	dc.b VDPReg17

; MegaCD signatures
mcd_sig_1: dc.b 'SEGA',0
mcd_sig_2: dc.b 'SEGA',0
mcd_sig_3: dc.b 'WONDER',0
mcd_sig_4: dc.b 'SEGA',0

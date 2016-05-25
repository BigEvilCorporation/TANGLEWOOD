;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

; Copy memory (longwords)
ENTITY_GETCENTREX: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	lsr.l   #0x1, \destreg
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETCENTREY: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	lsr.l   #0x1, \destreg
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm

TOSUBPIXELS: macro destreg
	lsl.l   #0x8, \destreg
	endm
	
TOPIXELS: macro destreg
	lsr.l   #0x8, \destreg
	endm
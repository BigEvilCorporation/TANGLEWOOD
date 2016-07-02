;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

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

ENTITY_GETLEFT: macro destreg,addrreg
	move.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETRIGHT: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Width(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	add.l   Entity_WorldPosX(\addrreg), \destreg
	endm
	
ENTITY_GETTOP: macro destreg,addrreg
	move.l   Entity_WorldPosY(\addrreg), \destreg
	endm
	
ENTITY_GETBOTTOM: macro destreg,addrreg
	clr.l   \destreg
	move.w  Entity_Height(\addrreg), \destreg
	mulu    #SubpixelsPerPixel, \destreg
	add.l   Entity_WorldPosY(\addrreg), \destreg
	endm

TOSUBPIXELS: macro destreg
	lsl.l   #0x8, \destreg
	endm
	
TOPIXELS: macro destreg
	lsr.l   #0x8, \destreg
	endm
	
	; Play SFX non-excusively (won't play if already playing)
PLAYSFX: macro sfxAddr
	PUSHL a0
	PUSHL d0
	jsr   Echo_GetStatus
	btst  #0x0, d0
	bne   @ALREADY_PLAYING\@
	move.l \sfxAddr, a0
	jsr   Echo_PlaySFX
	@ALREADY_PLAYING\@:
	POPL  d0
	POPL  a0
	endm
	
	; Play SFX exclusively (replaces current SFX)
PLAYSFX_EX: macro sfxAddr
	PUSHL a0
	move.l \sfxAddr, a0
	jsr   Echo_PlaySFX
	POPL  a0
	endm
	
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
	
ENTITY_GETCENTREVEC2: macro destreg,tmpreg,addrreg
	clr.l   \destreg
	clr.l   \tmpreg
	move.w  Entity_Width(\addrreg), \destreg		; Get width/height in pixels
	move.w  Entity_Height(\addrreg), \tmpreg
	;lsl.l   #SubpixelShift-1, \destreg				; To subpixels + div/2
	;lsl.l   #SubpixelShift-1, \tmpreg
	lsl.l   #0x7, \destreg				; To subpixels + div/2
	lsl.l   #0x7, \tmpreg
	add.l   Entity_WorldPosX(\addrreg), \destreg	; Add world pos
	add.l   Entity_WorldPosY(\addrreg), \tmpreg
	;lsr.l   #SubpixelShift, \destreg				; To pixels
	;lsr.l   #SubpixelShift, \tmpreg
	lsr.l   #0x8, \destreg				; To pixels
	lsr.l   #0x8, \tmpreg
	swap    \destreg								; Assemble vector
	move.w  \tmpreg, \destreg
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
	
	; Play SFX non-excusively (won't play if already playing or sound system busy)
PLAYSFX_LOWPRIO: macro sfxAddr
	PUSHL a0
	PUSHL d0
	jsr   Echo_GetStatus
	andi.w #0x8001, d0		; Bit 1 = SFX playing, bit 15 = Echo busy
	cmp.w #0x0, d0
	bne   @BUSY\@
	move.l \sfxAddr, a0
	jsr   Echo_PlaySFX
	@BUSY\@:
	POPL  d0
	POPL  a0
	endm
	
	; Play SFX exclusively (replaces current SFX)
PLAYSFX_HIGHPRIO: macro sfxAddr
	PUSHL a0
	move.l \sfxAddr, a0
	jsr   Echo_PlaySFX
	POPL  a0
	endm
	
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;==============================================================
;   macros.asm - Utility macros
;==============================================================

; Stack push (word)
PUSHW: macro reg
    move.w \reg, -(sp)
    endm
	
; Stack pop (word)
POPW: macro reg
    move.w (sp)+, \reg
    endm
	
; Stack push (longword)
PUSHL: macro reg
    move.l \reg, -(sp)
    endm
	
; Stack pop (longword)
POPL: macro reg
    move.l (sp)+, \reg
    endm
	
; Stack alloc (bytes)
ALLOCSTACKB: macro bytes
	sub.l  #\bytes, sp
	endm
	
; Stack free (bytes)
FREESTACKB: macro bytes
	add.l  #\bytes, sp
	endm
	
; Copy memory (longwords)
MEMCPYL: macro destreg,sourcereg,countreg
	subi.l #0x1, \countreg
	@MEMCPYL_LP\@:
	move.l (\sourcereg)+, (\destreg)+
	dbra   \countreg, @MEMCPYL_LP\@
	endm

; Clamp value between A and B
CLAMP: macro valuereg,minreg,maxreg
	cmp.l  \minreg,\valuereg
	bge    @WITHIN_MIN\@
	move.l \minreg,\valuereg
	@WITHIN_MIN\@:
	cmp.l  \maxreg,\valuereg
	ble    @WITHIN_MAX\@
	move.l \maxreg,\valuereg
	@WITHIN_MAX\@:
	endm
	
; Fixed-point (frac = 8) linear interpolation between A and B by T
LERP_FIXED8: macro destreg,from,to,time
	sub.l  \from,\to
	mulu   \time,\to
	lsr.l  #0x8, \to
	add.l  \from,\to
	move.l \to,\destreg
	endm
	
LERP_FIXED: macro destreg,A,B,T
	; a + ((t * (b-a)) >> 8)
	sub.l  \A,\B
	mulu   \T,\B
	lsr.l  #0x8,\B
	add.l  \A,\B
	move.l \B,\destreg
	endm
	
; Integer linear interpolation between A and B by T (0-1024)
LERP_INT1024: macro destreg,A,B,T,tempreg
	; (A*(1024-T) + B * T) >> 10
	move.l #1024,\tempreg		; Backup T
	sub.l  \T,\tempreg	; (1024-T)
	mulu   \tempreg,\A		; A*(1024-T)
	mulu   \T,\B			; B*T
	add.l  \A,\B			; (A*(1024-T) + B * T)
	lsr.l  #0x8,\B			; (A*(1024-T) + B * T) >> 10
	lsr.l  #0x2,\B
	move.l \B,\destreg
	endm

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
	@MEMCPYL_LP:
	move.l (\sourcereg)+, (\destreg)+
	dbra   \countreg, @MEMCPYL_LP
	endm

CLAMP: macro valuereg,minreg,maxreg
	cmp.l  \minreg,\valuereg
	bge    @WITHIN_MIN
	move.l \minreg,\valuereg
	@WITHIN_MIN:
	cmp.l  \maxreg,\valuereg
	ble    @WITHIN_MAX
	move.l \maxreg,\valuereg
	@WITHIN_MAX:
	endm
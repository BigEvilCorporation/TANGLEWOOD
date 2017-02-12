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

; Stack push multiple regs
PUSHM: macro regs
	 movem.l \regs, -(sp)
	 endm
	 
; Stack pop multiple regs
POPM: macro regs
	movem.l (sp)+, \regs
	endm
	
; Stack push all regs
PUSHALL: macro
	 movem.l d0-d7/a0-a6, -(sp)
	 endm
	 
; Stack pop all regs
POPALL: macro
	movem.l (sp)+, d0-d7/a0-a6
	endm

;==============================================================
	
; Stack alloc (bytes)
ALLOCSTACKB: macro bytes
	sub.l  #\bytes, sp
	endm
	
; Stack free (bytes)
FREESTACKB: macro bytes
	add.l  #\bytes, sp
	endm
	
;==============================================================

; Copy memory (longwords)
MEMCPYL: macro destreg,sourcereg,countreg
	subi.w #0x1, \countreg
	@MEMCPYL_LP\@:
	move.l (\sourcereg)+, (\destreg)+
	dbra   \countreg, @MEMCPYL_LP\@
	endm

; Copy memory (words)
MEMCPYW: macro destreg,sourcereg,countreg
	subi.w #0x1, \countreg
	@MEMCPYL_LP\@:
	move.w (\sourcereg)+, (\destreg)+
	dbra   \countreg, @MEMCPYL_LP\@
	endm
	
; Zero memory (longwords)
MEMZEROL: macro addressreg,countreg
	subi.l #0x1, \countreg
	@MEMZEROL_LP\@:
	move.l #0x0, (\addressreg)+
	dbra   \countreg, @MEMZEROL_LP\@
	endm

;==============================================================
	
; Set VDP register state (and update local table)
VDPSETREG: macro regnum,valuereg
	move.b \valuereg,(vdp_regs+\regnum)
	andi.w #0x00FF,\valuereg
	ori.w  #((0x80|(\regnum))<<8),\valuereg
	move.w \valuereg, vdp_control
	endm
	
; Get VDP register state from local table
VDPGETREG: macro regnum,valuereg
	move.b (vdp_regs+\regnum),\valuereg
	endm

VDP_SETADDRESS: macro destreg, baseaddr, optype
	; Address bit pattern: --DC BA98 7654 3210 ---- ---- ---- --FE
	add.l   \baseaddr, \destreg		; Add VRAM address offset
	rol.l   #0x2,\destreg			; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, \destreg			; Shift lower word back
	swap    \destreg				; Swap address hi/lo
	ori.l   \optype, \destreg		; OR in VRAM/CRAM/VSRAM write/read command
	move.l  \destreg, vdp_control	; Move dest address to VDP control port
	endm

;==============================================================

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
	
; Get positive absolute
ABS: macro valuereg
	cmp.l #0x0, \valuereg
	bge   @Pos\@
	neg.l \valuereg
	@Pos\@:
	endm

;==============================================================
	
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

;==============================================================

TOSUBPIXELS: macro destreg
	lsl.l   #0x8, \destreg
	endm
	
TOPIXELS: macro destreg
	lsr.l   #0x8, \destreg
	endm
	
PIXELS2TILES: macro reg
	lsr.w  #0x3, \reg
	endm
	
TILES2PIXELS: macro reg
	lsl.w  #0x3, \reg
	endm

TILES2BLOCKS: macro reg
	lsr.w  #0x2, \reg
	endm
	
BLOCKS2TILES: macro reg
	lsl.w  #0x2, \reg
	endm

;==============================================================

RAISE_EXCEPTION: macro errcode
	move.l #(\errcode)<<0x10, a5	; Err code byte to upper a5
	illegal
	endm

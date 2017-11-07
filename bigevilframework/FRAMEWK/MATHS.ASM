;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   maths.asm - Maths routines
;==============================================================

RND_Init:
	move.l #0x26121985, rand_seed
	rts

RND_GenerateLong:
	move.l (rand_seed),D0
	btst   #1,D0
	sne    D1
	btst   #5,D0
	sne    D2
	eor.b  D2,D1
	btst   #6,D0
	sne    D2
	eor.b  D2,D1
	btst   #31,D0
	sne    D2
	eor.b  D2,D1
	add.b  D1,D1
	addx.l D0,D0
	move.l D0,rand_seed
	rts

RND_GenerateWordClamped:
	; d0 (w) Out
	; d1 (w) Min
	; d2 (w) Max

	PUSHM  d1-d2
	jsr    RND_GenerateLong
	POPM   d1-d2
	clr.l  d3
	andi.l #0xFFFF, d0
	andi.l #0xFFFF, d1
	andi.l #0xFFFF, d2
	move.w d2, d3
	sub.w  d1, d2	; Max-min
	bne    @NonZero
	move.w #0x1, d2
	@NonZero:
	divs   d2, d0	; Rand to (max-min) range
	swap   d0		; Remainder
	add.w  d1, d0	; Add min

	rts

RND_Chance:
	; d0 (w) IN: Percent chance of result being 1 or 0
	;    (b) OUT: Result

	move.w d0, d4
	move.w #0, d1
	move.w #100, d2
	jsr    RND_GenerateWordClamped
	move.w d0, d1
	move.b #0x0, d0
	cmp.w  d4, d1
	bgt    @No
	move.b #0x1, d0
	@No:

	rts

; 32bit x 32bit multiply
Mul32:
	; d0 (l) Operand a
	; d1 (l) Operand b
	; d0 (l) OUT: Result
	move.w  d1,d2
	mulu    d0,d2
	move.l  d1,d3
	swap    d3
	mulu    d0,d3
	swap    d3
	clr.w   d3
	add.l   d3,d2
	swap    d0
	mulu    d1,d0
	swap    d0
	clr.w   d0
	add.l   d2,d0
	rts

; Fixed point 16.16 multiply
Mul1616:
	; d0 (l) Operand a
	; d1 (l) Operand b
	; d0 (l) OUT: Result

	; a = x >> 16;
	; b = x & 0xffff;
	; c = y >> 16;
	; d = y & 0xffff;

	PUSHM  d2-d6

	moveq  #0x0, d2
	moveq  #0x0, d3
	move.w d0, d2	; b
	move.w d1, d3	; d
	clr.w  d0
	swap   d0		; a
	clr.w  d1
	swap   d1		; c

	; ((d * b) >> 16) + (d * a) + (c * b) + ((c * a) << 16)

	; d0 = a
	; d2 = b
	; d1 = c
	; d3 = d

	; ((d * b) >> 16)
	move.l d2, d4
	muls   d3, d4
	asr.l  #0x8, d4
	asr.l  #0x8, d4

	; (d * a)
	move.l d0, d5
	muls   d3, d5

	; (c * b)
	move.l d2, d6
	muls   d1, d6

	; ((c * a) << 16)
	muls   d1, d0
	asl.l  #0x8, d0
	asl.l  #0x8, d0

	add.l  d4, d0
	add.l  d5, d0
	add.l  d6, d0

	POPM   d2-d6

	rts
	
VEC2_ADD: macro vec1,vec2
    add.w \vec1, \vec2	; Vec2.y + Vec1.y
	swap  \vec1
	swap  \vec2
	add.w \vec1, \vec2	; Vec2.x + Vec1.x
	swap  \vec1
	swap  \vec2
    endm

VEC2_SUB: macro vec1,vec2
    sub.w \vec1, \vec2	; Vec2.y - Vec1.y
	swap  \vec1
	swap  \vec2
	sub.w \vec1, \vec2	; Vec2.x - Vec1.x
	swap  \vec1
	swap  \vec2
    endm
	
VEC2_DISTSQ: macro vec1,vec2,tmpreg
	; DistSq = sq(v2.x - v1.x) + sq(v2.y - v1.y)
    clr.l  \tmpreg
	sub.w  \vec2, \vec1		; Vec2.y - Vec1.y
	move.w \vec1, \tmpreg
	muls   \tmpreg, \tmpreg	; Square
	swap   \vec1
	swap   \vec2
	sub.w  \vec2, \vec1		; Vec2.x - Vec1.x
	muls   \vec1, \vec1		; Square
	add.l  \tmpreg, \vec1
    endm

VEC2_DOT: macro vec1,vec2,tmpreg
	; Dot = (v1.x * v2.x + v1.y * v2.y)
	move.w  \vec1, \tmpreg
	muls.w  \vec2, \tmpreg	; Vec2.y * Vec1.y
	swap    \vec1
	swap    \vec2
	muls.w  \vec2, \vec1	; Vec2.x * Vec1.x
	add.l   \tmpreg, \vec1	; Add
    endm

VEC2_REFLECT: macro vec,norm,tmpreg1,tmpreg2,tmpreg3
											; Reflect = vec - (2 * norm * (norm . vec))
	move.l \vec, \tmpreg1
	move.l \norm, \tmpreg2
	VEC2_DOT  \tmpreg1, \tmpreg2, \tmpreg3	;                             (norm . vec)
	muls.w #0x2, \norm						;                 (2 * norm.y)
	muls.w \tmpreg1, \norm					;                           * (norm . vec)
	sub.w  \norm, \vec						;           vec.y -
	swap   \norm
	muls.w #0x2, \norm						;                 (2 * norm.x)
	muls.w \tmpreg1, \norm					;                           * (norm . vec)
	sub.w  \norm, \vec						;           vec.x -
	swap   \norm
	endm
	
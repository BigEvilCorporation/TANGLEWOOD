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

	PUSHL  d1-d2
	jsr    RND_GenerateLong
	POPL   d1-d2
	clr.l  d3
	andi.l #0xFFFF, d0
	andi.l #0xFFFF, d1
	andi.l #0xFFFF, d2
	move.w d2, d3
	sub.w  d1, d2	; Max-min
	divu   d2, d0	; Rand to (max-min) range
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
	
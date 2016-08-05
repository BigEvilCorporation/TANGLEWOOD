;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   maths.asm - Maths routines
;==============================================================

Clamp:
	; Slow and dirty branched clamp (signed)
	; d0 (l) In: Value to clamp, Out: Clamped value
	; d1 (l) In: Min bound
	; d2 (l) In: Max bound

	cmp.l  d0, d1
	ble    @WithinMin
	move.l d1, d0
	bra    @End
	@WithinMin:

	cmp.l  d0, d2
	bge    @WithinMax
	move.l d2, d0
	bra    @End
	@WithinMax:

	@End:
	rts

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

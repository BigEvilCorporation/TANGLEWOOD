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

RandInit:
	move.l #0x26121985, rand_seed
	rts

RandLong:
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

VectorAdd:
	; d0 (ww) In: Vec1 XY, Out: Vec3 XY
	; d1 (ww) In: Vec2 XY

	add.w d1, d0	; Vec2.y - Vec1.y
	swap  d0
	swap  d1
	add.w d1, d0	; Vec2.x - Vec1.x
	swap  d0

	rts

VectorSub:
	; d0 (ww) In: Vec1 XY, Out: Vec3 XY
	; d1 (ww) In: Vec2 XY

	sub.w d1, d0	; Vec2.y - Vec1.y
	swap  d0
	swap  d1
	sub.w d1, d0	; Vec2.x - Vec1.x
	swap  d0

	rts

VectorDistSq:
	; d0 (ww) In: Vec1 XY, Out: squared distance
	; d1 (ww) In: Vec2 XY

	; Dist = sq(v2.x - v1.x) + sq(v2.y - v1.y)
	
	clr.l  d2
	
	sub.w  d1, d0	; Vec2.y - Vec1.y
	move.w d0, d2
	ext.l  d2  
	muls   d2, d2	; Square
	
	swap   d0
	swap   d1
	
	sub.w  d1, d0	; Vec2.x - Vec1.x
	ext.l  d0
	muls   d0, d0	; Square
	
	add.l  d2, d0
	
	rts

VectorDot:
	; d0 (ww) In: Vec1 XY, Out: Dot product
	; d1 (ww) In: Vec2 XY

	; Dot = (v1.x * v2.x + v1.y * v2.y)

	move.w  d0, d2
	muls.w  d1, d2	; Vec2.y * Vec1.y (result is longword in d2)
	
	swap    d0
	swap    d1
	
	muls.w  d1, d0	; Vec2.x * Vec1.x (result is longword in d0)
	
	add.l   d2, d0	; Add

	rts

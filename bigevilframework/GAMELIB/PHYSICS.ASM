;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   physics.asm - Physics routines
;==============================================================

PHYS_TestBoxIntersectBox:
	; d0 (b)  Return value: 0 = no collision, 1 = collision
	; d1 (ww) Box 1 min XY
	; d2 (ww) Box 1 max XY
	; d3 (ww) Box 2 min XY
	; d4 (ww) Box 2 max XY
	
	move.b #0x0, d0
	
	; If maxY1 < minY2, bail
	cmp.w d2, d3
	bgt @NoIntersect

	; If minY1 > maxY2, bail
	cmp.w d1, d4
	blt @NoIntersect
	
	; If maxX1 < minX2, bail
	swap d2
	swap d3
	cmp.w d2, d3
	bgt @NoIntersect
		
	; If minX1 > maxX2, bail
	swap d1
	swap d4
	cmp.w d1, d4
	blt @NoIntersect
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@NoIntersect:
	rts
	
PHYS_TestBoxIntersectBoxX:
	; d0 (b)  Return value: 0 = no collision, 1 = collision
	; d1 (w) Box 1 min X
	; d2 (w) Box 1 max X
	; d3 (w) Box 2 min X
	; d4 (w) Box 2 max X
	
	move.b #0x0, d0
	
	; If maxX1 < minX2, bail
	cmp.w d2, d3
	bgt @NoIntersect
		
	; If minX1 > maxX2, bail
	cmp.w d1, d4
	blt @NoIntersect
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@NoIntersect:
	rts

PHYS_TestBoxInsideBox:
	; d0 (b)  Return value: 0 = box 2 outside box 1, 1 = box 2 inside box 1
	; d1 (ww) Box 1 min XY (outside box)
	; d2 (ww) Box 1 max XY
	; d3 (ww) Box 2 min XY (inside box)
	; d4 (ww) Box 2 max XY
	
	move.b #0x0, d0
	
	; If minY1 > minY2, bail
	cmp.w d1, d3
	blt @Outside

	; If maxY1 < maxY2, bail
	cmp.w d2, d4
	bgt @Outside

	; If minX1 > minX2, bail
	swap d1
	swap d3
	cmp.w d1, d3
	blt @Outside
	
	; If maxX1 < maxX2, bail
	swap d2
	swap d4
	cmp.w d2, d4
	bgt @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestBoxInsideBoxX:
	; d0 (b)  Return value: 0 = box 2 X outside box 1 X, 1 = box 2 X inside box 1 X
	; d1 (w) Box 1 min X (outside box)
	; d2 (w) Box 1 max X
	; d3 (w) Box 2 min X (inside box)
	; d4 (w) Box 2 max X
	
	move.b #0x0, d0

	; If minX1 > minX2, bail
	cmp.w d1, d3
	blt @Outside
	
	; If maxX1 < maxX2, bail
	cmp.w d2, d4
	bgt @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestPointInsideBox:
	; d0 (b)  Return value: 0 = point outside box, 1 = point inside box
	; d1 (ww) Box min XY
	; d2 (ww) Box max XY
	; d3 (ww) Point XY
	
	move.b #0x0, d0
	
	; If point Y < box min Y, bail
	cmp.w d3, d1
	bgt   @Outside
	
	; If point Y > box max Y, bail
	cmp.w d3, d2
	blt   @Outside
	
	swap  d3
	
	; If point X < box min X, bail
	swap  d1
	cmp.w d3, d1
	bgt   @Outside
	
	; If point X > box man X, bail
	swap  d2
	cmp.w d3, d2
	blt   @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestEntityBoxIntersectBoxX:
	; d0 (b) Return value
	; a0 --- Entity 1
	; a1 --- Entity 2
	
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	
	swap d1
	swap d2
	swap d3
	swap d4
	
	jsr PHYS_TestBoxIntersectBoxX
	
	rts
	
PHYS_TestEntityBoxInsideBoxX:
	; d0 (b) Return value
	; a0 --- Entity 1
	; a1 --- Entity 2
	
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	
	swap d1
	swap d2
	swap d3
	swap d4
	
	jsr PHYS_TestBoxInsideBoxX
	
	rts

PHYS_EntityDistSq:
	; d0 (l) Return value (pixel space)
	; a0 --- Entity 1
	; a1 --- Entity 2

	; Obj 1 X
	move.l Entity_WorldPosX(a0), d0	; X
	TOPIXELS d0							; To screen space
	swap   d0							; In upper word d1
	
	; Obj 1 Y
	move.l Entity_WorldPosY(a0), d2	; Y
	TOPIXELS d2							; To screen space
	move.w d2, d0						; In lower word d1
	
	; Obj 2 X
	move.l Entity_WorldPosX(a1), d1	; X
	TOPIXELS d1							; To screen space
	swap   d1							; In upper word d1
	
	; Obj 2 Y
	move.l Entity_WorldPosY(a1), d2	; Y
	TOPIXELS d2							; To screen space
	move.w d2, d1						; In lower word d1

	VEC2_DISTSQ d0, d1, d2

	rts

;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   physics.asm - Physics routines
;==============================================================

TestBoxIntersectBox:
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

TestBoxInsideBox:
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
	
TestGameObjBoxIntersectBox:
	; d0 (b) Return value
	; a0 --- GameObj 1
	; a1 --- GameObj 2
	
	; Obj 1 min X
	move.l GameObj_WorldPosX(a0), d1	; X
	lsr.l  #0x8, d1						; To screen space
	move.w d1, d2						; Copy for max
	swap   d1							; In upper word d1
	
	; Obj 1 max X
	move.w GameObj_Width(a0), d3		; Width
	add.w  d3, d2						; Fuzzl X max
	swap   d2							; In upper word d2
	
	; Obj 1 min Y
	move.l GameObj_WorldPosY(a0), d3	; Y
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d2						; Copy for max
	move.w d3, d1						; In lower word d1
	
	; Obj 1 max Y
	move.w GameObj_Height(a0), d3		; Height
	add.w  d3, d2						; Fuzzl Y max
	
	; Obj 2 min X
	move.l GameObj_WorldPosX(a1), d3	; X
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d4						; Copy for max
	swap   d3							; In upper word d1
	
	; Obj 2 max X
	move.w GameObj_Width(a1), d5		; Width
	add.w  d5, d4						; Fuzzl X max
	swap   d4							; In upper word d2
	
	; Obj 2 min Y
	move.l GameObj_WorldPosY(a1), d5	; Y
	lsr.l  #0x8, d5						; To screen space
	move.w d5, d4						; Copy for max
	move.w d5, d3						; In lower word d1
	
	; Obj 2 max Y
	move.w GameObj_Height(a1), d5		; Height
	add.w  d5, d4						; Fuzzl Y max
	
	jsr TestBoxIntersectBox
	
	rts

TestGameObjBoxInsideBox:
	; d0 (b) Return value
	; a0 --- GameObj 1
	; a1 --- GameObj 2
	
	; Obj 1 min X
	move.l GameObj_WorldPosX(a0), d1	; X
	lsr.l  #0x8, d1						; To screen space
	move.w d1, d2						; Copy for max
	swap   d1							; In upper word d1
	
	; Obj 1 max X
	move.w GameObj_Width(a0), d3		; Width
	add.w  d3, d2						; Fuzzl X max
	swap   d2							; In upper word d2
	
	; Obj 1 min Y
	move.l GameObj_WorldPosY(a0), d3	; Y
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d2						; Copy for max
	move.w d3, d1						; In lower word d1
	
	; Obj 1 max Y
	move.w GameObj_Height(a0), d3		; Height
	add.w  d3, d2						; Fuzzl Y max
	
	; Obj 2 min X
	move.l GameObj_WorldPosX(a1), d3	; X
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d4						; Copy for max
	swap   d3							; In upper word d1
	
	; Obj 2 max X
	move.w GameObj_Width(a1), d5		; Width
	add.w  d5, d4						; Fuzzl X max
	swap   d4							; In upper word d2
	
	; Obj 2 min Y
	move.l GameObj_WorldPosY(a1), d5	; Y
	lsr.l  #0x8, d5						; To screen space
	move.w d5, d4						; Copy for max
	move.w d5, d3						; In lower word d1
	
	; Obj 2 max Y
	move.w GameObj_Height(a1), d5		; Height
	add.w  d5, d4						; Fuzzl Y max
	
	jsr TestBoxInsideBox
	
	rts

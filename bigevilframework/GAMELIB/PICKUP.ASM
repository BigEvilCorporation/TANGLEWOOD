;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pickup.asm - Simple pickup object
;==============================================================

; Struct
	rsset (GameObj_Struct_Size)
;--------------------------
Pickup_Taken        rs.b 1
;--------------------------
Pickup_Struct_Pad   rs.b 3	; Alignment padding
Pickup_Struct_Size  rs.b 0

PickupInit:
	jsr GameObjInit

	; Default state
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)	; Nest graphics are baked into the level
	move.b #0x0, GameObj_HasPhysics(a0)
	move.b #0x0, Pickup_Taken(a0)

	rts

PickupUpdate:
	jsr GameObjUpdate
	rts

PickupDraw:
	jsr GameObjDraw
	rts
	
PickupTestObj:
	; a0 --- Pickup address
	; a1 --- Test object address
	; d0 (b) Out - picked up
	
	; Test bounds intersection
	jsr   TestGameObjBoxIntersectBox
	cmp.b #0x0,d0
	beq   @NoIntersection
	
	; Intersection, disable and mark as picked up
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)
	move.b #0x1, Pickup_Taken(a0)
	
	@NoIntersection:
	rts
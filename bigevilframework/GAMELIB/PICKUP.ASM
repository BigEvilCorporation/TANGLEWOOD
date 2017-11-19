;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pickup.asm - Simple animated pickup object
;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Pickup_Taken        rs.b 1
;--------------------------
	RS_ALIGN
Pickup_Struct_Size  rs.b 0

PickupInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_pickup, Entity_TypeBits(a0)

	; Default state
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x0, PhysicsObj_HasPhysics(a0)
	move.b #0x0, Pickup_Taken(a0)

	rts

PickupUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr PhysicsObjUpdate
	rts
	
PickupTestObj:
	; a0 --- Pickup address
	; a1 --- Test object address
	; d0 (b) Out - picked up
	
	; Test bounds intersection
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr   PHYS_TestBoxIntersectBox
	tst.b d0
	beq   @NoIntersection
	
	; Intersection, disable and mark as picked up
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	move.b #0x1, Pickup_Taken(a0)
	
	@NoIntersection:
	rts

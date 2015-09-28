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
	move.b #0x0, Pickup_Taken(a0)

	rts

PickupUpdate:

	rts

PickupDraw:

	rts
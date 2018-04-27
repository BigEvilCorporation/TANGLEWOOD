;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pushobj.asm - Base struct and utils for pushable objects
;==============================================================

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
PushObj_NoAI			rs.b 1	; AI cannot push
;-----------------------------
	RS_ALIGN
PushObj_Struct_Size		rs.b 0
;-----------------------------

PushObjInit:
	jsr    PhysicsObjInit
	move.b #0x0, PushObj_NoAI(a0)
	rts

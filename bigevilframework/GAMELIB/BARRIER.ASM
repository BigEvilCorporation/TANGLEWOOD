;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   barrier.asm - Moving barrier wall utility struct
;==============================================================

	rsset 0
;---------------------------------
	LINKED_LIST_NODE Barriers ; Linked list entry
	LINKED_LIST_NODE MovingBarriers ; Linked list entry
;---------------------------------
Barrier_PosX			rs.l 1	; Position
Barrier_PosY			rs.l 1
Barrier_VelX			rs.l 1	; Velocity
Barrier_VelY			rs.l 1
Barrier_TotalHitVel		rs.l 1	; Total velocity of objects hitting barrier this frame
Barrier_BreakVel		rs.l 1	; Velocity needed to break barrier
Barrier_Width			rs.w 1	; Barrier wall width
Barrier_Height			rs.w 1	; Barrier wall height
Barrier_BreakMass		rs.b 1	; Mass needed to break barrier
Barrier_Broken			rs.b 1	; Barrier broken
;---------------------------------
	RS_ALIGN
Barrier_Struct_Size		rs.b 0
;---------------------------------

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
;---------------------------------
Barrier_PosX			rs.l 1
Barrier_PosY			rs.l 1
Barrier_VelX			rs.l 1
Barrier_VelY			rs.l 1
Barrier_Width			rs.w 1
Barrier_Height			rs.w 1
Barrier_Active			rs.b 1
;---------------------------------
Barrier_Struct_Pad		rs.b 3
Barrier_Struct_Size		rs.b 0
;---------------------------------

;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   platform.asm - Moving platform utility struct
;==============================================================

	rsset 0
;---------------------------------
	LINKED_LIST_NODE Platforms ; Linked list entry
;---------------------------------
Platform_PosX			rs.l 1
Platform_PosY			rs.l 1
Platform_VelX			rs.l 1
Platform_VelY			rs.l 1
Platform_Owner			rs.l 1
Platform_Width			rs.w 1
Platform_TotalMass		rs.w 1
Platform_Occupied		rs.b 1
;---------------------------------
Platform_Struct_Pad		rs.b 3
Platform_Struct_Size	rs.b 0
;---------------------------------

;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   platform.asm - Moving platform utility struct
;==============================================================

PlatformType_Sliding	equ 0x0
PlatformType_Rolling	equ 0x1

	rsset 0
;---------------------------------
	LINKED_LIST_NODE Platforms ; Linked list entry
	LINKED_LIST_NODE MovingPlatforms ; Linked list entry
;---------------------------------
Platform_PosX			rs.l 1
Platform_PosY			rs.l 1
Platform_VelX			rs.l 1
Platform_VelY			rs.l 1
Platform_Owner			rs.l 1
Platform_LastOccupant	rs.l 1
Platform_Width			rs.w 1
Platform_TotalMass		rs.w 1
Platform_TerrainFlags	rs.w 1
Platform_Type			rs.b 1
Platform_Occupied		rs.b 1
Platform_Dirty			rs.b 1
;---------------------------------
Platform_Struct_Pad		rs.b 3
Platform_Struct_Size	rs.b 0
;---------------------------------

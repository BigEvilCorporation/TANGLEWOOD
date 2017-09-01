;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   location.asm - A very very lazy and wasteful "marker point"
;   implementation. Uses Entity for free Name, Position, Active
;	flag, bounds checks and iteration methods
;==============================================================

; Constants
Location_Width        equ 0x0008
Location_Height       equ 0x0008

; Struct
	rsset (Entity_Struct_Size)
;--------------------------

;--------------------------
Location_Struct_Pad   rs.b 0	; Alignment padding
Location_Struct_Size  rs.b 0

LocationInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set type
	ori.l  #entity_type_location, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Location

	move.w #Location_Width, Entity_Width(a0)
	move.w #Location_Height, Entity_Height(a0)

	rts

LocationLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
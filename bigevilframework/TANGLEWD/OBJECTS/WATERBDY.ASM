;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   waterbdy.asm - Body of water
;==============================================================

; Constants
WaterBody_MaxEntities  equ 0x4
WaterBody_Width        equ 0x0180
WaterBody_Height       equ 0x0028

; Struct
	rsset (Entity_Struct_Size)
;--------------------------

;--------------------------
WaterBody_Struct_Pad   rs.b 0	; Alignment padding
WaterBody_Struct_Size  rs.b 0

WaterBodyInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set type
	ori.l  #entity_type_waterbody, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_WaterBody

	; Default state
	move.w #WaterBody_Width, Entity_Width(a0)
	move.w #WaterBody_Height, Entity_Height(a0)

	rts
	
WaterBodyLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
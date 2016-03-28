;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   nest.asm - The Fuzzl's lovely warm home
;==============================================================

; Constants
Nest_MaxEntities  equ 0x8
Nest_Width        equ 0x0010
Nest_Height       equ 0x0008

; Struct
	rsset (Entity_Struct_Size)
;--------------------------
Nest_Occupied	  rs.b 1	; Nest occupied by a fuzzl
;--------------------------
Nest_Struct_Pad   rs.b 3	; Alignment padding
Nest_Struct_Size  rs.b 0

NestInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base init
	jsr    GameObjInit
	
	; Set type
	addi.l #entity_type_nest, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Nests

	; Set default state
	move.w #Nest_Width, Entity_Width(a0)
	move.w #Nest_Height, Entity_Height(a0)
	move.b #0x0, Nest_Occupied(a0)

	rts

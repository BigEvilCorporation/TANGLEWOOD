;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   nest.asm - The Fuzzl's lovely warm home
;==============================================================

; Constants
Nest_MaxGameObjs  equ 0x8

; Struct
	rsset (GameObj_Struct_Size)
;--------------------------
Nest_Occupied	  rs.b 1	; Nest occupied by a fuzzl
;--------------------------
Nest_Struct_Pad   rs.b 3	; Alignment padding
Nest_Struct_Size  rs.b 0

NestInit:
	jsr GameObjInit

	; Default state
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)	; Nest graphics are baked into the level
	move.w #FuzzlNestWidth, GameObj_Width(a0)
	move.w #FuzzlNestHeight, GameObj_Height(a0)
	move.b #0x0, Nest_Occupied(a0)

	rts
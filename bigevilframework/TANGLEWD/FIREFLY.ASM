;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   firefly.asm - Firefly pickups
;==============================================================

; Constants
Firefly_MaxGameObjs  equ 0x1
Firefly_Width        equ 0x20
Firefly_Height       equ 0x20
Firefly_Type_Red     equ 0x0
Firefly_Type_Blue    equ 0x1
Firefly_Type_Green   equ 0x2
Firefly_Type_Yellow  equ 0x3

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
Firefly_Type         rs.b 1
Firefly_Pickup_Value rs.b 1
;--------------------------
Firefly_Struct_Size  rs.b 0+2 ; Alignment padding

;==============================================================

DrawFirefly:
	; a0 --- GameObj addr

	; Base functionality
	jsr AnimObjDraw

	rts
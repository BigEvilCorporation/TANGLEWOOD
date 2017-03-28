;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   deathbox.asm - They're no good, still surrounding me,
;   forcing my actions upon my DEATHBOOOOOOOOOOOOOXXXXXXXXXXX!
;==============================================================

; Constants
Deathbox_MaxEntities  equ 0x8
Deathbox_Width        equ 0x0180
Deathbox_Height       equ 0x0028

; Struct
	rsset (Entity_Struct_Size)
;--------------------------

;--------------------------
Deathbox_Struct_Pad   rs.b 0	; Alignment padding
Deathbox_Struct_Size  rs.b 0

DeathboxInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set type
	; ori.l  #entity_type_Deathbox, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Deathbox

	; Default state
	move.w #Deathbox_Width, Entity_Width(a0)
	move.w #Deathbox_Height, Entity_Height(a0)

	rts
	
DeathboxLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
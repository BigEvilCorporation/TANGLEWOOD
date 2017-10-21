;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   cargolft.asm - Big cargo lift for goldmine entry/exit
;==============================================================

; Constants
CargoLift_Width        equ 0x0050
CargoLift_Height       equ 0x0070

; Struct
	rsset (Lift_Struct_Size)
;---------------------------------
;---------------------------------
CargoLift_Struct_Pad   rs.b 0	; Alignment padding
CargoLift_Struct_Size  rs.b 0

CargoLiftInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    LiftInit
	
	; Add to count
	addq.w #0x1, EntityCount_CargoLift

	; Initialise
	move.w #CargoLift_Width, Entity_Width(a0)
	move.w #CargoLift_Height, Entity_Height(a0)
	move.b #0x0, Lift_RestrictHeight(a0)

	rts

CargoLiftLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load lift
	SPRITE_LOAD_DEFAULT cargolft,PaletteId_World0,0x0

	; Load rope
	PUSHL a0
	lea   Lift_RopeSegment(a0), a0
	SPRITE_LOAD_DEFAULT rope,PaletteId_World0,0x0
	POPL  a0

	rts
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   scrap.asm - Baby Djakk, completely harmless
;==============================================================

; Constants
Scrap_Width        equ 0x0020
Scrap_Height       equ 0x0018

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
;---------------------------------
Scrap_Struct_Pad   rs.b 3	; Alignment padding
Scrap_Struct_Size  rs.b 0

ScrapInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Add to count
	addq.w #0x1, EntityCount_Scrap

	; Initialise
	move.w  #Scrap_Width, Entity_Width(a0)
	move.w  #Scrap_Height, Entity_Height(a0)

	rts

ScrapLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT scrap,PaletteId_World0,0x0

	rts
	
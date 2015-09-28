;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   player.asm - Player specific movement and mechanics
;==============================================================

; Struct
	rsset (Character_Struct_Size)
;--------------------------

;--------------------------
Player_Struct_Pad    rs.b 0
Player_Struct_Size   rs.b 0

PlayerInit:
	; Base functionality
	jsr CharacterInit

	rts

PlayerUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterUpdate
	
	rts

PlayerDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterDraw
	
	rts
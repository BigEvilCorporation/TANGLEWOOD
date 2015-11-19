;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   obstacle.asm - Colour-reactive player blocking obstacles
;==============================================================

; Constants
Obstacle_MaxGameObjs  equ 0x2
Obstacle_Width        equ 0x0010
Obstacle_Height       equ 0x0080

; Struct
	rsset (GameObj_Struct_Size)
;--------------------------
Obstacle_Colour       rs.b 1	; Colour
;--------------------------
Obstacle_Struct_Pad   rs.b 3	; Alignment padding
Obstacle_Struct_Size  rs.b 0

ObstacleInit:
	jsr GameObjInit

	; Default state
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)
	move.b #0x0, GameObj_HasPhysics(a0)
	move.b #0x1, GameObj_Solid(a0)
	move.w #Obstacle_Width, GameObj_Width(a0)
	move.w #Obstacle_Height, GameObj_Height(a0)
	move.b #ColourRed, Obstacle_Colour(a0)

	rts

ObstacleUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	jsr GameObjUpdate

	rts

ObstacleDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	jsr GameObjDraw

	rts

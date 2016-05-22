;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   obstacle.asm - Colour-reactive player blocking obstacles
;==============================================================

; Constants
Obstacle_MaxEntities  equ 0x3
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
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base init
	jsr GameObjInit
	
	; Set type
	addi.l #entity_type_obstacle, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Obstacles
	
	; Set update and render routines
	move.l #GameObjUpdate, Entity_UpdateRoutine(a0)
	move.l #GameObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Default state
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)
	move.b #0x0, GameObj_HasPhysics(a0)
	move.b #0x1, GameObj_Solid(a0)
	move.w #Obstacle_Width, Entity_Width(a0)
	move.w #Obstacle_Height, Entity_Height(a0)
	move.b #ColourRed, Obstacle_Colour(a0)

	rts

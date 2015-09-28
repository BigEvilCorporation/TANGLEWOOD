; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects:
gameobjects_Fuzzl_count equ 2
LoadGameObjects_Fuzzl:
Fuzzl_3:
	jsr FuzzlInit
	move.l #0x00013000, GameObj_WorldPosX(a0)
	move.l #0x0000d800, GameObj_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_4:
	jsr FuzzlInit
	move.l #0x00045000, GameObj_WorldPosX(a0)
	move.l #0x0001d800, GameObj_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_Nest_count equ 2
LoadGameObjects_Nest:
Nest_5:
	jsr NestInit
	move.l #0x00031000, GameObj_WorldPosX(a0)
	move.l #0x0000e000, GameObj_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
Nest_6:
	jsr NestInit
	move.l #0x0003b000, GameObj_WorldPosX(a0)
	move.l #0x0001e000, GameObj_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_Flue_count equ 1
LoadGameObjects_Flue:
Flue_2:
	jsr FlueInit
	move.l #0x00018000, GameObj_WorldPosX(a0)
	move.l #0x0001e800, GameObj_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_Obstacle_count equ 2
LoadGameObjects_Obstacle:
Obstacle_1:
	jsr ObstacleInit
	move.l #0x00040000, GameObj_WorldPosX(a0)
	move.l #0x00016800, GameObj_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
Obstacle_7:
	jsr ObstacleInit
	move.l #0x0003d000, GameObj_WorldPosX(a0)
	move.l #0x00016800, GameObj_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
	rts


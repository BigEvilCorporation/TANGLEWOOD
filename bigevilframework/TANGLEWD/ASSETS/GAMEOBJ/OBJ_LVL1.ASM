; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl1:
gameobjects_Fuzzl_count equ 2
LoadGameObjects_Fuzzl:
Fuzzl_1:
	jsr FuzzlInit
	move.l #0x0009b000, GameObj_WorldPosX(a0)
	move.l #0x00011800, GameObj_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_2:
	jsr FuzzlInit
	move.l #0x00061000, GameObj_WorldPosX(a0)
	move.l #0x00012000, GameObj_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_Nest_count equ 2
LoadGameObjects_Nest:
Nest_3:
	jsr NestInit
	move.l #0x0003f000, GameObj_WorldPosX(a0)
	move.l #0x00019000, GameObj_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
Nest_4:
	jsr NestInit
	move.l #0x0001d800, GameObj_WorldPosX(a0)
	move.l #0x0001b800, GameObj_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_Flue_count equ 1
LoadGameObjects_Flue:
Flue_5:
	jsr FlueInit
	move.l #0x0003c000, GameObj_WorldPosX(a0)
	move.l #0x00031000, GameObj_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_Obstacle_count equ 2
LoadGameObjects_Obstacle:
Obstacle_6:
	jsr ObstacleInit
	move.l #0x0009f800, GameObj_WorldPosX(a0)
	move.l #0x00029800, GameObj_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
Obstacle_7:
	jsr ObstacleInit
	move.l #0x0009c800, GameObj_WorldPosX(a0)
	move.l #0x00029800, GameObj_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
	rts

gameobjects_Firefly_count equ 11
LoadGameObjects_Firefly:
Firefly_8:
	jsr FireflyInit
	move.l #0x00011000, GameObj_WorldPosX(a0)
	move.l #0x00019800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_9:
	jsr FireflyInit
	move.l #0x00013800, GameObj_WorldPosX(a0)
	move.l #0x0001a000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_10:
	jsr FireflyInit
	move.l #0x0000c000, GameObj_WorldPosX(a0)
	move.l #0x0001e800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_11:
	jsr FireflyInit
	move.l #0x0000d800, GameObj_WorldPosX(a0)
	move.l #0x0001e000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_12:
	jsr FireflyInit
	move.l #0x0000f000, GameObj_WorldPosX(a0)
	move.l #0x0001d800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_13:
	jsr FireflyInit
	move.l #0x00054000, GameObj_WorldPosX(a0)
	move.l #0x00013000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_14:
	jsr FireflyInit
	move.l #0x00055000, GameObj_WorldPosX(a0)
	move.l #0x00012000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_15:
	jsr FireflyInit
	move.l #0x00055800, GameObj_WorldPosX(a0)
	move.l #0x00012800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_16:
	jsr FireflyInit
	move.l #0x00085000, GameObj_WorldPosX(a0)
	move.l #0x00013800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_17:
	jsr FireflyInit
	move.l #0x00086000, GameObj_WorldPosX(a0)
	move.l #0x00013000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_18:
	jsr FireflyInit
	move.l #0x00086800, GameObj_WorldPosX(a0)
	move.l #0x00014000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_Monster_count equ 1
LoadGameObjects_Monster:
Monster_19:
	jsr MonsterInit
	move.l #0x0008d800, GameObj_WorldPosX(a0)
	move.l #0x00029800, GameObj_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts


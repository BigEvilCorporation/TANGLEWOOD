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

gameobjects_Firefly_count equ 14
LoadGameObjects_Firefly:
Firefly_20:
	jsr FireflyInit
	move.l #0x00010800, GameObj_WorldPosX(a0)
	move.l #0x0002d000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_21:
	jsr FireflyInit
	move.l #0x00011800, GameObj_WorldPosX(a0)
	move.l #0x0002d800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_22:
	jsr FireflyInit
	move.l #0x00011000, GameObj_WorldPosX(a0)
	move.l #0x0002e000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_23:
	jsr FireflyInit
	move.l #0x0002f000, GameObj_WorldPosX(a0)
	move.l #0x0002e800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_24:
	jsr FireflyInit
	move.l #0x0002f800, GameObj_WorldPosX(a0)
	move.l #0x0002f000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_25:
	jsr FireflyInit
	move.l #0x00030800, GameObj_WorldPosX(a0)
	move.l #0x0002f000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_28:
	jsr FireflyInit
	move.l #0x00052000, GameObj_WorldPosX(a0)
	move.l #0x0002e800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_38:
	jsr FireflyInit
	move.l #0x00098000, GameObj_WorldPosX(a0)
	move.l #0x0002a800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_32:
	jsr FireflyInit
	move.l #0x0004c800, GameObj_WorldPosX(a0)
	move.l #0x0002e800, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_33:
	jsr FireflyInit
	move.l #0x0004d000, GameObj_WorldPosX(a0)
	move.l #0x0002e000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_39:
	jsr FireflyInit
	move.l #0x00097800, GameObj_WorldPosX(a0)
	move.l #0x0002b000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_35:
	jsr FireflyInit
	move.l #0x0005a000, GameObj_WorldPosX(a0)
	move.l #0x0002f000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_36:
	jsr FireflyInit
	move.l #0x00059800, GameObj_WorldPosX(a0)
	move.l #0x0002e000, GameObj_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_37:
	jsr FireflyInit
	move.l #0x00097800, GameObj_WorldPosX(a0)
	move.l #0x0002a000, GameObj_WorldPosY(a0)
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


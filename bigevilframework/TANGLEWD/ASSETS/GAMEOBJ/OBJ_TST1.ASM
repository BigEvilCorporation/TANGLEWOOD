; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_tst1:
gameobjects_Fuzzl_count equ 2
LoadGameObjects_Fuzzl:
Fuzzl_3:
	jsr FuzzlInit
	move.l #0x00013000, Entity_WorldPosX(a0)
	move.l #0x0000d800, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_4:
	jsr FuzzlInit
	move.l #0x00045000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_Nest_count equ 2
LoadGameObjects_Nest:
Nest_5:
	jsr NestInit
	move.l #0x00031000, Entity_WorldPosX(a0)
	move.l #0x0000e000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
Nest_6:
	jsr NestInit
	move.l #0x0003b000, Entity_WorldPosX(a0)
	move.l #0x0001e000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_Flue_count equ 1
LoadGameObjects_Flue:
Flue_2:
	jsr FlueInit
	move.l #0x00018000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_Obstacle_count equ 2
LoadGameObjects_Obstacle:
Obstacle_1:
	jsr ObstacleInit
	move.l #0x00040000, Entity_WorldPosX(a0)
	move.l #0x00016800, Entity_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
Obstacle_7:
	jsr ObstacleInit
	move.l #0x0003d000, Entity_WorldPosX(a0)
	move.l #0x00016800, Entity_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
	rts

gameobjects_Firefly_count equ 5
LoadGameObjects_Firefly:
Firefly_8:
	jsr FireflyInit
	move.l #0x0001d000, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_9:
	jsr FireflyInit
	move.l #0x0001e000, Entity_WorldPosX(a0)
	move.l #0x0000c800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_10:
	jsr FireflyInit
	move.l #0x00023800, Entity_WorldPosX(a0)
	move.l #0x0000b000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_11:
	jsr FireflyInit
	move.l #0x00026000, Entity_WorldPosX(a0)
	move.l #0x0000b800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_12:
	jsr FireflyInit
	move.l #0x00028800, Entity_WorldPosX(a0)
	move.l #0x0000c000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_Monster_count equ 1
LoadGameObjects_Monster:
Monster_16:
	jsr MonsterInit
	move.l #0x00034800, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_Boulder_count equ 1
LoadGameObjects_Boulder:
Boulder_17:
	jsr BoulderInit
	move.l #0x00032000, Entity_WorldPosX(a0)
	move.l #0x0000c800, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl1:
gameobjects_Fuzzl_count equ 1
LoadGameObjects_Fuzzl:
Fuzzl_22:
	jsr FuzzlInit
	move.l #0x00061800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_Nest_count equ 1
LoadGameObjects_Nest:
Nest_25:
	jsr NestInit
	move.l #0x0004f000, Entity_WorldPosX(a0)
	move.l #0x00020000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_Flue_count equ 1
LoadGameObjects_Flue:
Flue_21:
	jsr FlueInit
	move.l #0x0008f000, Entity_WorldPosX(a0)
	move.l #0x0002f000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_Obstacle_count equ 1
LoadGameObjects_Obstacle:
Obstacle_23:
	jsr ObstacleInit
	move.l #0x00008000, Entity_WorldPosX(a0)
	move.l #0x00008000, Entity_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
	rts

gameobjects_Firefly_count equ 11
LoadGameObjects_Firefly:
Firefly_8:
	jsr FireflyInit
	move.l #0x00011000, Entity_WorldPosX(a0)
	move.l #0x00019800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_9:
	jsr FireflyInit
	move.l #0x00013800, Entity_WorldPosX(a0)
	move.l #0x0001a000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_10:
	jsr FireflyInit
	move.l #0x0000c000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_11:
	jsr FireflyInit
	move.l #0x0000d800, Entity_WorldPosX(a0)
	move.l #0x0001e000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_12:
	jsr FireflyInit
	move.l #0x0000f000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_13:
	jsr FireflyInit
	move.l #0x00054000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_14:
	jsr FireflyInit
	move.l #0x00055000, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_15:
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x00012800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_16:
	jsr FireflyInit
	move.l #0x00085000, Entity_WorldPosX(a0)
	move.l #0x00013800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_17:
	jsr FireflyInit
	move.l #0x00086000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_18:
	jsr FireflyInit
	move.l #0x00086800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_Monster_count equ 1
LoadGameObjects_Monster:
Monster_24:
	jsr MonsterInit
	move.l #0x00016800, Entity_WorldPosX(a0)
	move.l #0x00018800, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts


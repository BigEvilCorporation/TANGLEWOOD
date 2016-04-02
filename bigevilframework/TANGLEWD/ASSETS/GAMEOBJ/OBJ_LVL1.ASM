; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl1:
gameobjects_lvl1_Fuzzl_count equ 2
LoadGameObjects_lvl1_Fuzzl:
Fuzzl_22:
	jsr FuzzlInit
	move.l #0x00061800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_48:
	jsr FuzzlInit
	move.l #0x000e8000, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourGreen, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl1_Nest_count equ 2
LoadGameObjects_lvl1_Nest:
Nest_45:
	jsr NestInit
	move.l #0x0003d000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
Nest_49:
	jsr NestInit
	move.l #0x000ce000, Entity_WorldPosX(a0)
	move.l #0x00018800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl1_Flue_count equ 2
LoadGameObjects_lvl1_Flue:
Flue_21:
	jsr FlueInit
	move.l #0x0008f000, Entity_WorldPosX(a0)
	move.l #0x0002f000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue_44:
	jsr FlueInit
	move.l #0x000f2800, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl1_Obstacle_count equ 2
LoadGameObjects_lvl1_Obstacle:
Obstacle_33:
	jsr ObstacleInit
	move.l #0x000bf800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
Obstacle_34:
	jsr ObstacleInit
	move.l #0x000bf800, Entity_WorldPosX(a0)
	move.l #0x00021800, Entity_WorldPosY(a0)
	add.l #Obstacle_Struct_Size, a0
	rts

gameobjects_lvl1_Firefly_count equ 11
LoadGameObjects_lvl1_Firefly:
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

gameobjects_lvl1_Monster_count equ 1
LoadGameObjects_lvl1_Monster:
Monster_47:
	jsr MonsterInit
	move.l #0x00187000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #0x1, GameObj_FlippedX(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl1_Boulder_count equ 1
LoadGameObjects_lvl1_Boulder:
Boulder_50:
	jsr BoulderInit
	move.l #0x000f0000, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl1_TriggerBox_count equ 1
LoadGameObjects_lvl1_TriggerBox:
TriggerBox_51:
	jsr TriggerBoxInit
	move.l #0x001bd800, Entity_WorldPosX(a0)
	move.l #0x00026000, Entity_WorldPosY(a0)
	move.l #Lvl1_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts


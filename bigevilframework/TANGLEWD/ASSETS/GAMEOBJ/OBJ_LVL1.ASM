; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl1:
gameobjects_lvl1_Fuzzl_count equ 1
LoadGameObjects_lvl1_Fuzzl:
Fuzzl_22:
	jsr FuzzlInit
	move.l #0x00061800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl1_Nest_count equ 1
LoadGameObjects_lvl1_Nest:
Nest_45:
	jsr NestInit
	move.l #0x0003d000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl1_Flue_count equ 2
LoadGameObjects_lvl1_Flue:
Flue_67:
	jsr FlueInit
	move.l #0x0020a000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue_71:
	jsr FlueInit
	move.l #0x00040000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl1_Firefly_count equ 9
LoadGameObjects_lvl1_Firefly:
Firefly_18:
	jsr FireflyInit
	move.l #0x00086800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_17:
	jsr FireflyInit
	move.l #0x00086000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
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
	rts

gameobjects_lvl1_Monster_count equ 1
LoadGameObjects_lvl1_Monster:
Monster_52:
	jsr MonsterInit
	move.l #0x0019c800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #0x1, GameObj_FlippedX(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl1_Boulder_count equ 1
LoadGameObjects_lvl1_Boulder:
Boulder_65:
	jsr BoulderInit
	move.l #0x00112000, Entity_WorldPosX(a0)
	move.l #0x00026000, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl1_TriggerBox_count equ 3
LoadGameObjects_lvl1_TriggerBox:
TriggerBox_60:
	jsr TriggerBoxInit
	move.l #0x00125800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Night, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_59:
	jsr TriggerBoxInit
	move.l #0x000b8000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Dusk, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_68:
	jsr TriggerBoxInit
	move.l #0x0022e800, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	move.l #Lvl1_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_lvl1_Checkpoint_count equ 1
LoadGameObjects_lvl1_Checkpoint:
Checkpoint_58:
	jsr CheckpointInit
	move.l #0x00010800, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl1_WaterBody_count equ 2
LoadGameObjects_lvl1_WaterBody:
WaterBody_66:
	jsr WaterBodyInit
	move.l #0x0014b800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
WaterBody_69:
	jsr WaterBodyInit
	move.l #0x001ec000, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts


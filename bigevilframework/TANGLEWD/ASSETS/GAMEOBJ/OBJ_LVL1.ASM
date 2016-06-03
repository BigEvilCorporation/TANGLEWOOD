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
Fuzzl_22_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x000f7800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl1_Nest_count equ 1
LoadGameObjects_lvl1_Nest:
Nest_45_idx	equ 0x0
	jsr NestInit
	move.l #0x000d3000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl1_Flue_count equ 2
LoadGameObjects_lvl1_Flue:
Flue_67_idx	equ 0x0
	jsr FlueInit
	move.l #0x002a0000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue_71_idx	equ 0x1
	jsr FlueInit
	move.l #0x000d6000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl1_Firefly_count equ 9
LoadGameObjects_lvl1_Firefly:
Firefly_18_idx	equ 0x0
	jsr FireflyInit
	move.l #0x0011c800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_17_idx	equ 0x1
	jsr FireflyInit
	move.l #0x0011c000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_10_idx	equ 0x2
	jsr FireflyInit
	move.l #0x000a2000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_11_idx	equ 0x3
	jsr FireflyInit
	move.l #0x000a3800, Entity_WorldPosX(a0)
	move.l #0x0001e000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_12_idx	equ 0x4
	jsr FireflyInit
	move.l #0x000a5000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_13_idx	equ 0x5
	jsr FireflyInit
	move.l #0x000ea000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_14_idx	equ 0x6
	jsr FireflyInit
	move.l #0x000eb000, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_15_idx	equ 0x7
	jsr FireflyInit
	move.l #0x000eb800, Entity_WorldPosX(a0)
	move.l #0x00012800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Firefly_16_idx	equ 0x8
	jsr FireflyInit
	move.l #0x0011b000, Entity_WorldPosX(a0)
	move.l #0x00013800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_lvl1_Monster_count equ 1
LoadGameObjects_lvl1_Monster:
Monster_52_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00232800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #0x1, GameObj_FlippedX(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl1_Boulder_count equ 2
LoadGameObjects_lvl1_Boulder:
Boulder_65_idx	equ 0x0
	jsr BoulderInit
	move.l #0x001a8000, Entity_WorldPosX(a0)
	move.l #0x00026000, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
Boulder_72_idx	equ 0x1
	jsr BoulderInit
	move.l #0x0002b800, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl1_TriggerBox_count equ 4
LoadGameObjects_lvl1_TriggerBox:
TriggerBox_60_idx	equ 0x0
	jsr TriggerBoxInit
	move.l #0x001bb800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Night, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_59_idx	equ 0x1
	jsr TriggerBoxInit
	move.l #0x0014e000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Dusk, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_73_idx	equ 0x2
	jsr TriggerBoxInit
	move.l #0x002c9000, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	move.l #Lvl1_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_74_idx	equ 0x3
	jsr TriggerBoxInit
	move.l #0x0004f000, Entity_WorldPosX(a0)
	move.l #0x00028800, Entity_WorldPosY(a0)
	move.l #Lvl1_StartCutscene_BoulderRoll, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_lvl1_Checkpoint_count equ 1
LoadGameObjects_lvl1_Checkpoint:
Checkpoint_58_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x000a6800, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl1_WaterBody_count equ 2
LoadGameObjects_lvl1_WaterBody:
WaterBody_66_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x001e1800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
WaterBody_69_idx	equ 0x1
	jsr WaterBodyInit
	move.l #0x00282000, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts


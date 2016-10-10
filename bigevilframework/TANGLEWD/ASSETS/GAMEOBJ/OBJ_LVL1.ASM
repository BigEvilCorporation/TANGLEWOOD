; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl1:
gameobjects_lvl1_Fuzzl_count equ 0x3
LoadGameObjects_lvl1_Fuzzl:
Fuzzl_Yellow_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x000f7800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_Green_idx	equ 0x1
	jsr FuzzlInit
	move.l #0x0028f800, Entity_WorldPosX(a0)
	move.l #0x00016000, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
Fuzzl_Blue_idx	equ 0x2
	jsr FuzzlInit
	move.l #0x0029a800, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl1_Nest_count equ 0x2
LoadGameObjects_lvl1_Nest:
lvl1Nest_45_idx	equ 0x0
	jsr NestInit
	move.l #0x000d3000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
lvl1Nest_114_idx	equ 0x1
	jsr NestInit
	move.l #0x0012d000, Entity_WorldPosX(a0)
	move.l #0x0001f000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl1_Flue_count equ 0x3
LoadGameObjects_lvl1_Flue:
Flue3_HighForce_idx	equ 0x0
	jsr FlueInit
	move.l #0x002a0000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue1_HighForce_idx	equ 0x1
	jsr FlueInit
	move.l #0x000d6000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue2_LowForce_idx	equ 0x2
	jsr FlueInit
	move.l #0x00125000, Entity_WorldPosX(a0)
	move.l #0x0002f000, Entity_WorldPosY(a0)
	move.w #0x0A80, Flue_EjectForceY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl1_Firefly_count equ 0xc
LoadGameObjects_lvl1_Firefly:
lvl1Firefly_124_idx	equ 0x0
	jsr FireflyInit
	move.l #0x0028a800, Entity_WorldPosX(a0)
	move.l #0x0001a000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_103_idx	equ 0x1
	jsr FireflyInit
	move.l #0x0013d000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_81_idx	equ 0x2
	jsr FireflyInit
	move.l #0x00061000, Entity_WorldPosX(a0)
	move.l #0x00022800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_80_idx	equ 0x3
	jsr FireflyInit
	move.l #0x00063000, Entity_WorldPosX(a0)
	move.l #0x00022000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_79_idx	equ 0x4
	jsr FireflyInit
	move.l #0x00066000, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_121_idx	equ 0x5
	jsr FireflyInit
	move.l #0x0008b000, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_105_idx	equ 0x6
	jsr FireflyInit
	move.l #0x00145800, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_112_idx	equ 0x7
	jsr FireflyInit
	move.l #0x00134000, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_123_idx	equ 0x8
	jsr FireflyInit
	move.l #0x0028b800, Entity_WorldPosX(a0)
	move.l #0x0001b000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_120_idx	equ 0x9
	jsr FireflyInit
	move.l #0x0008c000, Entity_WorldPosX(a0)
	move.l #0x00016000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_116_idx	equ 0xa
	jsr FireflyInit
	move.l #0x00162000, Entity_WorldPosX(a0)
	move.l #0x00025800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl1Firefly_117_idx	equ 0xb
	jsr FireflyInit
	move.l #0x00164000, Entity_WorldPosX(a0)
	move.l #0x00025000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_lvl1_Monster_count equ 0x1
LoadGameObjects_lvl1_Monster:
Djakk_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00232800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl1_Boulder_count equ 0x2
LoadGameObjects_lvl1_Boulder:
lvl1Boulder_65_idx	equ 0x0
	jsr BoulderInit
	move.l #0x0018a800, Entity_WorldPosX(a0)
	move.l #0x00023000, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
BoulderIntro_idx	equ 0x1
	jsr BoulderInit
	move.l #0x0002b800, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl1_TriggerBox_count equ 0x6
LoadGameObjects_lvl1_TriggerBox:
lvl1TriggerBox_60_idx	equ 0x0
	jsr TriggerBoxInit
	move.l #0x001bb800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Night, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerTODDusk_idx	equ 0x1
	jsr TriggerBoxInit
	move.l #0x0013a800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Dusk, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
lvl1TriggerBox_73_idx	equ 0x2
	jsr TriggerBoxInit
	move.l #0x002c3000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	move.l #Lvl1_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerCutseneBoulder_idx	equ 0x3
	jsr TriggerBoxInit
	move.l #0x00059000, Entity_WorldPosX(a0)
	move.l #0x00025000, Entity_WorldPosY(a0)
	move.l #Lvl1_StartCutscene_BoulderRoll, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
Trigger_NearEndLevel_idx	equ 0x4
	jsr TriggerBoxInit
	move.l #0x00298000, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	move.l #Lvl1_Trigger_NearEndLevel, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerCancelColour_idx	equ 0x5
	jsr TriggerBoxInit
	move.l #0x00213800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	move.l #Lvl1_Trigger_NearCave, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_triggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_lvl1_Checkpoint_count equ 0x2
LoadGameObjects_lvl1_Checkpoint:
lvl1Checkpoint_58_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x00068800, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
lvl1Checkpoint_125_idx	equ 0x1
	jsr CheckpointInit
	move.l #0x00091000, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl1_WaterBody_count equ 0x2
LoadGameObjects_lvl1_WaterBody:
lvl1WaterBody_66_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x001e1800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
lvl1WaterBody_69_idx	equ 0x1
	jsr WaterBodyInit
	move.l #0x00282000, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_lvl1_Location_count equ 0x2
LoadGameObjects_lvl1_Location:
LocIntroActor2_idx	equ 0x0
	jsr LocationInit
	move.l #0x0009a800, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	add.l #Location_Struct_Size, a0
LocIntroActor1_idx	equ 0x1
	jsr LocationInit
	move.l #0x00097000, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	add.l #Location_Struct_Size, a0
	rts


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl2:
gameobjects_lvl2_Fuzzl_count equ 0x2
LoadGameObjects_lvl2_Fuzzl:
Lvl2_Fuzzl_Green_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x000b4000, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourGreen, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
Lvl2_Fuzzl_Yellow_idx	equ 0x1
	jsr FuzzlInit
	move.l #0x000f6800, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl2_Nest_count equ 0x2
LoadGameObjects_lvl2_Nest:
lvl2Nest_3_idx	equ 0x0
	jsr NestInit
	move.l #0x00182800, Entity_WorldPosX(a0)
	move.l #0x0001a800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
lvl2Nest_4_idx	equ 0x1
	jsr NestInit
	move.l #0x0011e000, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl2_Flue_count equ 0x5
LoadGameObjects_lvl2_Flue:
Lvl2_Flue_E_idx	equ 0x0
	jsr FlueInit
	move.l #0x0004c000, Entity_WorldPosX(a0)
	move.l #0x0002d800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Lvl2_Flue_B_idx	equ 0x1
	jsr FlueInit
	move.l #0x0017c000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Lvl2_Flue_D_idx	equ 0x2
	jsr FlueInit
	move.l #0x001a4000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
lvl2Flue_16_idx	equ 0x3
	jsr FlueInit
	move.l #0x00118000, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Lvl2_Flue_A_idx	equ 0x4
	jsr FlueInit
	move.l #0x000f0000, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl2_Firefly_count equ 0xa
LoadGameObjects_lvl2_Firefly:
lvl2Firefly_18_idx	equ 0x0
	jsr FireflyInit
	move.l #0x00046800, Entity_WorldPosX(a0)
	move.l #0x0001c800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_19_idx	equ 0x1
	jsr FireflyInit
	move.l #0x00045800, Entity_WorldPosX(a0)
	move.l #0x0001c000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_20_idx	equ 0x2
	jsr FireflyInit
	move.l #0x0006a000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_21_idx	equ 0x3
	jsr FireflyInit
	move.l #0x00069000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_22_idx	equ 0x4
	jsr FireflyInit
	move.l #0x000b6000, Entity_WorldPosX(a0)
	move.l #0x0001f800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_23_idx	equ 0x5
	jsr FireflyInit
	move.l #0x000cf800, Entity_WorldPosX(a0)
	move.l #0x0001f000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_24_idx	equ 0x6
	jsr FireflyInit
	move.l #0x000ca000, Entity_WorldPosX(a0)
	move.l #0x00011000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_25_idx	equ 0x7
	jsr FireflyInit
	move.l #0x00147800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_26_idx	equ 0x8
	jsr FireflyInit
	move.l #0x001e2000, Entity_WorldPosX(a0)
	move.l #0x0001e000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl2Firefly_27_idx	equ 0x9
	jsr FireflyInit
	move.l #0x001e4000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_lvl2_Monster_count equ 0x1
LoadGameObjects_lvl2_Monster:
Djakk_Lvl2_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00112000, Entity_WorldPosX(a0)
	move.l #0x0002a000, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl2_Boulder_count equ 0x1
LoadGameObjects_lvl2_Boulder:
lvl2Boulder_11_idx	equ 0x0
	jsr BoulderInit
	move.l #0x0010a800, Entity_WorldPosX(a0)
	move.l #0x00024800, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl2_TriggerBox_count equ 0x2
LoadGameObjects_lvl2_TriggerBox:
Trigger_EndLvl2_idx	equ 0x0
	jsr TriggerBoxInit
	move.l #0x0022f000, Entity_WorldPosX(a0)
	move.l #0x0001b800, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_Lvl2_WakeDjakk_idx	equ 0x1
	jsr TriggerBoxInit
	move.l #0x0011c000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_WakeDjakk, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_lvl2_Checkpoint_count equ 0x1
LoadGameObjects_lvl2_Checkpoint:
Lvl2Start_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x0000b800, Entity_WorldPosX(a0)
	move.l #0x00027800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl2_WaterBody_count equ 0x1
LoadGameObjects_lvl2_WaterBody:
lvl2WaterBody_15_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x0014c000, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_lvl2_Location_count equ 0x0
LoadGameObjects_lvl2_Location:
	rts

gameobjects_lvl2_Lift_count equ 0x0
LoadGameObjects_lvl2_Lift:
	rts

gameobjects_lvl2_Djrake_count equ 0x0
LoadGameObjects_lvl2_Djrake:
	rts


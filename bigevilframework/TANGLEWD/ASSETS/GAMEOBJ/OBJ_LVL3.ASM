; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl3:
gameobjects_lvl3_Fuzzl_count equ 0x2
LoadGameObjects_lvl3_Fuzzl:
Lvl3_Fuzzl_Yellow_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x001b6800, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
Lvl3_Fuzzl_Green_idx	equ 0x1
	jsr FuzzlInit
	move.l #0x00260800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	move.b #ColourGreen, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_lvl3_Nest_count equ 0x2
LoadGameObjects_lvl3_Nest:
lvl3Nest_11_idx	equ 0x0
	jsr NestInit
	move.l #0x001a5800, Entity_WorldPosX(a0)
	move.l #0x0002a000, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
lvl3Nest_38_idx	equ 0x1
	jsr NestInit
	move.l #0x0027e800, Entity_WorldPosX(a0)
	move.l #0x00020800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_lvl3_Flue_count equ 0x3
LoadGameObjects_lvl3_Flue:
lvl3Flue_13_idx	equ 0x0
	jsr FlueInit
	move.l #0x0029f800, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
lvl3Flue_14_idx	equ 0x1
	jsr FlueInit
	move.l #0x00077800, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
lvl3Flue_40_idx	equ 0x2
	jsr FlueInit
	move.l #0x0016f800, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_lvl3_Firefly_count equ 0xe
LoadGameObjects_lvl3_Firefly:
lvl3Firefly_18_idx	equ 0x0
	jsr FireflyInit
	move.l #0x00073800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_19_idx	equ 0x1
	jsr FireflyInit
	move.l #0x00062800, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_20_idx	equ 0x2
	jsr FireflyInit
	move.l #0x00064000, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_21_idx	equ 0x3
	jsr FireflyInit
	move.l #0x0010e800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_22_idx	equ 0x4
	jsr FireflyInit
	move.l #0x001b8800, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_25_idx	equ 0x5
	jsr FireflyInit
	move.l #0x00218800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_26_idx	equ 0x6
	jsr FireflyInit
	move.l #0x00265000, Entity_WorldPosX(a0)
	move.l #0x00023800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_27_idx	equ 0x7
	jsr FireflyInit
	move.l #0x00266800, Entity_WorldPosX(a0)
	move.l #0x0002b000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_28_idx	equ 0x8
	jsr FireflyInit
	move.l #0x002d7800, Entity_WorldPosX(a0)
	move.l #0x00023000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_35_idx	equ 0x9
	jsr FireflyInit
	move.l #0x001f6800, Entity_WorldPosX(a0)
	move.l #0x0001f000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
Lvl3_Firefly_13_idx	equ 0xa
	jsr FireflyInit
	move.l #0x002a1000, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_36_idx	equ 0xb
	jsr FireflyInit
	move.l #0x00207800, Entity_WorldPosX(a0)
	move.l #0x00024000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_33_idx	equ 0xc
	jsr FireflyInit
	move.l #0x001e1800, Entity_WorldPosX(a0)
	move.l #0x00017800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
lvl3Firefly_34_idx	equ 0xd
	jsr FireflyInit
	move.l #0x001ea000, Entity_WorldPosX(a0)
	move.l #0x0001a800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_lvl3_Monster_count equ 0x1
LoadGameObjects_lvl3_Monster:
Lvl3_Djakk_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00081800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl3_Boulder_count equ 0x1
LoadGameObjects_lvl3_Boulder:
lvl3Boulder_16_idx	equ 0x0
	jsr BoulderInit
	move.l #0x002b1000, Entity_WorldPosX(a0)
	move.l #0x00021800, Entity_WorldPosY(a0)
	add.l #Boulder_Struct_Size, a0
	rts

gameobjects_lvl3_TriggerBox_count equ 0x3
LoadGameObjects_lvl3_TriggerBox:
Lvl3_Trigger_Djakk_idx	equ 0x0
	jsr TriggerBoxInit
	move.l #0x00095800, Entity_WorldPosX(a0)
	move.l #0x0002b800, Entity_WorldPosY(a0)
	move.l #Lvl3_Trigger_WakeDjakk, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
Lvl3_TriggerBoxEnd_idx	equ 0x1
	jsr TriggerBoxInit
	move.l #0x002e7800, Entity_WorldPosX(a0)
	move.l #0x00014800, Entity_WorldPosY(a0)
	move.l #Lvl3_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
lvl3TriggerBox_39_idx	equ 0x2
	jsr TriggerBoxInit
	move.l #0x0008d800, Entity_WorldPosX(a0)
	move.l #0x0002b800, Entity_WorldPosY(a0)
	move.l #Lvl3_Trigger_WakeDjakk, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_lvl3_Checkpoint_count equ 0x1
LoadGameObjects_lvl3_Checkpoint:
lvl3Checkpoint_5_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x00018000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl3_WaterBody_count equ 0x5
LoadGameObjects_lvl3_WaterBody:
lvl3WaterBody_3_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x000ff800, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
lvl3WaterBody_4_idx	equ 0x1
	jsr WaterBodyInit
	move.l #0x0018b800, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
lvl3WaterBody_8_idx	equ 0x2
	jsr WaterBodyInit
	move.l #0x001c7800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
lvl3WaterBody_9_idx	equ 0x3
	jsr WaterBodyInit
	move.l #0x001df800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
lvl3WaterBody_10_idx	equ 0x4
	jsr WaterBodyInit
	move.l #0x001f7800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_lvl3_Location_count equ 0x0
LoadGameObjects_lvl3_Location:
	rts


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


lvl2_Fuzzl_count equ 0x2
lvl2_Fuzzl_Green_idx	equ 0x0
lvl2_Fuzzl_Yellow_idx	equ 0x1

lvl2_Nest_count equ 0x2
lvl2_Nest_3_idx	equ 0x0
lvl2_Nest_4_idx	equ 0x1

lvl2_Flue_count equ 0x5
lvl2_Flue_E_idx	equ 0x0
lvl2_Flue_B_idx	equ 0x1
lvl2_Flue_D_idx	equ 0x2
lvl2_Flue_16_idx	equ 0x3
lvl2_Flue_A_idx	equ 0x4

lvl2_Firefly_count equ 0xa
lvl2_Firefly_18_idx	equ 0x0
lvl2_Firefly_19_idx	equ 0x1
lvl2_Firefly_20_idx	equ 0x2
lvl2_Firefly_21_idx	equ 0x3
lvl2_Firefly_22_idx	equ 0x4
lvl2_Firefly_23_idx	equ 0x5
lvl2_Firefly_24_idx	equ 0x6
lvl2_Firefly_25_idx	equ 0x7
lvl2_Firefly_26_idx	equ 0x8
lvl2_Firefly_27_idx	equ 0x9

lvl2_Monster_count equ 0x1
lvl2_Djakk_idx	equ 0x0

lvl2_Boulder_count equ 0x1
lvl2_Boulder_11_idx	equ 0x0

lvl2_TriggerBox_count equ 0x2
lvl2_Trigger_End_idx	equ 0x0
lvl2_TriggerBox_WakeDjakk_idx	equ 0x1

lvl2_Checkpoint_count equ 0x1
lvl2_Start_idx	equ 0x0

lvl2_WaterBody_count equ 0x1
lvl2_WaterBody_15_idx	equ 0x0

lvl2_Location_count equ 0x0

lvl2_BouncePlant_count equ 0x0

lvl2_Nymn_count equ 0x1
lvl2_Nymn_28_idx	equ 0x0

lvl2_Echo_count equ 0x0

lvl2_Leaf_count equ 0x0


lvl2_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0
	jsr FuzzlInit
	move.l #0x000b4000, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourGreen, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0
	jsr FuzzlInit
	move.l #0x000f6800, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0

	move.l #EntityArray_Nest, a0
	jsr NestInit
	move.l #0x00182800, Entity_WorldPosX(a0)
	move.l #0x0001a800, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0
	jsr NestInit
	move.l #0x0011e000, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0

	move.l #EntityArray_Flue, a0
	jsr FlueInit
	move.l #0x0004c000, Entity_WorldPosX(a0)
	move.l #0x0002d800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x0017c000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x001a4000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x00118000, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x000f0000, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0

	move.l #EntityArray_Firefly, a0
	jsr FireflyInit
	move.l #0x00046800, Entity_WorldPosX(a0)
	move.l #0x0001c800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00045800, Entity_WorldPosX(a0)
	move.l #0x0001c000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0006a000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00069000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000b6000, Entity_WorldPosX(a0)
	move.l #0x0001f800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000cf800, Entity_WorldPosX(a0)
	move.l #0x0001f000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000ca000, Entity_WorldPosX(a0)
	move.l #0x00011000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00147800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x001e2000, Entity_WorldPosX(a0)
	move.l #0x0001e000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x001e4000, Entity_WorldPosX(a0)
	move.l #0x0001e800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0

	move.l #EntityArray_Monster, a0
	jsr MonsterInit
	move.l #0x00112000, Entity_WorldPosX(a0)
	move.l #0x0002a000, Entity_WorldPosY(a0)
	jsr MonsterLoadGfx
	add.l #Monster_Struct_Size, a0

	move.l #EntityArray_Boulder, a0
	jsr BoulderInit
	move.l #0x0010a800, Entity_WorldPosX(a0)
	move.l #0x00024800, Entity_WorldPosY(a0)
	jsr BoulderLoadGfx
	add.l #Boulder_Struct_Size, a0

	move.l #EntityArray_TriggerBox, a0
	jsr TriggerBoxInit
	move.l #0x0022f000, Entity_WorldPosX(a0)
	move.l #0x0001b800, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x0011c000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_WakeDjakk, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0

	move.l #EntityArray_Checkpoint, a0
	jsr CheckpointInit
	move.l #0x0000b800, Entity_WorldPosX(a0)
	move.l #0x00027800, Entity_WorldPosY(a0)
	jsr CheckpointLoadGfx
	add.l #Checkpoint_Struct_Size, a0

	move.l #EntityArray_WaterBody, a0
	jsr WaterBodyInit
	move.l #0x0014c000, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0

	move.l #EntityArray_Location, a0

	move.l #EntityArray_BouncePlant, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x0000b800, Entity_WorldPosX(a0)
	move.l #0x00027800, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	move.l #EntityArray_Echo, a0

	move.l #EntityArray_Leaf, a0

	rts


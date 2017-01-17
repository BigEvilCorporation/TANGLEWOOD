; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_l1a1:
gameobjects_l1a1_Fuzzl_count equ 0x1
LoadGameObjects_l1a1_Fuzzl:
l1a1Fuzzl_2_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x0004e000, Entity_WorldPosX(a0)
	move.l #0x0002a800, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_l1a1_Nest_count equ 0x0
LoadGameObjects_l1a1_Nest:
	rts

gameobjects_l1a1_Flue_count equ 0x2
LoadGameObjects_l1a1_Flue:
l1a1Flue_21_idx	equ 0x0
	jsr FlueInit
	move.l #0x00084000, Entity_WorldPosX(a0)
	move.l #0x00040800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
l1a1Flue_22_idx	equ 0x1
	jsr FlueInit
	move.l #0x00054000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_l1a1_Firefly_count equ 0x11
LoadGameObjects_l1a1_Firefly:
l1a1Firefly_3_idx	equ 0x0
	jsr FireflyInit
	move.l #0x0003f800, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_4_idx	equ 0x1
	jsr FireflyInit
	move.l #0x00041800, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_5_idx	equ 0x2
	jsr FireflyInit
	move.l #0x00043800, Entity_WorldPosX(a0)
	move.l #0x0002e000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_6_idx	equ 0x3
	jsr FireflyInit
	move.l #0x00085000, Entity_WorldPosX(a0)
	move.l #0x0002c800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_7_idx	equ 0x4
	jsr FireflyInit
	move.l #0x00087800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_8_idx	equ 0x5
	jsr FireflyInit
	move.l #0x0008b800, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_9_idx	equ 0x6
	jsr FireflyInit
	move.l #0x0008e800, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_10_idx	equ 0x7
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x0003c800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_11_idx	equ 0x8
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x00038000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_12_idx	equ 0x9
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x00033800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_13_idx	equ 0xa
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x00040000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_14_idx	equ 0xb
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x0003a800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_15_idx	equ 0xc
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x00035800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_16_idx	equ 0xd
	jsr FireflyInit
	move.l #0x00014000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_17_idx	equ 0xe
	jsr FireflyInit
	move.l #0x00017800, Entity_WorldPosX(a0)
	move.l #0x00044800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_18_idx	equ 0xf
	jsr FireflyInit
	move.l #0x00025800, Entity_WorldPosX(a0)
	move.l #0x00044000, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
l1a1Firefly_19_idx	equ 0x10
	jsr FireflyInit
	move.l #0x00023000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	add.l #Firefly_Struct_Size, a0
	rts

gameobjects_l1a1_Monster_count equ 0x0
LoadGameObjects_l1a1_Monster:
	rts

gameobjects_l1a1_Boulder_count equ 0x0
LoadGameObjects_l1a1_Boulder:
	rts

gameobjects_l1a1_TriggerBox_count equ 0x0
LoadGameObjects_l1a1_TriggerBox:
	rts

gameobjects_l1a1_Checkpoint_count equ 0x1
LoadGameObjects_l1a1_Checkpoint:
l1a1Checkpoint_26_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x0007d800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_l1a1_WaterBody_count equ 0x1
LoadGameObjects_l1a1_WaterBody:
l1a1WaterBody_20_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x000bb800, Entity_WorldPosX(a0)
	move.l #0x0003f800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_l1a1_Location_count equ 0x0
LoadGameObjects_l1a1_Location:
	rts

gameobjects_l1a1_BouncePlant_count equ 0x3
LoadGameObjects_l1a1_BouncePlant:
l1a1BouncePlant_23_idx	equ 0x0
	jsr BouncePlantInit
	move.l #0x0006f000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	add.l #BouncePlant_Struct_Size, a0
l1a1BouncePlant_24_idx	equ 0x1
	jsr BouncePlantInit
	move.l #0x00042800, Entity_WorldPosX(a0)
	move.l #0x00044000, Entity_WorldPosY(a0)
	add.l #BouncePlant_Struct_Size, a0
l1a1BouncePlant_25_idx	equ 0x2
	jsr BouncePlantInit
	move.l #0x00075800, Entity_WorldPosX(a0)
	move.l #0x00042000, Entity_WorldPosY(a0)
	add.l #BouncePlant_Struct_Size, a0
	rts

gameobjects_l1a1_Nymn_count equ 0x1
LoadGameObjects_l1a1_Nymn:
l1a1Nymn_1_idx	equ 0x0
	jsr NymnInit
	move.l #0x0007d800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	add.l #Nymn_Struct_Size, a0
	rts


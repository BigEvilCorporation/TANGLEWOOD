; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


l1a1_Fuzzl_count equ 0x1
l1a1_Fuzzl_2_idx	equ 0x0

l1a1_Nest_count equ 0x0

l1a1_Flue_count equ 0x2
l1a1_Flue_21_idx	equ 0x0
l1a1_Flue_22_idx	equ 0x1

l1a1_Firefly_count equ 0x11
l1a1_Firefly_3_idx	equ 0x0
l1a1_Firefly_4_idx	equ 0x1
l1a1_Firefly_5_idx	equ 0x2
l1a1_Firefly_6_idx	equ 0x3
l1a1_Firefly_7_idx	equ 0x4
l1a1_Firefly_8_idx	equ 0x5
l1a1_Firefly_9_idx	equ 0x6
l1a1_Firefly_10_idx	equ 0x7
l1a1_Firefly_11_idx	equ 0x8
l1a1_Firefly_12_idx	equ 0x9
l1a1_Firefly_13_idx	equ 0xa
l1a1_Firefly_14_idx	equ 0xb
l1a1_Firefly_15_idx	equ 0xc
l1a1_Firefly_16_idx	equ 0xd
l1a1_Firefly_17_idx	equ 0xe
l1a1_Firefly_18_idx	equ 0xf
l1a1_Firefly_19_idx	equ 0x10

l1a1_Monster_count equ 0x0

l1a1_Boulder_count equ 0x0

l1a1_TriggerBox_count equ 0x0

l1a1_Checkpoint_count equ 0x1
l1a1_Checkpoint_26_idx	equ 0x0

l1a1_WaterBody_count equ 0x1
l1a1_WaterBody_20_idx	equ 0x0

l1a1_Location_count equ 0x0

l1a1_BouncePlant_count equ 0x6
l1a1_BouncePlant_23_idx	equ 0x0
l1a1_BouncePlant_24_idx	equ 0x1
l1a1_BouncePlant_25_idx	equ 0x2
l1a1_l1a1_mushroom_135_idx	equ 0x3
l1a1_BouncePlant_28_idx	equ 0x4
l1a1_BouncePlant_29_idx	equ 0x5

l1a1_Nymn_count equ 0x1
l1a1_Nymn_1_idx	equ 0x0

l1a1_Echo_count equ 0x1
l1a1_Echo_30_idx	equ 0x0

l1a1_Leaf_count equ 0x0


l1a1_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0
	jsr FuzzlInit
	move.l #0x0004e000, Entity_WorldPosX(a0)
	move.l #0x0002a800, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0

	move.l #EntityArray_Nest, a0

	move.l #EntityArray_Flue, a0
	jsr FlueInit
	move.l #0x00084000, Entity_WorldPosX(a0)
	move.l #0x00040800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x00054000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0

	move.l #EntityArray_Firefly, a0
	jsr FireflyInit
	move.l #0x0003f800, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00041800, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00043800, Entity_WorldPosX(a0)
	move.l #0x0002e000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00085000, Entity_WorldPosX(a0)
	move.l #0x0002c800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00087800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0008b800, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0008e800, Entity_WorldPosX(a0)
	move.l #0x00030000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x0003c800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x00038000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00085800, Entity_WorldPosX(a0)
	move.l #0x00033800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x00040000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x0003a800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00055800, Entity_WorldPosX(a0)
	move.l #0x00035800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00014000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00017800, Entity_WorldPosX(a0)
	move.l #0x00044800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00025800, Entity_WorldPosX(a0)
	move.l #0x00044000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00023000, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0

	move.l #EntityArray_Monster, a0

	move.l #EntityArray_Boulder, a0

	move.l #EntityArray_TriggerBox, a0

	move.l #EntityArray_Checkpoint, a0
	jsr CheckpointInit
	move.l #0x0007d800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	jsr CheckpointLoadGfx
	add.l #Checkpoint_Struct_Size, a0

	move.l #EntityArray_WaterBody, a0
	jsr WaterBodyInit
	move.l #0x000bb800, Entity_WorldPosX(a0)
	move.l #0x0003f800, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0

	move.l #EntityArray_Location, a0

	move.l #EntityArray_BouncePlant, a0
	jsr BouncePlantInit
	move.l #0x0006f000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00042800, Entity_WorldPosX(a0)
	move.l #0x00044000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00075800, Entity_WorldPosX(a0)
	move.l #0x00042000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x0007f800, Entity_WorldPosX(a0)
	move.l #0x00040000, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_135, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00047800, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_225, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00089800, Entity_WorldPosX(a0)
	move.l #0x0003b800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_90, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x0007d800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	move.l #EntityArray_Echo, a0
	jsr EchoInit
	move.l #0x0002f000, Entity_WorldPosX(a0)
	move.l #0x00042800, Entity_WorldPosY(a0)
	jsr EchoLoadGfx
	add.l #Echo_Struct_Size, a0

	move.l #EntityArray_Leaf, a0

	rts


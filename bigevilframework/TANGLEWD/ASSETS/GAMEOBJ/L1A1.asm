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

l1a1_Firefly_count equ 0x18
l1a1_Firefly_36_idx	equ 0x0
l1a1_Firefly_35_idx	equ 0x1
l1a1_Firefly_34_idx	equ 0x2
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
l1a1_Firefly_33_idx	equ 0x11
l1a1_Firefly_37_idx	equ 0x12
l1a1_Firefly_38_idx	equ 0x13
l1a1_Firefly_39_idx	equ 0x14
l1a1_Firefly_40_idx	equ 0x15
l1a1_Firefly_41_idx	equ 0x16
l1a1_Firefly_42_idx	equ 0x17

l1a1_Monster_count equ 0x0

l1a1_Boulder_count equ 0x0

l1a1_TriggerBox_count equ 0x0

l1a1_Checkpoint_count equ 0x0

l1a1_WaterBody_count equ 0x1
l1a1_WaterBody_20_idx	equ 0x0

l1a1_Location_count equ 0x0

l1a1_BouncePlant_count equ 0x7
l1a1_BouncePlant_23_idx	equ 0x0
l1a1_BouncePlant_29_idx	equ 0x1
l1a1_BouncePlant_25_idx	equ 0x2
l1a1_l1a1_mushroom_135_idx	equ 0x3
l1a1_BouncePlant_28_idx	equ 0x4
l1a1_BouncePlant_31_idx	equ 0x5
l1a1_BouncePlant_32_idx	equ 0x6

l1a1_Nymn_count equ 0x1
l1a1_nymn_idx	equ 0x0

l1a1_Echo_count equ 0x0

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
	move.l #0x0003e000, Entity_WorldPosX(a0)
	move.l #0x00034800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00038000, Entity_WorldPosX(a0)
	move.l #0x00037800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00038000, Entity_WorldPosX(a0)
	move.l #0x0003d000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00082000, Entity_WorldPosX(a0)
	move.l #0x00024800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00085000, Entity_WorldPosX(a0)
	move.l #0x00025000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0006f000, Entity_WorldPosX(a0)
	move.l #0x00025800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00070000, Entity_WorldPosX(a0)
	move.l #0x00021000, Entity_WorldPosY(a0)
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
	jsr FireflyInit
	move.l #0x0003e000, Entity_WorldPosX(a0)
	move.l #0x00040800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0003f800, Entity_WorldPosX(a0)
	move.l #0x00030800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0003a800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0003b800, Entity_WorldPosX(a0)
	move.l #0x00027800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00044000, Entity_WorldPosX(a0)
	move.l #0x00025000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0004f800, Entity_WorldPosX(a0)
	move.l #0x00025000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00055000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0

	move.l #EntityArray_Monster, a0

	move.l #EntityArray_Boulder, a0

	move.l #EntityArray_TriggerBox, a0

	move.l #EntityArray_Checkpoint, a0

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
	move.l #0x00089800, Entity_WorldPosX(a0)
	move.l #0x0003b800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_90, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00043800, Entity_WorldPosX(a0)
	move.l #0x00033800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_135, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00042800, Entity_WorldPosX(a0)
	move.l #0x00043800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_135, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00033000, Entity_WorldPosX(a0)
	move.l #0x0003b000, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_225, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00059000, Entity_WorldPosX(a0)
	move.l #0x0002e000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00035800, Entity_WorldPosX(a0)
	move.l #0x0002c000, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_225, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x0007c800, Entity_WorldPosX(a0)
	move.l #0x00020800, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	move.l #EntityArray_Echo, a0

	move.l #EntityArray_Leaf, a0

	rts


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


L1A2_Fuzzl_count equ 0x3
L1A2_Fuzzl_Yellow_idx	equ 0x0
L1A2_Fuzzl_Green_idx	equ 0x1
L1A2_Fuzzl_Blue_idx	equ 0x2

L1A2_Nest_count equ 0x1
L1A2_Nest_45_idx	equ 0x0

L1A2_Flue_count equ 0x2
L1A2_Flue3_HighForce_idx	equ 0x0
L1A2_Flue_145_idx	equ 0x1

L1A2_Firefly_count equ 0x18
L1A2_Firefly_124_idx	equ 0x0
L1A2_Firefly_103_idx	equ 0x1
L1A2_Firefly_123_idx	equ 0x2
L1A2_Firefly_112_idx	equ 0x3
L1A2_Firefly_105_idx	equ 0x4
L1A2_Firefly_161_idx	equ 0x5
L1A2_Firefly_169_idx	equ 0x6
L1A2_Firefly_164_idx	equ 0x7
L1A2_Firefly_165_idx	equ 0x8
L1A2_Firefly_166_idx	equ 0x9
L1A2_Firefly_167_idx	equ 0xa
L1A2_Firefly_168_idx	equ 0xb
L1A2_Firefly_170_idx	equ 0xc
L1A2_Firefly_171_idx	equ 0xd
L1A2_Firefly_172_idx	equ 0xe
L1A2_Firefly_173_idx	equ 0xf
L1A2_Firefly_174_idx	equ 0x10
L1A2_Firefly_175_idx	equ 0x11
L1A2_Firefly_176_idx	equ 0x12
L1A2_Firefly_177_idx	equ 0x13
L1A2_Firefly_178_idx	equ 0x14
L1A2_Firefly_179_idx	equ 0x15
L1A2_Firefly_180_idx	equ 0x16
L1A2_Firefly_181_idx	equ 0x17

L1A2_Monster_count equ 0x1
L1A2_Djakk_idx	equ 0x0

L1A2_Boulder_count equ 0x1
L1A2_Boulder_147_idx	equ 0x0

L1A2_TriggerBox_count equ 0x6
L1A2_TriggerBox_60_idx	equ 0x0
L1A2_TriggerCancelColour_idx	equ 0x1
L1A2_TriggerBox_73_idx	equ 0x2
L1A2_Trigger_NearEndLevel_idx	equ 0x3
L1A2_TriggerBox_182_idx	equ 0x4
L1A2_Trigger_CueMusic_idx	equ 0x5

L1A2_Checkpoint_count equ 0x0

L1A2_WaterBody_count equ 0x4
L1A2_WaterBody_66_idx	equ 0x0
L1A2_WaterBody_69_idx	equ 0x1
L1A2_WaterBody_136_idx	equ 0x2
L1A2_WaterBody_143_idx	equ 0x3

L1A2_Location_count equ 0x0

L1A2_BouncePlant_count equ 0x9
L1A2_BouncePlant_140_idx	equ 0x0
L1A2_BouncePlant_141_idx	equ 0x1
L1A2_BouncePlant_142_idx	equ 0x2
L1A2_BouncePlant_144_idx	equ 0x3
L1A2_BouncePlant_146_idx	equ 0x4
L1A2_BouncePlant_148_idx	equ 0x5
L1A2_BouncePlant_158_idx	equ 0x6
L1A2_BouncePlant_159_idx	equ 0x7
L1A2_BouncePlant_163_idx	equ 0x8

L1A2_Nymn_count equ 0x1
L1A2_Nymn_137_idx	equ 0x0

L1A2_Echo_count equ 0x0

L1A2_Leaf_count equ 0x6
L1A2_Leaf_149_idx	equ 0x0
L1A2_Leaf_150_idx	equ 0x1
L1A2_Leaf_151_idx	equ 0x2
L1A2_Leaf_152_idx	equ 0x3
L1A2_Leaf_155_idx	equ 0x4
L1A2_Leaf_156_idx	equ 0x5


L1A2_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0
	jsr FuzzlInit
	move.l #0x000fa000, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0
	jsr FuzzlInit
	move.l #0x0028f800, Entity_WorldPosX(a0)
	move.l #0x00015000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0
	jsr FuzzlInit
	move.l #0x00299000, Entity_WorldPosX(a0)
	move.l #0x00012800, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0

	move.l #EntityArray_Nest, a0
	jsr NestInit
	move.l #0x000d1000, Entity_WorldPosX(a0)
	move.l #0x00020800, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0

	move.l #EntityArray_Flue, a0
	jsr FlueInit
	move.l #0x0029f000, Entity_WorldPosX(a0)
	move.l #0x0002f000, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x000db000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0

	move.l #EntityArray_Firefly, a0
	jsr FireflyInit
	move.l #0x0028b800, Entity_WorldPosX(a0)
	move.l #0x00018000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0013d000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0028d000, Entity_WorldPosX(a0)
	move.l #0x00019000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00134000, Entity_WorldPosX(a0)
	move.l #0x0000f000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00145800, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0006d000, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0006a800, Entity_WorldPosX(a0)
	move.l #0x0001c800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0005c800, Entity_WorldPosX(a0)
	move.l #0x00011000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0005c000, Entity_WorldPosX(a0)
	move.l #0x0000b800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00024000, Entity_WorldPosX(a0)
	move.l #0x00024000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0002a000, Entity_WorldPosX(a0)
	move.l #0x00021000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0003f000, Entity_WorldPosX(a0)
	move.l #0x0001a800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000a0000, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000ee000, Entity_WorldPosX(a0)
	move.l #0x00013800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0015f800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00175800, Entity_WorldPosX(a0)
	move.l #0x00011000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x001d4800, Entity_WorldPosX(a0)
	move.l #0x0002e000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0021c000, Entity_WorldPosX(a0)
	move.l #0x0001d800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00216800, Entity_WorldPosX(a0)
	move.l #0x0001b800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x002ca800, Entity_WorldPosX(a0)
	move.l #0x00022800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000dc800, Entity_WorldPosX(a0)
	move.l #0x0002c000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x000dc000, Entity_WorldPosX(a0)
	move.l #0x00026000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00089000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x00093800, Entity_WorldPosX(a0)
	move.l #0x00026800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0

	move.l #EntityArray_Monster, a0
	jsr MonsterInit
	move.l #0x0025b000, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr MonsterLoadGfx
	add.l #Monster_Struct_Size, a0

	move.l #EntityArray_Boulder, a0
	jsr BoulderInit
	move.l #0x0017b000, Entity_WorldPosX(a0)
	move.l #0x00023000, Entity_WorldPosY(a0)
	jsr BoulderLoadGfx
	add.l #Boulder_Struct_Size, a0

	move.l #EntityArray_TriggerBox, a0
	jsr TriggerBoxInit
	move.l #0x001bb800, Entity_WorldPosX(a0)
	move.l #0x00029800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Night, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x00213800, Entity_WorldPosX(a0)
	move.l #0x0002b000, Entity_WorldPosY(a0)
	move.l #L1A2_Trigger_NearCave, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_triggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x002ee000, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	move.l #L1A2_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x00293000, Entity_WorldPosX(a0)
	move.l #0x00028000, Entity_WorldPosY(a0)
	move.l #L1A2_Trigger_NearEndLevel, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x000f7000, Entity_WorldPosX(a0)
	move.l #0x00028800, Entity_WorldPosY(a0)
	move.l #SetTimeOfDay, TriggerBox_Routine(a0)
	move.l #TimeOfDay_Dusk, TriggerBox_RegisterD0(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x000b0000, Entity_WorldPosX(a0)
	move.l #0x0002b800, Entity_WorldPosY(a0)
	move.l #SND_PlayTrack, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	move.l #bgm_cue_l1, TriggerBox_RegisterA0(a0)
	move.l #0x1, TriggerBox_RegisterD0(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0

	move.l #EntityArray_Checkpoint, a0

	move.l #EntityArray_WaterBody, a0
	jsr WaterBodyInit
	move.l #0x001e1800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0
	jsr WaterBodyInit
	move.l #0x00271800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0
	jsr WaterBodyInit
	move.l #0x0008e800, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0
	jsr WaterBodyInit
	move.l #0x00137000, Entity_WorldPosX(a0)
	move.l #0x00030800, Entity_WorldPosY(a0)
	jsr WaterBodyLoadGfx
	add.l #WaterBody_Struct_Size, a0

	move.l #EntityArray_Location, a0

	move.l #EntityArray_BouncePlant, a0
	jsr BouncePlantInit
	move.l #0x00069000, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00039000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_135, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x0001f800, Entity_WorldPosX(a0)
	move.l #0x00028000, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_225, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00128000, Entity_WorldPosX(a0)
	move.l #0x0002f000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00081000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_225, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00196800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x0021e000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x00221800, Entity_WorldPosX(a0)
	move.l #0x00020800, Entity_WorldPosY(a0)
	move.b #BouncePlantOrient_135, BouncePlant_Orientation(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0
	jsr BouncePlantInit
	move.l #0x0005c000, Entity_WorldPosX(a0)
	move.l #0x00019000, Entity_WorldPosY(a0)
	jsr BouncePlantLoadGfx
	add.l #BouncePlant_Struct_Size, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x00062800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	move.l #EntityArray_Echo, a0

	move.l #EntityArray_Leaf, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0
	jsr LeafInit
	jsr LeafLoadGfx
	add.l #Leaf_Struct_Size, a0

	rts


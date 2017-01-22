; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


lvl1_Fuzzl_count equ 0x3
lvl1_Fuzzl_Yellow_idx	equ 0x0
lvl1_Fuzzl_Green_idx	equ 0x1
lvl1_Fuzzl_Blue_idx	equ 0x2

lvl1_Nest_count equ 0x2
lvl1_Nest_45_idx	equ 0x0
lvl1_Nest_114_idx	equ 0x1

lvl1_Flue_count equ 0x2
lvl1_Flue3_HighForce_idx	equ 0x0
lvl1_Flue_145_idx	equ 0x1

lvl1_Firefly_count equ 0x5
lvl1_Firefly_124_idx	equ 0x0
lvl1_Firefly_103_idx	equ 0x1
lvl1_Firefly_123_idx	equ 0x2
lvl1_Firefly_112_idx	equ 0x3
lvl1_Firefly_105_idx	equ 0x4

lvl1_Monster_count equ 0x1
lvl1_Djakk_idx	equ 0x0

lvl1_Boulder_count equ 0x0

lvl1_TriggerBox_count equ 0x4
lvl1_TriggerBox_60_idx	equ 0x0
lvl1_TriggerCancelColour_idx	equ 0x1
lvl1_TriggerBox_73_idx	equ 0x2
lvl1_Trigger_NearEndLevel_idx	equ 0x3

lvl1_Checkpoint_count equ 0x0

lvl1_WaterBody_count equ 0x4
lvl1_WaterBody_66_idx	equ 0x0
lvl1_WaterBody_69_idx	equ 0x1
lvl1_WaterBody_136_idx	equ 0x2
lvl1_WaterBody_143_idx	equ 0x3

lvl1_Location_count equ 0x0

lvl1_BouncePlant_count equ 0x5
lvl1_BouncePlant_140_idx	equ 0x0
lvl1_BouncePlant_141_idx	equ 0x1
lvl1_BouncePlant_142_idx	equ 0x2
lvl1_BouncePlant_144_idx	equ 0x3
lvl1_BouncePlant_146_idx	equ 0x4

lvl1_Nymn_count equ 0x1
lvl1_Nymn_137_idx	equ 0x0

lvl1_Echo_count equ 0x0

lvl1_Leaf_count equ 0x0


lvl1_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0
	jsr FuzzlInit
	move.l #0x000fa000, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	move.b #ColourYellow, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0
	jsr FuzzlInit
	move.l #0x0028f800, Entity_WorldPosX(a0)
	move.l #0x00016000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0
	jsr FuzzlInit
	move.l #0x0029a800, Entity_WorldPosX(a0)
	move.l #0x00013000, Entity_WorldPosY(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0

	move.l #EntityArray_Nest, a0
	jsr NestInit
	move.l #0x000d2000, Entity_WorldPosX(a0)
	move.l #0x00020000, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0
	jsr NestInit
	move.l #0x0012d000, Entity_WorldPosX(a0)
	move.l #0x0001f000, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0

	move.l #EntityArray_Flue, a0
	jsr FlueInit
	move.l #0x002a0000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0
	jsr FlueInit
	move.l #0x000db000, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	jsr FlueLoadGfx
	add.l #Flue_Struct_Size, a0

	move.l #EntityArray_Firefly, a0
	jsr FireflyInit
	move.l #0x0028a800, Entity_WorldPosX(a0)
	move.l #0x0001a000, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0013d000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	jsr FireflyLoadGfx
	add.l #Firefly_Struct_Size, a0
	jsr FireflyInit
	move.l #0x0028b800, Entity_WorldPosX(a0)
	move.l #0x0001b000, Entity_WorldPosY(a0)
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

	move.l #EntityArray_Monster, a0
	jsr MonsterInit
	move.l #0x00232800, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr MonsterLoadGfx
	add.l #Monster_Struct_Size, a0

	move.l #EntityArray_Boulder, a0

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
	move.l #0x0002d000, Entity_WorldPosY(a0)
	move.l #Lvl1_Trigger_NearCave, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_triggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x002c3000, Entity_WorldPosX(a0)
	move.l #0x0000f800, Entity_WorldPosY(a0)
	move.l #Lvl1_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
	jsr TriggerBoxLoadGfx
	add.l #TriggerBox_Struct_Size, a0
	jsr TriggerBoxInit
	move.l #0x00298000, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	move.l #Lvl1_Trigger_NearEndLevel, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	move.b #0x1, TriggerBox_XOnly(a0)
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
	move.l #0x00282000, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
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

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x00062800, Entity_WorldPosX(a0)
	move.l #0x00014000, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	move.l #EntityArray_Echo, a0

	move.l #EntityArray_Leaf, a0

	rts


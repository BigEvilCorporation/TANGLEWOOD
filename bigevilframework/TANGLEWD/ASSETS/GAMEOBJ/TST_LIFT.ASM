; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


tst_lift_Fuzzl_count equ 0x1
tst_lift_TstLift_Fuzzl_Blue_idx	equ 0x0

tst_lift_Nest_count equ 0x1
tst_lift_Nest_4_idx	equ 0x0

tst_lift_Flue_count equ 0x0

tst_lift_Firefly_count equ 0x0

tst_lift_Monster_count equ 0x0

tst_lift_Boulder_count equ 0x0

tst_lift_TriggerBox_count equ 0x0

tst_lift_Checkpoint_count equ 0x0

tst_lift_WaterBody_count equ 0x0

tst_lift_Location_count equ 0x0

tst_lift_Lift_count equ 0x1
tst_lift_Lift_2_idx	equ 0x0

tst_lift_Djrake_count equ 0x0

tst_lift_Nymn_count equ 0x1
tst_lift_Nymn_10_idx	equ 0x0


tst_lift_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0
	jsr FuzzlInit
	move.l #0x00035000, Entity_WorldPosX(a0)
	move.l #0x0000e000, Entity_WorldPosY(a0)
	move.b #ColourBlue, Fuzzl_Colour(a0)
	jsr FuzzlLoadGfx
	add.l #Fuzzl_Struct_Size, a0

	move.l #EntityArray_Nest, a0
	jsr NestInit
	move.l #0x0003f000, Entity_WorldPosX(a0)
	move.l #0x00012000, Entity_WorldPosY(a0)
	jsr NestLoadGfx
	add.l #Nest_Struct_Size, a0

	move.l #EntityArray_Flue, a0

	move.l #EntityArray_Firefly, a0

	move.l #EntityArray_Monster, a0

	move.l #EntityArray_Boulder, a0

	move.l #EntityArray_TriggerBox, a0

	move.l #EntityArray_Checkpoint, a0

	move.l #EntityArray_WaterBody, a0

	move.l #EntityArray_Location, a0

	move.l #EntityArray_Lift, a0
	jsr LiftInit
	move.l #0x0001f000, Entity_WorldPosX(a0)
	move.l #0x00023800, Entity_WorldPosY(a0)
	jsr LiftLoadGfx
	add.l #Lift_Struct_Size, a0

	move.l #EntityArray_Djrake, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x0000a800, Entity_WorldPosX(a0)
	move.l #0x00023800, Entity_WorldPosY(a0)
	jsr NymnLoadGfx
	add.l #Nymn_Struct_Size, a0

	rts


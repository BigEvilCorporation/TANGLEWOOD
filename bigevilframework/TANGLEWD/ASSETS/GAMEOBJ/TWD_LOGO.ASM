; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


twd_logo_Fuzzl_count equ 0x0

twd_logo_Nest_count equ 0x0

twd_logo_Flue_count equ 0x0

twd_logo_Firefly_count equ 0x0

twd_logo_Monster_count equ 0x0

twd_logo_Boulder_count equ 0x0

twd_logo_TriggerBox_count equ 0x0

twd_logo_Checkpoint_count equ 0x0

twd_logo_WaterBody_count equ 0x0

twd_logo_Location_count equ 0x0

twd_logo_BouncePlant_count equ 0x0

twd_logo_Nymn_count equ 0x1
twd_logo_Nymn_1_idx	equ 0x0

twd_logo_Echo_count equ 0x0

twd_logo_Leaf_count equ 0x4
twd_logo_Leaf_2_idx	equ 0x0
twd_logo_Leaf_3_idx	equ 0x1
twd_logo_Leaf_4_idx	equ 0x2
twd_logo_Leaf_5_idx	equ 0x3


twd_logo_LoadGameObjects:
	move.l #EntityArray_Fuzzl, a0

	move.l #EntityArray_Nest, a0

	move.l #EntityArray_Flue, a0

	move.l #EntityArray_Firefly, a0

	move.l #EntityArray_Monster, a0

	move.l #EntityArray_Boulder, a0

	move.l #EntityArray_TriggerBox, a0

	move.l #EntityArray_Checkpoint, a0

	move.l #EntityArray_WaterBody, a0

	move.l #EntityArray_Location, a0

	move.l #EntityArray_BouncePlant, a0

	move.l #EntityArray_Nymn, a0
	jsr NymnInit
	move.l #0x0000c800, Entity_WorldPosX(a0)
	move.l #0x0000d800, Entity_WorldPosY(a0)
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

	rts


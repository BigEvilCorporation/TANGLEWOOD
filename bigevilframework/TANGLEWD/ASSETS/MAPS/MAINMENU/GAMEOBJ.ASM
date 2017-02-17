; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


main_menu_Fuzzl_count equ 0x0

main_menu_Nest_count equ 0x0

main_menu_Flue_count equ 0x0

main_menu_Firefly_count equ 0x0

main_menu_Monster_count equ 0x0

main_menu_Boulder_count equ 0x0

main_menu_TriggerBox_count equ 0x0

main_menu_Checkpoint_count equ 0x0

main_menu_WaterBody_count equ 0x0

main_menu_Location_count equ 0x0

main_menu_BouncePlant_count equ 0x0

main_menu_Nymn_count equ 0x1
main_menu_Nymn_1_idx	equ 0x0

main_menu_Echo_count equ 0x0

main_menu_Leaf_count equ 0x4
main_menu_Leaf_2_idx	equ 0x0
main_menu_Leaf_3_idx	equ 0x1
main_menu_Leaf_4_idx	equ 0x2
main_menu_Leaf_5_idx	equ 0x3


main_menu_LoadGameObjects:
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
	move.l #0x00009800, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
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


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_l1a1:
gameobjects_l1a1_Fuzzl_count equ 0x0
LoadGameObjects_l1a1_Fuzzl:
	rts

gameobjects_l1a1_Nest_count equ 0x0
LoadGameObjects_l1a1_Nest:
	rts

gameobjects_l1a1_Flue_count equ 0x0
LoadGameObjects_l1a1_Flue:
	rts

gameobjects_l1a1_Firefly_count equ 0x0
LoadGameObjects_l1a1_Firefly:
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
l1a1Checkpoint_1_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x00056800, Entity_WorldPosX(a0)
	move.l #0x00019800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_l1a1_WaterBody_count equ 0x0
LoadGameObjects_l1a1_WaterBody:
	rts

gameobjects_l1a1_Location_count equ 0x0
LoadGameObjects_l1a1_Location:
	rts

gameobjects_l1a1_BouncePlant_count equ 0x0
LoadGameObjects_l1a1_BouncePlant:
	rts


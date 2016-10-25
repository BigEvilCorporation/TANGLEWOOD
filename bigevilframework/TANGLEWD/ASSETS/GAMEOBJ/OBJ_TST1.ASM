; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_tst1:
gameobjects_tst1_Fuzzl_count equ 0x1
LoadGameObjects_tst1_Fuzzl:
tst1Fuzzl_2_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x00011000, Entity_WorldPosX(a0)
	move.l #0x0000a800, Entity_WorldPosY(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_tst1_Nest_count equ 0x0
LoadGameObjects_tst1_Nest:
	rts

gameobjects_tst1_Flue_count equ 0x0
LoadGameObjects_tst1_Flue:
	rts

gameobjects_tst1_Firefly_count equ 0x0
LoadGameObjects_tst1_Firefly:
	rts

gameobjects_tst1_Monster_count equ 0x0
LoadGameObjects_tst1_Monster:
	rts

gameobjects_tst1_Boulder_count equ 0x0
LoadGameObjects_tst1_Boulder:
	rts

gameobjects_tst1_TriggerBox_count equ 0x0
LoadGameObjects_tst1_TriggerBox:
	rts

gameobjects_tst1_Checkpoint_count equ 0x1
LoadGameObjects_tst1_Checkpoint:
tst1Checkpoint_1_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x00015800, Entity_WorldPosX(a0)
	move.l #0x00012800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_tst1_WaterBody_count equ 0x0
LoadGameObjects_tst1_WaterBody:
	rts

gameobjects_tst1_Location_count equ 0x0
LoadGameObjects_tst1_Location:
	rts


; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl2:
gameobjects_lvl2_Fuzzl_count equ 0
LoadGameObjects_lvl2_Fuzzl:
	rts

gameobjects_lvl2_Nest_count equ 0
LoadGameObjects_lvl2_Nest:
	rts

gameobjects_lvl2_Flue_count equ 0
LoadGameObjects_lvl2_Flue:
	rts

gameobjects_lvl2_Obstacle_count equ 0
LoadGameObjects_lvl2_Obstacle:
	rts

gameobjects_lvl2_Firefly_count equ 0
LoadGameObjects_lvl2_Firefly:
	rts

gameobjects_lvl2_Monster_count equ 0
LoadGameObjects_lvl2_Monster:
	rts

gameobjects_lvl2_Boulder_count equ 0
LoadGameObjects_lvl2_Boulder:
	rts

gameobjects_lvl2_TriggerBox_count equ 0
LoadGameObjects_lvl2_TriggerBox:
	rts

gameobjects_lvl2_Checkpoint_count equ 1
LoadGameObjects_lvl2_Checkpoint:
Checkpoint_66:
	jsr CheckpointInit
	move.l #0x0000c800, Entity_WorldPosX(a0)
	move.l #0x00011800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts


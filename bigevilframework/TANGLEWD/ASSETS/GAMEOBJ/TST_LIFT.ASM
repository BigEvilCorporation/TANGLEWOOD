; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_tst_lift:
gameobjects_tst_lift_Fuzzl_count equ 0x0
LoadGameObjects_tst_lift_Fuzzl:
	rts

gameobjects_tst_lift_Nest_count equ 0x0
LoadGameObjects_tst_lift_Nest:
	rts

gameobjects_tst_lift_Flue_count equ 0x0
LoadGameObjects_tst_lift_Flue:
	rts

gameobjects_tst_lift_Firefly_count equ 0x0
LoadGameObjects_tst_lift_Firefly:
	rts

gameobjects_tst_lift_Monster_count equ 0x0
LoadGameObjects_tst_lift_Monster:
	rts

gameobjects_tst_lift_Boulder_count equ 0x0
LoadGameObjects_tst_lift_Boulder:
	rts

gameobjects_tst_lift_TriggerBox_count equ 0x0
LoadGameObjects_tst_lift_TriggerBox:
	rts

gameobjects_tst_lift_Checkpoint_count equ 0x1
LoadGameObjects_tst_lift_Checkpoint:
tst_liftCheckpoint_1_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x0000e000, Entity_WorldPosX(a0)
	move.l #0x00023800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_tst_lift_WaterBody_count equ 0x0
LoadGameObjects_tst_lift_WaterBody:
	rts

gameobjects_tst_lift_Location_count equ 0x0
LoadGameObjects_tst_lift_Location:
	rts

gameobjects_tst_lift_Lift_count equ 0x1
LoadGameObjects_tst_lift_Lift:
tst_liftLift_2_idx	equ 0x0
	jsr LiftInit
	move.l #0x0001f000, Entity_WorldPosX(a0)
	move.l #0x00023800, Entity_WorldPosY(a0)
	add.l #Lift_Struct_Size, a0
	rts


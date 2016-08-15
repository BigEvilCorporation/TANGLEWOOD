; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_Lvl2:
gameobjects_Lvl2_Fuzzl_count equ 0x1
LoadGameObjects_Lvl2_Fuzzl:
Lvl2Fuzzl_Green_idx	equ 0x0
	jsr FuzzlInit
	move.l #0x000b4000, Entity_WorldPosX(a0)
	move.l #0x0000d000, Entity_WorldPosY(a0)
	move.b #ColourGreen, Fuzzl_Colour(a0)
	add.l #Fuzzl_Struct_Size, a0
	rts

gameobjects_Lvl2_Nest_count equ 0x1
LoadGameObjects_Lvl2_Nest:
Nest_3_idx	equ 0x0
	jsr NestInit
	move.l #0x000f5800, Entity_WorldPosX(a0)
	move.l #0x0001b800, Entity_WorldPosY(a0)
	add.l #Nest_Struct_Size, a0
	rts

gameobjects_Lvl2_Flue_count equ 0x2
LoadGameObjects_Lvl2_Flue:
Flue1_idx	equ 0x0
	jsr FlueInit
	move.l #0x00100000, Entity_WorldPosX(a0)
	move.l #0x0002f800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
Flue2_idx	equ 0x1
	jsr FlueInit
	move.l #0x0017c000, Entity_WorldPosX(a0)
	move.l #0x0002e800, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

gameobjects_Lvl2_Firefly_count equ 0x0
LoadGameObjects_Lvl2_Firefly:
	rts

gameobjects_Lvl2_Monster_count equ 0x1
LoadGameObjects_Lvl2_Monster:
Djakk_Lvl2_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00113000, Entity_WorldPosX(a0)
	move.l #0x0002a000, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_Lvl2_Boulder_count equ 0x0
LoadGameObjects_Lvl2_Boulder:
	rts

gameobjects_Lvl2_TriggerBox_count equ 0x2
LoadGameObjects_Lvl2_TriggerBox:
Trigger_EndLvl2_idx	equ 0x0
	jsr TriggerBoxInit
	move.l #0x001ab000, Entity_WorldPosX(a0)
	move.l #0x00013800, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_End, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
TriggerBox_Lvl2_WakeDjakk_idx	equ 0x1
	jsr TriggerBoxInit
	move.l #0x0011c000, Entity_WorldPosX(a0)
	move.l #0x00029000, Entity_WorldPosY(a0)
	move.l #Lvl2_Trigger_WakeDjakk, TriggerBox_Routine(a0)
	move.b #0x1, TriggerBox_TriggerOnce(a0)
	add.l #TriggerBox_Struct_Size, a0
	rts

gameobjects_Lvl2_Checkpoint_count equ 0x1
LoadGameObjects_Lvl2_Checkpoint:
Lvl2Start_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x0000b800, Entity_WorldPosX(a0)
	move.l #0x00027800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_Lvl2_WaterBody_count equ 0x1
LoadGameObjects_Lvl2_WaterBody:
WaterBody_6_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x0014c000, Entity_WorldPosX(a0)
	move.l #0x00033000, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_Lvl2_Location_count equ 0x0
LoadGameObjects_Lvl2_Location:
	rts


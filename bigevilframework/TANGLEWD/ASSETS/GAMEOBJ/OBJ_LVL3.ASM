; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_lvl3:
gameobjects_lvl3_Fuzzl_count equ 0x0
LoadGameObjects_lvl3_Fuzzl:
	rts

gameobjects_lvl3_Nest_count equ 0x0
LoadGameObjects_lvl3_Nest:
	rts

gameobjects_lvl3_Flue_count equ 0x0
LoadGameObjects_lvl3_Flue:
	rts

gameobjects_lvl3_Firefly_count equ 0x0
LoadGameObjects_lvl3_Firefly:
	rts

gameobjects_lvl3_Monster_count equ 0x1
LoadGameObjects_lvl3_Monster:
Monster_6_idx	equ 0x0
	jsr MonsterInit
	move.l #0x00089800, Entity_WorldPosX(a0)
	move.l #0x0002d000, Entity_WorldPosY(a0)
	add.l #Monster_Struct_Size, a0
	rts

gameobjects_lvl3_Boulder_count equ 0x0
LoadGameObjects_lvl3_Boulder:
	rts

gameobjects_lvl3_TriggerBox_count equ 0x0
LoadGameObjects_lvl3_TriggerBox:
	rts

gameobjects_lvl3_Checkpoint_count equ 0x1
LoadGameObjects_lvl3_Checkpoint:
Checkpoint_5_idx	equ 0x0
	jsr CheckpointInit
	move.l #0x00018000, Entity_WorldPosX(a0)
	move.l #0x00031800, Entity_WorldPosY(a0)
	add.l #Checkpoint_Struct_Size, a0
	rts

gameobjects_lvl3_WaterBody_count equ 0x2
LoadGameObjects_lvl3_WaterBody:
WaterBody_3_idx	equ 0x0
	jsr WaterBodyInit
	move.l #0x000ff800, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
WaterBody_4_idx	equ 0x1
	jsr WaterBodyInit
	move.l #0x0018b800, Entity_WorldPosX(a0)
	move.l #0x00032800, Entity_WorldPosY(a0)
	add.l #WaterBody_Struct_Size, a0
	rts

gameobjects_lvl3_Location_count equ 0x0
LoadGameObjects_lvl3_Location:
	rts


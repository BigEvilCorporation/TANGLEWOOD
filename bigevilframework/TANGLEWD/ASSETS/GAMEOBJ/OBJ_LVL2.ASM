; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   Created with BEEhive - the complete art tool for SEGA Mega Drive
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   http://www.bigevilcorporation.co.uk
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==
;   BEEhive and SEGA Genesis Framework (c) Matt Phillips 2015
; == == == == == == == == == == == == == == == == == == == == == == == == == == == == == == ==


gameobjects_Lvl2:
LoadGameObjects_lvl2_Fuzzl:
	rts

LoadGameObjects_lvl2_Nest:
	rts

LoadGameObjects_lvl2_Flue:
Flue_1:
	jsr FlueInit
	move.l #0x00018000, Entity_WorldPosX(a0)
	move.l #0x00031000, Entity_WorldPosY(a0)
	add.l #Flue_Struct_Size, a0
	rts

LoadGameObjects_lvl2_Obstacle:
	rts

LoadGameObjects_lvl2_Firefly:
	rts

LoadGameObjects_lvl2_Monster:
	rts

LoadGameObjects_lvl2_Boulder:
	rts

LoadGameObjects_lvl2_TriggerBox:
	rts
	
LoadGameObjects_lvl2_Checkpoint:
	rts


;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level2.asm - Level 2 - Harlequin Forest Act 2
;==============================================================	

Lvl2_HarlequinForestAct2:

	dc.l tiles_lvl2				; Tileset
	dc.l map_lvl2				; Map
	dc.l collisiontiles_lvl2	; Collision tileset
	dc.l collisionmap_lvl2		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.l Lvl2_Init				; Init routine
	dc.l Lvl2_Update			; Update routine
	dc.l 0x0					; Next level
	dc.w Gravity				; Default gravity
	dc.w map_lvl2_width			; Map width
	dc.w map_lvl2_height		; Map height
	dc.w tiles_lvl2_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
	rts
	
Lvl2_Init:

	; Trigger boxes
	move.l #EntityArray_Triggers, a0
	jsr    LoadGameObjects_lvl2_TriggerBox
	
	; Checkpoints
	move.l #EntityArray_Checkpoints, a0
	jsr    LoadGameObjects_lvl2_Checkpoint
	
	; Monsters
	move.l #EntityArray_Monsters, a0
	jsr    LoadGameObjects_lvl2_Monster
    
	; Fuzzls
	move.l #EntityArray_Fuzzls, a0
	jsr    LoadGameObjects_lvl2_Fuzzl
	
	; Fuzzl nests
	move.l #EntityArray_Nests, a0
	jsr    LoadGameObjects_lvl2_Nest
    
	; Flues
	move.l #EntityArray_Flues, a0
	jsr    LoadGameObjects_lvl2_Flue
    
	; Obstacles
	move.l #EntityArray_Obstacles, a0
	jsr    LoadGameObjects_lvl2_Obstacle
	
	; Boulders
	move.l #EntityArray_Boulders, a0
	jsr    LoadGameObjects_lvl2_Boulder
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	jsr    LoadGameObjects_lvl2_Firefly
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	rts
	
Lvl2_Update:
	rts
	
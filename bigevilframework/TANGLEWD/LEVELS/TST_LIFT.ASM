;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level3.asm - Level 3 - Harlequin Forest Act 3
;==============================================================	

Lvl_TestLift:

	dc.l tiles_tst_lift					; Tileset
	dc.l map_tst_lift					; Map
	dc.l collisiontiles_tst_lift		; Collision tileset
	dc.l collisionmap_tst_lift			; Collision map
	dc.l Lvl_TestLift_DefaultPalettes	; Palettes
	dc.l Lvl_TestLift_Init				; Init routine
	dc.l Lvl_TestLift_Update			; Update routine
	dc.l Lvl_TestLift_Serialise			; Serialise routine
	dc.l 0x0							; Next level
	dc.w Gravity						; Default gravity
	dc.w map_tst_lift_width				; Map width
	dc.w map_tst_lift_height			; Map height
	dc.w tiles_tst_lift_size_t			; Num tiles
	
	even
	
Lvl_TestLift_DefaultPalettes:

	dc.l palette_tst_lift			; World
	dc.l 0x0						; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
TEST:
	dc.l 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	
Lvl_TestLift_Init:

	; Trigger boxes
	move.l #EntityArray_Triggers, a0
	jsr    LoadGameObjects_tst_lift_TriggerBox
	
	; Checkpoints
	move.l #EntityArray_Checkpoints, a0
	jsr    LoadGameObjects_tst_lift_Checkpoint
	
	; Monsters
	move.l #EntityArray_Monsters, a0
	jsr    LoadGameObjects_tst_lift_Monster
    
	; Fuzzls
	move.l #EntityArray_Fuzzls, a0
	jsr    LoadGameObjects_tst_lift_Fuzzl
	
	; Fuzzl nests
	move.l #EntityArray_Nests, a0
	jsr    LoadGameObjects_tst_lift_Nest
    
	; Flues
	move.l #EntityArray_Flues, a0
	jsr    LoadGameObjects_tst_lift_Flue
	
	; Boulders
	move.l #EntityArray_Boulders, a0
	jsr    LoadGameObjects_tst_lift_Boulder
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	jsr    LoadGameObjects_tst_lift_Firefly
	
	; Water bodies
	move.l #EntityArray_WaterBodies, a0
	jsr    LoadGameObjects_tst_lift_WaterBody
	
	; Lifts
	move.l #EntityArray_Lifts, a0
	jsr    LoadGameObjects_tst_lift_Lift
	
	; Locations
	;move.l #EntityArray_Locations, a0
	;jsr    LoadGameObjects_tst_lift_Location
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	; Enable player 1 control
	move.b #0x1, Player1ControlEnabled

	rts
	
Lvl_TestLift_Update:
	rts
	
Lvl_TestLift_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts
	
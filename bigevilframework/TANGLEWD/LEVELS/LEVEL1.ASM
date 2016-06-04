;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   level1.asm - Level 1 - Herlequin Forest Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
Lvl1_HarlequinForest:

	dc.l tiles_lvl1				; Tileset
	dc.l map_lvl1				; Map
	dc.l collisiontiles_lvl1	; Collision tileset
	dc.l collisionmap_lvl1		; Collision map
	dc.l palette_lvl1_day		; Palettes
	dc.l Lvl1_Init				; Init routine
	dc.l Lvl1_Update			; Update routine
	dc.l Lvl2_HarlequinForestAct2	; Next level
	dc.w Gravity				; Default gravity
	dc.w map_lvl1_width			; Map width
	dc.w map_lvl1_height		; Map height
	dc.w tiles_lvl1_size_t		; Num tiles
	dc.b 0x1					; Num palettes
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
Lvl1Data_ActiveCutscene			rs.b 1
;---------------------------------
Lvl1Data_Struct_Pad      		rs.b 3
Lvl1Data_Struct_Size     		rs.b 0

; ************************************
; Constants
; ************************************
Lvl1Cutscene_BoulderRoll		equ 1

Lvl1_BoulderCamSpeedTo			equ 0x04
Lvl1_BoulderCamSpeedFrom		equ 0x04
Lvl1_BoulderAccel				equ 0x2
Lvl1_CamShakeSpeed				equ (0x30<<0x8)
Lvl1_CamShakeAmplitude			equ 0x4
	
Lvl1_Init:

	; Trigger boxes
	move.l #EntityArray_Triggers, a0
	jsr    LoadGameObjects_lvl1_TriggerBox
	
	; Checkpoints
	move.l #EntityArray_Checkpoints, a0
	jsr    LoadGameObjects_lvl1_Checkpoint
	
	; Monsters
	move.l #EntityArray_Monsters, a0
	jsr    LoadGameObjects_lvl1_Monster
    
	; Fuzzls
	move.l #EntityArray_Fuzzls, a0
	jsr    LoadGameObjects_lvl1_Fuzzl
	
	; Fuzzl nests
	move.l #EntityArray_Nests, a0
	jsr    LoadGameObjects_lvl1_Nest
    
	; Flues
	move.l #EntityArray_Flues, a0
	jsr    LoadGameObjects_lvl1_Flue
	
	; Boulders
	move.l #EntityArray_Boulders, a0
	jsr    LoadGameObjects_lvl1_Boulder
    
	; Fireflies
	move.l #EntityArray_Fireflies, a0
	jsr    LoadGameObjects_lvl1_Firefly
	
	; Water bodies
	move.l #EntityArray_WaterBodies, a0
	jsr    LoadGameObjects_lvl1_WaterBody
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit

	; Disable end level trigger box
	
	rts
	
Lvl1_Update:

	; Check if cutscene playing
	move.l #LevelData_1, a2
	cmp.b  #0x0, Lvl1Data_ActiveCutscene(a2)
	beq    @NoCutscene
	cmp.b  #Lvl1Cutscene_BoulderRoll, Lvl1Data_ActiveCutscene(a2)
	beq    @Cutscene1
	
	; Cutscene 1 - boulder roll
	@Cutscene1:
	jsr    Lvl1_UpdateCutscene_BoulderRoll
	bra    @ProcessedCutscene
	
	@NoCutscene:
	@ProcessedCutscene:

	; Check if monster has been killed
	
	; Enable end level trigger box

	rts
	
Lvl1_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts
	
Lvl1_StartCutscene_BoulderRoll:

	; Block player control
	move.b #0x0, Player1ControlEnabled
	
	; Get boulder
	move.l #Boulder_72_idx, d0
	mulu   #Boulder_Struct_Size, d0
	move.l #EntityArray_Boulders, a3
	add.l  d0, a3
	
	; Set boulder as camera target
	move.l a3, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	
	; Set player as camera lerp source
	move.l #Player1, CameraTargetLerpSource
	move.w #Lvl1_BoulderCamSpeedTo, CameraTargetLerpSpeed
	
	; Roll right
	move.w #Lvl1_BoulderAccel, GameObj_AccelX(a3)
	
	; Start camera shake
	move.w #Lvl1_CamShakeSpeed, CameraShakeSpeedY
	move.w #Lvl1_CamShakeAmplitude, CameraShakeAmpY
	
	; Set active cutscene
	move.l #LevelData_1, a2
	move.b #Lvl1Cutscene_BoulderRoll, Lvl1Data_ActiveCutscene(a2)
	
	rts
	
Lvl1_EndCutscene_BoulderRoll:
	
	; Stop camera shake
	move.w #0x0, CameraShakeSpeedY
	move.w #0x0, CameraShakeAmpY
	
	; Get boulder
	move.l #Boulder_72_idx, d0
	mulu   #Boulder_Struct_Size, d0
	move.l #EntityArray_Boulders, a3
	add.l  d0, a3
	
	; Set player as camera target
	move.l #Player1, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	
	; Set boulder as camera lerp source
	move.l a3, CameraTargetLerpSource
	move.w #Lvl1_BoulderCamSpeedFrom, CameraTargetLerpSpeed
	
	; Restore player control
	move.b #0x1, Player1ControlEnabled
	
	; End cutscene
	move.l #LevelData_1, a2
	move.b #0x0, Lvl1Data_ActiveCutscene(a2)
	
	rts
	
Lvl1_UpdateCutscene_BoulderRoll:

	; Get boulder
	move.l #Boulder_72_idx, d0
	mulu   #Boulder_Struct_Size, d0
	move.l #EntityArray_Boulders, a3
	add.l  d0, a3
	
	; Check if hit wall
	cmp.b  #0x0, GameObj_HitWall(a3)
	beq    @End
	
	; Hit wall, reverse direction and finish cutscene
	move.w #-Lvl1_BoulderAccel, GameObj_AccelX(a3)
	jsr    Lvl1_EndCutscene_BoulderRoll

	@End:
	
	rts
	
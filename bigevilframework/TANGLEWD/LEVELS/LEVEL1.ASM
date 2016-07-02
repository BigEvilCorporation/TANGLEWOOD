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
Lvl1Data_ActiveCutscene1		rs.b 1	; TODO: Use cutscene system
Lvl1Data_ActiveCutscene2		rs.b 1
Lvl1Data_ActiveCutscene3		rs.b 1
Lvl1Data_WakeUpStage			rs.b 1
Lvl1Data_WakeUpTimer			rs.w 1
;---------------------------------
Lvl1Data_Struct_Pad      		rs.b 2
Lvl1Data_Struct_Size     		rs.b 0

; ************************************
; Cutscene constants
; TODO: Use cutscene system
; ************************************

; Nymn wake up sequence
Lvl1_NymnWakeStageSleep1		equ 0	; Sleeping at level start
Lvl1_NymnWakeStageShake1		equ 1	; Ground shakes
Lvl1_NymnWakeStageWake1			equ 2	; Nymn raises his head and goes back to sleep
Lvl1_NymnWakeStageShake2		equ 3	; Ground shakes again
Lvl1_NymnWakeStageWake2			equ 4	; Nymn wakes up fully and player gains control
Lvl1_NymnWakeShakeTime			equ 0x0060

Lvl1_NymnWakeStageChangeTime1	equ 0x0200
Lvl1_NymnWakeStageChangeTime2	equ 0x0060
Lvl1_NymnWakeStageChangeTime3	equ 0x0130
Lvl1_NymnWakeStageChangeTime4	equ 0x0060

; Scared friend cutscene
Lvl1_ScaredFriend1RunSpeed  	equ 0x04*SubpixelsPerPixel
Lvl1_ScaredFriend2RunSpeed  	equ 0x05*SubpixelsPerPixel
Lvl1_ScaredFriend1RunAnimSpeed	equ 0x35
Lvl1_ScaredFriend2RunAnimSpeed	equ 0x40
Lvl1_ScaredFriend1XOffset		equ (screen_width*SubpixelsPerPixel)
Lvl1_ScaredFriend2XOffset		equ Lvl1_ScaredFriend1XOffset

; Boulder roll cutscene
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
	
	; Locations
	move.l #EntityArray_Locations, a0
	jsr    LoadGameObjects_lvl1_Location
    
	; Leaves
	; TODO: Leaf generator
	move.l #EntityArray_Leaves, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	add.l  #Leaf_Struct_Size, a0
	jsr    LeafInit
	
	; Start Nymn sleep sequence
	jsr    Lvl1_StartCutscene_NymnWake
	
	rts
	
Lvl1_Update:

	; Check if cutscenes playing
	; TODO: Use cutscene system
	move.l #LevelData_1, a2
	
	; Cutscene 1 - Ground shake + nymn wake
	cmp.b  #0x0, Lvl1Data_ActiveCutscene1(a2)
	beq    @NoCutscene1
	jsr    Lvl1_UpdateCutscene_NymnWake
	@NoCutscene1:
	
	; Cutscene 2 - friend flee towards home
	cmp.b  #0x0, Lvl1Data_ActiveCutscene2(a2)
	beq    @NoCutscene2
	jsr    Lvl1_UpdateCutscene_FriendFleeing
	@NoCutscene2:
	
	; Cutscene 3 - boulder roll
	cmp.b  #0x0, Lvl1Data_ActiveCutscene3(a2)
	beq    @NoCutscene3
	jsr    Lvl1_UpdateCutscene_BoulderRoll
	@NoCutscene3:

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

	; TODO: Use cutscene system
Lvl1_StartCutscene_NymnWake:

	; Get player 1
	move.l #Player1, a0
	
	; Disable player 1 control
	move.b #0x0, Player1ControlEnabled
	
	; Start sleep anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Set active cutscene
	move.l #LevelData_1, a2
	move.b #0x1, Lvl1Data_ActiveCutscene1(a2)
	
	; Begin sequence
	move.b #Lvl1_NymnWakeStageSleep1 , Lvl1Data_WakeUpStage(a2)
	
	; Start timer
	move.w #Lvl1_NymnWakeStageChangeTime1, Lvl1Data_WakeUpTimer(a2) 
	
	rts
	
Lvl1_EndCutscene_NymnWake:

	; Enable player 1 control
	move.b #0x1, Player1ControlEnabled
	
	; Release animation control
	move.l #Player1, a0
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Disable cutscene
	move.b #0x0, Lvl1Data_ActiveCutscene1(a2)
	
	rts
	
Lvl1_UpdateCutscene_NymnWake:

	; Process timer
	move.l #LevelData_1, a2
	move.w Lvl1Data_WakeUpTimer(a2), d0
	sub.w  #0x1, Lvl1Data_WakeUpTimer(a2)
	cmp.w  #0x0, d0
	bne    @TimerRunning
	
	; Advance cutscene stage
	add.b  #0x1, Lvl1Data_WakeUpStage(a2)
	
	; Determine new stage
	move.b Lvl1Data_WakeUpStage(a2), d0
	
	cmp.b  #Lvl1_NymnWakeStageShake1, d0
	beq    @NymnWakeStageShake1
	cmp.b  #Lvl1_NymnWakeStageWake1, d0
	beq    @NymnWakeStageWake1
	cmp.b  #Lvl1_NymnWakeStageShake2, d0
	beq    @NymnWakeStageShake2
	cmp.b  #Lvl1_NymnWakeStageWake2, d0
	beq    @NymnWakeStageWake2
	
	;==============================================================	
	
	@NymnWakeStageShake1:
	
	; Ground shakes
	move.w #Lvl1_NymnWakeShakeTime, CameraShakeTimer
	move.w #Lvl1_CamShakeSpeed, CameraShakeSpeedY
	move.w #Lvl1_CamShakeAmplitude, CameraShakeAmpY
	
	lea    bgm_cut_introrumble, a0
	jsr    Echo_PlayBGM
	
	move.w #Lvl1_NymnWakeStageChangeTime2, Lvl1Data_WakeUpTimer(a2)
	bra    @End
	
	;==============================================================	
	
	@NymnWakeStageWake1:
	
	; Nymn raises head, then goes back to sleep
	PUSHL  a1
	PUSHL  a2
	move.l #Player1, a0
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_WakeSleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1
	
	move.w #Lvl1_NymnWakeStageChangeTime3, Lvl1Data_WakeUpTimer(a2)
	bra    @End
	
	;==============================================================	
	
	@NymnWakeStageShake2:
	
	; Ground shakes
	move.w #Lvl1_NymnWakeShakeTime, CameraShakeTimer
	move.w #Lvl1_CamShakeSpeed, CameraShakeSpeedY
	move.w #Lvl1_CamShakeAmplitude, CameraShakeAmpY
	
	lea    bgm_cut_introrumble, a0
	jsr    Echo_PlayBGM
	
	move.w #Lvl1_NymnWakeStageChangeTime4, Lvl1Data_WakeUpTimer(a2)
	bra    @End
	
	;==============================================================	
	
	@NymnWakeStageWake2:
	
	; Nymn wakes up fully
	PUSHL  a1
	PUSHL  a2
	move.l #Player1, a0
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Wake*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a2
	POPL   a1
	
	; Done
	jsr    Lvl1_EndCutscene_NymnWake
	
	;==============================================================	
	
	@TimerRunning:
	@End:
	
	rts
		   
	; TODO: Use cutscene system
Lvl1_StartCutscene_FriendFleeing:

	PUSHL  a0
	PUSHL  a1
	
	; Create actors
	; TODO: Add to end of actor list
	; TODO: Store actor ptr
	move.l #EntityArray_Actors, a0
	jsr    ActorInit
	add.l  #Actor_Struct_Size, a0
	jsr    ActorInit
	
	; Override max run velocity and ignore walls
	move.l #EntityArray_Actors, a0
	move.w #Lvl1_ScaredFriend1RunSpeed, Character_MaxVelXRun(a0)
	move.b #0x0, PhysicsObj_CollideWalls(a0)
	
	add.l  #Actor_Struct_Size, a0
	move.w #Lvl1_ScaredFriend2RunSpeed, Character_MaxVelXRun(a0)
	move.b #0x0, PhysicsObj_CollideWalls(a0)
	
	; Override run anim speed
	move.l #EntityArray_Actors, a0
	move.l a0, a2
	add.l  #Character_Animations, a2
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a2
	move.b #Lvl1_ScaredFriend1RunAnimSpeed, Animation_Speed(a2)
	
	add.l  #Actor_Struct_Size, a0
	move.l a0, a2
	add.l  #Character_Animations, a2
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a2
	move.b #Lvl1_ScaredFriend2RunAnimSpeed, Animation_Speed(a2)

	; Load actor 1 sprite sheet (using Player 2 VRAM space and Fuzzl palette)
	move.l #EntityArray_Actors, a0
	lea    spritesheets_nymn, a1
	lea    sprite_nymn_subsprite_dimensions_bits, a2
	lea    sprite_nymn_subsprite_pos_offsets, a3
	lea    sprite_nymn_numtiles_per_subsprite, a4
	move.l #Tiles_Player2VRAM, d0
	move.l #sprite_nymn_size_t, d1
	move.b #sprite_nymn_size_subsprites, d2
	move.w #sprite_nymn_widthheight_subsprites, d3
	move.b #PaletteId_Fuzzl, d4
	jsr    SpriteObjLoad
	
	; Load actor 2 sprite sheet (using Djakk VRAM space and palette)
	add.l  #Actor_Struct_Size, a0
	lea    spritesheets_nymn, a1
	lea    sprite_nymn_subsprite_dimensions_bits, a2
	lea    sprite_nymn_subsprite_pos_offsets, a3
	lea    sprite_nymn_numtiles_per_subsprite, a4
	move.l #Tiles_MonsterVRAM, d0
	move.l #sprite_nymn_size_t, d1
	move.b #sprite_nymn_size_subsprites, d2
	move.w #sprite_nymn_widthheight_subsprites, d3
	move.b #PaletteId_Monster, d4
	jsr    SpriteObjLoad
	
	; Load palettes	
	lea    Pal_Nymn_Green, a0
	move.l #PaletteId_Fuzzl, d0
	jsr    LoadPalette
	
	lea    Pal_Nymn_Blue, a0
	move.l #PaletteId_Monster, d0
	jsr    LoadPalette
	
	; Position actor 1
	move.l #LocIntroActor1_idx, d0
	mulu   #Location_Struct_Size, d0
	move.l #EntityArray_Locations, a1
	add.l  d0, a1
	ENTITY_GETLEFT d0, a1
	ENTITY_GETBOTTOM d1, a1
	
	clr.l  d2
	move.l #EntityArray_Actors, a0
	move.w Entity_Height(a0), d2
	mulu   #SubpixelsPerPixel, d2
	sub.l  d2, d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor
	
	; Start running
	jsr    CharacterStartRun
	
	; Start at max velocity
	move.w #-Lvl1_ScaredFriend1RunSpeed, PhysicsObj_VelX(a0)
	
	; Position actor 2 (offset from player)
	move.l #LocIntroActor2_idx, d0
	mulu   #Location_Struct_Size, d0
	move.l #EntityArray_Locations, a1
	add.l  d0, a1
	ENTITY_GETLEFT d0, a1
	ENTITY_GETBOTTOM d1, a1
	
	clr.l  d2
	add.l  #Actor_Struct_Size, a0
	move.w Entity_Height(a0), d2
	mulu   #SubpixelsPerPixel, d2
	sub.l  d2, d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor
	
	; Start running
	jsr    CharacterStartRun
	
	; Start at max velocity
	move.w #-Lvl1_ScaredFriend2RunSpeed, PhysicsObj_VelX(a0)
	
	; Set active cutscene
	move.l #LevelData_1, a2
	move.b #0x1, Lvl1Data_ActiveCutscene2(a2)
	
	POPL   a1
	POPL   a0
	
	rts
	
Lvl1_EndCutscene_FriendFleeing:

	; Delete actors
	; TODO: Store actor ptr
	move.l #EntityArray_Actors, a0
	jsr    ActorShutdown
	add.l  #Actor_Struct_Size, a0
	jsr    ActorShutdown
	
	; Reload Djakk sprite sheet
	cmp.w  #0x0, EntityCount_Monsters
	beq    @NoMonsters
	move.l #EntityArray_Monsters, a0
	lea    spritesheets_djakk, a1
	lea    sprite_djakk_subsprite_dimensions_bits, a2
	lea    sprite_djakk_subsprite_pos_offsets, a3
	lea    sprite_djakk_numtiles_per_subsprite, a4
	move.l #tiles_monsterVRAM, d0
	move.l #sprite_djakk_size_t, d1
	move.b #sprite_djakk_size_subsprites, d2
	move.w #sprite_djakk_widthheight_subsprites, d3
	move.b #PaletteID_Monster, d4
	jsr    SpriteObjLoad
	@NoMonsters:
	
	; Reload Djakk palette
	lea    palette_fade_black, a0
	move.l #PaletteId_Monster, d0
	jsr    LoadPalette
	
	; Reload Fuzz; palette
	lea    palette_fuzzl_yellow, a0
	move.l #PaletteId_Fuzzl, d0
	jsr    LoadPalette
	
	; Finished cutscene
	move.l #LevelData_1, a2
	move.b #0x0, Lvl1Data_ActiveCutscene2(a2)
	
	rts
	
	; TODO: Use cutscene system
Lvl1_UpdateCutscene_FriendFleeing:

	PUSHL  a0
	PUSHL  a1
	PUSHL  a2

	; Run left
	move.l #EntityArray_Actors, a0
	jsr    CharacterMoveleft
	add.l  #Actor_Struct_Size, a0
	jsr    CharacterMoveleft
	
	; Check if actors are one screen to the left of Player 1
	move.l #EntityArray_Actors, a0
	move.l #Player1, a1
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a1
	sub.l  d0, d1
	cmp.l  #(screen_width*SubpixelsPerPixel), d1
	blt    @StillRunning 
	
	add.l  #Actor_Struct_Size, a0
	move.l #Player1, a1
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a1
	sub.l  d0, d1
	cmp.l  #(screen_width*SubpixelsPerPixel), d1
	blt    @StillRunning 
	
	; Done
	jsr    Lvl1_EndCutscene_FriendFleeing
	
	@StillRunning:
	
	POPL   a2
	POPL   a1
	POPL   a0
	
	rts
	
Lvl1_StartCutscene_BoulderRoll:

	; Block player control
	move.b #0x0, Player1ControlEnabled
	
	; Get boulder
	move.l #BoulderIntro_idx, d0
	mulu   #Boulder_Struct_Size, d0
	move.l #EntityArray_Boulders, a3
	add.l  d0, a3
	
	; Set as unbreakable
	move.b #0x0, Boulder_CanCrack(a3)
	
	; Set boulder as camera target
	move.l a3, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	
	; Set player as camera lerp source
	move.l #Player1, CameraTargetLerpSource
	move.w #Lvl1_BoulderCamSpeedTo, CameraTargetLerpSpeed
	
	; Roll right
	move.w #Lvl1_BoulderAccel, PhysicsObj_AccelX(a3)
	
	; Start camera shake
	move.w #Lvl1_CamShakeSpeed, CameraShakeSpeedY
	move.w #Lvl1_CamShakeAmplitude, CameraShakeAmpY
	
	; Set active cutscene
	move.l #LevelData_1, a2
	move.b #0x1, Lvl1Data_ActiveCutscene3(a2)
	
	rts
	
Lvl1_EndCutscene_BoulderRoll:
	
	; Stop camera shake
	move.w #0x0, CameraShakeSpeedY
	move.w #0x0, CameraShakeAmpY
	
	; Get boulder
	move.l #BoulderIntro_idx, d0
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
	move.b #0x0, Lvl1Data_ActiveCutscene3(a2)
	
	rts
	
Lvl1_UpdateCutscene_BoulderRoll:

	; Get boulder
	move.l #BoulderIntro_idx, d0
	mulu   #Boulder_Struct_Size, d0
	move.l #EntityArray_Boulders, a3
	add.l  d0, a3
	
	; Check if hit wall
	cmp.b  #0x0, PhysicsObj_HitWall(a3)
	beq    @End
	
	; Hit wall, reverse direction and finish cutscene
	move.w #-Lvl1_BoulderAccel, PhysicsObj_AccelX(a3)
	jsr    Lvl1_EndCutscene_BoulderRoll

	@End:
	
	rts
	
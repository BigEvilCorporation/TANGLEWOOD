;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l3a3.asm - Level 3 - Heritage Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l3a3_HeritageAct3:

	dc.l LevelSelect_Str_03				; Name
	dc.l LevelData_L3A3					; Userdata
	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3					; Blocks
	dc.l map_blockmap_l3a3				; Block map
	dc.l map_blockmap_l3a3_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3			; Collision blocks
	dc.l collisionmap_blockmap_l3a3		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l3a3	; Collision block map Y offsets table
	dc.l terrainmap_L3A3_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l3a3_DefaultPalettes			; Palettes
	dc.l l3a3_Init						; Init routine
	dc.l l3a3_Update					; Update routine
	dc.l l3a3_Serialise					; Serialise routine
	dc.l l3a3_LoadGameObjects			; Load game objects routine
	dc.l l3a3_End						; End routine
	IF INCLUDE_LEVEL_4
	dc.l l4a1_TetheredAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l3a3_width					; Map width (tiles)
	dc.w map_l3a3_height				; Map height (tiles)
	dc.w map_blockmap_l3a3_width		; Map width (blocks)
	dc.w map_blockmap_l3a3_height		; Map height (blocks)
	dc.w terrainmap_L3A3_width			; Collision map width (tiles)
	dc.w terrainmap_L3A3_height			; Collision map height (tiles)
	dc.w terrainmap_L3A3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L3A3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L3A3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L3A3_height; Collision map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	dc.w terrainmap_L3A3_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x9							; Index
	
	even
	
l3a3_DefaultPalettes:

	dc.l palette_l3_night			; World
	dc.l palette_djakk				; Elder Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

SceneMeetEchoStage_None				equ 0
SceneMeetEchoStage_RunScared		equ 1
SceneMeetEchoStage_Hide				equ 2
SceneMeetEchoStage_DjakkChase		equ 3
SceneMeetEchoStage_WaitDjakkDead	equ 4
SceneMeetEchoStage_WaitNymn			equ 5
SceneMeetEchoStage_StandUp			equ 6
SceneMeetEchoStage_RunToNymn		equ 7
SceneMeetEchoStage_GreetNymn		equ 8
SceneMeetEchoStage_JumpNymn			equ 9
SceneMeetEchoStage_Finished			equ 10

EchoToNymnCamLerpSpeed				equ 0x40	; Camera lerp speed
EchoGreetCustsceneStartDelay		equ 0x20	; Delay to start cutscene
EchoGreetDjakkCameraTime			equ 0x78	; Time to view chasing Djakk
EchoPounceNymnDistOffset			equ 0x3C	; Distance to begin Echo pounce anim
NymnGreetCutsceneLastFrameOffset	equ 0x0040
EchoGreetCutsceneLastFrameOffset	equ 0x0038
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l3a3Data_CutsceneSaveEcho		rs.b Cutscene_Struct_Size
l3a3Data_CutsceneMeetEcho		rs.b Cutscene_Struct_Size
l3a3Data_ComboButton1Count		rs.b 1
l3a3Data_ComboButton2Count		rs.b 1
;---------------------------------
	RS_ALIGN
l3a3Data_Struct_Size     		rs.b 0
	
l3a3_Init:

	; Set data for all acts in level
	jsr    L3_SetActData
	
	; Load BG map
	lea    map_blocks_l3, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD palettes
	move.l  #palette_l3_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l3_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Night, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations

	;==============================================================

	; HACK: Load L3 specific object sprites
	jsr    L3_LoadObjectSprites

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L3A3, a2
	lea    l3a3Data_CutsceneSaveEcho(a2), a0
	move.l #l3a3_CutsceneSaveEcho, a1
	jsr    CutsceneInit
	POPM   a0-a1

	PUSHM  a0-a1
	lea    LevelData_L3A3, a2
	lea    l3a3Data_CutsceneMeetEcho(a2), a0
	move.l #l3a3_CutsceneMeetEcho, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l3a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l3a3_Generator2, a0
	ENTITY_GETBYNAME Cogs, l3a3_Cogs2, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Button, l3a3_ButtonCage2, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	ENTITY_GETBYNAME Generator, l3a3_Generator2, a0
	ENTITY_GETBYNAME Button, l3a3_Button7, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to cages
	ENTITY_GETBYNAME Button, l3a3_ButtonCage1, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3Cage1Raise, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l3a3_ButtonCage2, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3Cage2Raise, Button_OnDown(a0)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l3a3_Button7, a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge3, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)

	; Connect twin buttons to bridge handler
	ENTITY_GETBYNAME Button, l3a3_Button1, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton1Down, Button_OnDown(a0)
	move.l #l3a3ComboButton1Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button2, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton2Down, Button_OnDown(a0)
	move.l #l3a3ComboButton2Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button5, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton5Down, Button_OnDown(a0)
	move.l #l3a3ComboButton5Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button6, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton6Down, Button_OnDown(a0)
	move.l #l3a3ComboButton6Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l3a3_Button3, a0
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateUp, Button_OnDown(a0)
	move.l #LiftActivateDown, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Reset combo button
	move.l #LevelData_L3A3, a2
	move.b #0x0, l3a3Data_ComboButton1Count(a2)
	move.b #0x0, l3a3Data_ComboButton2Count(a2)

	; Set lift stop point
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a0
	ENTITY_GETBYNAME Location, l3a3_LiftStop1, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Set Elders in cages
	ENTITY_GETBYNAME Monster, l3a3_Elder1, a0
	jsr    MonsterSetInCage
	ENTITY_GETBYNAME Monster, l3a3_Elder2, a0
	jsr    MonsterSetInCage

	;==============================================================

	; Disable Echo until cutscene
	IF INCLUDE_CHARACTER_ECHO
	move.l Player2, a2
	move.b #0x0, Entity_Active(a2)
	ENDIF

	; Skip Djakk intro
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a0
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.b #0x0, Monster_BlockPlayerCtrl(a0)

	; Override boss music
	move.l #track_bgm_boss_l6, Monster_ChaseMusic(a0)
	move.l #0x0, Monster_SearchMusic(a0)

	;==============================================================

	; Gamescome 2017 demo - no Echo sequence
	IF !INCLUDE_CHARACTER_ECHO
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	bclr.b #EntityWorldGridFlag_GridRenders, Entity_WorldGridFlags(a0)
	ENTITY_GETBYNAME TriggerBox, l3a3_TriggerBoxEchoIntro, a0
	move.l #l3a3_Trigger_End, TriggerBox_Routine(a0)
	ENDIF
	
	rts
	
l3a3_Update:

	rts
	
l3a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l3a3_End:
	rts

;==============================================================

l3a3ComboButton1Down:

	move.l #LevelData_L3A3, a2
	addq.b #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton1Up:

	move.l #LevelData_L3A3, a2

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	PUSHL  a2
	jsr    l3a3ComboButton1Deactivated
	POPL   a2
	@NotEnoughButtons:

	subq.b  #0x1, l3a3Data_ComboButton1Count(a2)

	rts

l3a3ComboButton2Down:

	move.l #LevelData_L3A3, a2
	addq.b #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton2Up:

	move.l #LevelData_L3A3, a2

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	PUSHL  a2
	jsr    l3a3ComboButton1Deactivated
	POPL   a2
	@NotEnoughButtons:

	subq.b  #0x1, l3a3Data_ComboButton1Count(a2)

	rts

l3a3ComboButton1Activated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge1, a0
	jsr   BridgeBeginRoll
	POPL  a0

	rts

l3a3ComboButton1Deactivated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge1, a0
	jsr   BridgeBeginUnroll
	POPL  a0

	rts

;==============================================================

l3a3ComboButton5Down:

	move.l #LevelData_L3A3, a2
	addq.b #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton5Up:

	move.l #LevelData_L3A3, a2
	subq.b  #0x1, l3a3Data_ComboButton2Count(a2)
	jsr    l3a3ComboButton2Deactivated

	rts

l3a3ComboButton6Down:

	move.l #LevelData_L3A3, a2
	addq.b #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton6Up:

	move.l #LevelData_L3A3, a2
	subq.b  #0x1, l3a3Data_ComboButton2Count(a2)
	jsr    l3a3ComboButton2Deactivated

	rts

l3a3ComboButton2Activated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge2, a0
	jsr   BridgeBeginRoll
	POPL  a0

	rts

l3a3ComboButton2Deactivated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge2, a0
	jsr   BridgeBeginUnroll
	POPL  a0

	rts

;==============================================================

l3a3Cage1Raise:

	PUSHL  a0

	; Get cage
	ENTITY_GETBYNAME DjakkCage, l3a3_ElderCage1, a0

	; Setup callback to wake Elder
	move.l #l3a3Cage1RaiseFinished, DjakkCage_OnEndRaise(a0)
	
	; Begin raising
	jsr    DjakkCageBeginRaise
	
	POPL   a0

	rts

l3a3Cage1RaiseFinished:

	; Activate Elder
	PUSHL  a0
	ENTITY_GETBYNAME Monster, l3a3_Elder1, a0
	jsr    MonsterStartRoaring
	POPL   a0

	; Disable button
	ENTITY_GETBYNAME Button, l3a3_ButtonCage1, a2
	move.b #0x0, Button_Active(a2)

	rts

l3a3Cage2Raise:

	PUSHL  a0

	; Get cage
	ENTITY_GETBYNAME DjakkCage, l3a3_ElderCage2, a0

	; Setup callback to wake Elder
	move.l #l3a3Cage2RaiseFinished, DjakkCage_OnEndRaise(a0)
	
	; Begin raising
	jsr    DjakkCageBeginRaise
	
	POPL   a0

	rts

l3a3Cage2RaiseFinished:

	; Activate Elder
	PUSHL  a0
	ENTITY_GETBYNAME Monster, l3a3_Elder2, a0
	jsr    MonsterStartRoaring
	POPL   a0

	; Disable button
	ENTITY_GETBYNAME Button, l3a3_ButtonCage2, a2
	move.b #0x0, Button_Active(a2)

	rts

l3a3TriggerEndLift:

	PUSHL  a0

	; Disconnect button from lift
	ENTITY_GETBYNAME Button, l3a3_Button3, a0
	move.b #0x0, Entity_Active(a0)

	; Continue raising
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a0
	jsr    LiftActivateUp

	; Disable Elder
	ENTITY_GETBYNAME Monster, l3a3_Elder1, a0
	move.b #0x0, Entity_Active(a0)

	; Fade down music
	move.b #-Audio_DefaultFadeSpeed, d0
	jsr    SND_BeginFadeTrack

	POPL   a0

	rts

;==============================================================
	
l3a3TriggerEchoIntro:

	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a2
	tst.b  Character_Dead(a2)
	bne    @DjakkDead

	; Djakk alive, start Save Echo cutscene
	PUSHL  a0
	lea    LevelData_L3A3, a2
	lea    l3a3Data_CutsceneSaveEcho(a2), a0
	jsr    CutscenePlay
	POPL   a0

	; Set power to expire next frame
	move.l Player1, a2
	tst.w  Player_ColourChangeTimer(a2)
	beq    @NoPower
	move.w #0x1, Player_ColourChangeTimer(a2)
	@NoPower:

	; Remove crate from world grid
	PUSHL  a0
	ENTITY_GETBYNAME Crate, l3a3_CrateDjakkBoss, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    PhysicsWorldAddObject
	POPL   a0

	bra    @End

	@DjakkDead:

	; Djakk dead, start Meet Echo cutscene
	PUSHL  a0
	lea    LevelData_L3A3, a2
	lea    l3a3Data_CutsceneMeetEcho(a2), a0
	jsr    CutscenePlay
	POPL   a0

	; Disable bridge buttons
	ENTITY_GETBYNAME Button, l3a3_Button5, a2
	ENTITY_GETBYNAME Button, l3a3_Button6, a3
	move.b #0x0, Button_Active(a2)
	move.b #0x0, Button_Active(a3)

	@End:

	rts

l3a3_CutsceneSaveEcho:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Stop player movement and disable control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Start enemy approach track
	CUTSCENE_PLAY_TRACK #track_bgm_enemyapproach

	; Enable Echo
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Entity_Active,#0x1

	; Echo runs scared
	CUTSCENE_DELAY #EchoGreetCustsceneStartDelay
	CUTSCENE_CAMERA_LERP Player1,Player2,#EchoToNymnCamLerpSpeed
	MOVE_NTSC_L Player1MaxVelXRun, d3, d1
	neg.l d3
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,d3
	ENTITY_GETBYNAME Location, l3a3_LocEchoHide, a3
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a3,#0x10,#0x10

	CUTSCENE_TICKMODE_CONTINUOUS

	; Start hiding
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStartHiding
	CUTSCENE_TICKMODE_INSTR_PER_FRAME
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Lerp camera back
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CAMERA_LERP Player2,Player1,#EchoToNymnCamLerpSpeed
	CUTSCENE_CAMERA_LERP_WAIT

	; TODO: Nymn faces Echo

	; Djakk begins chase
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a2
	CUTSCENE_OBJECT_ROUTINE a2,#MonsterStartTrackPlayer
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a2
	MOVE_NTSC_L -Monster_MaxVelXRun, d3, d0
	CUTSCENE_OBJECT_SET_PARAM_L a2,#PhysicsObj_VelX,d3

	; Pan camera to Djakk
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a2
	CUTSCENE_CAMERA_LERP Player1,a2,#EchoToNymnCamLerpSpeed

	; Wait
	CUTSCENE_DELAY #EchoGreetDjakkCameraTime

	; Pan camera back to Nymn
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a2
	CUTSCENE_CAMERA_LERP a2,Player1,#EchoToNymnCamLerpSpeed

	; Restore control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l3a3_CutsceneMeetEcho:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Stop player movement and disable control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Start meet Echo track
	CUTSCENE_PLAY_TRACK #track_bgm_meetecho

	; Echo emerges
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CAMERA_LERP Player1,Player2,#Echo_HowlCameraLerpSpeed
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStopHiding
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo talks
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_CHARACTER_ANIM Player2,#Player_Animations,#PlayerAnimIdx_Talk
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo runs over to Nymn
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,Player1,#-EchoPounceNymnDistOffset,#0x08
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0

	; Take anim control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_UpdateAnim,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_UpdateAnim,#0x0

	; Echo jumps up to Nymn
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_PounceNymn
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Lerp camera to Nymn
	CUTSCENE_CAMERA_LERP Player2,Player1,#EchoToNymnCamLerpSpeed

	; Lock Nymn sprite flipping
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#SpriteObj_FlippedX,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_LockSpriteFlip,#0x1

	; Echo pounces on Nymn, greets him, then gets off
	CUTSCENE_CHARACTER_ANIM Player1,#Nymn_Animations,#NymnAnimIdx_GreetEcho
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_GreetNymn
	CUTSCENE_CHARACTER_ANIM_WAIT Player1

	; Restore anim control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_UpdateAnim,#0x1
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_UpdateAnim,#0x1

	; Run cleanup steps all at once
	CUTSCENE_TICKMODE_CONTINUOUS

	; Offset character position to match last anim frames
	move.l Player1, a3
	move.l Entity_WorldPosX(a3), d3
	addi.l #NymnGreetCutsceneLastFrameOffset*subpixels_per_pixel, d3
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#Entity_WorldPosX,d3

	move.l Player2, a3
	move.l Entity_WorldPosX(a3), d3
	addi.l #EchoGreetCutsceneLastFrameOffset*subpixels_per_pixel, d3
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#Entity_WorldPosX,d3

	; Lerp camera
	move.l  CameraWorldPosX, d0
	move.l  CameraWorldPosY, d1
	addi.l  #(vdp_sprite_border_x*subpixels_per_pixel), d0
	addi.l  #(vdp_sprite_border_y*subpixels_per_pixel), d1
	CUTSCENE_CAMERA_LERP_FROM_POS d0,d1,Player1,#EchoToNymnCamLerpSpeed

	; Restore Nymn sprite flipping
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#SpriteObj_FlippedX,#0x1
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_LockSpriteFlip,#0x0

	; Restore player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	; Start Echo AI
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStart_Follow

	; Disable Echo footsteps for rest of level
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoDisableFootstepSFX

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

;==============================================================

l3a3_Trigger_End:

	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter

	; Not sleeping, force fade state
	lea    GameStateEndLevelData, a2
	move.w #0x1, EndLevelState_Timer(a2)
	
	rts

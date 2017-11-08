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
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3			; Collision blocks
	dc.l collisionmap_blockmap_l3a3		; Collision block map
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
	dc.b 0x0							; Background colour idx
	
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
EchoGreetDjakkCameraTime			equ 0x78	; Time to view chasing Djakk
EchoPounceNymnDistOffset			equ 0x3C	; Distance to begin Echo pounce anim
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l3a3Data_SceneTimer				rs.w 1
l3a3Data_WaitingInput			rs.b 1
l3a3Data_ComboButton1Count		rs.b 1
l3a3Data_ComboButton2Count		rs.b 1
l3a3Data_MeetEchoSceneStage		rs.b 1
;---------------------------------
l3a3Data_Struct_Pad      		rs.b 2
l3a3Data_Struct_Size     		rs.b 0
	
l3a3_Init:
	
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
	move.l #LiftActivate, Button_OnDown(a0)
	move.l #LiftStop, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Reset combo button
	move.l #LevelData_L3A3, a2
	move.b #0x0, l3a3Data_ComboButton1Count(a2)
	move.b #0x0, l3a3Data_ComboButton2Count(a2)

	; Init cutscene
	move.b #SceneMeetEchoStage_None, l3a3Data_MeetEchoSceneStage(a2)
	move.w #0x0, l3a3Data_SceneTimer(a2)

	; Set Elders in cages
	ENTITY_GETBYNAME Monster, l3a3_Elder1, a0
	jsr    MonsterSetInCage
	ENTITY_GETBYNAME Monster, l3a3_Elder2, a0
	jsr    MonsterSetInCage

	;==============================================================

	; Gamescome 2017 demo - no Echo sequence
	IF !INCLUDE_CHARACTER_ECHO
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	ENTITY_GETBYNAME TriggerBox, l3a3_TriggerBoxEchoIntro, a0
	move.l #l3a3_Trigger_End, TriggerBox_Routine(a0)
	ENDIF
	
	rts
	
l3a3_Update:

	move.l #LevelData_L3A3, a2
	cmp.b  #SceneMeetEchoStage_None, l3a3Data_MeetEchoSceneStage(a2)
	beq    @End
	jsr    l3a3MeetEchoSceneUpdate
	@End:

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

;==============================================================
	
l3a3TriggerEchoIntro:

	move.l #LevelData_L3A3, a2

	; If not yet started, begin scene
	cmp.b  #SceneMeetEchoStage_None, l3a3Data_MeetEchoSceneStage(a2)
	beq    @TriggerStart

	; If waiting for Nymn, stand up
	cmp.b  #SceneMeetEchoStage_WaitNymn, l3a3Data_MeetEchoSceneStage(a2)
	beq    @TriggerStandUp

	bra    @End

	@TriggerStart:
	jsr    l3a3MeetEchoBeginStage_RunScared
	bra    @End

	@TriggerStandUp:
	jsr    l3a3MeetEchoBeginStage_StandUp
	bra    @End

	@End:

	rts

l3a3MeetEchoBeginStage_RunScared:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_RunScared, l3a3Data_MeetEchoSceneStage(a2)
	
	; Lerp camera to Echo
	PUSHM  a0-a1
	move.l (Player1), a0
	move.l (Player2), a1
	move.l #EchoToNymnCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a1
	
	; Start running
	PUSHL  a0
	move.l (Player2), a0
	jsr    CharacterMoveLeft
	MOVE_NTSC_L Player1MaxVelXRun, d0, d1
	neg.l  d0
	move.l d0, PhysicsObj_VelX(a0)
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_RunScared:

	PUSHL  a0
	move.l (Player2), a0
	
	; Nymn face Echo
	move.b #0x0, d2
	move.l (Player1), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosX(a2), d1
	cmp.l  d0, d1
	ble    @ToRight
	move.b #0x1, d2
	@ToRight:
	move.b d2, SpriteObj_FlippedX(a2)

	; If not yet hit location marker, run left
	ENTITY_GETBYNAME Location, l3a3_LocEchoHide, a3
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @EchoRun

	; Next state
	jsr    l3a3MeetEchoBeginStage_Hide
	bra    @End

	@EchoRun:
	jsr    CharacterMoveLeft
	
	@End:
	
	POPL   a0
	
	rts

l3a3MeetEchoBeginStage_Hide:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_Hide, l3a3Data_MeetEchoSceneStage(a2)
	
	PUSHL  a0
	move.l (Player2), a0
	
	; Stop running
	jsr    CharacterCancelXMovement

	; Start hide anim
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_Hide*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_Hide:

	PUSHL  a0
	move.l (Player2), a0
	
	; Wait for hide animation to finish
	tst.b  AnimObj_Playing(a0)
	bne    @End
	
	; Next state
	jsr    l3a3MeetEchoBeginStage_DjakkChase
	
	@End:
	
	POPL   a0
	
	rts
	
l3a3MeetEchoBeginStage_DjakkChase:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_DjakkChase, l3a3Data_MeetEchoSceneStage(a2)
	
	; Alert Djakk, start running
	PUSHL  a0
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a0
	jsr    MonsterStartTrackPlayer
	MOVE_NTSC_L Monster_MaxVelXRun, d1, d0
	neg.l  d1
	move.l d1, PhysicsObj_VelX(a0)
	POPL   a0
	
	; Lerp camera to Djakk
	PUSHM  a0-a1
	move.l (Player2), a0
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a1
	move.l #EchoToNymnCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a1
	
	; Init timer
	move.l #LevelData_L3A3, a2
	MOVE_NTSC_W EchoGreetDjakkCameraTime, l3a3Data_SceneTimer(a2), d0
	
	rts
	
l3a3MeetEchoUpdateStage_DjakkChase:

	; Wait for timer
	move.l #LevelData_L3A3, a2
	move.w l3a3Data_SceneTimer(a2), d0
	subq.w  #0x1, d0
	move.w d0, l3a3Data_SceneTimer(a2)
	tst.w  d0
	bne    @End
	
	; Next stage
	jsr    l3a3MeetEchoBeginStage_WaitDjakkDead
	
	@End:
	
	rts

l3a3MeetEchoBeginStage_WaitDjakkDead:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_WaitDjakkDead, l3a3Data_MeetEchoSceneStage(a2)
	
	; Start scared anim loop
	PUSHL  a0
	move.l (Player2), a0
	
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_Scared*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0
	
	; Lerp camera to Nymn
	PUSHM  a0-a1
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a0
	move.l (Player1), a1
	move.l #EchoToNymnCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a1

	rts

l3a3MeetEchoUpdateStage_WaitDjakkDead:

	; Wait for Djakk to die
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a3
	tst.b  Character_Dead(a3)
	beq    @End
	
	; Next state
	jsr    l3a3MeetEchoBeginStage_WaitNymn
	
	@End:
	
	rts

l3a3MeetEchoBeginStage_WaitNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_WaitNymn, l3a3Data_MeetEchoSceneStage(a2)

	rts

l3a3MeetEchoUpdateStage_WaitNymn:

	; Waiting for trigger box, nothing to do
	
	rts

l3a3MeetEchoBeginStage_StandUp:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_StandUp, l3a3Data_MeetEchoSceneStage(a2)

	; Disable bridge buttons
	ENTITY_GETBYNAME Button, l3a3_Button5, a2
	ENTITY_GETBYNAME Button, l3a3_Button6, a3
	move.b #0x0, Button_Active(a2)
	move.b #0x0, Button_Active(a3)
	
	; Stop Nymn and take control
	PUSHL  a0
	move.l (Player1), a0
	jsr    CharacterCancelXMovement
	move.b #0x0, Player_ControlEnabled(a0)
	POPL   a0
	
	; Echo start stand up anim
	PUSHL  a0
	move.l (Player2), a0
	
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_StandFromHiding*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0
	
	; Lerp camera to Echo
	PUSHM  a0-a1
	move.l (Player1), a0
	move.l (Player2), a1
	move.l #EchoToNymnCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a1
	
	rts
	
l3a3MeetEchoUpdateStage_StandUp:

	PUSHL  a0
	move.l (Player2), a0
	
	; Wait for stand animation to finish
	tst.b  AnimObj_Playing(a0)
	bne    @End
	
	; Next state
	jsr    l3a3MeetEchoBeginStage_RunToNymn
	
	@End:
	
	POPL   a0
	
	rts
	
l3a3MeetEchoBeginStage_RunToNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_RunToNymn, l3a3Data_MeetEchoSceneStage(a2)
	
	; Release Echo anim control and start running
	PUSHL  a0
	move.l (Player2), a0
	move.b #0x1, Character_UpdateAnim(a0)
	jsr    CharacterMoveRight
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_RunToNymn:

	; Run to Nymn
	PUSHL  a0
	move.l (Player2), a0
	jsr    CharacterMoveRight
	
	; If touching
	move.l (Player1), a3
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosX(a3), d1
	sub.l  #(EchoPounceNymnDistOffset*subpixels_per_pixel), d1
	cmp.l  d0, d1
	bgt    @End
	
	; Next stage
	jsr    l3a3MeetEchoBeginStage_JumpNymn
	
	@End:
	
	POPL   a0
	
	rts

l3a3MeetEchoBeginStage_JumpNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_JumpNymn, l3a3Data_MeetEchoSceneStage(a2)

	; Start jump to nymn anim
	PUSHL  a0
	move.l (Player2), a0
	
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_PounceNymn*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0
	
	rts
	
l3a3MeetEchoUpdateStage_JumpNymn:

	PUSHL  a0
	move.l (Player2), a0
	
	; Wait for pounce animation to finish
	tst.b  AnimObj_Playing(a0)
	bne    @End
	
	; Next state
	jsr    l3a3MeetEchoBeginStage_GreetNymn
	
	@End:
	
	POPL   a0
	
	rts
	
l3a3MeetEchoBeginStage_GreetNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_GreetNymn, l3a3Data_MeetEchoSceneStage(a2)
	
	; Start greet Nymn anim
	PUSHL  a0
	move.l (Player2), a0
	
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_GreetNymn*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Release control of anim updates (auto-idle when done)
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Snap to position
	move.l (Player1), a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	
	POPL   a0
	
	; Start greet Echo anim
	PUSHL  a0
	move.l (Player1), a0
	
	PUSHL  a1
	lea    Echo_Animations+(NymnAnimIdx_GreetEcho*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Face correct direction
	move.b #0x0, SpriteObj_FlippedX(a0)
	
	POPL   a0
	
	rts
	
l3a3MeetEchoUpdateStage_GreetNymn:

	PUSHL  a0
	move.l (Player1), a0
	
	; Wait for greet animation to finish
	tst.b  AnimObj_Playing(a0)
	bne    @End
	
	; Done
	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_Finished, l3a3Data_MeetEchoSceneStage(a2)
	
	; Restore Nymn control
	move.b #0x1, Character_UpdateAnim(a0)
	move.b #0x1, Player_ControlEnabled(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	
	; Set idle anim
	PUSHL  a1
	lea    Character_Animations+(CharacterAnimIdx_Idle*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; HACK: Take current anim X offset
	move.w SpriteObj_DrawOffsetX(a0), d0
	TOSUBPIXELS d0
	add.l  d0, Entity_WorldPosX(a0)

	; Get Echo
	move.l (Player2), a0
	
	; HACK: Take current anim X offset
	move.w SpriteObj_DrawOffsetX(a0), d0
	TOSUBPIXELS d0
	add.l  d0, Entity_WorldPosX(a0)
	
	; Start Echo AI follow state
	jsr    EchoAIStart_Follow
	
	; Lerp camera to Nymn
	PUSHM  a0-a1
	move.l (Player2), a0
	move.l (Player1), a1
	move.l #EchoToNymnCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a1
	
	@End:
	
	POPL   a0
	
	rts

l3a3MeetEchoSceneUpdate:

	move.l #LevelData_L3A3, a2
	move.b l3a3Data_MeetEchoSceneStage(a2), d0
	cmp.b  #SceneMeetEchoStage_RunScared, d0
	beq    @RunScared
	cmp.b  #SceneMeetEchoStage_Hide, d0
	beq    @Hide
	cmp.b  #SceneMeetEchoStage_DjakkChase, d0
	beq    @DjakkChase
	cmp.b  #SceneMeetEchoStage_WaitDjakkDead, d0
	beq    @WaitDjakkDead
	cmp.b  #SceneMeetEchoStage_StandUp, d0
	beq    @StandUp
	cmp.b  #SceneMeetEchoStage_RunToNymn, d0
	beq    @RunToNymn
	cmp.b  #SceneMeetEchoStage_WaitNymn, d0
	beq    @WaitNymn
	cmp.b  #SceneMeetEchoStage_JumpNymn, d0
	beq    @JumpNymn
	cmp.b  #SceneMeetEchoStage_GreetNymn, d0
	beq    @GreetNymn
	bra    @End

	@RunScared:
	jsr    l3a3MeetEchoUpdateStage_RunScared
	bra    @End

	@Hide:
	jsr    l3a3MeetEchoUpdateStage_Hide
	bra    @End
	
	@DjakkChase:
	jsr    l3a3MeetEchoUpdateStage_DjakkChase
	bra    @End

	@WaitDjakkDead:
	jsr    l3a3MeetEchoUpdateStage_WaitDjakkDead
	bra    @End

	@WaitNymn:
	jsr    l3a3MeetEchoUpdateStage_WaitNymn
	bra    @End
	
	@StandUp:
	jsr    l3a3MeetEchoUpdateStage_StandUp
	bra    @End
	
	@RunToNymn:
	jsr    l3a3MeetEchoUpdateStage_RunToNymn
	bra    @End
	
	@JumpNymn:
	jsr    l3a3MeetEchoUpdateStage_JumpNymn
	bra    @End

	@GreetNymn:
	jsr    l3a3MeetEchoUpdateStage_GreetNymn
	bra    @End

	@End:

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

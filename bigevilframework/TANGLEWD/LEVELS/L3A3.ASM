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

	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3a3				; Blocks
	dc.l map_blockmap_l3a3				; Block map
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3a3		; Collision blocks
	dc.l collisionmap_blockmap_l3a3		; Collision block map
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
	dc.l DefaultGravity						; Default gravity
	dc.w map_l3a3_width					; Map width (tiles)
	dc.w map_l3a3_height				; Map height (tiles)
	dc.w map_blockmap_l3a3_width		; Map width (blocks)
	dc.w map_blockmap_l3a3_height		; Map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	
	even
	
l3a3_DefaultPalettes:

	dc.l palette_l3					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

SceneMeetEchoStage_None				equ 0
SceneMeetEchoStage_RunScared		equ 1
SceneMeetEchoStage_Hide				equ 2
SceneMeetEchoStage_WaitDjakkDead	equ 3
SceneMeetEchoStage_WaitNymn			equ 4
SceneMeetEchoStage_GreetNymn		equ 5
SceneMeetEchoStage_RunToNymn		equ 6
SceneMeetEchoStage_JumpNymn			equ 7
SceneMeetEchoStage_Finished			equ 8
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l3a3Data_WaitingInput			rs.b 1
l3a3Data_ComboButton1Count		rs.b 1
l3a3Data_ComboButton2Count		rs.b 1
l3a3Data_MeetEchoSceneStage		rs.b 1
;---------------------------------
l3a3Data_Struct_Pad      		rs.b 0
l3a3Data_Struct_Size     		rs.b 0
	
l3a3_Init:
	
	; Load BG map
	lea    map_blocks_l3bg, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l3a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Button, l3a3_Button4, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to caged
	ENTITY_GETBYNAME Button, l3a3_Button4, a0
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #l3a3Cage1Raise, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

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

	; TEMP
	; Don't bother with caged Djakk emerge sequence
	ENTITY_GETBYNAME Monster, l3a3_DjakkCaged1, a0
	move.b #0x0, Monster_DoIntro(a0)
	move.b #0x0, Entity_Active(a0)
	
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
	add.b  #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton1Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton1Count(a2)
	jsr    l3a3ComboButton1Deactivated

	rts

l3a3ComboButton2Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton2Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton1Count(a2)
	jsr    l3a3ComboButton1Deactivated

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
	add.b  #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton5Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton2Count(a2)
	jsr    l3a3ComboButton2Deactivated

	rts

l3a3ComboButton6Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton6Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton2Count(a2)
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
	ENTITY_GETBYNAME Monster, l3a3_DjakkCaged1, a0
	move.b #0x1, Entity_Active(a0)
	jsr    MonsterStartEmergeFromCave
	POPL   a0

	rts

;==============================================================
	
l3a3TriggerEchoIntro:

	move.l #LevelData_L3A3, a2

	; If not yet started, begin scene
	cmp.b  #SceneMeetEchoStage_None, l3a3Data_MeetEchoSceneStage(a2)
	beq    @TriggerStart

	; If waiting for Nymn, begin running
	cmp.b  #SceneMeetEchoStage_WaitNymn, l3a3Data_MeetEchoSceneStage(a2)
	beq    @TriggerRunToNymn

	bra    @End

	@TriggerStart:
	jsr    l3a3MeetEchoBeginStage_RunScared
	bra    @End

	@TriggerRunToNymn:
	jsr    l3a3MeetEchoBeginStage_RunToNymn
	bra    @End

	@End:

	rts

l3a3MeetEchoBeginStage_RunScared:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_RunScared, l3a3Data_MeetEchoSceneStage(a2)

	rts

l3a3MeetEchoUpdateStage_RunScared:

	PUSHL  a0
	move.l #Player2, a0

	; If not yet hit location marker, run left
	ENTITY_GETBYNAME Location, l3a3_LocEchoHide, a3
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
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
	move.l #Player2, a0
	
	; Stop running
	jsr    CharacterCancelXMovement

	; Start hide anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_Hide*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_Hide:

	PUSHL  a0
	move.l #Player2, a0
	
	; Wait for hide animation to finish
	cmp.b  #0x0, AnimObj_Playing(a0)
	bne    @End
	
	; Next state
	jsr    l3a3MeetEchoBeginStage_WaitDjakkDead
	
	@End:
	
	POPL   a0
	
	rts

l3a3MeetEchoBeginStage_WaitDjakkDead:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_WaitDjakkDead, l3a3Data_MeetEchoSceneStage(a2)
	
	; Start scared anim loop
	PUSHL  a0
	move.l #Player2, a0
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_Scared*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_WaitDjakkDead:

	; Wait for Djakk to die
	ENTITY_GETBYNAME Monster, l3a3_DjakkEchoFight, a3
	cmp.b  #0x0, Character_Dead(a3)
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

l3a3MeetEchoBeginStage_RunToNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_RunToNymn, l3a3Data_MeetEchoSceneStage(a2)
	
	; Stop Nymn and take control
	PUSHL  a0
	move.l #Player1, a0
	jsr    CharacterCancelXMovement
	move.b #0x0, Player_ControlEnabled(a0)
	POPL   a0
	
	; Release Echo anim control and start running
	PUSHL  a0
	move.l #Player2, a0
	move.b #0x1, Character_UpdateAnim(a0)
	jsr    CharacterMoveRight
	POPL   a0

	rts

l3a3MeetEchoUpdateStage_RunToNymn:

	; Run to Nymn
	PUSHL  a0
	move.l #Player2, a0
	jsr    CharacterMoveRight
	
	; If touching
	move.l #Player1, a3
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @End
	
	; Next stage
	jsr    l3a3MeetEchoBeginStage_GreetNymn
	
	@End:
	
	POPL   a0
	
	rts

l3a3MeetEchoBeginStage_JumpNymn:

	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_JumpNymn, l3a3Data_MeetEchoSceneStage(a2)

	; Start jump to nymn anim
	PUSHL  a0
	move.l #Player2, a0
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_PounceNymn*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	POPL   a0
	
	rts
	
l3a3MeetEchoUpdateStage_JumpNymn:

	PUSHL  a0
	move.l #Player2, a0
	
	; Wait for pounce animation to finish
	cmp.b  #0x0, AnimObj_Playing(a0)
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
	move.l #Player2, a0
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_GreetNymn*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Release control of anim updates (auto-idle when done)
	move.b #0x1, Character_UpdateAnim(a0)
	
	POPL   a0
	
	; Start greet Echo anim
	PUSHL  a0
	move.l #Player1, a0
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Nymn_Animations, a1
	move.l #(NymnAnimIdx_GreetEcho*Animation_Struct_Size), d1
	add.l  d1, a1
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
	move.l #Player1, a0
	
	; Wait for greet animation to finish
	cmp.b  #0x0, AnimObj_Playing(a0)
	bne    @End
	
	; Done
	move.l #LevelData_L3A3, a2
	move.b #SceneMeetEchoStage_Finished, l3a3Data_MeetEchoSceneStage(a2)
	
	; Restore Nymn control
	move.b #0x1, Character_UpdateAnim(a0)
	move.b #0x1, Player_ControlEnabled(a0)
	move.b #0x1, SpriteObj_FlippedX(a0)
	
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
	cmp.b  #SceneMeetEchoStage_WaitDjakkDead, d0
	beq    @WaitDjakkDead
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

	@WaitDjakkDead:
	jsr    l3a3MeetEchoUpdateStage_WaitDjakkDead
	bra    @End

	@WaitNymn:
	jsr    l3a3MeetEchoUpdateStage_WaitNymn
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

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

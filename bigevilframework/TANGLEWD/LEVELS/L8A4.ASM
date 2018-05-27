;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a4.asm - Level 8 - Turntail Act 4
;==============================================================

; ************************************
; Static data
; ************************************
l8a4_TurntailAct4:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a4					; Userdata
	dc.l tiles_L4						; Tileset (using L4 tileset)
	dc.l map_blocks_L4					; Blocks (using L4 tileset)
	dc.l map_blockmap_l8a4				; Block map
	dc.l map_blockmap_l8a4_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L4				; Collision tileset (using L4 tileset)
	dc.l collisionmap_blocks_L4			; Collision blocks (using L4 tileset)
	dc.l collisionmap_blockmap_l8a4		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l8a4	; Collision block map Y offsets table
	dc.l terrainmap_l8a4_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a4_DefaultPalettes			; Palettes
	dc.l l8a4_Init						; Init routine
	dc.l l8a4_Update					; Update routine
	dc.l l8a4_Serialise					; Serialise routine
	dc.l l8a4_LoadGameObjects			; Load game objects routine
	dc.l l8a4_End						; End routine
	dc.l l8a5_TurntailAct5				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a4_width					; Map width (tiles)
	dc.w map_l8a4_height				; Map height (tiles)
	dc.w map_blockmap_l8a4_width		; Map width (blocks)
	dc.w map_blockmap_l8a4_height		; Map height (blocks)
	dc.w terrainmap_l8a4_width			; Collision map width (tiles)
	dc.w terrainmap_l8a4_height			; Collision map height (tiles)
	dc.w terrainmap_l8a4_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a4_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a4_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a4_height; Collision map height (blocks)
	dc.w tiles_L4_size_t				; Num tiles (using L4 tileset)
	dc.w terrainmap_l8a4_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x6							; Background colour idx
	dc.b 0x1A							; Index
	
	even
	
l8a4_DefaultPalettes:

	dc.l palette_L4_night			; World (using L4 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

l8a4_DemonToFuzzlOffset			equ (Fuzzl_Width/2)+(Demon_Width/2)-0x10
l8a4_DemonToFuzzlThreshold		equ 0x0010
l8a4_DemonHideTime				equ 0x0100
l8a4_DemonAttackSpeed			equ 0x0008
l8a4_DemonTrapAttackTime		equ 0x0020
l8a4_DemonReturnOffsetX			equ -Demon_Width
l8a4_DemonReturnOffsetY			equ -0x18
l8a4_ThunderDist				equ 0x1
l8a4_GreyscaleLerpSpeed			equ (0x1<<fade_frame_shift) ; Subframes (1 frame per tick)
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a4Data_CutsceneCargoLift			rs.b Cutscene_Struct_Size
l8a4Data_CutsceneDemonStealFuzzl	rs.b Cutscene_Struct_Size
l8a4Data_CutsceneDemonReturn		rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l8a4Data_Struct_Size     		rs.b 0
	
l8a4_Init:

	; Set data for all acts in level
	jsr    L8_SetActData
	
	; Load BG map (using L4 tileset)
	lea    map_blocks_L4, a0
	lea    map_blockmap_L4bg, a1
	move.l #(map_blockmap_L4bg_width<<16)|map_blockmap_L4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L4 tileset)
	move.l  #palette_l4_day, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l4_night, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L4 tileset)
	jsr    L4_LoadSceneAnimations

	;==============================================================

	; HACK: Load L4 specific object sprites
	jsr    L4_LoadObjectSprites

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L8A4, a2
	lea    l8a4Data_CutsceneCargoLift(a2), a0
	move.l #l8a4_CutsceneCargoLift, a1
	jsr    CutsceneInit
	POPM   a0-a1

	PUSHM  a0-a1
	lea    LevelData_l8a4, a2
	lea    l8a4Data_CutsceneDemonStealFuzzl(a2), a0
	move.l #l8a4_CutsceneDemonStealFuzzl, a1
	jsr    CutsceneInit
	POPM   a0-a1

	PUSHM  a0-a1
	lea    LevelData_l8a4, a2
	lea    l8a4Data_CutsceneDemonReturn(a2), a0
	move.l #l8a4_CutsceneDemonReturn, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l8a4_Generator1, a0
	ENTITY_GETBYNAME Cogs, l8a4_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generator to trap
	ENTITY_GETBYNAME Generator, l8a4_Generator1, a0
	move.l a1, Generator_UserData(a0)
	move.l #l8a4_DisarmTrap, Generator_OnActivate(a0)
	move.l #l8a4_ArmTrap, Generator_OnDeactivate(a0)

	; Set trap
	ENTITY_GETBYNAME Trap, l8a4_Trap1, a0
	move.l #l8a4_Trigger_Trapped, Trap_OnActivated(a0)

	; Put Fuzzl in generator
	ENTITY_GETBYNAME Fuzzl, l8a4_FuzzlRed1, a0
	jsr    FuzzlFindGenerator

	; Disable Demon return trigger box
	ENTITY_GETBYNAME TriggerBox, l8a4_TriggerDemonReturn, a0
	move.b #0x0, Entity_Active(a0)

	; Set boss bounds
	ENTITY_GETBYNAME Demon, l8a4_Demon, a0
	ENTITY_GETBYNAME AIMarker, l8a4_MarkerDemonLeftBounds, a1
	ENTITY_GETBYNAME AIMarker, l8a4_MarkerDemonRightBounds, a2
	ENTITY_GETBYNAME AIMarker, l8a4_MarkerDemonTopBounds, a3
	ENTITY_GETBYNAME AIMarker, l8a4_MarkerDemonBottomBounds, a4
	move.w Entity_WorldPosX(a1), Demon_BossBoundsLeft(a0)
	move.w Entity_WorldPosX(a2), Demon_BossBoundsRight(a0)
	move.w Entity_WorldPosY(a3), Demon_BossBoundsTop(a0)
	move.w Entity_WorldPosY(a4), Demon_BossBoundsBottom(a0)

	; Set boss attack speed
	ENTITY_GETBYNAME Demon, l8a4_Demon, a0
	move.w #l8a4_DemonAttackSpeed, d0
	jsr    DemonSetAttackSpeed

	; Set Demon Swarm obj
	ENTITY_GETBYNAME Swarm, l8a4_Swarm, a2
	jsr    DemonSetSwarmObj

	; Set swarm speed
	ENTITY_GETBYNAME Swarm, l8a4_Swarm, a0
	move.l #0x00014000, Swarm_SpeedMul(a0)

	; Disable Nymn's idle anim
	ENTITY_GETBYNAME Nymn, l8a4_Nymn, a0
	move.b #0x0, Player_UseIdleAnim(a0)

	;==============================================================

	; Set player white ability
	move.l Player1, a2
	move.b #ColourWhite, Player_Colour(a2)

	;==============================================================

	; Set cargo lift stop point
	ENTITY_GETBYNAME CargoLift, l8a4_CargoLift, a0
	ENTITY_GETBYNAME Location, l8a4_LocationLiftStop, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Start cargo lift
	jsr    LiftActivateUp

	;==============================================================

	; Start final fight music
	lea    L8_FinalBossMusic, a0
	cmp.l  audio_current_track, a0
	beq    @Playing
	jsr    SND_PlayTrack
	@Playing:

	; Hack: Reset vol and fader from prev level fade-down
	move.b #0xFF, d0
	jsr    SND_SetGlobalVolume
	move.b #0x0, audio_fader_speed

	; Start cargo lift cutscene
	PUSHL  a0
	lea    LevelData_L8A4, a2
	lea    l8a4Data_CutsceneCargoLift(a2), a0
	jsr    CutscenePlay
	POPL   a0
	
	rts
	
l8a4_Update:

	rts
	
l8a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a4_End:
	rts
	
l8a4_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l8a4_ArmTrap:

	ENTITY_GETBYNAME Trap, l8a4_Trap1, a0
	jsr   TrapArm

	rts

l8a4_DisarmTrap:

	ENTITY_GETBYNAME Trap, l8a4_Trap1, a0
	jsr   TrapDisarm

	; If Demon dead, also activate Demon return trigger box
	ENTITY_GETBYNAME Demon,l8a4_Demon,a0
	tst.b  Character_Dead(a0)
	beq    @DemonAlive
	ENTITY_GETBYNAME TriggerBox,l8a4_TriggerDemonReturn,a0
	move.b #0x1, Entity_Active(a0)
	@DemonAlive:

	rts

l8a4_Trigger_Trapped:

	; Disable player control
	move.l Trap_TrappedObject(a0), a2
	move.b #0x0, Player_ControlEnabled(a2)

	; If Demon alive, just wait for him to sort the problem out
	ENTITY_GETBYNAME Demon, l8a4_Demon, a2
	tst.b  Character_Dead(a2)
	beq    @DemonAlive

	; else fail state
	PUSHM  a0-a2
	lea    GameStateFail, a0
	jsr    GameStateEnter
	POPM   a0-a2

	bra    @End

	@DemonAlive:

	; Set Demon attack timer
	ENTITY_GETBYNAME Demon, l8a4_Demon, a2
	move.w #l8a4_DemonTrapAttackTime, Demon_AttackTimer(a2)

	@End:

	rts

l8a4_Trigger_DemonTakeFuzzl:

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L8A4, a2
	lea    l8a4Data_CutsceneDemonStealFuzzl(a2), a0
	jsr    CutscenePlay
	POPL   a0

	rts

l8a4_Trigger_DemonReturn:

	IF !L8A4_TEST_ALL_FIREFLIES
	cmp.w #TotalFireflyCount, FireflyPickupCountTotalSave
	bne   @NotCollectedAll
	ENDIF

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L8A4, a2
	lea    l8a4Data_CutsceneDemonReturn(a2), a0
	jsr    CutscenePlay
	POPL   a0

	@NotCollectedAll:

	rts

l8a4_CutsceneCargoLift:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Start lift
	CUTSCENE_GET_ENTITY CargoLift, l8a4_CargoLift,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateUp

	; Wait until stopped
	CUTSCENE_GET_ENTITY CargoLift, l8a4_CargoLift,a2
	CUTSCENE_OBJECT_WAIT_STOP a2

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l8a4_CutsceneDemonStealFuzzl:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Move demon to Fuzzl
	CUTSCENE_GET_ENTITY Fuzzl,l8a4_FuzzlRed1,a2
	CUTSCENE_ROUTINE l8a4_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_DELAY #0x0020
	
	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0020

	; Attack Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack

	; Wait for bite frame
	CUTSCENE_ROUTINE l8a4_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0

	; Eat Fuzzl
	CUTSCENE_ROUTINE l8a4_Cutscene_FuzzlEaten,#0x0,#0x0,#0x0

	; Lerp to trap
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Trap,l8a4_Trap1,a3
	CUTSCENE_CAMERA_LERP a3,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x08

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX

	; Wait a while
	CUTSCENE_DELAY #l8a4_DemonHideTime

	; Reenable
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Enter boss attack mode
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAIStart_Boss

	; Wait for zero lives
	CUTSCENE_ROUTINE l8a4_Cutscene_DemonWaitZeroLives,#0x0,#0x0,#0x0

	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp to Demon
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; Wait for death
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; Drop Fuzzl
	CUTSCENE_ROUTINE l8a4_Cutscene_DemonDropFuzzl,#0x0,#0x0,#0x0

	; Wait
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x10
	CUTSCENE_CAMERA_LERP_WAIT

	; Restore player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l8a4_CutsceneDemonReturn:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Halt player
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0

	; Re-enable Demon
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_L a2,#PhysicsObj_VelX,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_L a2,#PhysicsObj_VelY,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Character_Dead,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x1

	; Ressurect Demon in front of player
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	move.l Player1, a3
	move.w Entity_WorldPosX(a3), d0
	move.w Entity_WorldPosY(a3), d1
	addi.w #l8a4_DemonReturnOffsetX, d0
	addi.w #l8a4_DemonReturnOffsetY, d1
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)
	
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_FlippedX,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0040

	; Blink away
	CUTSCENE_VFX_FLASH #0x2
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x0

	; Lerp to Fuzzl
	CUTSCENE_GET_ENTITY Fuzzl,l8a4_FuzzlRed1,a2
	CUTSCENE_CAMERA_LERP a2,#0x16
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Blink back to Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_GET_ENTITY Fuzzl,l8a4_FuzzlRed1,a3
	move.w Entity_WorldPosX(a3), d0
	move.w Entity_WorldPosY(a3), d1
	addi.w #l8a4_DemonReturnOffsetX, d0
	addi.w #l8a4_DemonReturnOffsetY, d1
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)

	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x1
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_FlippedX,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0040

	; Eat Fuzzl, trap re-activates
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack
	CUTSCENE_ROUTINE l8a4_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0
	CUTSCENE_ROUTINE l8a4_Cutscene_FuzzlEaten,#0x0,#0x0,#0x0

	; Lerp camera back to player
	CUTSCENE_DELAY #0x0040
	CUTSCENE_CAMERA_LERP Player1,#0x16
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0040

	; Blink back in front of player
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	move.l Player1, a3
	move.w Entity_WorldPosX(a3), d0
	move.w Entity_WorldPosY(a3), d1
	addi.w #l8a4_DemonReturnOffsetX, d0
	addi.w #l8a4_DemonReturnOffsetY, d1
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)
	
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x1
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_FlippedX,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge

	; Demon smirks
	CUTSCENE_DELAY #0x0080
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonSmirk

	; Start greyscale effect
	CUTSCENE_DELAY #0x0040
	CUTSCENE_ROUTINE l8a4_Cutscene_GreyscaleFade,#0x0,#0x0,#0x0

	; Demon begins attack, wait for bite frame
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_CHARACTER_ANIM a2,#Demon_Animations,#DemonAnimIdx_OpenMouth
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_CHARACTER_ANIM_WAIT a2

	; Start long flash
	CUTSCENE_VFX_FLASH #0x80

	; Remove Demon
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a4_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x0

	; Wait half flash time
	CUTSCENE_DELAY #0x0040

	; Reinstate Fuzzl, trap disarms
	CUTSCENE_GET_ENTITY Fuzzl,l8a4_FuzzlRed1,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1
	CUTSCENE_GET_ENTITY Fuzzl,l8a4_FuzzlRed1,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#SpriteObj_Visible,#0x1
	CUTSCENE_GET_ENTITY Trap,l8a4_Trap1,a2
	CUTSCENE_OBJECT_ROUTINE a2,#TrapDisarm

	; Wait remaining flash time
	CUTSCENE_DELAY #0x0040

	; Reinstate palettes
	CUTSCENE_GAME_PALETTE_LOAD #palette_l4_night,#0x0
	CUTSCENE_GAME_PALETTE_LOAD #palette_demon,#0x1
	CUTSCENE_GAME_PALETTE_LOAD #palette_fuzzl,#0x2
	CUTSCENE_GAME_PALETTE_LOAD #Pal_Nymn_White,#0x3

	; Restore Nymn as player 1
	CUTSCENE_ROUTINE l8a4_Cutscene_RestoreNymnAsPlayer1,#0x0,#0x0,#0x0

	; Activate Nymn, howl, pan camera
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Entity_Active,#0x1
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#SpriteObj_Visible,#0x1
	CUTSCENE_CAMERA_LERP Player1,#0x16
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_CHARACTER_ANIM Player1,#Player_Animations,#PlayerAnimIdx_Howl
	CUTSCENE_CHARACTER_ANIM_WAIT Player1

	; Echo runs over to Nymn
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CAMERA_LERP Player2,#0x16
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
	CUTSCENE_CAMERA_LERP Player1,#EchoToNymnCamLerpSpeed

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
	CUTSCENE_CAMERA_LERP Player1,#EchoToNymnCamLerpSpeed

	; Restore Nymn sprite flipping
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#SpriteObj_FlippedX,#0x1
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_LockSpriteFlip,#0x0

	; Restore player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	; Start Echo AI
	move.b #0x1, d0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStart_Follow

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l8a4_Cutscene_GreyscaleFade:

	; Begin greyscale fade
	PUSHM  a0-a2
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #l8a4_GreyscaleLerpSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	POPM   a0-a2

	move.b #0x0, d0

	rts

l8a4_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l8a4_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	move.b #0x0, d0
	@StillBiting:

	POPL   a0

	rts

l8a4_Cutscene_LightningFlash:

	; Load night palette
	lea    palette_L4_night, a0
	move.w #PaletteId_World0, d0
	jsr    GameScenePaletteLoad

	; Flash
	lea    Thunder, a2
	move.w #0xFFFF, d0
	move.w #l8a4_ThunderDist, d1
	jsr    ThunderSetParams
	jsr    ThunderFlash

	move.b #0x0, d0

	rts

l8a4_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l8a4_Demon, a0

	; HACK: Reset reached target flag
	; TODO: Split cutscene routines into start/update/end
	tst.w  Demon_TargetX(a0)
	bne    @TargetSet
	move.b #0x0, Demon_AtTarget(a0)
	@TargetSet:

	; Update target pos
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	addi.w #l8a4_DemonToFuzzlOffset, d0
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l8a4_DemonToFuzzlThreshold*l8a4_DemonToFuzzlThreshold, Demon_TargetDistSq(a0)
	
	tst.b  Demon_AtTarget(a0)
	beq    @NotAtTarget

	; Step complete
	move.b #0x0, d0
	bra    @End

	@NotAtTarget:

	; Step still running
	move.b #0x1, d0
	
	@End:

	POPL   a0

	rts

l8a4_Cutscene_FuzzlEaten:
	
	PUSHM a0-a2

	; Flash
	move.w #0x2, d0
	jsr    VFX_StartFlash

	; Hide and deactivate demon
	ENTITY_GETBYNAME Demon,l8a4_Demon,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Deactivate generator
	ENTITY_GETBYNAME Generator,l8a4_Generator1,a0
	jsr    Generator_Deactivate

	; Hide Fuzzl
	ENTITY_GETBYNAME Fuzzl,l8a4_FuzzlRed1,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	POPM a0-a2

	move.b #0x0, d0

	rts

l8a4_Cutscene_DemonWaitZeroLives:

	move.b #0x0, d0

	PUSHL a0
	ENTITY_GETBYNAME Demon, l8a4_Demon, a0
	tst.b  Demon_NumLives(a0)
	beq    @NoLives
	move.b #0x1, d0
	@NoLives:
	POPL  a0

	rts

l8a4_Cutscene_DemonDropFuzzl:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l8a4_Demon, a0
	ENTITY_GETBYNAME Fuzzl, l8a4_FuzzlRed1, a2
	ENTITY_ALIGNCENTRE a2,a0,d0,d1

	; Clamp to safe bounds
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1
	move.w Demon_BossBoundsLeft(a0), d2
	move.w Demon_BossBoundsRight(a0), d3
	move.w Demon_BossBoundsTop(a0), d4
	move.w Demon_BossBoundsBottom(a0), d5
	CLAMPW d0, d2, d3
	CLAMPW d1, d4, d5
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)

	move.b #0x1, Entity_Active(a2)
	move.b #0x1, SpriteObj_Visible(a2)
	move.b #0x0, PhysicsObj_Asleep(a2)
	move.b #0x0, PhysicsObj_OnFloor(a2)
	move.b #0x0, PhysicsObj_CloseToFloor(a2)
	move.w #0x0, PhysicsObj_LastFloor(a2)

	move.l a2, a0
	move.b #0x1, d1
	jsr    EntityUpdateWorldGridIndex

	POPL   a0

	move.b #0x0, d0

	rts

l8a4_Cutscene_RestoreNymnAsPlayer1:

	ENTITY_GETBYNAME Nymn, l8a4_Nymn, a3
	move.l Player1, Player2
	move.l a3, Player1

	; Disable controls by default
	move.b #0x0, Player_ControlEnabled(a3)

	move.b #0x0, d0

	rts
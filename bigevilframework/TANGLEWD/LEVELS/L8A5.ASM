;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a5.asm - Level 8 - Turntail Act 5
;==============================================================	

; ************************************
; Static data
; ************************************
l8a5_TurntailAct5:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a5					; Userdata
	dc.l tiles_L3						; Tileset (using L3 tileset)
	dc.l map_blocks_L3					; Blocks (using L3 tileset)
	dc.l map_blockmap_l8a5				; Block map
	dc.l map_blockmap_l8a5_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L3				; Collision tileset (using L3 tileset)
	dc.l collisionmap_blocks_L3			; Collision blocks (using L3 tileset)
	dc.l collisionmap_blockmap_l8a5		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l8a5	; Collision block map Y offsets table
	dc.l terrainmap_l8a5_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a5_DefaultPalettes			; Palettes
	dc.l l8a5_Init						; Init routine
	dc.l l8a5_Update					; Update routine
	dc.l l8a5_Serialise					; Serialise routine
	dc.l l8a5_LoadGameObjects			; Load game objects routine
	dc.l l8a5_End						; End routine
	dc.l l8a6_TurntailAct6				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a5_width					; Map width (tiles)
	dc.w map_l8a5_height				; Map height (tiles)
	dc.w map_blockmap_l8a5_width		; Map width (blocks)
	dc.w map_blockmap_l8a5_height		; Map height (blocks)
	dc.w terrainmap_l8a5_width			; Collision map width (tiles)
	dc.w terrainmap_l8a5_height			; Collision map height (tiles)
	dc.w terrainmap_l8a5_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a5_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a5_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a5_height; Collision map height (blocks)
	dc.w tiles_L3_size_t				; Num tiles (using L3 tileset)
	dc.w terrainmap_l8a5_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x1B							; Index
	
	even
	
l8a5_DefaultPalettes:

	dc.l palette_L3_night			; World (using L3 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

l8a5_DemonToFuzzlOffset			equ (Fuzzl_Width/2)+(Demon_Width/2)-0x10
l8a5_DemonToFuzzlThreshold		equ 0x0010
l8a5_DemonHideTime				equ 0x0100
l8a5_DemonAttackSpeed			equ 0x0010

l8a5_LiftSpeedUp				equ 0x008000+DefaultGravity
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a5Data_CutsceneDemonStealFuzzl	rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l8a5Data_Struct_Size     		rs.b 0
	
l8a5_Init:

	; Set data for all acts in level
	jsr    L8_SetActData
	
	; Load BG map (using L3 tileset)
	lea    map_blocks_L3, a0
	lea    map_blockmap_L3bg, a1
	move.l #(map_blockmap_L3bg_width<<16)|map_blockmap_L3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L3 tileset)
	move.l  #palette_L3_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l3_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L3 tileset)
	jsr    L3_LoadSceneAnimations

	;==============================================================

	; HACK: Load L3 specific object sprites
	jsr    L3_LoadObjectSprites
	
	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_l8a5, a2
	lea    l8a5Data_CutsceneDemonStealFuzzl(a2), a0
	move.l #l8a5_CutsceneDemonStealFuzzl, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l8a5_Generator1, a0
	ENTITY_GETBYNAME Cogs, l8a5_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generator to button, disable button
	ENTITY_GETBYNAME Generator, l8a5_Generator1, a0
	ENTITY_GETBYNAME Button, l8a5_Button1, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect button to lift
	ENTITY_GETBYNAME Button, l8a5_Button1, a0
	ENTITY_GETBYNAME Lift, l8a5_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateUp, Button_OnDown(a0)
	move.l #LiftActivateDown, Button_OnUp(a0)

	; Put Fuzzl in generator
	ENTITY_GETBYNAME Fuzzl, l8a5_FuzzlRed1, a0
	jsr    FuzzlFindGenerator

	; Set boss bounds
	ENTITY_GETBYNAME Demon, l8a5_Demon, a0
	ENTITY_GETBYNAME AIMarker, l8a5_MarkerDemonLeftBounds, a1
	ENTITY_GETBYNAME AIMarker, l8a5_MarkerDemonRightBounds, a2
	move.w Entity_WorldPosX(a1), Demon_BossBoundsLeft(a0)
	move.w Entity_WorldPosX(a2), Demon_BossBoundsRight(a0)

	; Set boss attack speed
	ENTITY_GETBYNAME Demon, l8a5_Demon, a0
	move.w #l8a5_DemonAttackSpeed, d0
	jsr    DemonSetAttackSpeed

	; Set Demon Swarm obj
	ENTITY_GETBYNAME Swarm, l8a5_Swarm, a2
	jsr    DemonSetSwarmObj

	; Set swarm speed
	ENTITY_GETBYNAME Swarm, l8a5_Swarm, a0
	move.l #0x00018000, Swarm_SpeedMul(a0)

	; Set lift stop point
	ENTITY_GETBYNAME Lift, l8a5_Lift1, a0
	ENTITY_GETBYNAME Location, l8a5_LocationLiftStop, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Adjust lift speed
	MOVE_NTSC_L l8a5_LiftSpeedUp, PhysicsObj_MaxVelYUp(a0), d0

	; Don't allow Fuzzl on platforms (it could spawn on the crate and
	; get pushed into spike pit)
	ENTITY_GETBYNAME Fuzzl,l8a5_FuzzlRed1,a2
	move.b #0x0, PhysicsObj_CollidePlatforms(a2)

	;==============================================================

	; If collected all fireflies, activate Nymn, start Echo AI
	IF !L8A4_TEST_ALL_FIREFLIES
	cmp.w #TotalFireflyCount, FireflyPickupCountTotalSave
	bne   @NotCollectedAll
	ENDIF

	ENTITY_GETBYNAME Nymn,l8a5_Nymn, a0
	move.l Player1, Player2
	move.l a0, Player1
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	move.l Player2, a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	
	@NotCollectedAll:

	;==============================================================

	; Set player white ability
	move.l Player1, a2
	move.b #ColourWhite, Player_Colour(a2)

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

	rts
	
l8a5_Update:

	rts
	
l8a5_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a5_End:
	rts
	
l8a5_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l8a5_Trigger_StartEchoAI:

	PUSHL  a0

	; If Echo is P2
	tst.l  Player2
	beq    @NoEchoAI
	move.l Player2, a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	@NoEchoAI:

	POPL   a0

	rts

l8a5_Trigger_DemonTakeFuzzl:

	PUSHL  a0

	; Stop player on bridge
	move.l Player1, a0
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)

	; Start cutscene
	lea    LevelData_l8a5, a2
	lea    l8a5Data_CutsceneDemonStealFuzzl(a2), a0
	jsr    CutscenePlay

	POPL   a0

	rts

l8a5_CutsceneDemonStealFuzzl:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Move demon to Fuzzl
	CUTSCENE_GET_ENTITY Fuzzl,l8a5_FuzzlRed1,a2
	CUTSCENE_ROUTINE l8a5_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_DELAY #0x0020
	
	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020

	; If Echo is P2, run to lift and hide
	tst.l  Player2
	beq    l8a5_NoEchoHide

	; Disable Echo AI
	move.b #EchoAIState_None, d0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAISetState

	; Echo runs scared
	CUTSCENE_CAMERA_LERP Player2,#0x08
	CUTSCENE_GET_ENTITY Lift,l8a5_Lift1,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#-0x10,#0x10

	; Echo hides
	CUTSCENE_TICKMODE_CONTINUOUS
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStartHiding
	CUTSCENE_TICKMODE_INSTR_PER_FRAME

	; Lerp camera back to Demon
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	l8a5_NoEchoHide:

	; Finish Demon reveal
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0020

	; Attack Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack

	; Wait for bite frame
	CUTSCENE_ROUTINE l8a5_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0

	; Eat Fuzzl
	CUTSCENE_ROUTINE l8a5_Cutscene_FuzzlEaten,#0x0,#0x0,#0x0

	; Lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x10

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX

	; Wait a while
	CUTSCENE_DELAY #l8a5_DemonHideTime

	; Reenable
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Enter boss attack mode
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAIStart_Boss

	; Wait for zero lives
	CUTSCENE_ROUTINE l8a5_Cutscene_DemonWaitZeroLives,#0x0,#0x0,#0x0

	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp to Demon
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; Wait for death
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; Drop Fuzzl
	CUTSCENE_ROUTINE l8a5_Cutscene_DemonDropFuzzl,#0x0,#0x0,#0x0

	; If Echo is P2, unhode and jump onto lift
	tst.l  Player2
	beq    NoEchoUnhide

	; Echo emerges and jump onto lift
	CUTSCENE_CAMERA_LERP Player2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStopHiding
	CUTSCENE_CHARACTER_ANIM_WAIT Player2
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterStartJump
	CUTSCENE_CAMERA_LERP Player1,#0x08

	NoEchoUnhide:

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

l8a5_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l8a5_Demon, a0

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
	addi.w #l8a5_DemonToFuzzlOffset, d0
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l8a5_DemonToFuzzlThreshold*l8a5_DemonToFuzzlThreshold, Demon_TargetDistSq(a0)
	
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

l8a5_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l8a5_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	move.b #0x0, d0
	@StillBiting:

	POPL   a0

	rts

l8a5_Cutscene_FuzzlEaten:
	
	PUSHM a0-a2

	; Flash
	move.w #0x2, d0
	jsr    VFX_StartFlash

	; Hide and deactivate demon
	ENTITY_GETBYNAME Demon,l8a5_Demon,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Deactivate generator
	ENTITY_GETBYNAME Generator,l8a5_Generator1,a0
	jsr    Generator_Deactivate

	; Disable button
	ENTITY_GETBYNAME Button,l8a5_Button1,a0
	move.b #0x0, Button_Active(a0)

	; Hide Fuzzl
	ENTITY_GETBYNAME Fuzzl,l8a5_FuzzlRed1,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Drop bridge
	ENTITY_GETBYNAME Bridge,l8a5_Bridge1,a0
	jsr    BridgeBeginDrop

	POPM a0-a2

	move.b #0x0, d0

	rts

l8a5_Cutscene_DemonWaitZeroLives:

	move.b #0x0, d0

	PUSHL a0
	ENTITY_GETBYNAME Demon, l8a5_Demon, a0
	tst.b  Demon_NumLives(a0)
	beq    @NoLives
	move.b #0x1, d0
	@NoLives:
	POPL  a0

	rts

l8a5_Cutscene_DemonDropFuzzl:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l8a5_Demon, a0
	ENTITY_GETBYNAME Fuzzl, l8a5_FuzzlRed1, a2
	ENTITY_ALIGNCENTRE a2,a0,d0,d1

	; Clamp to safe bounds
	move.w Entity_WorldPosX(a2), d0
	move.w Demon_BossBoundsLeft(a0), d2
	move.w Demon_BossBoundsRight(a0), d3
	CLAMPW d0, d2, d3
	move.w d0, Entity_WorldPosX(a2)

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

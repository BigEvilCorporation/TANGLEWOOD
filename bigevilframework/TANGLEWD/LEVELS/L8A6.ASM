;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a6.asm - Level 8 - Turntail Act 6
;==============================================================	

; ************************************
; Static data
; ************************************
l8a6_TurntailAct6:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a6					; Userdata
	dc.l tiles_L1						; Tileset (using L1 tileset)
	dc.l map_blocks_L1					; Blocks (using L1 tileset)
	dc.l map_blockmap_l8a6				; Block map
	dc.l map_blockmap_l8a6_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L1				; Collision tileset (using L1 tileset)
	dc.l collisionmap_blocks_L1			; Collision blocks (using L1 tileset)
	dc.l collisionmap_blockmap_l8a6		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l8a6	; Collision block map Y offsets table
	dc.l terrainmap_l8a6_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a6_DefaultPalettes			; Palettes
	dc.l l8a6_Init						; Init routine
	dc.l l8a6_Update					; Update routine
	dc.l l8a6_Serialise					; Serialise routine
	dc.l l8a6_LoadGameObjects			; Load game objects routine
	dc.l l8a6_End						; End routine
	dc.l 0x00000000						; End of game
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a6_width					; Map width (tiles)
	dc.w map_l8a6_height				; Map height (tiles)
	dc.w map_blockmap_l8a6_width		; Map width (blocks)
	dc.w map_blockmap_l8a6_height		; Map height (blocks)
	dc.w terrainmap_l8a6_width			; Collision map width (tiles)
	dc.w terrainmap_l8a6_height			; Collision map height (tiles)
	dc.w terrainmap_l8a6_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a6_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a6_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a6_height; Collision map height (blocks)
	dc.w tiles_L1_size_t				; Num tiles (using L1 tileset)
	dc.w terrainmap_l8a6_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x1C							; Index
	
	even
	
l8a6_DefaultPalettes:

	dc.l palette_L1_night			; World (using L1 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

l8a6_DemonToFuzzlOffset			equ (Fuzzl_Width/2)+(Demon_Width/2)-0x10
l8a6_DemonToFuzzlThreshold		equ 0x0010
l8a6_DemonHideTime				equ 0x0100
l8a6_DemonAttackSpeed			equ 0x0020
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a6Data_CutsceneDemonStealFuzzl	rs.b Cutscene_Struct_Size
l8a6Data_CutsceneEnding_NoNymn		rs.b Cutscene_Struct_Size
l8a6Data_CutsceneEnding_WithNymn	rs.b Cutscene_Struct_Size
l8a6Data_EndingTriggered			rs.b 1
;---------------------------------
	RS_ALIGN
l8a6Data_Struct_Size     			rs.b 0
	
l8a6_Init:
	
	; Load BG map (using L1 tileset)
	lea    map_blocks_L1, a0
	lea    map_blockmap_L1bg, a1
	move.l #(map_blockmap_L1bg_width<<16)|map_blockmap_L1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L1 tileset)
	move.l  #palette_L1_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L1 tileset)
	jsr    L1_LoadSceneAnimations

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneDemonStealFuzzl(a2), a0
	move.l #l8a6_CutsceneDemonStealFuzzl, a1
	jsr    CutsceneInit
	POPM   a0-a1

	PUSHM  a0-a1
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneEnding_NoNymn(a2), a0
	move.l #l8a6_CutsceneEnding_NoNymn, a1
	jsr    CutsceneInit
	POPM   a0-a1

	PUSHM  a0-a1
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneEnding_WithNymn(a2), a0
	move.l #l8a6_CutsceneEnding_WithNymn, a1
	jsr    CutsceneInit
	POPM   a0-a1

	lea    LevelData_l8a6, a2
	move.b #0x0, l8a6Data_EndingTriggered(a2)
	
	;==============================================================

	; Set boss bounds
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonLeftBounds, a1
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonRightBounds, a2
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonTopBounds, a3
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonBottomBounds, a4
	move.w Entity_WorldPosX(a1), Demon_BossBoundsLeft(a0)
	move.w Entity_WorldPosX(a2), Demon_BossBoundsRight(a0)
	move.w Entity_WorldPosY(a3), Demon_BossBoundsTop(a0)
	move.w Entity_WorldPosY(a4), Demon_BossBoundsBottom(a0)

	; Set boss attack speed
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	move.w #l8a6_DemonAttackSpeed, d0
	jsr    DemonSetAttackSpeed

	; Last boss stage, can die
	move.b #0x1, Demon_CanDie(a0)

	; Set Demon Swarm obj
	ENTITY_GETBYNAME Swarm, l8a6_Swarm, a2
	jsr    DemonSetSwarmObj

	; Set swarm speed
	ENTITY_GETBYNAME Swarm, l8a6_Swarm, a0
	move.l #0x00020000, Swarm_SpeedMul(a0)

	;==============================================================

	; If collected all fireflies
	IF !L8A4_TEST_ALL_FIREFLIES
	cmp.w #TotalFireflyCount, FireflyPickupCountTotalSave
	bne   @NotCollectedAll
	ENDIF

	; Active Nymn
	ENTITY_GETBYNAME Nymn,l8a5_Nymn, a0
	move.l Player1, Player2
	move.l a0, Player1
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	; Start Echo AI
	move.l Player2, a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Disable 1st ending trigger box
	ENTITY_GETBYNAME TriggerBox,l8a6_TriggerEnding_NoNymn,a2
	move.b #0x0, Entity_Active(a2)
	
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
	
l8a6_Update:

	lea    LevelData_l8a6, a2
	tst.b  l8a6Data_EndingTriggered(a2)
	bne    @EndTriggered

	; If with Nymn
	tst.l  Player2
	beq    @NoNymn

	; Wait for Nyn to get yellow ability
	move.l Player1, a0
	cmp.b  #ColourYellow, Player_Colour(a0)
	bne    @NotYellow

	move.b #0x1, l8a6Data_EndingTriggered(a2)

	; Trigger ending cutscene (with Nymn)
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneEnding_WithNymn(a2), a0
	jsr    CutscenePlay

	@NotYellow:
	@NoNymn:
	@EndTriggered:

	rts
	
l8a6_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a6_End:
	rts

l8a6_EndGame:

	; End of game, roll credits
	lea    GameStateCredits, a0
	jsr    GameStateEnter

	rts
	
l8a6_Trigger_EndCutscene:

	PUSHL  a0

	; Start ending cutscene (without Nymn)
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneEnding_NoNymn(a2), a0
	jsr    CutscenePlay

	POPL   a0
	
	rts

l8a6_Trigger_DemonTakeFuzzl:

	PUSHL  a0

	; Start cutscene
	lea    LevelData_l8a6, a2
	lea    l8a6Data_CutsceneDemonStealFuzzl(a2), a0
	jsr    CutscenePlay

	POPL   a0

	rts

l8a6_CutsceneDemonStealFuzzl:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Move demon to Fuzzl
	CUTSCENE_GET_ENTITY Fuzzl,l8a6_FuzzlYellow1,a2
	CUTSCENE_ROUTINE l8a6_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_DELAY #0x0020
	
	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l8a5_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020

	; If Echo is P2, run and hide
	tst.l  Player2
	beq    l8a6_NoEchoHide

	; Disable Echo AI
	move.b #EchoAIState_None, d0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAISetState

	; Echo runs scared
	CUTSCENE_CAMERA_LERP Player2,#0x08
	CUTSCENE_GET_ENTITY Location,l8a6_LocationEchoHide,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x10,#0x10

	; Echo hides
	CUTSCENE_TICKMODE_CONTINUOUS
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStartHiding
	CUTSCENE_TICKMODE_INSTR_PER_FRAME

	; Lerp camera back to Demon
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	l8a6_NoEchoHide:

	; Finish Demon reveal
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0020

	; Attack Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack

	; Wait for bite frame
	CUTSCENE_ROUTINE l8a6_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0

	; Eat Fuzzl
	CUTSCENE_ROUTINE l8a6_Cutscene_FuzzlEaten,#0x0,#0x0,#0x0

	; Lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x10

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX

	; Wait a while
	CUTSCENE_DELAY #l8a6_DemonHideTime

	; Reenable
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Enter boss attack mode
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAIStart_Boss

	; Wait for zero lives
	CUTSCENE_ROUTINE l8a6_Cutscene_DemonWaitZeroLives,#0x0,#0x0,#0x0

	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp to Demon
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; Wait for death
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; Wait for death anim to finish
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CHARACTER_ANIM_WAIT a2

	; Drop Fuzzl
	CUTSCENE_ROUTINE l8a6_Cutscene_DemonDropFuzzl,#0x0,#0x0,#0x0

	; End music
	CUTSCENE_FADE_TRACK

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

l8a6_CutsceneEnding_WithNymn:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Disable Echo AI
	move.b #EchoAIState_None, d0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAISetState

	; Echo emerges
	CUTSCENE_DELAY #0x0040
	CUTSCENE_CAMERA_LERP Player2,#Echo_HowlCameraLerpSpeed
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStopHiding
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo howls
	CUTSCENE_SPRITE_FLIPX Player2,#0x1
	CUTSCENE_CHARACTER_ANIM Player2,#Player_Animations,#PlayerAnimIdx_Howl
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo runs to flue
	CUTSCENE_GET_ENTITY Flue,l8a6_Flue1,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08

	; Cancel X movement
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0

	; Wait
	CUTSCENE_DELAY #0x0010

	; Short jump into flue
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterStartJump
	CUTSCENE_DELAY #0x0004
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelJump

	; Wait until on floor
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR Player2

	; Echo runs to glide location
	CUTSCENE_GET_ENTITY Location,l8a6_LocationGlideJump,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08

	; Jump and glide
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterMoveLeft
	move.b #0x1, d2
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterStartJump
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterStartInteractA

	; Wait until on floor
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR Player2

	; Cancel glide and stop
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractB

	; Lerp camera to Nymn
	CUTSCENE_CAMERA_LERP Player1,#0x0008

	; Nymn runs to glide location
	CUTSCENE_GET_ENTITY Location,l8a6_LocationGlideJump,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08

	; Jump and glide
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterMoveLeft
	move.b #0x1, d2
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterStartJump
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterStartInteractA

	; Wait until on floor
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR Player1

	; Stop glide
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB

	; Nymn run to mushroom
	CUTSCENE_GET_ENTITY BouncePlant,l8a6_MushroomEnd,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08

	; Cancel X movement
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0

	; Wait
	CUTSCENE_DELAY #0x0010

	; Nymn short jump onto mushroom
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterStartJump
	CUTSCENE_DELAY #0x0004
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelJump

	; Echo run to mushroom
	CUTSCENE_CAMERA_LERP Player2,#0x0008
	CUTSCENE_GET_ENTITY BouncePlant,l8a6_MushroomEnd,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08

	; Cancel X movement
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0

	; Wait
	CUTSCENE_DELAY #0x0010

	; Echo short jump onto mushroom
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterStartJump
	CUTSCENE_DELAY #0x0004
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelJump

	; Wait until on floor
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR Player2

	; Run to jump location
	CUTSCENE_GET_ENTITY Location,l8a6_LocationEchoJumpSleep,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08

	; Cancel X movement and face right
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0
	CUTSCENE_TICKMODE_CONTINUOUS
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_TICKMODE_INSTR_PER_FRAME

	; Nymn sleep
	CUTSCENE_TICKMODE_CONTINUOUS
	CUTSCENE_SPRITE_FLIPX Player1,#0x1
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Character_LockSpriteFlip,#0x1
	CUTSCENE_TICKMODE_INSTR_PER_FRAME
	CUTSCENE_OBJECT_ROUTINE Player1,#PlayerBeginSleep

	; Wait
	CUTSCENE_DELAY #0x0040

	; Echo sleep
	CUTSCENE_OBJECT_ROUTINE Player2,#PlayerBeginSleep

	; Lerp camera to Nymn
	CUTSCENE_DELAY #0x0040
	CUTSCENE_CAMERA_LERP Player1,#0x0008

	; Play ending music
	CUTSCENE_PLAY_TRACK #track_bgm_lvloutro

	; Wait
	CUTSCENE_DELAY #0x0400

	; Fade down
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x0,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x1,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x2,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x3,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	; Wait for fade
	CUTSCENE_PALETTE_FADE_WAIT

	; Wait
	CUTSCENE_DELAY #0x0040

	; End game
	CUTSCENE_ROUTINE l8a6_EndGame,#0x0,#0x0,#0x0

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l8a6_CutsceneEnding_NoNymn:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Disable colour ability
	CUTSCENE_OBJECT_SET_PARAM_W Player1,#Player_ColourChangeTimer,#0x1

	; Run to mushroom
	CUTSCENE_GET_ENTITY BouncePlant,l8a6_MushroomEnd,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08

	; Cancel X movement
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0

	; Wait
	CUTSCENE_DELAY #0x0010

	; Short jump onto mushroom
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterStartJump
	CUTSCENE_DELAY #0x0004
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelJump

	; Wait until on floor
	CUTSCENE_OBJECT_WAIT_HIT_FLOOR Player1

	; Wait
	CUTSCENE_DELAY #0x0020

	; Sleep
	CUTSCENE_OBJECT_ROUTINE Player1,#PlayerBeginSleep

	; Play ending music
	CUTSCENE_PLAY_TRACK #track_bgm_lvloutro

	; Wait
	CUTSCENE_DELAY #0x0400

	; Fade down
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x0,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x1,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x2,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x3,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	; Wait for fade
	CUTSCENE_PALETTE_FADE_WAIT

	; Wait
	CUTSCENE_DELAY #0x0040

	; End game
	CUTSCENE_ROUTINE l8a6_EndGame,#0x0,#0x0,#0x0

	rts

l8a6_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0

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
	addi.w #l8a6_DemonToFuzzlOffset, d0
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l8a6_DemonToFuzzlThreshold*l8a6_DemonToFuzzlThreshold, Demon_TargetDistSq(a0)
	
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

l8a6_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	move.b #0x0, d0
	@StillBiting:

	POPL   a0

	rts

l8a6_Cutscene_FuzzlEaten:
	
	PUSHM a0-a2

	; Flash
	move.w #0x2, d0
	jsr    VFX_StartFlash

	; Hide and deactivate demon
	ENTITY_GETBYNAME Demon,l8a6_Demon,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Hide Fuzzl
	ENTITY_GETBYNAME Fuzzl,l8a6_FuzzlYellow1,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	POPM a0-a2

	move.b #0x0, d0

	rts

l8a6_Cutscene_DemonWaitZeroLives:

	move.b #0x0, d0

	PUSHL a0
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	tst.b  Demon_NumLives(a0)
	beq    @NoLives
	move.b #0x1, d0
	@NoLives:
	POPL  a0

	rts

l8a6_Cutscene_DemonDropFuzzl:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	ENTITY_GETBYNAME Fuzzl, l8a6_FuzzlYellow1, a2
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

	; Set in rolling state and add as flue occupant
	PUSHM  a0-a2
	move.l a2, a0
	move.b #(1<<Fuzzl_State_Rolling), Fuzzl_State_Bits(a0)
	jsr    FlueAddPotentialOccupant
	move.b #0x1, Fuzzl_FlueOccupant(a0)
	POPM   a0-a2

	move.l a2, a0
	move.b #0x1, d1
	jsr    EntityUpdateWorldGridIndex

	POPL   a0

	move.b #0x0, d0

	rts
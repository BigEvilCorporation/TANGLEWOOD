;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l5a3.asm - Level 5 - Bygone Mines Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l5a3_BygoneAct3:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_l5a3					; Userdata
	dc.l tiles_L5						; Tileset
	dc.l map_blocks_l5					; Blocks
	dc.l map_blockmap_l5a3				; Block map
	dc.l map_blockmap_l5a3_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L5				; Collision tileset
	dc.l collisionmap_blocks_l5			; Collision blocks
	dc.l collisionmap_blockmap_l5a3		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l5a3	; Collision block map Y offsets table
	dc.l terrainmap_L5A3_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l5a3_DefaultPalettes			; Palettes
	dc.l l5a3_Init						; Init routine
	dc.l l5a3_Update					; Update routine
	dc.l l5a3_Serialise					; Serialise routine
	dc.l l5a3_LoadGameObjects			; Load game objects routine
	dc.l l5a3_End						; End routine
	dc.l L5a4_BygoneAct4				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l5a3_width					; Map width (tiles)
	dc.w map_l5a3_height				; Map height (tiles)
	dc.w map_blockmap_l5a3_width		; Map width (blocks)
	dc.w map_blockmap_l5a3_height		; Map height (blocks)
	dc.w terrainmap_l5a3_width			; Collision map width (tiles)
	dc.w terrainmap_l5a3_height			; Collision map height (tiles)
	dc.w terrainmap_l5a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l5a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l5a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l5a3_height; Collision map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles
	dc.w terrainmap_L5A3_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x1							; Background colour idx
	dc.b 0xF							; Index
	
	even
	
l5a3_DefaultPalettes:

	dc.l palette_L5					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

l5a3_CamShakeVel				equ 0x4000
l5a3_CamShakeAmp				equ 0x0180
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a3Data_CutsceneLoadLift1		rs.b Cutscene_Struct_Size
l5a3Data_CutsceneLoadLift2		rs.b Cutscene_Struct_Size
l5a3Data_CutsceneRevealDemon	rs.b Cutscene_Struct_Size
l5a3Data_CutsceneRevealScrap	rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l5a3Data_Struct_Size     		rs.b 0
	
l5a3_Init:
	
	; Set data for all acts in level
	jsr    L5_SetActData
	
	; Load BG map
	lea    map_blocks_L5, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L5_LoadSceneAnimations

	;==============================================================

	; HACK: Load L5 specific object sprites
	jsr    L5_LoadObjectSprites

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneLoadLift1(a2), a0
	move.l #l5a3_CutsceneLoadLift1, a1
	jsr    CutsceneInit

	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneLoadLift2(a2), a0
	move.l #l5a3_CutsceneLoadLift2, a1
	jsr    CutsceneInit

	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneRevealDemon(a2), a0
	move.l #l5a3_CutsceneRevealDemon, a1
	jsr    CutsceneInit

	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneRevealScrap(a2), a0
	move.l #l5a3_CutsceneRevealScrap, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l5a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l5a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l5a3_Generator2, a0
	ENTITY_GETBYNAME Cogs, l5a3_Cogs2, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l5a3_Generator3, a0
	ENTITY_GETBYNAME Cogs, l5a3_Cogs3, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generator to winch
	ENTITY_GETBYNAME Generator, l5a3_Generator2, a0
	move.l #l5a3_ActivateWinch, Generator_OnActivate(a0)

	; Connect winches together
	ENTITY_GETBYNAME Winch, l5a3_Winch1, a0
	ENTITY_GETBYNAME Winch, l5a3_Winch2, a1
	move.l a1, Winch_Mirror(a0)

	; Connect rafts to winches
	ENTITY_GETBYNAME Winch, l5a3_Winch1, a0
	ENTITY_GETBYNAME Raft, l5a3_Raft1, a1
	move.l a1, Winch_PhysObject(a0)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l5a3_Button1, a0
	move.l #l5a3_Button_Bridge1, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l5a3_Button2, a0
	ENTITY_GETBYNAME Bridge, l5a3_Bridge2, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l5a3_Button4, a0
	ENTITY_GETBYNAME Bridge, l5a3_Bridge3, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	;==============================================================

	; 'Special' terrain is cart rails, don't collide
	move.l (Player1), a2
	move.l (Player2), a3
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a3)

	;==============================================================

	; Set Echo's predator Skivv
	move.l (Player2), a0
	ENTITY_GETBYNAME Skivv, l5a3_SkivvEcho, a2
	jsr    EchoSetSkivv

	; Start Echo AI follow state
	move.l (Player2), a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	
	rts
	
l5a3_Update:

	; If Djakk dead, disable bridge button
	ENTITY_GETBYNAME Monster, l5a3_Djakk1, a0
	tst.b  Character_Dead(a0)
	beq    @NotDead
	ENTITY_GETBYNAME Button, l5a3_Button2, a0
	move.b #0x0, Button_Active(a0)
	@NotDead:

	rts
	
l5a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a3_End:
	rts
	
l5a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l5a3_Trigger_ShakeStart:

	move.w #0x0, d0
	move.w #l5a3_CamShakeVel, d1
	move.w #0x0, d2
	move.w #l5a3_CamShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake

	
	; Play rumble track
	lea    track_amb_rumble, a0
	jsr    SND_PlayTrack

	rts

l5a3_Trigger_ShakeStop:

	jsr    CAM_StopCameraShake

	; Stop rumble track
	move.b #Track_Type_Ambience, d0
	jsr    SND_StopTrackType

	rts

l5a3_Trigger_EchoUnderground:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Start linear follow
	jsr    EchoAIStart_LinearFollow

	POPL  a0

	rts

l5a3_Trigger_EchoFollow:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Clear linear follow flag
	move.b #0x0, Echo_AILinearFollowOnly(a0)

	POPL  a0

	rts

l5a3_Trigger_WakeDjakk:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l5a3_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0

	rts

l5a3_Button_Bridge1:

	PUSHL a0

	; Roll bridge
	ENTITY_GETBYNAME Bridge, l5a3_Bridge1, a0
	jsr    BridgeBeginUnroll

	; Restart Echo AI
	move.l Player2, a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Disable AI marker
	ENTITY_GETBYNAME AIMarker,l5a3_MarkerEchoWait1, a0
	move.b #0x0, Entity_Active(a0)

	POPL  a0

	rts

l5a3_ActivateWinch:

	; Remove raft from world grid to update out of view
	ENTITY_GETBYNAME Raft, l5a3_Raft1, a0
	jsr    EntityAddToUpdateList
	jsr    PhysicsWorldAddObject
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	bclr.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)

	; Start winch
	ENTITY_GETBYNAME Winch, l5a3_Winch1, a0
	jsr    Winch_RunClockwise

	rts

l5a3_Trigger_Scrap:

	PUSHL  a0
	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneRevealScrap(a2), a0
	jsr    CutscenePlay
	POPL   a0

	rts

l5a3_Trigger_Demon:

	PUSHL  a0

	; Remove Djakk
	ENTITY_GETBYNAME Monster, l5a3_Djakk1, a0
	jsr EntityRemoveFromUpdateList
	jsr EntityRemoveFromRenderList

	; Load demon (wisp form) GFX into Djakk VRAM
	ENTITY_GETBYNAME Demon, l5a3_Demon, a0
	ENTITY_GETBYNAME Monster, l5a3_Djakk1, a2
	SPRITE_LOAD_COPY demon,wisp,palette_demon,PaletteId_Monster,0x0,a2

	; Load palette
	PUSHL  a0
	lea    palette_demon, a0
	move.b #PaletteId_Monster, d0
	jsr    GameScenePaletteLoad
	POPL   a0

	; Enable
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	; Start cutsene
	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneRevealDemon(a2), a0
	jsr    CutscenePlay

	POPL   a0

	rts

l5a3_Trigger_CargoLift1:

	; Check generator active
	ENTITY_GETBYNAME Generator, l5a3_Generator1, a0
	tst.b  Generator_Running(a0)
	beq    @GeneratorInactive

	; Check Echo onboard
	PUSHL  a1
	ENTITY_GETBYNAME TriggerBox, l5a3_TriggerCargoLift1, a0
	move.l Player2, a1
	jsr    PHYS_TestEntityBoxInsideBox
	POPL   a1
	tst.b  d0
	beq    @NoEcho

	; Disable trigger
	ENTITY_GETBYNAME TriggerBox, l5a3_TriggerCargoLift1, a0
	move.b #0x0, Entity_Active(a0)

	; Run cutscene to get players into place on lift
	PUSHL  a0
	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneLoadLift1(a2), a0
	jsr    CutscenePlay
	POPL   a0

	; Enable next checkpoint
	ENTITY_GETBYNAME Checkpoint, l5a3_CheckpointRaft, a0
	move.b #0x1, Entity_Active(a0)

	@GeneratorInactive:
	@NoEcho:

	rts

l5a3_Trigger_CargoLift2:

	; Check generator active
	ENTITY_GETBYNAME Generator, l5a3_Generator3, a0
	tst.b  Generator_Running(a0)
	beq    @GeneratorInactive

	; Check Echo onboard
	PUSHL  a1
	ENTITY_GETBYNAME TriggerBox, l5a3_TriggerCargoLift2, a0
	move.l Player2, a1
	jsr    PHYS_TestEntityBoxInsideBox
	POPL   a1
	tst.b  d0
	beq    @NoEcho

	; Disable trigger
	ENTITY_GETBYNAME TriggerBox, l5a3_TriggerCargoLift2, a0
	move.b #0x0, Entity_Active(a0)

	; TODO: Stop Scrap barking

	; Run cutscene to get players into place on lift
	PUSHL  a0
	lea    LevelData_L5A3, a2
	lea    l5a3Data_CutsceneLoadLift2(a2), a0
	jsr    CutscenePlay
	POPL   a0

	@GeneratorInactive:
	@NoEcho:

	rts

l5a3_TriggerEchoStartGlide:

	PUSHL a0
	move.l Player2, a0
	jsr    PlayerStartColourAbility
	POPL  a0

	rts

l5a3_TriggerEchoStopGlide:

	PUSHL a0
	move.l Player2, a0
	jsr    PlayerStopColourAbility
	POPL  a0

	rts

l5a3_CutsceneLoadLift1:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0

	; Disable Echo AI
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStop

	; Both players run to centre of lift
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift1,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift1,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0
	CUTSCENE_DELAY #0x0020

	; Activate lift
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift1,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateDown

	; Wait for lift to hit floor
	CUTSCENE_ROUTINE l5a3_Cutscene_WaitLiftHitFloor,#0x0,#0x0,#0x0

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	; Enable Echo AI
	move.b #0x1, d0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStart_Follow

	; Clear follow-only behaviour
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Echo_AILinearFollowOnly,#0x0

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l5a3_CutsceneLoadLift2:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0

	; Disable Echo AI
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStop

	; Both players run to centre of lift
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift2,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift2,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0
	CUTSCENE_DELAY #0x0020

	; Activate lift
	CUTSCENE_GET_ENTITY CargoLift,l5a3_CargoLift2,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateUp

	CUTSCENE_END

	rts

l5a3_Cutscene_WaitLiftHitFloor:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for lift to hit floor
	ENTITY_GETBYNAME CargoLift, l5a3_CargoLift1, a0
	tst.b PhysicsObj_CloseToFloor(a0)
	beq   @StillMoving
	move.b #0x0, d0
	@StillMoving:

	POPL   a0

	rts
	
l5a3_CutsceneRevealDemon:
	; a0 --- Cutscene

	CUTSCENE_START

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l5a3_Demon,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_GET_ENTITY Demon,l5a3_Demon,a2
	CUTSCENE_CAMERA_LERP a2,Player1,#0x08

	CUTSCENE_END

	rts

l5a3_CutsceneRevealScrap:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Load black palette
	CUTSCENE_GAME_PALETTE_LOAD #palette_fade_black, #PaletteId_Monster

	; Begin monster approach track
	CUTSCENE_PLAY_TRACK #track_bgm_enemyapproach
	CUTSCENE_DELAY #0x00A0

	; Lerp camera to just above scrap
	CUTSCENE_GET_ENTITY Location,l5a3_LocationScrapCamera,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x04
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Lerp camera to scrap
	CUTSCENE_GET_ENTITY Location,l5a3_LocationScrapCamera,a2
	CUTSCENE_GET_ENTITY Scrap,l5a3_Scrap,a3
	CUTSCENE_CAMERA_LERP a2,a3,#0x10
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Begin reveal
	;CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	;CUTSCENE_OBJECT_ROUTINE a2,#ScrapAIStart_Emerge

	; Fade in palette
	CUTSCENE_GAME_PALETTE_FADETO #palette_djakk,#PaletteId_Monster,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_PALETTE_FADE_WAIT
	CUTSCENE_DELAY #0x0020

	; Record scratch
	CUTSCENE_STOP_TRACK

	; Bark
	CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	CUTSCENE_OBJECT_ROUTINE a2,#ScrapBark
	CUTSCENE_DELAY #0x0020

	; Lerp camera to Echo
	CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	CUTSCENE_CAMERA_LERP a2,Player2,#0x08

	; Echo shout
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoTalk
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoTalk

	; Echo run over
	CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#-0x10,#0x10

	; Echo dance around
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_CircleNymn
	CUTSCENE_CHARACTER_ANIM_WAIT Player2
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoTalk
	CUTSCENE_DELAY #0x0080

	; Play Scrap theme
	CUTSCENE_PLAY_TRACK #track_bgm_cue_scrap
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_CAMERA_LERP Player2,Player1,#0x08

	; Scrap begin AI
	CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	CUTSCENE_OBJECT_ROUTINE a2,#ScrapBark
	CUTSCENE_GET_ENTITY Scrap, l5a3_Scrap, a2
	CUTSCENE_OBJECT_ROUTINE a2,#ScrapAIStart_Follow

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts
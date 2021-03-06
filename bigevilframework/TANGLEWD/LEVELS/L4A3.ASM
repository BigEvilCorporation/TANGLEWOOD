;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a3.asm - Level 4 - Tethered Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l4a3_TetheredAct3:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_l4a3					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4					; Blocks
	dc.l map_blockmap_l4a3				; Block map
	dc.l map_blockmap_l4a3_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a3		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l4a3	; Collision block map Y offsets table
	dc.l terrainmap_l4a3_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l4a3_DefaultPalettes			; Palettes
	dc.l l4a3_Init						; Init routine
	dc.l l4a3_Update					; Update routine
	dc.l l4a3_Serialise					; Serialise routine
	dc.l l4a3_LoadGameObjects			; Load game objects routine
	dc.l l4a3_End						; End routine
	IF INCLUDE_LEVEL_5
	dc.l L5a1_BygoneAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a3_width					; Map width (tiles)
	dc.w map_l4a3_height				; Map height (tiles)
	dc.w map_blockmap_l4a3_width		; Map width (blocks)
	dc.w map_blockmap_l4a3_height		; Map height (blocks)
	dc.w terrainmap_l4a3_width			; Collision map width (tiles)
	dc.w terrainmap_l4a3_height			; Collision map height (tiles)
	dc.w terrainmap_l4a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l4a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l4a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l4a3_height; Collision map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w terrainmap_l4a3_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x6							; Background colour idx
	dc.b 0xC							; Index
	
	even
	
l4a3_DefaultPalettes:

	dc.l palette_l4_dusk			; World
	dc.l palette_djubb				; Monsters
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

l4a3_LiftSpeedDown				equ 0x004000+DefaultGravity
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a3Data_CutsceneEchoTrapped	rs.b Cutscene_Struct_Size
l4a3Data_CutsceneRevealBorgus	rs.b Cutscene_Struct_Size
l4a3Data_CutsceneLoadLift		rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l4a3Data_Struct_Size     		rs.b 0
	
l4a3_Init:

	; Set data for all acts in level
	jsr    L4_SetActData
	
	; Load BG map
	lea    map_blocks_l4, a0
	lea    map_blockmap_l4bg, a1
	move.l #(map_blockmap_l4bg_width<<16)|map_blockmap_l4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	; Set TOD palettes
	move.l  #palette_l4_day, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l4_night, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l4_dusk, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations

	;==============================================================

	; HACK: Load L4 specific object sprites
	jsr    L4_LoadObjectSprites

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneRevealBorgus(a2), a0
	move.l #l4a3_CutsceneRevealBorgus, a1
	jsr    CutsceneInit

	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneEchoTrapped(a2), a0
	move.l #l4a3_CutsceneEchoTrapped, a1
	jsr    CutsceneInit

	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneLoadLift(a2), a0
	move.l #l4a3_CutsceneLoadLift, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l4a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l4a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l4a3_Generator2, a0
	ENTITY_GETBYNAME Cogs, l4a3_Cogs2, a1
	move.l a1, Generator_Cogs(a0)

	ENTITY_GETBYNAME Generator, l4a3_Generator3, a0
	ENTITY_GETBYNAME Cogs, l4a3_Cogs3, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generator to bridge
	ENTITY_GETBYNAME Generator, l4a3_Generator1, a0
	ENTITY_GETBYNAME Bridge, l4a3_Bridge1, a1
	move.l a1, Generator_UserData(a0)
	move.l #BridgeBeginRoll, Generator_OnActivate(a0)

	; Connect generator to traps
	ENTITY_GETBYNAME Generator, l4a3_Generator2, a0
	move.l a1, Generator_UserData(a0)
	move.l #l3a3_ReleaseTraps, Generator_OnActivate(a0)

	; Set lift stop points
	ENTITY_GETBYNAME Lift, l4a3_Lift1, a0
	ENTITY_GETBYNAME Location, l4a3_LocationBoulderLiftStop1, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	ENTITY_GETBYNAME Lift, l4a3_Lift2, a0
	ENTITY_GETBYNAME Location, l4a3_LocationBoulderLiftStop2, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l4a3_Button1, a0
	ENTITY_GETBYNAME Lift, l4a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateUp, Button_OnDown(a0)
	move.l #LiftActivateDown, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Button, l4a3_Button2, a0
	ENTITY_GETBYNAME Lift, l4a3_Lift2, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivateUp, Button_OnDown(a0)
	move.l #LiftActivateDown, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Hide Borgus' Fuzzl
	ENTITY_GETBYNAME Fuzzl, l4a3_FuzzlBorgus, a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	jsr    EntityRemoveFromWorldGrid

	; Make Borgus' boulder unbreakable
	ENTITY_GETBYNAME Boulder, l4a3_Boulder1, a0
	move.b #0x0, Boulder_CanCrack(a0)

	; Slow down Borgus' lifts
	ENTITY_GETBYNAME Lift, l4a3_Lift1, a0
	MOVE_NTSC_L l4a3_LiftSpeedDown, PhysicsObj_MaxVelYDown(a0), d0
	ENTITY_GETBYNAME Lift, l4a3_Lift2, a0
	MOVE_NTSC_L l4a3_LiftSpeedDown, PhysicsObj_MaxVelYDown(a0), d0

	; Set traps
	ENTITY_GETBYNAME Trap, l4a3_Trap1, a0
	move.l #l4a3_Trigger_Trapped, Trap_OnActivated(a0)

	ENTITY_GETBYNAME Trap, l4a3_Trap2, a0
	move.b #0x1, Trap_Activated(a0)

	ENTITY_GETBYNAME Trap, l4a3_Trap3, a0
	move.l #l4a3_Trigger_Trapped, Trap_OnActivated(a0)

	; HACK: Remove trap 1 from world grid updates, or Echo will try to push a Fuzzl into it
	; if he spots it off screen
	ENTITY_GETBYNAME Trap, l4a3_Trap1, a0
	jsr    EntityAddToUpdateList
	bclr   #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)

	;==============================================================

	; Set Echo's predator Skivv
	move.l (Player2), a0
	ENTITY_GETBYNAME Skivv, l4a3_SkivvEcho, a2
	jsr    EchoSetSkivv

	; Start Echo AI follow state
	move.l (Player2), a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Disable Echo footstep SFX
	jsr    EchoDisableFootstepSFX
	
	rts
	
l4a3_Update:

	rts
	
l4a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a3_End:
	rts
	
l4a3_Trigger_End:

	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter

	; Not sleeping, force fade state
	lea    GameStateEndLevelData, a2
	move.w #0x1, EndLevelState_Timer(a2)
	
	rts

l4a3_Trigger_Trapped:
	; a0 --- Trap

	PUSHL  a0

	; If Nymn
	move.l Trap_TrappedObject(a0), a2
	cmp.l  Player1, a2
	beq    @P1
	cmp.l  Player2, a2
	beq    @P2

	@P1:

	; Disable player control
	move.b #0x0, Player_ControlEnabled(a2)

	; Echo howl and disable AI
	PUSHL  a0
	move.l Player2, a0
	tst.b  SpriteObj_SpriteLinked(a0)
	beq    @EchoOffScreen
	jsr    EchoHowl
	@EchoOffScreen:
	jsr    EchoAIStop
	POPL   a0

	; Enter fail state
	PUSHM  a0-a2
	lea    GameStateFail, a0
	jsr    GameStateEnter
	POPM   a0-a2

	bra   @End

	@P2:

	; Start Echo trapped cutscene
	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneEchoTrapped(a2), a0
	jsr    CutscenePlay

	bra   @End

	@End:

	POPL   a0

	rts

l3a3_ReleaseTraps:

	PUSHL  a0

	ENTITY_GETBYNAME Trap, l4a3_Trap1, a0
	jsr   TrapDeactivate

	ENTITY_GETBYNAME Trap, l4a3_Trap2, a0
	jsr   TrapDeactivate

	ENTITY_GETBYNAME Trap, l4a3_Trap3, a0
	jsr   TrapDeactivate

	; Disable bridge (so Echo can't follow down)
	ENTITY_GETBYNAME Bridge, l4a3_Bridge1, a0
	jsr   BridgeBeginUnroll

	; Re-enable Echo AI
	move.l Player2, a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Howl
	jsr    EchoHowl

	POPL   a0

	rts

l4a3_Trigger_BorgusReveal:

	PUSHL  a0

	; Load palette
	move.b #PaletteID_Monster, d0
	lea    palette_borgus, a0
	jsr    PAL_LoadDMA

	; Set Fuzzl
	ENTITY_GETBYNAME Fuzzl, l4a3_FuzzlBorgus, a0
	ENTITY_GETBYNAME Borgus, l4a3_Borgus, a1
	move.l a0, Borgus_Fuzzl(a1)

	; Start cutsene
	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneRevealBorgus(a2), a0
	jsr    CutscenePlay

	POPL   a0

	rts

l4a3_Trigger_LoadLift:

	PUSHL a0

	; Disable Borgus
	ENTITY_GETBYNAME Borgus, l4a3_Borgus, a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)
	move.b #0x0, AnimObj_UploadFrame(a0)

	; Load cargo lift into Borgus' VRAM
	ENTITY_GETBYNAME CargoLift, l4a3_CargoLift, a0
	ENTITY_GETBYNAME Borgus, l4a3_Borgus, a2
	SPRITE_LOAD_SHARED_VRAM cargolft,cargo_lift_l4,0,PaletteId_World0,0x0,a2

	POPL  a0

	rts

l4a3_Trigger_CargoLift:

	; Check generator active
	ENTITY_GETBYNAME Generator, l4a3_Generator3, a0
	tst.b  Generator_Running(a0)
	beq    @GeneratorInactive

	; Check Echo onboard
	PUSHL  a1
	ENTITY_GETBYNAME TriggerBox, l4a3_TriggerCargoLift, a0
	move.l Player2, a1
	jsr    PHYS_TestEntityBoxInsideBox
	POPL   a1
	tst.b  d0
	beq    @NoEcho

	; Disable trigger
	ENTITY_GETBYNAME TriggerBox, l4a3_TriggerCargoLift, a0
	move.b #0x0, Entity_Active(a0)

	; Run cutscene to get players into place on lift
	PUSHL  a0
	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneLoadLift(a2), a0
	jsr    CutscenePlay
	POPL   a0

	@GeneratorInactive:
	@NoEcho:

	rts

l4a3_CutsceneLoadLift:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractB

	; Disable Echo AI
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStop

	; Both players run to centre of lift
	CUTSCENE_GET_ENTITY CargoLift,l4a3_CargoLift,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0
	CUTSCENE_GET_ENTITY CargoLift,l4a3_CargoLift,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,a2,#0x0,#0x08
	CUTSCENE_OBJECT_SET_PARAM_L Player2,#PhysicsObj_VelX,#0x0
	CUTSCENE_DELAY #0x0020

	; Activate lift
	CUTSCENE_GET_ENTITY CargoLift,l4a3_CargoLift,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateDown

	CUTSCENE_END

	rts

l4a3_CutsceneEchoTrapped:
	; a0 --- Cutscene

	CUTSCENE_START

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractB

	; Wait
	CUTSCENE_DELAY #0x0020

	; Howl (also handles camera lerp)
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoHowl

	; Disable AI
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStop

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END

	rts

l4a3_CutsceneRevealBorgus:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Cancel all interations
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelInteractB
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractA
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelInteractB

	; Disable howling
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Nymn_CanHowl,#0x0

	; Lerp camera to Borgus
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; Wait
	CUTSCENE_DELAY #0x0020

	; Roar
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CHARACTER_ANIM a2,#Borgus_Animations,#BorgusAnimIdx_Roar
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CHARACTER_ANIM_WAIT a2

	; Wait
	CUTSCENE_DELAY #0x0020

	; Start boss music
	CUTSCENE_PLAY_TRACK #track_bgm_boss_l4

	; Wait
	CUTSCENE_DELAY #0x0020

	; Begin follow state
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus, a2
	CUTSCENE_OBJECT_ROUTINE a2,#BorgusAIStart_Follow
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_CAMERA_LERP Player1,#0x08

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX

	; Wait for Borgus to die
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	CUTSCENE_START_LETTERBOX

	; Lerp camera to Borgus and back
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP a2,#0x20
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CAMERA_LERP Player1,#0x08

	; Fade out audio track
	CUTSCENE_DELAY #0x0060
	CUTSCENE_FADE_TRACK

	; Enable howling
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Nymn_CanHowl,#0x1

	CUTSCENE_END_LETTERBOX

	CUTSCENE_END

	rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a3.asm - Level 8 - Turntail Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l8a3_TurntailAct3:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a3					; Userdata
	dc.l tiles_L5						; Tileset (using L5 tileset)
	dc.l map_blocks_L5					; Blocks (using L5 tileset)
	dc.l map_blockmap_l8a3				; Block map
	dc.l collisiontiles_L5				; Collision tileset (using L5 tileset)
	dc.l collisionmap_blocks_L5			; Collision blocks (using L5 tileset)
	dc.l collisionmap_blockmap_l8a3		; Collision block map
	dc.l terrainmap_l8a3_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a3_DefaultPalettes			; Palettes
	dc.l l8a3_Init						; Init routine
	dc.l l8a3_Update					; Update routine
	dc.l l8a3_Serialise					; Serialise routine
	dc.l l8a3_LoadGameObjects			; Load game objects routine
	dc.l l8a3_End						; End routine
	dc.l l8a4_TurntailAct4				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a3_width					; Map width (tiles)
	dc.w map_l8a3_height				; Map height (tiles)
	dc.w map_blockmap_l8a3_width		; Map width (blocks)
	dc.w map_blockmap_l8a3_height		; Map height (blocks)
	dc.w terrainmap_l8a3_width			; Collision map width (tiles)
	dc.w terrainmap_l8a3_height			; Collision map height (tiles)
	dc.w terrainmap_l8a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a3_height; Collision map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles (using L5 tileset)
	dc.w terrainmap_l8a3_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x19							; Index
	
	even
	
l8a3_DefaultPalettes:

	dc.l palette_L5					; World (using L5 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

l8a3_DemonToFuzzl				equ 0x08
l8a3_DemonHideTime				equ 0x0100
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a3Data_CutsceneDemonStealFuzzl	rs.b Cutscene_Struct_Size
l8a3Data_CutsceneLoadLift			rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l8a3Data_Struct_Size     		rs.b 0
	
l8a3_Init:
	
	; Load BG map (using L5 tileset)
	lea    map_blocks_L5, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L5 tileset)
	move.l  #palette_L5,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	;move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	;move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations (using L5 tileset)
	jsr    L5_LoadSceneAnimations

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L8A3, a2
	lea    l8a3Data_CutsceneDemonStealFuzzl(a2), a0
	move.l #l8a3_CutsceneDemonStealFuzzl, a1
	jsr    CutsceneInit

	lea    LevelData_L8A3, a2
	lea    l8a3Data_CutsceneLoadLift(a2), a0
	move.l #l8a3_CutsceneLoadLift, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l8a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l8a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Put Fuzzl in generator
	ENTITY_GETBYNAME Fuzzl, l8a3_FuzzlRed1, a0
	jsr    FuzzlFindGenerator

	; Set boss bounds
	ENTITY_GETBYNAME Demon, l8a3_Demon, a0
	ENTITY_GETBYNAME AIMarker, l8a3_MarkerDemonLeftBounds, a1
	ENTITY_GETBYNAME AIMarker, l8a3_MarkerDemonRightBounds, a2
	move.w Entity_WorldPosX(a1), Demon_BossBoundsLeft(a0)
	move.w Entity_WorldPosX(a2), Demon_BossBoundsRight(a0)

	; Set Demon Swarm obj
	ENTITY_GETBYNAME Swarm, l8a3_Swarm, a2
	jsr    DemonSetSwarmObj
	
	;==============================================================

	; Set player white ability
	move.l Player1, a2
	move.b #ColourWhite, Player_Colour(a2)
	
	rts
	
l8a3_Update:

	rts
	
l8a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a3_End:
	rts
	
l8a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l8a3_Trigger_Lift:

	; Check generator active
	ENTITY_GETBYNAME Generator, l8a3_Generator1, a0
	tst.b  Generator_Running(a0)
	beq    @GeneratorInactive

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L8A3, a2
	lea    l8a3Data_CutsceneLoadLift(a2), a0
	jsr    CutscenePlay
	POPL   a0

	; Disable trigger
	ENTITY_GETBYNAME TriggerBox, l8a3_TriggerStartLift, a0
	move.b #0x0, Entity_Active(a0)

	@GeneratorInactive:

	rts

l8a3_Trigger_ShakeStart:
	move.w #0x0, d0
	move.w #l5a3_CamShakeVel, d1
	move.w #0x0, d2
	move.w #l5a3_CamShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake
	rts

l8a3_Trigger_DemonTakeFuzzl:

	; Stop camera shake
	jsr    CAM_StopCameraShake

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L8A3, a2
	lea    l8a3Data_CutsceneDemonStealFuzzl(a2), a0
	jsr    CutscenePlay
	POPL   a0

	rts

l8a3_CutsceneDemonStealFuzzl:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Move demon to Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Demon_AtTarget,#0x0
	CUTSCENE_GET_ENTITY Fuzzl,l8a3_FuzzlRed1,a2
	CUTSCENE_ROUTINE l8a3_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_DELAY #0x0020
	
	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge
	CUTSCENE_DELAY #0x0020

	; Attack Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack

	; Wait for bite frame
	CUTSCENE_ROUTINE l8a3_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0

	; Eat Fuzzl
	CUTSCENE_ROUTINE l8a3_Cutscene_FuzzlEaten,#0x0,#0x0,#0x0

	; Lerp back
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_CAMERA_LERP a2,Player1,#0x08

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	CUTSCENE_END_LETTERBOX

	; Wait a while
	CUTSCENE_DELAY #l8a3_DemonHideTime

	; Reenable
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Enter boss attack mode
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAIStart_Boss

	; Wait for death
	CUTSCENE_GET_ENTITY Demon,l8a3_Demon,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; Drop Fuzzl
	CUTSCENE_ROUTINE l8a3_Cutscene_DemonDropFuzzl,#0x0,#0x0,#0x0

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l8a3_CutsceneLoadLift:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0

	; Run to centre of lift
	CUTSCENE_GET_ENTITY CargoLift,l8a3_CargoLift,a2
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player1,a2,#0x0,#0x08
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement
	CUTSCENE_OBJECT_SET_PARAM_L Player1,#PhysicsObj_VelX,#0x0
	CUTSCENE_DELAY #0x0020

	; Activate lift
	CUTSCENE_GET_ENTITY CargoLift,l8a3_CargoLift,a2
	CUTSCENE_OBJECT_ROUTINE a2,#LiftActivateUp

	CUTSCENE_END

	rts

l8a3_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l8a3_Demon, a0

	; Update target pos
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l8a3_DemonToFuzzl*l8a3_DemonToFuzzl, Demon_TargetDistSq(a0)
	
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

l8a3_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l8a3_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	move.b #0x0, d0
	@StillBiting:

	POPL   a0

	rts

l8a3_Cutscene_FuzzlEaten:
	
	PUSHM a0-a2

	; Flash
	move.w #0x2, d0
	jsr    VFX_StartFlash

	; Hide and deactivate demon
	ENTITY_GETBYNAME Demon,l8a3_Demon,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Deactivate generator
	ENTITY_GETBYNAME Generator,l8a3_Generator1,a0
	jsr    Generator_Deactivate

	; Hide Fuzzl
	ENTITY_GETBYNAME Fuzzl,l8a3_FuzzlRed1,a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Unroll bridge
	ENTITY_GETBYNAME Bridge,l8a3_Bridge1,a0
	jsr    BridgeBeginUnroll

	POPM a0-a2

	move.b #0x0, d0

	rts

l8a3_Cutscene_DemonDropFuzzl:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l8a3_Demon, a0
	ENTITY_GETBYNAME Fuzzl, l8a3_FuzzlRed1, a2
	ENTITY_ALIGNCENTRE a2,a0,d0,d1

	move.b #0x1, Entity_Active(a2)
	move.b #0x1, SpriteObj_Visible(a2)
	move.b #0x0, PhysicsObj_Asleep(a2)
	move.b #0x0, PhysicsObj_OnFloor(a2)
	move.b #0x0, PhysicsObj_CloseToFloor(a2)
	move.l #0x0, PhysicsObj_LastFloor(a2)

	move.l a2, a0
	move.b #0x1, d1
	jsr    EntityUpdateWorldGridIndex

	POPL   a0

	move.b #0x0, d0

	rts

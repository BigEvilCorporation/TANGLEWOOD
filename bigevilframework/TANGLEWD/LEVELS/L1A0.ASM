;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a0.asm - Harlequin Forest Intro Cutscene
;==============================================================	

; ************************************
; Static data
; ************************************
l1a0_HarlequinForestIntro:

	dc.l LevelSelect_Str_01				; Name
	dc.l LevelData_l1a1					; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_l1a1				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1			; Collision blocks
	dc.l collisionmap_blockmap_l1a1		; Collision block map
	dc.l terrainmap_l1a1_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l1a0_DefaultPalettes			; Palettes
	dc.l l1a0_Init						; Init routine
	dc.l l1a0_Update					; Update routine
	dc.l l1a0_Serialise					; Serialise routine
	dc.l l1a1_LoadGameObjects			; Load game objects routine
	dc.l l1a0_End						; End routine
	dc.l l1a1_HarlequinForestAct1		; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l1a1_width					; Map width (tiles)
	dc.w map_l1a1_height				; Map height (tiles)
	dc.w map_blockmap_l1a1_width		; Map width (blocks)
	dc.w map_blockmap_l1a1_height		; Map height (blocks)
	dc.w terrainmap_l1a1_width			; Collision map width (tiles)
	dc.w terrainmap_l1a1_height			; Collision map height (tiles)
	dc.w terrainmap_l1a1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l1a1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l1a1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l1a1_height; Collision map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	dc.w terrainmap_l1a1_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b 0x0							; Index
	
	even
	
l1a0_DefaultPalettes:

	dc.l palette_l1_night			; World
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

l1a0_DemonMaxVel			equ 0x00040000
l1a0_DemonTargetDist		equ 0x20
l1a0_DemonPaletteFadeSpeed	equ 0x10
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l1a0Data_CutsceneIntro			rs.b Cutscene_Struct_Size
l1a0Data_MapPreStreamed			rs.b 1
;---------------------------------
	RS_ALIGN
l1a0Data_Struct_Size     		rs.b 0
	
l1a0_Init:

	; Load BG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD
	move.b  #TimeOfDay_Night, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations
	
	;==============================================================

	; Init cutscene
	PUSHM  a0-a1
	lea    LevelData_L1A0, a2
	lea    l1a0Data_CutsceneIntro(a2), a0
	move.l #l1a0_CutsceneIntro, a1
	jsr    CutsceneInit
	POPM   a0-a1
	
	;==============================================================

	move.l (Player1), a0
	
	; Disable player 1 control
	move.b #0x0, Player_ControlEnabled(a0)
	
	; Start sleep anim
	lea    (Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size))(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)

	;==============================================================

	; Reset map prestream
	lea    LevelData_L1A0, a2
	move.b #0x0, l1a0Data_MapPreStreamed(a2)

	;==============================================================

	; Override Demon max vel, disable by default
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0
	MOVE_NTSC_L l1a0_DemonMaxVel, PhysicsObj_MaxVelAirX(a0), d0
	move.b #0x0, Entity_Active(a0)

	;==============================================================

	; Start cutscene
	PUSHL  a0
	lea    LevelData_L1A0, a2
	lea    l1a0Data_CutsceneIntro(a2), a0
	jsr    CutscenePlay
	POPL   a0
	
	rts
	
l1a0_Update:

	PUSHL  a0

	; Wait for cutsene to finish
	lea    LevelData_L1A0, a2
	lea    l1a0Data_CutsceneIntro(a2), a0
	tst.b  Cutscene_Playing(a0)
	bne    @Playing

	; Start first level
	move.l #l1a1_HarlequinForestAct1, CurrentLevel
	lea    GameStateGameplay, a0
	jsr    GameStateEnter

	@Playing:

	POPL   a0

	rts
	
l1a0_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l1a0_End:
	; a1 --- Level addr

	rts

l1a0_CutsceneIntro:

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Owl hoot
	CUTSCENE_PLAY_SFX #SFX_Ambience_Night1

	; Wait
	CUTSCENE_DELAY #0x0100

	; Fade down
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x0,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x1,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x2,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x3,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	; Wait for fade
	CUTSCENE_PALETTE_FADE_WAIT

	; Start enemy approach track
	CUTSCENE_PLAY_TRACK #track_bgm_enemyapproach

	; Camera to Demon + pre-stream
	CUTSCENE_ROUTINE l1a0_Cutscene_CameraToDemon,#0x0,#0x0,#0x0

	; Wait
	CUTSCENE_DELAY #0x0080

	; Enable Demon
	CUTSCENE_GET_ENTITY Demon,l1a1_CutsceneDemon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Fade up
	CUTSCENE_GAME_PALETTE_FADETO #palette_l1_night,#0x0,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_demon,#0x1,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fuzzl,#0x2,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #Pal_Nymn_Red,#0x3,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	; Move demon to location
	CUTSCENE_GET_ENTITY Demon,l1a1_CutsceneDemon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Demon_AtTarget,#0x0
	CUTSCENE_GET_ENTITY Location,l1a1_CutsceneDemonTarget1,a2
	CUTSCENE_ROUTINE l1a0_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_DELAY #0x0080

	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l1a1_CutsceneDemon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Demon,l1a1_CutsceneDemon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge

	; Demon smirks
	CUTSCENE_DELAY #0x0100
	CUTSCENE_GET_ENTITY Demon,l1a1_CutsceneDemon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonSmirk

	; Start greyscale effect
	CUTSCENE_ROUTINE l1a0_Cutscene_GreyscaleFade,#0x0,#0x0,#0x0

	; Wait
	CUTSCENE_DELAY #0x0100

	; Demon back to wisp state
	CUTSCENE_ROUTINE l1a0_Cutscene_DemonToWisp,#0x0,#0x0,#0x0

	; Wait
	CUTSCENE_DELAY #0x0080

	; Camera to Nymn
	ENTITY_GETBYNAME Demon,l1a1_CutsceneDemon,a2
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	CUTSCENE_CAMERA_LERP_FROM_POS d0,d1,Player1,#0x08

	; Demon run off
	CUTSCENE_ROUTINE l1a0_Cutscene_DemonRunOff,#0x0,#0x0,#0x0

	; Wait
	CUTSCENE_DELAY #0x0080

	; Fade out audio track
	CUTSCENE_FADE_TRACK

	; Restore colour
	CUTSCENE_GAME_PALETTE_FADETO #palette_l1_night,#0x0,#l1a0_DemonPaletteFadeSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	; Nymn raise head then go back to sleep
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_ANIM Player1,#Player_Animations,#PlayerAnimIdx_WakeSleep
	CUTSCENE_CHARACTER_ANIM_WAIT Player1
	CUTSCENE_CHARACTER_ANIM Player1,#Player_Animations,#PlayerAnimIdx_Sleep

	; Wait
	CUTSCENE_DELAY #0x0100

	; End scene
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x0,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x1,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x2,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF
	CUTSCENE_GAME_PALETTE_FADETO #palette_fade_black,#0x3,#LevelFadeUpSpeed,#DefaultFadeTicksPerUpdate,#0x0,#0xF

	CUTSCENE_PALETTE_FADE_WAIT

	; Wait
	CUTSCENE_DELAY #0x0080

	CUTSCENE_END

	rts

l1a0_Cutscene_CameraToDemon:
	; a0 --- Cutscene step

	PUSHL  a0

	; Set as camera target
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0
	move.l a0, CameraTargetGameObj

	; Pre-stream
	jsr    LevelPreStreamMap

	move.b #0x0, d0

	POPL   a0

	rts

l1a0_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0

	; Update target pos
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l1a0_DemonTargetDist*l1a0_DemonTargetDist, Demon_TargetDistSq(a0)
	
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

l1a0_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for second to last frame
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0
	move.l AnimObj_AnimSubFrame(a0), d1
	lsr.l  #0x8, d1
	divu   #actor_demon_sheet_bite_anim_bite_numframes, d1
	swap   d1
	cmp.w  #actor_demon_sheet_bite_anim_bite_numframes-2, d1
	bne    @End

	; At frame
	move.b #0x0, d0

	; Stop anim
	move.b #0x0, AnimObj_Playing(a0)

	@End:

	POPL   a0

	rts

l1a0_Cutscene_DemonToWisp:
	
	PUSHM a0-a2

	; Flash
	move.w #0x2, d0
	jsr    VFX_StartFlash

	; Back to wisp state
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0
	jsr    DemonAIStart_Wisp

	POPM  a0-a2

	move.b #0x0, d0

	rts

l1a0_Cutscene_DemonRunOff:
	
	PUSHM a0-a2

	; Move back to starting pos
	ENTITY_GETBYNAME Demon, l1a1_CutsceneDemon, a0
	ENTITY_GETBYNAME Location, l1a1_CutsceneDemonTarget0, a2
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)
	move.b #0x0, Demon_AtTarget(a0)

	POPM  a0-a2

	move.b #0x0, d0

	rts

l1a0_Cutscene_GreyscaleFade:

	; Begin greyscale fade
	PUSHM  a0-a2
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #l1a0_DemonPaletteFadeSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	POPM   a0-a2

	move.b #0x0, d0

	rts
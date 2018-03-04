;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l5a4.asm - Level 5 - Bygone Mines Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l5a4_BygoneAct4:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_l5a4					; Userdata
	dc.l tiles_L4						; Tileset (using L4 tileset)
	dc.l map_blocks_l4					; Blocks (using L4 tileset)
	dc.l map_blockmap_l5a4				; Block map
	dc.l map_blockmap_l5a4_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L4				; Collision tileset (using L4 tileset)
	dc.l collisionmap_blocks_l4			; Collision blocks (using L4 tileset)
	dc.l collisionmap_blockmap_l5a4		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l5a4	; Collision block map Y offsets table
	dc.l terrainmap_L5A4_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l5a4_DefaultPalettes			; Palettes
	dc.l l5a4_Init						; Init routine
	dc.l l5a4_Update					; Update routine
	dc.l l5a4_Serialise					; Serialise routine
	dc.l l5a4_LoadGameObjects			; Load game objects routine
	dc.l l5a4_End						; End routine
	IF INCLUDE_LEVEL_6
	dc.l L6a1_DeadwoodAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l5a4_width					; Map width (tiles)
	dc.w map_l5a4_height				; Map height (tiles)
	dc.w map_blockmap_l5a4_width		; Map width (blocks)
	dc.w map_blockmap_l5a4_height		; Map height (blocks)
	dc.w terrainmap_L5A4_width			; Collision map width (tiles)
	dc.w terrainmap_L5A4_height			; Collision map height (tiles)
	dc.w terrainmap_L5A4_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L5A4_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L5A4_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L5A4_height; Collision map height (blocks)
	dc.w tiles_L4_size_t				; Num tiles
	dc.w terrainmap_L5A4_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x6							; Background colour idx
	dc.b 0x10							; Index
	
	even
	
l5a4_DefaultPalettes:

	dc.l palette_L4_day				; World (using L4 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

; ************************************
; Constants
; ************************************
l5a4_DemonToPlayerX				equ 0x60
l5a4_DemonToPlayerY				equ 0x28
l5a4_EchoHideToPlayerX			equ 0x00A0	; Safe distance for Echo to run and hide
l5a4_EchoToPlayerX				equ 0x0034	; Distance from Echo to Nymn when howling/circling
l5a4_DemonWaitTimeEchoScared	equ 0x0020	; Time between beginning reveal and Echo getting scared
l5a4_DemonWaitTimeEmerge		equ 0x0040	; Time between Echo running off and demon emerging
l5a4_DemonWaitTimeSmirk			equ 0x00E0	; Time between emerging and smirking
l5a4_DemonWaitTimeFade			equ 0x0040	; Time between smirk and greyscale fade
l5a4_DemonWaitTimeAttack		equ 0x00E0	; Time between fade and attack
l5a4_DemonWaitTimeEchoEmerge	equ 0x0080	; Time between attack and Echo emerging
l5a4_ThunderDist				equ 0x1
l5a4_GreyscaleLerpSpeed			equ (0x1<<fade_frame_shift) ; Subframes (1 frame per tick)

; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a4Data_Cutscene				rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l5a4Data_Struct_Size     		rs.b 0
	
l5a4_Init:
	
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
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations (using L4 tileset)
	jsr    L4_LoadSceneAnimations

	;==============================================================

	; HACK: Load L4 specific object sprites
	jsr    L4_LoadObjectSprites

	;==============================================================

	; Init cutscene
	PUSHM  a0-a1
	lea    LevelData_L5A4, a2
	lea    l5a4Data_Cutscene(a2), a0
	move.l #l5a4_Cutscene, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	;==============================================================

	; Set cargo lift stop point
	ENTITY_GETBYNAME CargoLift, l5a4_CargoLift, a0
	ENTITY_GETBYNAME Location, l5a4_LocationCargoLiftStop, a1
	move.w Entity_WorldPosY(a1), Lift_TopLimit(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Start cargo lift
	jsr    LiftActivateUp
	
	rts
	
l5a4_Update:
	rts
	
l5a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a4_End:
	rts
	
l5a4_Trigger_End:

	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter

	; Not sleeping, force fade state
	lea    GameStateEndLevelData, a2
	move.w #0x1, EndLevelState_Timer(a2)
	
	rts

l5a4_Trigger_Storm:

	; Stop music
	jsr    SND_StopTrack

	; Restore TOD palette
	lea    palette_L4_night, a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	; Start rain
	jsr    RainInit

	; Start ambience
	PUSHM  a0/d0-d1
	lea    track_amb_rain, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1

	; Fire lightning warning shot
	lea    Thunder, a2
	move.w #0xFFFF, d0
	move.w #l5a4_ThunderDist, d1
	jsr    ThunderSetParams
	jsr    ThunderFlash
	PLAYSFX #SFX_Thunder_Near

	rts

l5a4_Cutscene_Begin:

	PUSHL  a0
	lea    LevelData_L5A4, a2
	lea    l5a4Data_Cutscene(a2), a0
	jsr    CutscenePlay
	POPL   a0

	rts

l5a4_Cutscene:
	; a0 --- Cutscene

	CUTSCENE_START
	CUTSCENE_START_LETTERBOX

	; Stop player movement and disable control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Stop ambience SFX
	CUTSCENE_ROUTINE StopAmbientSFX,#0x0,#0x0,#0x0

	; Start enemy approach track
	CUTSCENE_PLAY_TRACK #track_bgm_enemyapproach

	; Demon moves into place, faces player and starts emerge sequence
	CUTSCENE_ROUTINE l5a4_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_SPRITE_FLIPX a2,#0x1
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge

	; Echo runs scared
	CUTSCENE_DELAY #l5a4_DemonWaitTimeEchoScared
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoAIStop
	CUTSCENE_CAMERA_LERP Player1,Player2,#Echo_HowlCameraLerpSpeed
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,Player1,#-l5a4_EchoHideToPlayerX,#0x10

	; Echo hides
	CUTSCENE_TICKMODE_CONTINUOUS
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStartHiding
	CUTSCENE_TICKMODE_INSTR_PER_FRAME

	; Lerp camera back
	CUTSCENE_CHARACTER_ANIM_WAIT Player2
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CAMERA_LERP Player2,Player1,#Echo_HowlCameraLerpSpeed
	CUTSCENE_CAMERA_LERP_WAIT

	; Demon fully emerges
	CUTSCENE_DELAY #l5a4_DemonWaitTimeEmerge
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_SPRITE_FLIPX a2,#0x1
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonEmerge

	; Nymn looks up
	CUTSCENE_OBJECT_ROUTINE Player1,#NymnLookUp

	; Demon smirks
	CUTSCENE_DELAY #l5a4_DemonWaitTimeSmirk
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonSmirk

	; Start greyscale effect
	CUTSCENE_DELAY #l5a4_DemonWaitTimeFade
	CUTSCENE_ROUTINE l5a4_Cutscene_GreyscaleFade,#0x0,#0x0,#0x0

	; Demon attacks
	CUTSCENE_DELAY #l5a4_DemonWaitTimeAttack
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAttack

	; Wait for attack trigger frame
	CUTSCENE_ROUTINE l5a4_Cutscene_WaitAttackFrame,#0x0,#0x0,#0x0

	; Lightning flash, demon disappears
	CUTSCENE_ROUTINE l5a4_Cutscene_LightningFlash,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#EntityRemoveFromUpdateList
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#EntityRemoveFromRenderList
	CUTSCENE_GET_ENTITY Demon,l5a4_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#EntityRemoveFromWorldGrid

	; Stop audio track
	CUTSCENE_STOP_TRACK

	; Goodbye, Nymn :(
	CUTSCENE_OBJECT_ROUTINE Player1,#PlayerBeginPermadeath

	; Echo emerges
	CUTSCENE_DELAY #0x0100
	CUTSCENE_CAMERA_LERP Player1,Player2,#Echo_HowlCameraLerpSpeed
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x0
	CUTSCENE_OBJECT_ROUTINE Player2,#EchoStopHiding
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo howls
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x1
	CUTSCENE_SPRITE_FLIPX Player2,#0x0
	CUTSCENE_CHARACTER_ANIM Player2,#Player_Animations,#PlayerAnimIdx_Howl
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo runs over to Nymn, turns to face, and howls again
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_MOVE_RELATIVE Player2,Player1,#l5a4_EchoToPlayerX,#0x10
	CUTSCENE_OBJECT_ROUTINE Player2,#CharacterCancelXMovement
	CUTSCENE_SPRITE_FLIPX Player2,#0x1
	CUTSCENE_CHARACTER_ANIM Player2,#Player_Animations,#PlayerAnimIdx_Howl
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo circles around Nymn
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_CircleNymn
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo drops to stand on all fours
	CUTSCENE_DELAY #0x0040
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_UpdateAnim,#0x0
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_AllFours
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo nudges nymn
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_Nudge
	CUTSCENE_CHARACTER_ANIM_WAIT Player2
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_Nudge
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo sits fully
	CUTSCENE_DELAY #0x0040
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_Sit
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo howls whilst sitting
	CUTSCENE_DELAY #0x0020
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_Howl
	CUTSCENE_CHARACTER_ANIM_WAIT Player2
	CUTSCENE_DELAY #0x0040
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_HowlLow
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; Echo stands up
	CUTSCENE_DELAY #0x0100
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_UpdateAnim,#0x1
	CUTSCENE_ROUTINE l5a4_Cutscene_SetSadIdleAnim,#0x0,#0x0,#0x0
	CUTSCENE_CHARACTER_ANIM Player2,#Echo_Animations,#EchoAnimIdx_Stand
	CUTSCENE_CHARACTER_ANIM_WAIT Player2

	; End cutscene
	CUTSCENE_DELAY #0x0040
	CUTSCENE_OBJECT_SET_PARAM_B Player2,#Character_LockSpriteFlip,#0x0
	CUTSCENE_ROUTINE l5a5_CutsceneEnd,#0x0,#0x0,#0x0

	CUTSCENE_END_LETTERBOX
	CUTSCENE_END

	rts

l5a4_Cutscene_MoveDemon:
	; a0 --- Cutscene step

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	tst.b  Demon_AtTarget(a0)
	beq    @NotAtTarget

	; Step complete
	move.b #0x0, d0
	bra    @End

	@NotAtTarget:

	; Update target pos (player still decelerating)
	move.l Player1, a3
	ENTITY_GETCENTREX d0,a3
	ENTITY_GETCENTREY d1,a3
	TOPIXELS d0
	TOPIXELS d1
	addi.w #l5a4_DemonToPlayerX, d0
	subi.w #l5a4_DemonToPlayerY, d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	; Step still running
	move.b #0x1, d0
	
	@End:

	POPL   a0

	rts

l5a4_Cutscene_GreyscaleFade:

	; Begin greyscale fade
	PUSHM  a0-a2
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #l5a4_GreyscaleLerpSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	POPM   a0-a2

	move.b #0x0, d0

	rts

l5a4_Cutscene_WaitAttackFrame:

	PUSHL  a0

	move.b #0x1, d0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	move.b #0x0, d0
	@StillBiting:

	POPL   a0

	rts

l5a4_Cutscene_LightningFlash:

	; Load night palette
	lea    palette_L4_night, a0
	move.w #PaletteId_World0, d0
	jsr    GameScenePaletteLoad

	; Flash
	lea    Thunder, a2
	move.w #0xFFFF, d0
	move.w #l5a4_ThunderDist, d1
	jsr    ThunderSetParams
	jsr    ThunderFlash

	move.b #0x0, d0

	rts

l5a4_Cutscene_SetSadIdleAnim:

	move.l Player2, a0
	ANIM_LOAD_DEFAULT Echo,idlesad,idlesad,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	move.b #0x0, d0

	rts

l5a5_CutsceneEnd:

	; End letterbox mode

	; Player now controls Echo
	move.l Player2, Player1
	move.l #0x0, Player2

	move.b #0x0, d0

	rts

l5a5_StartMusic_GameOver:
	PUSHM  a0/d0-d1
	lea    track_bgm_gameover, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1
	rts
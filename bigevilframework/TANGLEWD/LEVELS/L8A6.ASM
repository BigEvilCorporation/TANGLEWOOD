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
	dc.l collisiontiles_L1				; Collision tileset (using L1 tileset)
	dc.l collisionmap_blocks_L1			; Collision blocks (using L1 tileset)
	dc.l collisionmap_blockmap_l8a6		; Collision block map
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
	dc.b 0x0							; Background colour idx
	
	even
	
l8a6_DefaultPalettes:

	dc.l palette_L1_night			; World (using L1 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

l8a6_DemonToFuzzl				equ 0x30
l8a6_DemonHideTime				equ 0x0100
l8a6_DemonAttackSpeed			equ 0x0020
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l8a6Data_CutsceneDemonStealFuzzl	rs.b Cutscene_Struct_Size
;---------------------------------
	RS_ALIGN
l8a6Data_Struct_Size     		rs.b 0
	
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
	
	;==============================================================

	; Set boss bounds
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonLeftBounds, a1
	ENTITY_GETBYNAME AIMarker, l8a6_MarkerDemonRightBounds, a2
	move.w Entity_WorldPosX(a1), Demon_BossBoundsLeft(a0)
	move.w Entity_WorldPosX(a2), Demon_BossBoundsRight(a0)

	; Set boss attack speed
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	move.w #l8a6_DemonAttackSpeed, d0
	jsr    DemonSetAttackSpeed

	;==============================================================

	; Set player white ability
	move.l Player1, a2
	move.b #ColourWhite, Player_Colour(a2)
	
	rts
	
l8a6_Update:

	rts
	
l8a6_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a6_End:
	rts
	
l8a6_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
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

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp camera to demon
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020

	; Move demon to Fuzzl
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Demon_AtTarget,#0x0
	CUTSCENE_GET_ENTITY Fuzzl,l8a6_FuzzlYellow1,a2
	CUTSCENE_ROUTINE l8a6_Cutscene_MoveDemon,#0x0,#0x0,#0x0
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#CharacterCancelXMovement
	CUTSCENE_DELAY #0x0020
	
	; Reveal demon
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonStartEmerge
	CUTSCENE_DELAY #0x0020
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
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CAMERA_LERP a2,Player1,#0x10

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	; Wait a while
	CUTSCENE_DELAY #l8a6_DemonHideTime

	; Reenable
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_SET_PARAM_B a2,#Entity_Active,#0x1

	; Enter boss attack mode
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_OBJECT_ROUTINE a2,#DemonAIStart_Boss

	; Wait for death
	CUTSCENE_GET_ENTITY Demon,l8a6_Demon,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; TODO: Trigger final death

	; Drop Fuzzl
	CUTSCENE_ROUTINE l8a6_Cutscene_DemonDropFuzzl,#0x0,#0x0,#0x0

	CUTSCENE_END

	rts

l8a6_Cutscene_MoveDemon:
	; a0 --- Cutscene step
	; a2 --- Target

	PUSHL  a0
	
	; Get demon
	ENTITY_GETBYNAME Demon, l8a6_Demon, a0

	; Update target pos
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	move.l #l8a6_DemonToFuzzl*l8a6_DemonToFuzzl, Demon_TargetDistSq(a0)
	
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

l8a6_Cutscene_DemonDropFuzzl:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l8a6_Demon, a0
	ENTITY_GETBYNAME Fuzzl, l8a6_FuzzlYellow1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREY d1,a0
	move.l d0, Entity_WorldPosX(a2)
	move.l d1, Entity_WorldPosY(a2)
	move.b #0x1, Entity_Active(a2)
	move.b #0x1, SpriteObj_Visible(a2)
	move.b #0x0, PhysicsObj_Asleep(a2)
	move.b #0x0, PhysicsObj_OnFloor(a2)
	move.b #0x0, PhysicsObj_CloseToFloor(a2)
	move.l #0x0, PhysicsObj_LastFloor(a2)

	POPL   a0

	move.b #0x0, d0

	rts
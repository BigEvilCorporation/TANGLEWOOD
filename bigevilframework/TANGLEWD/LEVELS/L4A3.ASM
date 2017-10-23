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
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a3		; Collision block map
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
	dc.b 0x0							; Background colour idx
	
	even
	
l4a3_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l palette_djubb				; Monsters
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a3Data_CutsceneRevealBorgus	rs.b Cutscene_Struct_Size
;---------------------------------
l4a3Data_Struct_Pad      		rs.b 3
l4a3Data_Struct_Size     		rs.b 0
	
l4a3_Init:
	
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

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations

	;==============================================================

	; Init cutscenes
	PUSHM  a0-a1
	lea    LevelData_L4A3, a2
	lea    l4a3Data_CutsceneRevealBorgus(a2), a0
	move.l #l4a3_CutsceneRevealBorgus, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; Set lift stop point
	ENTITY_GETBYNAME Lift, l4a3_Lift1, a0
	ENTITY_GETBYNAME Location, l4a3_LocationBoulderLiftStop, a1
	move.l Entity_WorldPosY(a0), d0
	move.l Entity_WorldPosY(a1), d1
	sub.l  d1, d0
	move.l d0, Lift_RopeLength(a0)
	move.b #0x1, Lift_RestrictHeight(a0)

	; Connect button to lift
	ENTITY_GETBYNAME Button, l4a3_Button1, a0
	ENTITY_GETBYNAME Lift, l4a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivate, Button_OnDown(a0)
	move.l #LiftStop, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Hide Borgus' Fuzzl
	ENTITY_GETBYNAME Fuzzl, l4a3_FuzzlBorgus, a0
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	; Set traps
	ENTITY_GETBYNAME Trap, l4a3_Trap1, a0
	move.l Player2, Trap_WatchObject(a0)
	ENTITY_GETBYNAME Trap, l4a3_Trap3, a0
	move.l Player1, Trap_WatchObject(a0)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
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

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
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

l4a3_CutsceneRevealBorgus:
	; a0 --- Cutscene

	CUTSCENE_START

	; Disable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x0
	CUTSCENE_OBJECT_ROUTINE Player1,#CharacterCancelXMovement

	; Lerp camera to Borgus
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT

	; TODO: Start boss music


	CUTSCENE_DELAY #0x0020

	; Begin follow state
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus, a2
	CUTSCENE_OBJECT_ROUTINE a2,#BorgusAIStart_Follow
	CUTSCENE_DELAY #0x0020

	; Lerp back
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP a2,Player1,#0x08

	; Enable player control
	CUTSCENE_OBJECT_SET_PARAM_B Player1,#Player_ControlEnabled,#0x1

	; Wait for Borgus to die
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CHARACTER_WAIT_DEATH a2

	; Lerp camera to Borgus and back
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP Player1,a2,#0x08
	CUTSCENE_CAMERA_LERP_WAIT
	CUTSCENE_DELAY #0x0020
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_CAMERA_LERP a2,Player1,#0x08

	; TEMP
	CUTSCENE_DELAY #0x0030
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_OBJECT_ROUTINE a2,#EntityRemoveFromUpdateList
	CUTSCENE_GET_ENTITY Borgus,l4a3_Borgus,a2
	CUTSCENE_OBJECT_ROUTINE a2,#EntityRemoveFromRenderList

	CUTSCENE_END

	rts
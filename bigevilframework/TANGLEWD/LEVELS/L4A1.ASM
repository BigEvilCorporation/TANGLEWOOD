;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l4a1.asm - Level 4 - Tethered Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
l4a1_TetheredAct1:

	dc.l LevelSelect_Str_04				; Name
	dc.l LevelData_L4A1					; Userdata
	dc.l tiles_l4						; Tileset
	dc.l map_blocks_l4					; Blocks
	dc.l map_blockmap_l4a1				; Block map
	dc.l map_blockmap_l4a1_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l4				; Collision tileset
	dc.l collisionmap_blocks_l4			; Collision blocks
	dc.l collisionmap_blockmap_l4a1		; Collision block map
	dc.l terrainmap_L4A1_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l4a1_DefaultPalettes			; Palettes
	dc.l l4a1_Init						; Init routine
	dc.l l4a1_Update					; Update routine
	dc.l l4a1_Serialise					; Serialise routine
	dc.l l4a1_LoadGameObjects			; Load game objects routine
	dc.l l4a1_End						; End routine
	dc.l l4a2_TetheredAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l4a1_width					; Map width (tiles)
	dc.w map_l4a1_height				; Map height (tiles)
	dc.w map_blockmap_l4a1_width		; Map width (blocks)
	dc.w map_blockmap_l4a1_height		; Map height (blocks)
	dc.w terrainmap_L4A1_width			; Collision map width (tiles)
	dc.w terrainmap_L4A1_height			; Collision map height (tiles)
	dc.w terrainmap_L4A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L4A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L4A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L4A1_height; Collision map height (blocks)
	dc.w tiles_l4_size_t				; Num tiles
	dc.w terrainmap_L4A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0xA							; Index
	
	even
	
l4a1_DefaultPalettes:

	dc.l palette_l4					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l4a1Data_ComboButton1Count		rs.b 1
l4a1Data_ComboButton2Count		rs.b 1
;---------------------------------
	RS_ALIGN
l4a1Data_Struct_Size     		rs.b 0
	
l4a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L4A1, (a2)+
	move.l #LevelData_L4A2, (a2)+
	move.l #LevelData_L4A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	
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
	move.l  #palette_l4, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l4, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l4, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l4, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	;==============================================================

	; Load scene animations
	jsr    l4_LoadSceneAnimations

	;==============================================================

	; HACK: Load L4 specific object sprites
	jsr    L4_LoadObjectSprites

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l4a1_Generator1, a0
	ENTITY_GETBYNAME Cogs, l4a1_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l4a1_Generator1, a0
	ENTITY_GETBYNAME Button, l4a1_Button2, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l4a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l4a1_Bridge1, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l4a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l4a1_DropBridge1, a1
	move.b #0x0, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginDrop, Button_OnDown(a0)

	ENTITY_GETBYNAME Button, l4a1_Button3, a0
	ENTITY_GETBYNAME Bridge, l4a1_Bridge2, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)

	; Lock Fuzzls in cages
	ENTITY_GETBYNAME FuzzlCage, l4a1_FuzzlCage1, a0
	ENTITY_GETBYNAME Fuzzl, l4a1_FuzzlCaged1, a2
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	jsr    FuzzlCageSetFuzzl

	;==============================================================

	; Set Echo's predator Skivv
	move.l (Player2), a0
	ENTITY_GETBYNAME Skivv, l4a1_SkivvEcho, a2
	jsr    EchoSetSkivv

	; Start Echo AI follow state
	move.l (Player2), a0
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	
	rts
	
l4a1_Update:

	rts
	
l4a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l4a1_End:
	rts

l4a1_Trigger_MusicCue:

	lea    track_bgm_cue_l4, a0
	jsr    SND_PlayTrack

	rts

l4a1_Trigger_EchoUnderground:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Start linear follow
	jsr    EchoAIStart_LinearFollow

	POPL  a0

	rts
	
l4a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

L4_LoadObjectSprites:

	move.l EntityPoolStart_Stone, a0
	move.w EntityCount_Stone, d0
	beq    @NoStones
	SPRITE_LOAD_SHARED_VRAM stone,stone_l4,0,PaletteId_World0,0x0,a0
	@NoStones:

	move.l EntityPoolStart_Lift, a0
	move.w EntityCount_Lift, d0
	beq    @NoLifts
	SPRITE_LOAD_SHARED_VRAM lift,lift_l4,0,PaletteId_World0,0x0,a0
	@NoLifts:

	move.l EntityPoolStart_CargoLift, a0
	move.w EntityCount_CargoLift, d0
	beq    @NoCargoLifts
	tst.b  CargoLift_ManualGfxLoad(a0)
	bne    @NoCargoLifts
	SPRITE_LOAD_SHARED_VRAM cargolft,cargo_lift_l4,0,PaletteId_World0,0x0,a0
	@NoCargoLifts:

	move.l EntityPoolStart_Generator, a0
	move.w EntityCount_Generator, d0
	beq    @NoGenerators
	subq   #0x1, d0
	@GeneratorLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM generatr,compressor_l4,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT generatr,compressor_l4,spin,Generator_Animations,GeneratorAnimIdx_Spin,1,0,0
	POPW   d0
	addi.l #Generator_Struct_Size, a0
	dbra   d0, @GeneratorLp
	@NoGenerators:

	move.l EntityPoolStart_Cogs, a0
	move.w EntityCount_Cogs, d0
	beq    @NoCogs
	subq   #0x1, d0
	@CogsLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM cogs,cogs_l4,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT cogs,cogs_l4,spin,Cogs_Animations,CogsAnimIdx_Spin,1,0,0
	POPW   d0
	addi.l #Cogs_Struct_Size, a0
	dbra   d0, @CogsLp
	@NoCogs:

	move.l EntityPoolStart_Boulder, a0
	move.w EntityCount_Boulder, d0
	beq    @NoBoulders
	subq   #0x1, d0
	@BoulderLp:
	PUSHW  d0
	SPRITE_LOAD_SHARED_VRAM boulder,roll_l4,0,PaletteId_World0,0x0,a0
	ANIM_LOAD_DEFAULT boulder,roll_l4,roll_l4,Boulder_Animations,BoulderAnimIdx_Roll,1,0,0
	POPW   d0
	addi.l #Boulder_Struct_Size, a0
	dbra   d0, @BoulderLp
	@NoBoulders:

	rts
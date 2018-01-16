;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l2a2.asm - Level 2 - Storm Warning Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l2a2_StormWarningAct2:

	dc.l LevelSelect_Str_02				; Name
	dc.l LevelData_L2A2					; Userdata
	dc.l tiles_l2						; Tileset
	dc.l map_blocks_l2					; Blocks
	dc.l map_blockmap_l2a2				; Block map
	dc.l map_blockmap_l2a2_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2			; Collision blocks
	dc.l collisionmap_blockmap_l2a2		; Collision block map
	dc.l terrainmap_L2A2_special_terrain_descs ; 'Special' terrain descriptor table
	dc.l l2a2_DefaultPalettes			; Palettes
	dc.l l2a2_Init						; Init routine
	dc.l l2a2_Update					; Update routine
	dc.l l2a2_Serialise					; Serialise routine
	dc.l l2a2_LoadGameObjects			; Load game objects routine
	dc.l l2a2_End						; End routine
	dc.l l2a3_StormWarningAct3			; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l2a2_width					; Map width (tiles)
	dc.w map_l2a2_height				; Map height (tiles)
	dc.w map_blockmap_l2a2_width		; Map width (blocks)
	dc.w map_blockmap_l2a2_height		; Map height (blocks)
	dc.w terrainmap_L2A2_width			; Collision map width (tiles)
	dc.w terrainmap_L2A2_height			; Collision map height (tiles)
	dc.w terrainmap_L2A2_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L2A2_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L2A2_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L2A2_height; Collision map height (blocks)
	dc.w tiles_l2_size_t				; Num tiles
	dc.w terrainmap_L2A2_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x5							; Index
	
	even
	
l2a2_DefaultPalettes:

	dc.l palette_l2_day				; World
	dc.l palette_djakk				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
	RS_ALIGN
l2a2Data_Struct_Size     		rs.b 0
	
l2a2_Init:
	
	; Load BG map
	lea    map_blocks_l2, a0
	lea    map_blockmap_l2bg, a1
	move.l #(map_blockmap_l2bg_width<<16)|map_blockmap_l2bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_l2_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l2_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l2_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l2_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    l2_LoadSceneAnimations

	;==============================================================

	; HACK: Load L2 specific object sprites
	jsr    L2_LoadObjectSprites
	
	;==============================================================

	; Init weather
	jsr    RainInit

	; Enable wind SFX
	move.b #0x1, WindSFXEnabled

	; Set default wind params
	move.w  #0x0010, WindAccel
	move.w  #-0x0900, WindRandStrengthMin
	move.w  #-0x0910, WindRandStrengthMax
	MOVE_NTSC_W 0x0170, WindRandDelayMin, d0
	MOVE_NTSC_W 0x0180, WindRandDelayMax, d0
	MOVE_NTSC_W 0x01F0, WindRandDurationMin, d0
	MOVE_NTSC_W 0x0200, WindRandDurationMax, d0
	MOVE_NTSC_W 0x0080, WindDelayTimer, d0

	;==============================================================
	
	; Configure wind flues
	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue1, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue2, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue3, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue4, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue5, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	ENTITY_GETBYNAME WindFlue, l2a2_WindFlue6, a0
	move.w #0x7FFF, WindFlue_OnTime(a0)
	move.w #0x0001, WindFlue_OffTime(a0)
	move.w #0x7FFF, WindFlue_Timer(a0)

	;==============================================================

	; Start rain ambience
	PUSHM  a0/d0-d1
	lea    track_amb_rain, a0
	jsr    SND_PlayTrack
	POPM   a0/d0-d1

	rts
	
l2a2_Update:

	rts
	
l2a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l2a2_End:
	rts

l2a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l2a2_Trigger_EndColourPower:

	; Set power to expire next frame
	move.l Player1, a2
	tst.w  Player_ColourChangeTimer(a2)
	beq    @NoPower
	move.w #0x1, Player_ColourChangeTimer(a2)
	@NoPower:

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l8a2.asm - Level 8 - Turntail Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l8a2_TurntailAct2:

	dc.l LevelSelect_Str_08				; Name
	dc.l LevelData_l8a2					; Userdata
	dc.l tiles_L7						; Tileset (using L7 tileset)
	dc.l map_blocks_L7					; Blocks (using L7 tileset)
	dc.l map_blockmap_l8a2				; Block map
	dc.l map_blockmap_l8a2_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L7				; Collision tileset (using L7 tileset)
	dc.l collisionmap_blocks_L7			; Collision blocks (using L7 tileset)
	dc.l collisionmap_blockmap_l8a2		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l8a2	; Collision block map Y offsets table
	dc.l terrainmap_l8a2_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l l8a2_DefaultPalettes			; Palettes
	dc.l l8a2_Init						; Init routine
	dc.l l8a2_Update					; Update routine
	dc.l l8a2_Serialise					; Serialise routine
	dc.l l8a2_LoadGameObjects			; Load game objects routine
	dc.l l8a2_End						; End routine
	dc.l l8a3_TurntailAct3				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l8a2_width					; Map width (tiles)
	dc.w map_l8a2_height				; Map height (tiles)
	dc.w map_blockmap_l8a2_width		; Map width (blocks)
	dc.w map_blockmap_l8a2_height		; Map height (blocks)
	dc.w terrainmap_l8a2_width			; Collision map width (tiles)
	dc.w terrainmap_l8a2_height			; Collision map height (tiles)
	dc.w terrainmap_l8a2_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l8a2_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l8a2_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l8a2_height; Collision map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles (using L7 tileset)
	dc.w terrainmap_l8a2_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0x1							; Background colour idx
	dc.b 0x18							; Index
	
	even
	
l8a2_DefaultPalettes:

	dc.l palette_l7_night			; World (using L7 tileset)
	dc.l palette_djakk				; Djakk
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_White				; Player (white ability)
	
	even

L8_FinalBossMusic	equ track_bgm_boss_l8
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
	RS_ALIGN
l8a2Data_Struct_Size     		rs.b 0
	
l8a2_Init:

	; Set data for all acts in level
	jsr    L8_SetActData
	
	; Load BG map
	lea    map_blocks_L7, a0
	lea    map_blockmap_L7bg, a1
	move.l #(map_blockmap_L7bg_width<<16)|map_blockmap_L7bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L7 tileset)
	move.l  #palette_l7_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l7_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l7_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l7_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L7_LoadSceneAnimations

	;==============================================================

	; HACK: Load L7 specific object sprites
	jsr    L7_LoadObjectSprites
	
	;==============================================================

	; Set player white ability
	move.l Player1, a2
	move.b #ColourWhite, Player_Colour(a2)

	; Don't lerp Djakk palette, disable catchup behaviour, don't change music
	ENTITY_GETBYNAME Monster, l8a2_Djakk1, a0
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	jsr    MonsterSkipIntro
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	move.b #MonsterMusicState_Disabled, Monster_MusicState(a0)

	;==============================================================

	; Start final fight music
	lea    L8_FinalBossMusic, a0
	jsr    SND_PlayTrack
	
	rts
	
l8a2_Update:

	IFD EMUBUILD
	; Unlock achievement
	tst.b  EmuTrap_ACH_KILL_ALL_DJUBBS
	bne    @Unlocked

	move.l EntityPoolStart_Djubb, a0
	move.w EntityCount_Djubb, d0
	beq    @NoDjubb
	subq   #0x1, d0
	@DjubbLp:
	tst.b  Character_Dead(a0)
	beq    @DjubbAlive
	lea    Djubb_Struct_Size(a0), a0
	dbra   d0, @DjubbLp

	addi.b #0x1, EmuTrap_ACH_KILL_ALL_DJUBBS

	@Unlocked:
	@DjubbAlive:
	@NoDjubb:
	ENDIF

	rts
	
l8a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l8a2_End:
	rts
	
l8a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l8a2_Trigger_Djakk:
	PUSHL  a0
	ENTITY_GETBYNAME Monster, l8a2_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:
	POPL   a0
	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L7a1.asm - Level 7 - Oasis Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L7a1_OasisAct1:

	dc.l LevelSelect_Str_07				; Name
	dc.l LevelData_L7A1					; Userdata
	dc.l tiles_L7						; Tileset
	dc.l map_blocks_L7					; Blocks
	dc.l map_blockmap_L7a1				; Block map
	dc.l map_blockmap_l7a1_coloffsets	; Block map compressed column offsets
	dc.l collisiontiles_L7				; Collision tileset
	dc.l collisionmap_blocks_L7			; Collision blocks
	dc.l collisionmap_blockmap_L7a1		; Collision block map
	dc.l collisionmap_blockmap_yoffs_l7a1	; Collision block map Y offsets table
	dc.l terrainmap_L7A1_special_terrain_descs	; 'Special' terrain descriptor table
	dc.l L7a1_DefaultPalettes			; Palettes
	dc.l L7a1_Init						; Init routine
	dc.l L7a1_Update					; Update routine
	dc.l L7a1_Serialise					; Serialise routine
	dc.l L7a1_LoadGameObjects			; Load game objects routine
	dc.l L7a1_End						; End routine
	dc.l l7a2_OasisAct2					; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_L7a1_width					; Map width (tiles)
	dc.w map_L7a1_height				; Map height (tiles)
	dc.w map_blockmap_L7a1_width		; Map width (blocks)
	dc.w map_blockmap_L7a1_height		; Map height (blocks)
	dc.w terrainmap_L7A1_width			; Collision map width (tiles)
	dc.w terrainmap_L7A1_height			; Collision map height (tiles)
	dc.w terrainmap_L7A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L7A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L7A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L7A1_height; Collision map height (blocks)
	dc.w tiles_L7_size_t				; Num tiles
	dc.w terrainmap_L7A1_num_special_terrain_descs	; Num 'special' terrain descriptors
	dc.b 0xC							; Background colour idx
	dc.b 0x14							; Index
	
	even
	
L7a1_DefaultPalettes:

	dc.l palette_l7_day				; World
	dc.l palette_wyrm				; Wyrm
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
;---------------------------------
	RS_ALIGN
L7a1Data_Struct_Size     		rs.b 0
	
L7a1_Init:

	; Set data for all acts in level
	jsr    L7_SetActData
	
	; Load BG map
	lea    map_blocks_L7, a0
	lea    map_blockmap_L7bg, a1
	move.l #(map_blockmap_L7bg_width<<16)|map_blockmap_L7bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_l7_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l1_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Day, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L7_LoadSceneAnimations

	;==============================================================

	; HACK: Load L7 specific object sprites
	jsr    L7_LoadObjectSprites
	
	;==============================================================

	; Start heatwave effect on plane B
	move.w #0x00A0, d0	; Speed
	move.w #0x0005, d1	; Amplitude shift
	move.w #0x0800, d2	; Frequency
	jsr    VFX_StartPlaneSineWaveB
	
	rts
	
L7a1_Update:

	rts
	
L7a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L7a1_End:
	rts

l7a1_Trigger_MusicCue:

	lea    track_bgm_cue_l7, a0
	jsr    SND_PlayTrack

	rts
	
L7a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

L7_LoadObjectSprites:

	move.l EntityPoolStart_Stone, a0
	move.w EntityCount_Stone, d0
	beq    @NoStones
	SPRITE_LOAD_SHARED_VRAM stone,stone_l7,0,PaletteId_World0,0x0,a0
	@NoStones:

	rts

L7_SetActData:
	lea    CurrentActDatas, a2
	move.l #LevelData_L7A1, (a2)+
	move.l #LevelData_L7A2, (a2)+
	move.w #0x3, CurrentLevelNumActs
	rts

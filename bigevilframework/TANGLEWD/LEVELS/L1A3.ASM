;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l1a3.asm - Level 1 - Harlequin Forest Act 3
;==============================================================	

l1a3_HarlequinForestAct3:

	dc.l LevelSelect_Str_01				; Name
	dc.l LevelData_L1A3					; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_L1					; Blocks
	dc.l map_blockmap_L1A3				; Block map
	dc.l collisiontiles_l1				; Collision tileset
	dc.l collisionmap_blocks_l1			; Collision blocks
	dc.l collisionmap_blockmap_l1a3		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l1a3_DefaultPalettes			; Palettes
	dc.l l1a3_Init						; Init routine
	dc.l l1a3_Update					; Update routine
	dc.l l1a3_Serialise					; Serialise routine
	dc.l l1a3_LoadGameObjects			; Load game objects routine
	dc.l l1a3_End						; End routine
	dc.l l1a4_HarlequinForestAct4		; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l1a3_width					; Map width
	dc.w map_l1a3_height				; Map height
	dc.w map_blockmap_l1a3_width		; Map width (blocks)
	dc.w map_blockmap_l1a3_height		; Map height (blocks)
	dc.w terrainmap_L1A3_width			; Collision map width (tiles)
	dc.w terrainmap_L1A3_height			; Collision map height (tiles)
	dc.w terrainmap_L1A3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L1A3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L1A3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L1A3_height; Collision map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	
	even
	
l1a3_DefaultPalettes:

	dc.l palette_l1_night		; World
	dc.l palette_djakk			; Djakk
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l1a3Data_WaitingInput			rs.b 1
;---------------------------------
l1a3Data_Struct_Pad      		rs.b 3
l1a3Data_Struct_Size     		rs.b 0
	
l1a3_Init:

	; Load BG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD palettes
	move.l  #palette_l1_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l1_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l1_dawn,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Night, TimeOfDay
	
	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations
	
	;==============================================================
	
	; Don't bother with Djakk emerge sequence
	ENTITY_GETBYNAME Monster, l1a3_Djakk, a0
	move.b #0x0, Monster_DoIntro(a0)
	
	; Lower catch-up speed mul (or he'll bust through walls)
	move.w #0x2, Monster_CatchUpSpeedMul(a0)
	
	;==============================================================
	
	; Link Flue A with Flue B
	ENTITY_GETBYNAME Flue, l1a3_Flue_A, a0
	ENTITY_GETBYNAME Flue, l1a3_Flue_B, a1
	move.l a1, Flue_OutputFlue(a0)
	
	; Link Flue D with Flue E
	ENTITY_GETBYNAME Flue, l1a3_Flue_D, a0
	ENTITY_GETBYNAME Flue, l1a3_Flue_E, a1
	move.l a1, Flue_OutputFlue(a0)
	
	; Link Flue F with Flue G
	ENTITY_GETBYNAME Flue, l1a3_Flue_F, a0
	ENTITY_GETBYNAME Flue, l1a3_Flue_G, a1
	move.l a1, Flue_OutputFlue(a0)
	
	rts
	
l1a3_Update:
	
	rts
	
l1a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l1a3_End:
	; a1 --- Level addr

	rts
	
l1a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts
	
l1a3_Trigger_WakeDjakk:

	PUSHL  a0
	
	; Get player 1
	move.l (Player1), a2
	
	; Check not cloaked
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked

	ENTITY_GETBYNAME Monster, l1a3_Djakk, a0
	jsr    MonsterStartTrackPlayer

	; Disable trigger box
	ENTITY_GETBYNAME TriggerBox, l1a3_TriggerBox_WakeDjakk, a0
	move.b #0x0, Entity_Active(a0)

	@PlayerCloaked:
	
	POPL   a0
	
	rts
	
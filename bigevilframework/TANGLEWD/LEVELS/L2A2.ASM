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
	dc.l collisiontiles_l2				; Collision tileset
	dc.l collisionmap_blocks_l2a2		; Collision blocks
	dc.l collisionmap_blockmap_l2a2		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
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
	dc.w tiles_l2_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
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
l2a2Data_WaitingInput			rs.b 1
;---------------------------------
l2a2Data_Struct_Pad      		rs.b 3
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

	; Init weather
	jsr    RainInit

	move.w  #0x0010, WindAccel
	move.w  #-0x0C00, WindRandStrengthMin
	move.w  #-0x0F00, WindRandStrengthMax
	move.w  #0x0170, WindRandDelayMin
	move.w  #0x0180, WindRandDelayMax
	move.w  #0x01F0, WindRandDurationMin
	move.w  #0x0200, WindRandDurationMax
	move.w  #0x0080, WindDelayTimer

	;==============================================================

	; Connect button to lift
	;ENTITY_GETBYNAME Button, l2a2_Button1, a0
	;ENTITY_GETBYNAME Lift, l2a2_Lift1, a1
	;move.l a1, Button_UserData(a0)
	;move.l #LiftActivate, Button_OnDown(a0)
	;move.l #LiftStop, Button_OnUp(a0)
	
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

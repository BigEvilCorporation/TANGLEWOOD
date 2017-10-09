;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l5a3.asm - Level 5 - Bygone Mines Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l5a3_BygoneAct3:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_l5a3					; Userdata
	dc.l tiles_L5						; Tileset
	dc.l map_blocks_l5					; Blocks
	dc.l map_blockmap_l5a3				; Block map
	dc.l collisiontiles_L5				; Collision tileset
	dc.l collisionmap_blocks_l5			; Collision blocks
	dc.l collisionmap_blockmap_l5a3		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l5a3_DefaultPalettes			; Palettes
	dc.l l5a3_Init						; Init routine
	dc.l l5a3_Update					; Update routine
	dc.l l5a3_Serialise					; Serialise routine
	dc.l l5a3_LoadGameObjects			; Load game objects routine
	dc.l l5a3_End						; End routine
	dc.l L5a4_BygoneAct4				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l5a3_width					; Map width (tiles)
	dc.w map_l5a3_height				; Map height (tiles)
	dc.w map_blockmap_l5a3_width		; Map width (blocks)
	dc.w map_blockmap_l5a3_height		; Map height (blocks)
	dc.w terrainmap_l5a3_width			; Collision map width (tiles)
	dc.w terrainmap_l5a3_height			; Collision map height (tiles)
	dc.w terrainmap_l5a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l5a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l5a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l5a3_height; Collision map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l5a3_DefaultPalettes:

	dc.l palette_L5					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

l5a3_CamShakeVel				equ 0x4000
l5a3_CamShakeAmp				equ 0x0180
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a3Data_WaitingInput			rs.b 1
;---------------------------------
l5a3Data_Struct_Pad      		rs.b 3
l5a3Data_Struct_Size     		rs.b 0
	
l5a3_Init:
	
	; Load BG map
	lea    map_blocks_L5, a0
	lea    map_blockmap_L5bg, a1
	move.l #(map_blockmap_L5bg_width<<16)|map_blockmap_L5bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L5, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L5_LoadSceneAnimations

	;==============================================================

	; 'Special' terrain is cart rails, don't collide
	move.l (Player1), a2
	move.l (Player2), a3
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a2)
	move.b #0x0, PhysicsObj_CollideSpecialTerrain(a3)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l5a3_Update:

	rts
	
l5a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a3_End:
	rts
	
l5a3_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l5a3_Trigger_ShakeStart:
	move.w #0x0, d0
	move.w #l5a3_CamShakeVel, d1
	move.w #0x0, d2
	move.w #l5a3_CamShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake
	rts

l5a3_Trigger_ShakeStop:
	jsr    CAM_StopCameraShake
	rts

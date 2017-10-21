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
	dc.l terrainmap_L5A3_special_terrain_descs						; 'Special' terrain descriptor table
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
	dc.w terrainmap_L5A3_num_special_terrain_descs							; Num 'special' terrain descriptors
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

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l5a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l5a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l5a3_Generator1, a0
	ENTITY_GETBYNAME Button, l5a3_Button2, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l5a3_Button1, a0
	move.l #l5a3_Button_Bridge1, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l5a3_Button2, a0
	ENTITY_GETBYNAME Bridge, l5a3_TEMP_Bridge2, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginDrop, Button_OnDown(a0)

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

l5a3_Trigger_EchoUnderground:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Start linear follow
	jsr    EchoAIStart_LinearFollow

	POPL  a0

	rts

l5a3_Trigger_EchoFollow:

	PUSHL a0

	; Get Echo
	move.l (Player2), a0

	; Clear linear follow flag
	move.b #0x0, Echo_AILinearFollowOnly(a0)

	POPL  a0

	rts

l5a3_Button_Bridge1:

	PUSHL a0

	; Roll bridge
	ENTITY_GETBYNAME Bridge, l5a3_Bridge1, a0
	jsr    BridgeBeginUnroll

	; Restart Echo AI
	move.l Player2, a0
	jsr    EchoAIStart_Follow

	POPL  a0

	rts

l5a3_Trigger_Scrap:
	rts

l5a3_Trigger_Demon:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l5a3_Demon, a0
	ENTITY_GETBYNAME Demon, l5a3_Djakk1, a2

	; Load demon GFX into Djakk VRAM
	SPRITE_LOAD_COPY Demon,PaletteId_Monster,0x0,a2

	; Load wisp GFX
	jsr    DemonLoadWispGfx

	; Enable
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	POPL   a0

	rts
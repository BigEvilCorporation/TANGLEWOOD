;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l6a3.asm - Level 6 - Deadwood Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l6a3_DeadwoodAct3:

	dc.l LevelSelect_Str_06				; Name
	dc.l LevelData_l6a3					; Userdata
	dc.l tiles_L6						; Tileset
	dc.l map_blocks_L6					; Blocks
	dc.l map_blockmap_l6a3				; Block map
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6			; Collision blocks
	dc.l collisionmap_blockmap_l6a3		; Collision block map
	dc.l terrainmap_L6A3_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l l6a3_DefaultPalettes			; Palettes
	dc.l l6a3_Init						; Init routine
	dc.l l6a3_Update					; Update routine
	dc.l l6a3_Serialise					; Serialise routine
	dc.l l6a3_LoadGameObjects			; Load game objects routine
	dc.l l6a3_End						; End routine
	IF INCLUDE_LEVEL_7
	dc.l l7a1_OasisAct1					; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l6a3_width					; Map width (tiles)
	dc.w map_l6a3_height				; Map height (tiles)
	dc.w map_blockmap_l6a3_width		; Map width (blocks)
	dc.w map_blockmap_l6a3_height		; Map height (blocks)
	dc.w terrainmap_l6a3_width			; Collision map width (tiles)
	dc.w terrainmap_l6a3_height			; Collision map height (tiles)
	dc.w terrainmap_l6a3_left			; Collision map left bounds (tiles)
	dc.w terrainmap_l6a3_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_l6a3_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_l6a3_height; Collision map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	dc.w terrainmap_L6A3_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l6a3_DefaultPalettes:

	; L6 is silhouetted throughout
	dc.l palette_L6					; World
	dc.l palette_fade_black			; Monster
	dc.l palette_fade_black			; Fuzzl
	dc.l palette_fade_black			; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l6a3Data_LogRollCamLerpTimer	rs.w 1
;---------------------------------
l6a3Data_Struct_Pad      		rs.b 2
l6a3Data_Struct_Size     		rs.b 0
	
l6a3_Init:
	
	; Load BG map
	lea    map_blocks_L6, a0
	lea    map_blockmap_L6bg, a1
	move.l #(map_blockmap_L6bg_width<<16)|map_blockmap_L6bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L6, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations
	jsr    L6_LoadSceneAnimations
	
	;==============================================================

	; Force every sprite object to use palette 1 (silhouette)
	LIST_GET_HEAD EntityUpdate,a0
	@EntityLp:
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_TypeBits(a0), d0
	andi.l #entity_type_spriteobj, d0
	beq    @NotSprite
	move.b #0x1, SpriteObj_Palette(a0)
	@NotSprite:
	LIST_GET_NEXT EntityUpdate,a0,a0
	bra    @EntityLp
	@ListEnd:

	;==============================================================

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l6a3_Button1, a0
	ENTITY_GETBYNAME Bridge, l6a3_Bridge1, a1
	move.l a1, Button_UserData(a0)
	move.b #0x1, Button_Active(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	;==============================================================

	; Don't lerp Djakk palette, disable catchup behaviour
	ENTITY_GETBYNAME Monster, l6a3_Djakk1, a0
	move.b #0x0, Monster_LerpPalette(a0)
	move.b #0x1, Monster_CatchUpSpeedMul(a0)
	move.b #0x0, Monster_DoIntro(a0)
	move.b #0x0, Monster_BlockPlayerCtrl(a0)
	
	rts
	
l6a3_Update:

	rts
	
l6a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l6a3_End:
	rts

l6a3_Trigger_Log1:
	PUSHL  a0
	ENTITY_GETBYNAME Log, l6a3_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.w #-L3A2_LogRollAccel, Log_FloorRollAccel(a0)
	move.b #0x1, Log_Hazardous(a0)
	POPL   a0
	rts

l6a3_Trigger_Log2:
	PUSHL  a0
	ENTITY_GETBYNAME Log, l6a3_Log2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.w #-L3A2_LogRollAccel, Log_FloorRollAccel(a0)
	move.b #0x1, Log_Hazardous(a0)
	POPL   a0
	rts

l6a3_Trigger_Djakk1:
	PUSHL  a0
	ENTITY_GETBYNAME Monster, l6a3_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartRoaring
	@MonsterAlreadyWoke:
	POPL   a0
	rts

l6a3_Trigger_End:

	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter

	; Not sleeping, force fade state
	lea    GameStateEndLevelData, a2
	move.w #0x1, EndLevelState_Timer(a2)
	
	rts
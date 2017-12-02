;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   L6a1.asm - Level 6 - Deadwood Act 1
;==============================================================	

; ************************************
; Static data
; ************************************
L6a1_DeadwoodAct1:

	dc.l LevelSelect_Str_06				; Name
	dc.l LevelData_L6A1					; Userdata
	dc.l tiles_L6						; Tileset
	dc.l map_blocks_L6					; Blocks
	dc.l map_blockmap_L6a1				; Block map
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6			; Collision blocks
	dc.l collisionmap_blockmap_L6a1		; Collision block map
	dc.l terrainmap_L6A1_special_terrain_descs						; 'Special' terrain descriptor table
	dc.l L6a1_DefaultPalettes			; Palettes
	dc.l L6a1_Init						; Init routine
	dc.l L6a1_Update					; Update routine
	dc.l L6a1_Serialise					; Serialise routine
	dc.l L6a1_LoadGameObjects			; Load game objects routine
	dc.l l6a1_End						; End routine
	dc.l l6a2_DeadwoodAct2				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_L6a1_width					; Map width (tiles)
	dc.w map_L6a1_height				; Map height (tiles)
	dc.w map_blockmap_L6a1_width		; Map width (blocks)
	dc.w map_blockmap_L6a1_height		; Map height (blocks)
	dc.w terrainmap_L6A1_width			; Collision map width (tiles)
	dc.w terrainmap_L6A1_height			; Collision map height (tiles)
	dc.w terrainmap_L6A1_left			; Collision map left bounds (tiles)
	dc.w terrainmap_L6A1_top			; Collision map top bounds (tiles)
	dc.w terrainmap_blockmap_L6A1_width	; Collision map width (blocks)
	dc.w terrainmap_blockmap_L6A1_height; Collision map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	dc.w terrainmap_L6A1_num_special_terrain_descs							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b 0x11							; Index
	
	even
	
L6a1_DefaultPalettes:

	; L6 is silhouetted throughout
	dc.l palette_L6					; World
	dc.l palette_fade_black			; Monster
	dc.l palette_fade_black			; Fuzzl
	dc.l palette_fade_black			; Player
	
	even

; Rolling log
L6A1_LogRollAccel			equ 0x0800
L6A1_LogRollCamLerpSpeed	equ 0x40
L6A1_LogRollCamLerpTime		equ 0x1E
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l6a1Data_LogRollCamLerpTimer	rs.w 1
;---------------------------------
	RS_ALIGN
L6a1Data_Struct_Size     		rs.b 0
	
L6a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L6A1, (a2)+
	move.l #LevelData_L6A2, (a2)+
	move.l #LevelData_L6A3, (a2)+
	move.w #0x3, CurrentLevelNumActs
	
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

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l6a1_Button1, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge1, a1
	move.b #0x1, Button_Active(a0)
	move.l #l6a1_LogRoll1Begin, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge2, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button3, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge3, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.b  #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button4, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge4, a1
	move.b #0x1, Button_Active(a0)
	move.l #l6a1_LogRoll2Begin, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button5, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge6, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.b #0x1, Bridge_UpdateOutOfView(a1)

	; Set logs to update out of view
	ENTITY_GETBYNAME Log, l6a1_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Log, l6a1_Log2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Log, l6a1_Log3, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Don't lerp Djakk palette
	ENTITY_GETBYNAME Monster, l6a1_Djakk1, a0
	move.b #0x0, Monster_LerpPalette(a0)

	; Force every sprite object to use palette 1 (silhouette)
	LIST_GET_HEAD EntityUpdate,a0
	@EntityLp:
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_TypeBits(a0), d0
	andi.l #entity_type_spriteobj, d0
	beq    @NotSprite
	move.b #0x1, SpriteObj_PaletteIdx(a0)
	@NotSprite:
	LIST_GET_NEXT EntityUpdate,a0,a0
	bra    @EntityLp
	@ListEnd:

	; Init camera lerp timer
	move.l #LevelData_L6A1, a2
	move.w #0x0, l6a1Data_LogRollCamLerpTimer(a2)
	
	rts
	
L6a1_Update:

	; Update camera lerp timer
	move.l #LevelData_L6A1, a2
	move.w l6a1Data_LogRollCamLerpTimer(a2), d0
	beq    @NoLerpTimer

	subq.w  #0x1, d0
	move.w d0, l6a1Data_LogRollCamLerpTimer(a2)
	tst.w  d0
	bne    @NoLerpTimer

	; Timer elapsed, lerp camera back to player
	PUSHM  a0-a2
	ENTITY_GETBYNAME Log, l6a1_Log3, a0
	move.l (Player1), a1
	move.l #L6a1_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a2

	@NoLerpTimer:

	rts
	
L6a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L6a1_End:
	rts

L6a1_LogRoll1Begin

	; Roll bridge
	ENTITY_GETBYNAME Bridge, l6a1_Bridge1, a0
	jsr    BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	ENTITY_GETBYNAME Log, l6a1_Log1, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	neg.w  d0
	jsr    LogBeginHazardousRoll

	; Disable button
	ENTITY_GETBYNAME Button, l6a1_Button1, a0
	move.b #0x0, Button_Active(a0)

	rts

L6a1_LogRoll2Begin

	; Roll bridges
	ENTITY_GETBYNAME Bridge, l6a1_Bridge4, a0
	jsr    BridgeBeginRoll
	ENTITY_GETBYNAME Bridge, l6a1_Bridge5, a0
	jsr    BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	ENTITY_GETBYNAME Log, l6a1_Log3, a0
	MOVE_NTSC_ACCEL_W L3A2_LogRollAccel, d0, d1
	jsr    LogBeginHazardousRoll

	; Disable button
	ENTITY_GETBYNAME Button, l6a1_Button4, a0
	move.b #0x0, Button_Active(a0)

	; Start camera lerp
	PUSHL  a1
	move.l (Player1), a0
	ENTITY_GETBYNAME Log, l6a1_Log3, a1
	move.l #L6A1_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPL   a1

	; Begin lerp timer
	move.l #LevelData_L6A1, a2
	MOVE_NTSC_W L6A1_LogRollCamLerpTime, l6a1Data_LogRollCamLerpTimer(a2), d0

	rts
	
L6a1_Trigger_WakeDjakk:

	PUSHL  a0
	
	ENTITY_GETBYNAME Monster, l6a1_Djakk1, a0
	cmp.b  #MonsterState_InCave, Monster_State(a0)
	bne    @MonsterAlreadyWoke
	jsr    MonsterStartEmergeFromCave
	@MonsterAlreadyWoke:
	
	POPL   a0

	rts

L6a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

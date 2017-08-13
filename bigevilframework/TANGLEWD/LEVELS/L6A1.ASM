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
	dc.l map_blocks_L6a1				; Blocks
	dc.l map_blockmap_L6a1				; Block map
	dc.l collisiontiles_L6				; Collision tileset
	dc.l collisionmap_blocks_L6a1		; Collision blocks
	dc.l collisionmap_blockmap_L6a1		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l L6a1_DefaultPalettes			; Palettes
	dc.l L6a1_Init						; Init routine
	dc.l L6a1_Update					; Update routine
	dc.l L6a1_Serialise					; Serialise routine
	dc.l L6a1_LoadGameObjects			; Load game objects routine
	dc.l l6a1_End						; End routine
	IF INCLUDE_LEVEL_7
	dc.l l7a1_OasisAct1					; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_L6a1_width					; Map width (tiles)
	dc.w map_L6a1_height				; Map height (tiles)
	dc.w map_blockmap_L6a1_width		; Map width (blocks)
	dc.w map_blockmap_L6a1_height		; Map height (blocks)
	dc.w tiles_L6_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	
	even
	
L6a1_DefaultPalettes:

	; L6 is silhouetted throughout
	dc.l palette_L6					; World
	dc.l 0x0						; Monster
	dc.l 0x0						; Fuzzl
	dc.l 0x0						; Player
	
	even

; Rolling log
L6A1_LogRollAccel			equ 0x0800
	
; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
L6a1Data_WaitingInput			rs.b 1
;---------------------------------
L6a1Data_Struct_Pad      		rs.b 3
L6a1Data_Struct_Size     		rs.b 0
	
L6a1_Init:

	; Set data for all acts in level
	lea    CurrentActDatas, a2
	move.l #LevelData_L6A1, (a2)+
	;move.l #LevelData_L6A2, (a2)+
	;move.l #LevelData_L6A3, (a2)+
	move.w #0x1, CurrentLevelNumActs
	
	; Load BG map
	lea    map_blocks_L6bg, a0
	lea    map_blockmap_L6bg, a1
	move.l #(map_blockmap_L6bg_width<<16)|map_blockmap_L6bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
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
	move.l #l6a1_LogRollBegin, Button_OnDown(a0)
	move.b  #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button2, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge2, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b  #0x1, Bridge_UpdateOutOfView(a1)

	ENTITY_GETBYNAME Button, l6a1_Button3, a0
	ENTITY_GETBYNAME Bridge, l6a1_Bridge3, a1
	move.b #0x1, Button_Active(a0)
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.b  #0x1, Bridge_UpdateOutOfView(a1)

	; Set logs to update out of view
	ENTITY_GETBYNAME Log, l6a1_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Log, l6a1_Log2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

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
	
	rts
	
L6a1_Update:

	rts
	
L6a1_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

L6a1_End:
	rts

L6a1_LogRollBegin

	; Roll bridge
	ENTITY_GETBYNAME Bridge, l6a1_Bridge1, a0
	jsr    BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	ENTITY_GETBYNAME Log, l6a1_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.w #-L6A1_LogRollAccel, Log_FloorRollAccel(a0)
	move.b #0x1, Log_Hazardous(a0)

	; Disable button
	ENTITY_GETBYNAME Button, l6a1_Button1, a0
	move.b #0x0, Button_Active(a0)

	rts
	
L6a1_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

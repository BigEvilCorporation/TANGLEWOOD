;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l3a3.asm - Level 3 - Heritage Act 3
;==============================================================	

; ************************************
; Static data
; ************************************
l3a3_HeritageAct3:

	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3a3				; Blocks
	dc.l map_blockmap_l3a3				; Block map
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3a3		; Collision blocks
	dc.l collisionmap_blockmap_l3a3		; Collision block map
	dc.l l3a3_DefaultPalettes			; Palettes
	dc.l l3a3_Init						; Init routine
	dc.l l3a3_Update					; Update routine
	dc.l l3a3_Serialise					; Serialise routine
	dc.l l3a3_LoadGameObjects			; Load game objects routine
	dc.l l3a3_End						; End routine
	IF INCLUDE_LEVEL_4
	dc.l l4a1_TetheredAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity						; Default gravity
	dc.w map_l3a3_width					; Map width (tiles)
	dc.w map_l3a3_height				; Map height (tiles)
	dc.w map_blockmap_l3a3_width		; Map width (blocks)
	dc.w map_blockmap_l3a3_height		; Map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	
	even
	
l3a3_DefaultPalettes:

	dc.l palette_l3					; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even
	
; ************************************
; Runtime data
; ************************************
	rsset 0
l3a3Data_WaitingInput			rs.b 1
l3a3Data_ComboButton1Count		rs.b 1
l3a3Data_ComboButton2Count		rs.b 1
;---------------------------------
l3a3Data_Struct_Pad      		rs.b 1
l3a3Data_Struct_Size     		rs.b 0
	
l3a3_Init:
	
	; Load BG map
	lea    map_blocks_l3bg, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations

	;==============================================================

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Cogs, l3a3_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l3a3_Generator1, a0
	ENTITY_GETBYNAME Button, l3a3_Button4, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Connect buttons to caged
	ENTITY_GETBYNAME Button, l3a3_Button4, a0
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #l3a3Cage1Raise, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	; Connect twin buttons to bridge handler
	ENTITY_GETBYNAME Button, l3a3_Button1, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton1Down, Button_OnDown(a0)
	move.l #l3a3ComboButton1Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button2, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton2Down, Button_OnDown(a0)
	move.l #l3a3ComboButton2Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button5, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton5Down, Button_OnDown(a0)
	move.l #l3a3ComboButton5Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a3_Button6, a0
	move.l a1, Button_UserData(a0)
	move.l #l3a3ComboButton6Down, Button_OnDown(a0)
	move.l #l3a3ComboButton6Up, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l3a3_Button3, a0
	ENTITY_GETBYNAME Lift, l3a3_Lift1, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivate, Button_OnDown(a0)
	move.l #LiftStop, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Reset combo button
	move.l #LevelData_L3A3, a2
	move.b #0x0, l3a3Data_ComboButton1Count(a2)
	move.b #0x0, l3a3Data_ComboButton2Count(a2)

	; TEMP
	; Don't bother with caged Djakk emerge sequence
	ENTITY_GETBYNAME Monster, l3a3_DjakkCaged1, a0
	move.b #0x0, Monster_DoIntro(a0)
	move.b #0x0, Entity_Active(a0)
	
	rts
	
l3a3_Update:

	rts
	
l3a3_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l3a3_End:
	rts

;==============================================================

l3a3ComboButton1Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton1Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton1Count(a2)
	jsr    l3a3ComboButton1Deactivated

	rts

l3a3ComboButton2Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton1Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton1Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton1Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton2Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton1Count(a2)
	jsr    l3a3ComboButton1Deactivated

	rts

l3a3ComboButton1Activated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge1, a0
	jsr   BridgeBeginRoll
	POPL  a0

	rts

l3a3ComboButton1Deactivated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge1, a0
	jsr   BridgeBeginUnroll
	POPL  a0

	rts

;==============================================================

l3a3ComboButton5Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton5Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton2Count(a2)
	jsr    l3a3ComboButton2Deactivated

	rts

l3a3ComboButton6Down:

	move.l #LevelData_L3A3, a2
	add.b  #0x1, l3a3Data_ComboButton2Count(a2)

	cmp.b  #0x2, l3a3Data_ComboButton2Count(a2)
	bne    @NotEnoughButtons
	jsr    l3a3ComboButton2Activated
	@NotEnoughButtons:

	rts

l3a3ComboButton6Up:

	move.l #LevelData_L3A3, a2
	sub.b  #0x1, l3a3Data_ComboButton2Count(a2)
	jsr    l3a3ComboButton2Deactivated

	rts

l3a3ComboButton2Activated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge2, a0
	jsr   BridgeBeginRoll
	POPL  a0

	rts

l3a3ComboButton2Deactivated:

	PUSHL a0
	ENTITY_GETBYNAME Bridge, l3a3_DrawBridge2, a0
	jsr   BridgeBeginUnroll
	POPL  a0

	rts

;==============================================================

l3a3Cage1Raise:

	PUSHL  a0
	ENTITY_GETBYNAME Monster, l3a3_DjakkCaged1, a0
	move.b #0x1, Entity_Active(a0)
	jsr    MonsterStartEmergeFromCave
	POPL   a0

	rts
	
l3a3TriggerEchoIntro:
	rts

l3a3_Trigger_End:

	; Nymn sleep
	PUSHL  a0
	move.l #Player1, a0
	jsr    PlayerBeginSleep
	POPL   a0
	
	; Begin end of level gamestate
	lea    GameStateEndLevel, a0
	jsr    GameStateEnter
	
	rts

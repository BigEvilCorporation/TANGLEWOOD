;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l3a2.asm - Level 3 - Heritage Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l3a2_HeritageAct2:

	dc.l tiles_l3						; Tileset
	dc.l map_blocks_l3a2				; Blocks
	dc.l map_blockmap_l3a2				; Block map
	dc.l collisiontiles_l3				; Collision tileset
	dc.l collisionmap_blocks_l3a2		; Collision blocks
	dc.l collisionmap_blockmap_l3a2		; Collision block map
	dc.l l3a2_DefaultPalettes			; Palettes
	dc.l l3a2_Init						; Init routine
	dc.l l3a2_Update					; Update routine
	dc.l l3a2_Serialise					; Serialise routine
	dc.l l3a2_LoadGameObjects			; Load game objects routine
	dc.l l3a2_End						; End routine
	dc.l l3a3_HeritageAct3				; Next level
	dc.l DefaultGravity					; Default gravity
	dc.w map_l3a2_width					; Map width (tiles)
	dc.w map_l3a2_height				; Map height (tiles)
	dc.w map_blockmap_l3a2_width		; Map width (blocks)
	dc.w map_blockmap_l3a2_height		; Map height (blocks)
	dc.w tiles_l3_size_t				; Num tiles
	
	even
	
l3a2_DefaultPalettes:

	dc.l palette_l3_day				; World
	dc.l 0x0						; Djakk (black by default, fades up when approached)
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

; Rolling log hazard
L3A2_LogRollAccel			equ 0x0800
L3A2_LogRollCamLerpSpeed	equ 0x40
L3A2_LogRollCamLerpTime		equ 0x1E

; ************************************
; Runtime data
; ************************************
	rsset 0
l3a2Data_LogRollCamLerpTimer	rs.w 1
l3a2Data_WaitingInput			rs.b 1
;---------------------------------
l3a2Data_Struct_Pad      		rs.b 1
l3a2Data_Struct_Size     		rs.b 0
	
l3a2_Init:
	
	; Load BG map
	lea    map_blocks_l3bg, a0
	lea    map_blockmap_l3bg, a1
	move.l #(map_blockmap_l3bg_width<<16)|map_blockmap_l3bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	;==============================================================

	; Set TOD palettes
	move.l  #palette_l3_day,	TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_l3_night,	TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_l3_dusk,	TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	;==============================================================

	; Load scene animations
	jsr    l3_LoadSceneAnimations
	
	;==============================================================

	; Connect buttons to bridges
	ENTITY_GETBYNAME Button, l3a2_Button1, a0
	ENTITY_GETBYNAME Bridge, l3a2_RollBridge1, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a2_Button2, a0
	move.l #l3a2_LogRollBegin, Button_OnDown(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a2_Button3, a0
	ENTITY_GETBYNAME Bridge, l3a2_RollBridge3, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginRoll, Button_OnDown(a0)
	move.l #BridgeBeginUnroll, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	ENTITY_GETBYNAME Button, l3a2_Button5, a0
	ENTITY_GETBYNAME Bridge, l3a2_RollBridge4, a1
	move.l a1, Button_UserData(a0)
	move.l #BridgeBeginUnroll, Button_OnDown(a0)
	move.l #BridgeBeginRoll, Button_OnUp(a0)

	; Connect buttons to lifts
	ENTITY_GETBYNAME Button, l3a2_Button4, a0
	ENTITY_GETBYNAME Lift, l3a2_Lift5, a1
	move.l a1, Button_UserData(a0)
	move.l #LiftActivate, Button_OnDown(a0)
	move.l #LiftStop, Button_OnUp(a0)
	move.b #0x1, Button_Active(a0)

	; Connect lifts to counterweights
	ENTITY_GETBYNAME Lift, l3a2_Lift1, a0
	ENTITY_GETBYNAME Lift, l3a2_Lift2, a2
	jsr    LiftAttachCounterweightLift

	ENTITY_GETBYNAME Lift, l3a2_Lift3, a0
	ENTITY_GETBYNAME Lift, l3a2_Lift4, a2
	jsr    LiftAttachCounterweightLift

	; Connect cogs to generators
	ENTITY_GETBYNAME Generator, l3a2_Generator1, a0
	ENTITY_GETBYNAME Cogs, l3a2_Cogs1, a1
	move.l a1, Generator_Cogs(a0)

	; Connect generators to buttons, and disable buttons by default
	ENTITY_GETBYNAME Generator, l3a2_Generator1, a0
	ENTITY_GETBYNAME Button, l3a2_Button5, a1
	move.l a1, Generator_UserData(a0)
	move.l #ButtonActivate, Generator_OnActivate(a0)
	move.b #0x0, Button_Active(a1)

	; Lock Fuzzls in cages
	ENTITY_GETBYNAME FuzzlCage, l3a2_FuzzlCage1, a0
	ENTITY_GETBYNAME Fuzzl, l3a2_FuzzlCaged1, a2
	jsr    FuzzlCageSetFuzzl

	ENTITY_GETBYNAME FuzzlCage, l3a2_FuzzlCage2, a0
	ENTITY_GETBYNAME Fuzzl, l3a2_FuzzlCaged2, a2
	jsr    FuzzlCageSetFuzzl

	; HACK: Update boulders out of view to keep counterweights down
	ENTITY_GETBYNAME Boulder, l3a2_Boulder1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	ENTITY_GETBYNAME Boulder, l3a2_Boulder2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; HACK: Update logs out of view to keep buttons down
	ENTITY_GETBYNAME Log, l3a2_Log2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	ENTITY_GETBYNAME Button, l3a2_Button2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Init camera lerp timer
	move.l #LevelData_L3A2, a2
	move.w #0x0, l3a2Data_LogRollCamLerpTimer(a2)
	
	rts
	
l3a2_Update:

	; Update camera lerp timer
	move.l #LevelData_L3A2, a2
	move.w l3a2Data_LogRollCamLerpTimer(a2), d0
	cmp.w  #0x0, d0
	beq    @NoLerpTimer

	sub.w  #0x1, d0
	move.w d0, l3a2Data_LogRollCamLerpTimer(a2)
	cmp.w  #0x0, d0
	bne    @NoLerpTimer

	; Timer elapsed, lerp camera back to player
	PUSHM  a0-a2
	ENTITY_GETBYNAME Log, l3a2_Log1, a0
	move.l #Player1, a1
	move.l #L3A2_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPM   a0-a2

	@NoLerpTimer:

	rts
	
l3a2_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l3a2_End:
	rts

l3a2_LogRollBegin:

	PUSHL  a0

	; Roll bridge
	ENTITY_GETBYNAME Bridge, l3a2_RollBridge2, a0
	jsr    BridgeBeginRoll

	; Set log rolling, update out of view, not pushable, hazardous
	ENTITY_GETBYNAME Log, l3a2_Log1, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.w #-L3A2_LogRollAccel, Log_FloorRollAccel(a0)
	move.b #0x1, Log_Hazardous(a0)

	; Update Fuzzl out of view so it falls off the bridge properly
	ENTITY_GETBYNAME Fuzzl, l3a2_FuzzlCaged2, a0
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; Start camera lerp
	PUSHL  a1
	move.l #Player1, a0
	ENTITY_GETBYNAME Log, l3a2_Log1, a1
	move.l #L3A2_LogRollCamLerpSpeed, d0
	jsr    CAM_LerpBetweenEntities
	POPL   a1

	; Begin lerp timer
	move.l #LevelData_L3A2, a2
	move.w #L3A2_LogRollCamLerpTime, l3a2Data_LogRollCamLerpTimer(a2)

	; Disable button
	ENTITY_GETBYNAME Button, l3a2_Button2, a0
	move.b #0x0, Button_Active(a0)

	POPL   a0

	rts
	
l3a2_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

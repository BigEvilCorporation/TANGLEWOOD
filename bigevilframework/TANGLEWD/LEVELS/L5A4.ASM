;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   l5a4.asm - Level 5 - Bygone Mines Act 2
;==============================================================	

; ************************************
; Static data
; ************************************
l5a4_BygoneAct4:

	dc.l LevelSelect_Str_05				; Name
	dc.l LevelData_l5a4					; Userdata
	dc.l tiles_L4						; Tileset (using L4 tileset)
	dc.l map_blocks_l4					; Blocks (using L4 tileset)
	dc.l map_blockmap_l5a4				; Block map
	dc.l collisiontiles_L4				; Collision tileset (using L4 tileset)
	dc.l collisionmap_blocks_l4			; Collision blocks (using L4 tileset)
	dc.l collisionmap_blockmap_l5a4		; Collision block map
	dc.l 0x00000000						; 'Special' terrain descriptor table
	dc.l l5a4_DefaultPalettes			; Palettes
	dc.l l5a4_Init						; Init routine
	dc.l l5a4_Update					; Update routine
	dc.l l5a4_Serialise					; Serialise routine
	dc.l l5a4_LoadGameObjects			; Load game objects routine
	dc.l l5a4_End						; End routine
	IF INCLUDE_LEVEL_6
	dc.l L6a1_DeadwoodAct1				; Next level
	ELSE
	dc.l 0x00000000
	ENDIF
	dc.l DefaultGravity					; Default gravity
	dc.w map_l5a4_width					; Map width (tiles)
	dc.w map_l5a4_height				; Map height (tiles)
	dc.w map_blockmap_l5a4_width		; Map width (blocks)
	dc.w map_blockmap_l5a4_height		; Map height (blocks)
	dc.w tiles_L5_size_t				; Num tiles
	dc.w 0x0000							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	
	even
	
l5a4_DefaultPalettes:

	dc.l palette_L4					; World (using L4 tileset)
	dc.l palette_demon				; Demon
	dc.l palette_fuzzl				; Fuzzl
	dc.l Pal_Nymn_Red				; Player
	
	even

; ************************************
; Constants
; ************************************
l5a4_DemonToPlayerX				equ 0x60
l5a4_DemonToPlayerY				equ 0x28
l5a4_EchoToPlayerX				equ 0x00A0	; Safe distance for Echo to run and hide
l5a4_DemonWaitTimeEchoScared	equ 0x0040	; Time between beginning reveal and Echo getting scared
l5a4_DemonWaitTimeEmerge		equ 0x0080	; Time between Echo running off and demon emerging
l5a4_DemonWaitTimeSmirk			equ 0x00A0	; Time between emerging and smirking
l5a4_DemonWaitTimeFade			equ 0x0080	; Time between smirk and greyscale fade
l5a4_DemonWaitTimeAttack		equ 0x00A0	; Time between fade and attack
l5a4_ThunderDist				equ 0x1

; ************************************
; Runtime data
; ************************************
	rsset LevelData_Struct_Size
l5a4Data_CutsceneState			rs.l 1
l5a4data_CutsceneTimer			rs.w 1
l5a4Data_WaitingInput			rs.b 1
;---------------------------------
l5a4Data_Struct_Pad      		rs.b 1
l5a4Data_Struct_Size     		rs.b 0
	
l5a4_Init:
	
	; Load BG map (using L4 tileset)
	lea    map_blocks_L4, a0
	lea    map_blockmap_L4bg, a1
	move.l #(map_blockmap_L4bg_width<<16)|map_blockmap_L4bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Set TOD palettes (using L4 tileset)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Day)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Dusk)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Night)
	move.l  #palette_L4, TimeOfDayPalettes+(size_long*TimeOfDay_Dawn)

	; Set TOD
	move.b  #TimeOfDay_Dusk, TimeOfDay

	;==============================================================

	; Load scene animations (using L4 tileset)
	jsr    L4_LoadSceneAnimations

	;==============================================================

	; Init cutscene
	lea    LevelData_L5A4, a2
	move.l #0x0, l5a4Data_CutsceneState(a2)

	;==============================================================

	; Start Echo AI follow state
	move.l (Player2), a0
	jsr    EchoAIStart_Follow
	
	rts
	
l5a4_Update:

	lea    LevelData_L5A4, a2
	move.l l5a4Data_CutsceneState(a2), a3
	cmp.l  #0x0, a3
	beq    @NoCutscene
	jsr    (a3)
	@NoCutscene:

	rts
	
l5a4_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	rts

l5a4_End:
	rts
	
l5a4_Trigger_End:

	; Begin end of act gamestate
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	
	rts

l5a4_Cutscene_Begin:

	; Set cutscene state
	lea    LevelData_L5A4, a2
	move.l #l5a4_CutsceneUpdate_MoveDemon, l5a4Data_CutsceneState(a2)

	; Set night

	; Start moving demon into position
	move.l Player1, a3
	ENTITY_GETBYNAME Demon, l5a4_Demon, a4
	ENTITY_GETCENTREX d0,a3
	ENTITY_GETCENTREY d1,a3
	TOPIXELS d0
	TOPIXELS d1
	addi.w #l5a4_DemonToPlayerX, d0
	move.w d0, Demon_TargetX(a4)
	move.w d1, Demon_TargetY(a4)

	; Disable player 1 control
	move.l Player1, a0
	move.b #0x0, Player_ControlEnabled(a0)
	jsr    CharacterCancelXMovement

	rts

l5a4_CutsceneUpdate_MoveDemon:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	tst.b  Demon_AtTarget(a0)
	beq    @NotAtTarget

	; Start emerge
	move.b #0x1, SpriteObj_FlippedX(a0)
	jsr    DemonStartEmerge

	; Start Echo run timer
	lea    LevelData_L5A4, a2
	move.w #l5a4_DemonWaitTimeEchoScared, l5a4data_CutsceneTimer(a2)

	; Next state
	move.l #l5a4_CutsceneUpdate_WaitEchoScared, l5a4Data_CutsceneState(a2)

	@NotAtTarget:

	; Update target pos (player still decelerating)
	move.l Player1, a3
	ENTITY_GETCENTREX d0,a3
	ENTITY_GETCENTREY d1,a3
	TOPIXELS d0
	TOPIXELS d1
	addi.w #l5a4_DemonToPlayerX, d0
	subi.w #l5a4_DemonToPlayerY, d1
	move.w d0, Demon_TargetX(a0)
	move.w d1, Demon_TargetY(a0)

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitEchoScared:

	PUSHL  a0

	; Decrement timer
	lea    LevelData_L5A4, a2
	move.w l5a4data_CutsceneTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, l5a4data_CutsceneTimer(a2)
	tst.w  d0
	bne    @TimerRunning

	; Echo end AI mode
	move.l Player2, a0
	jsr    EchoAIStop

	; Echo start running
	jsr    CharacterMoveLeft

	; Lerp camera
	move.l Player1, CameraTargetLerpSource
	move.l Player2, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #Echo_HowlCameraLerpSpeed, CameraTargetLerpSpeed

	; Next state
	move.l #l5a4_CutsceneUpdate_EchoRun, l5a4Data_CutsceneState(a2)

	@TimerRunning:

	POPL   a0

	rts

l5a4_CutsceneUpdate_EchoRun:

	PUSHL  a0

	; Wait for Echo to reach target
	move.l Player1, a2
	move.l Player2, a0
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosX(a0), d2
	sub.w  #l5a4_EchoToPlayerX, d0
	cmp.w  d0, d2
	bgt    @Running

	; Wait for camera to finish lerping
	tst.w  CameraTargetLerpSpeed
	bne    @Running

	; Hide
	jsr    CharacterCancelXMovement

	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_Hide*Animation_Struct_Size)(a0), a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)

	; Lerp camera back
	move.l Player2, CameraTargetLerpSource
	move.l Player1, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #Echo_HowlCameraLerpSpeed, CameraTargetLerpSpeed

	; Start emerge timer
	lea    LevelData_L5A4, a2
	move.w #l5a4_DemonWaitTimeEmerge, l5a4data_CutsceneTimer(a2)

	; Next state
	move.l #l5a4_CutsceneUpdate_WaitEmerge, l5a4Data_CutsceneState(a2)

	@Running:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitEmerge:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	move.b #0x1, SpriteObj_FlippedX(a0)

	; Decrement timer
	lea    LevelData_L5A4, a2
	move.w l5a4data_CutsceneTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, l5a4data_CutsceneTimer(a2)
	tst.w  d0
	bne    @TimerRunning

	; Reveal fully
	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	jsr    DemonEmerge

	; Nymn look up
	move.l Player1, a0
	jsr    NymnLookUp

	; Start smirk timer
	lea    LevelData_L5A4, a2
	move.w #l5a4_DemonWaitTimeSmirk, l5a4data_CutsceneTimer(a2)

	; Next state
	move.l #l5a4_CutsceneUpdate_WaitSmirk, l5a4Data_CutsceneState(a2)

	@TimerRunning:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitSmirk:

	PUSHL  a0

	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	move.b #0x1, SpriteObj_FlippedX(a0)

	; Decrement timer
	lea    LevelData_L5A4, a2
	move.w l5a4data_CutsceneTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, l5a4data_CutsceneTimer(a2)
	tst.w  d0
	bne    @TimerRunning

	; Smirk
	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	jsr    DemonSmirk

	; Start fade timer
	lea    LevelData_L5A4, a2
	move.w #l5a4_DemonWaitTimeFade, l5a4data_CutsceneTimer(a2)

	; Next state
	move.l #l5a4_CutsceneUpdate_WaitFade, l5a4Data_CutsceneState(a2)

	@TimerRunning:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitFade:

	PUSHL  a0

	; Decrement timer
	lea    LevelData_L5A4, a2
	move.w l5a4data_CutsceneTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, l5a4data_CutsceneTimer(a2)
	tst.w  d0
	bne    @TimerRunning

	; Begin greyscale fade
	PUSHM  a0-a2
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Monster, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Fuzzl, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	POPM   a0-a2

	; Start attack timer
	lea    LevelData_L5A4, a2
	move.w #l5a4_DemonWaitTimeAttack, l5a4data_CutsceneTimer(a2)

	; Next state
	move.l #l5a4_CutsceneUpdate_WaitAttack, l5a4Data_CutsceneState(a2)

	@TimerRunning:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitAttack:

	PUSHL  a0

	; Decrement timer
	lea    LevelData_L5A4, a2
	move.w l5a4data_CutsceneTimer(a2), d0
	subq.w #0x1, d0
	move.w d0, l5a4data_CutsceneTimer(a2)
	tst.w  d0
	bne    @TimerRunning

	; Attack
	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	jsr    DemonAttack

	; Next state
	lea    LevelData_L5A4, a2
	move.l #l5a4_CutsceneUpdate_WaitFlash, l5a4Data_CutsceneState(a2)

	@TimerRunning:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitFlash:

	PUSHL  a0

	; Wait for bite anim to finish
	ENTITY_GETBYNAME Demon, l5a4_Demon, a0
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting

	; Be gone, demon
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList

	; Flash
	lea    Thunder, a2
	move.w #0xFFFF, d0
	move.w #l5a4_ThunderDist, d1
	jsr    ThunderSetParams
	jsr    ThunderFlash

	; Goodbye, Nymn :(
	move.l Player1, a0
	jsr    PlayerBeginPermadeath

	; Player now controls Echo
	move.l Player2, Player1
	move.l #0x0, Player2

	; Next state
	lea    LevelData_L5A4, a2
	move.l #l5a4_CutsceneUpdate_WaitEchoEmerge, l5a4Data_CutsceneState(a2)

	@StillBiting:

	POPL   a0

	rts

l5a4_CutsceneUpdate_WaitEchoEmerge:
	rts
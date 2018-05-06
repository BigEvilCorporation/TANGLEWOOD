;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   legal.asm - Legal disclaimer screen state
;==============================================================

; Level data (contains game objects, so need to provide one)
Lvl0_LegalScreen:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateLegalScreenData		; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_main_menu			; Block map
	dc.l 0x0							; Block map compressed column offsets
	dc.l 0x0							; Collision tileset
	dc.l 0x0							; Collision blocks
	dc.l 0x0							; Collision block map
	dc.l 0x0							; Collision block map Y offsets table
	dc.l 0x0							; 'Special' terrain descriptor table
	dc.l LegalScreen_Palettes			; Palettes
	dc.l 0x0							; Init routine
	dc.l 0x0							; Update routine
	dc.l 0x0							; Serialise routine
	dc.l 0x0							; Load game objects routine
	dc.l 0x0							; End routine
	dc.l 0x0							; Next level
	dc.l 0x0							; Default gravity
	dc.w map_legal_screen_width			; Map width (tiles)
	dc.w map_legal_screen_height		; Map height (tiles)
	dc.w map_blockmap_legal_screen_width  ; Map width (blocks)
	dc.w map_blockmap_legal_screen_height ; Map height (blocks)
	dc.w 0x0							; Collision map width (tiles)
	dc.w 0x0							; Collision map height (tiles)
	dc.w 0x0							; Collision map left bounds (tiles)
	dc.w 0x0							; Collision map top bounds (tiles)
	dc.w 0x0							; Collision map width (blocks)
	dc.w 0x0							; Collision map height (blocks)
	dc.w tiles_Legal_screen_size_t		; Num tiles
	dc.w 0x0							; Num 'special' terrain descriptors
	dc.b 0x0							; Background colour idx
	dc.b -1								; Index
	
	even

; Constants
LegalScreenDelayTime	equ 0x00B0
LegalScreenFadeTime		equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
LegalScreenNumColours	equ 0xF ; For palette lerping

LegalScreenTextFont				equ tiles_twfontf
LegalScreenTextFontPaletteId	equ 2
LegalScreenTextCentrePosX		equ screen_width/8/2

; Text positions
LegalScreenTextPosY_00			equ 20
LegalScreenTextPosY_01			equ 21
LegalScreenTextPosY_02			equ 24
LegalScreenTextPosY_03			equ 25
LegalScreenTextPosY_04			equ 26
LegalScreenTextPosY_05			equ 7

; State
GameStateLegalScreen:
	dc.l LegalScreen_Enter
	dc.l LegalScreen_Exit
	dc.l LegalScreen_Update
	dc.l LegalScreen_Render
	dc.l 0x0

; Palettes
LegalScreen_Palettes:
	dc.l palette_legal_screen	; BG
	dc.l palette_djakk			; Djakk
	dc.l palette_fuzzl			; Fuzzl
	dc.l Pal_Nymn_Red			; Player

; Struct
	rsset	LevelData_Struct_Size
LegalScreenState_CutsceneData	rs.b Cutscene_Struct_Size
;---------------------------------
;---------------------------------
	RS_ALIGN
LegalScreenState_Struct_Size	rs.b 0
;---------------------------------
	
LegalScreen_Enter:

	; Clear all palettes
	jsr    PAL_ClearAll

	; Clear planes
	jsr    VDP_ClearMapPlaneA
	jsr    VDP_ClearMapPlaneB

	; Clear VRAM pools
	jsr    VRAM_ClearPools

	; Set BG colour
	move.w #(PaletteId_LegalScreen<<4), d0
	VDP_SETREG 7, d0

	; Load tiles
	moveq #0x0, d1
	lea    tiles_Legal_screen, a0
	move.w #tiles_Legal_screen_size_t, d0
	jsr    LevelLoadCompressedTileset

	; Load BG map
	lea    map_blocks_Legal_screen, a0
	lea    map_blockmap_Legal_screen, a1
	move.l #(map_blockmap_Legal_screen_width<<16)|map_blockmap_Legal_screen_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_LegalScreen, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Load font
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfontb)
	lea    LegalScreenTextFont, a0
	jsr    TXT_LoadFont

	; Draw text
	lea    LegalScreen_Str_00, a0
	move.w #LegalScreenTextPosY_00, d1
	jsr    LegalScreenDrawText

	lea    LegalScreen_Str_01, a0
	move.w #LegalScreenTextPosY_01, d1
	jsr    LegalScreenDrawText

	lea    LegalScreen_Str_02, a0
	move.w #LegalScreenTextPosY_02, d1
	jsr    LegalScreenDrawText

	lea    LegalScreen_Str_03, a0
	move.w #LegalScreenTextPosY_03, d1
	jsr    LegalScreenDrawText

	lea    LegalScreen_Str_04, a0
	move.w #LegalScreenTextPosY_04, d1
	jsr    LegalScreenDrawText

	lea    LegalScreen_Str_05, a0
	move.w #LegalScreenTextPosY_05, d1
	jsr    LegalScreenDrawText

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl0_LegalScreen, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    legal_screen_LoadGameObjects

	; Disable object physics
	LIST_GET_HEAD PhysicsObjs,a0			; Get list head
	@ObjLp:									; For all objs in list
	cmpa.w #0x0, a0
	beq    @ListEnd
	move.b #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b #0x0, PhysicsObj_HasCollision(a0)
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	LIST_GET_NEXT PhysicsObjs,a0,a0			; Get next ptr
	bra    @ObjLp							; Loop
	@ListEnd:

	;==============================================================

	; Init cutscene
	PUSHM  a0-a1
	lea    GameStateLegalScreenData, a2
	lea    LegalScreenState_CutsceneData(a2), a0
	move.l #LegalScreen_Cutscene, a1
	jsr    CutsceneInit
	POPM   a0-a1

	;==============================================================

	; TODO: If AtGames, show red Fuzzl

	;==============================================================
	
	; Begin fade up
	move.l (CurrentLevel), a1
	jsr    LevelLoadPalettes
	
	; Reset timer
	MOVE_NTSC_L LegalScreenDelayTime, TimerLogoFade, d0

	;==============================================================

	; Start cutscene
	PUSHL  a0
	lea    GameStateLegalScreenData, a2
	lea    LegalScreenState_CutsceneData(a2), a0
	jsr    CutscenePlay
	POPL   a0
	
	rts
	
LegalScreen_Exit:
	
	rts
	
LegalScreen_Update:

	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading

	; If already done fade to black
	tst.l  TimerLogoFade
	beq    @FadedOut

	ENTITY_GETBYNAME Fuzzl, legal_screen_LegalScreenFuzzl, a0
	tst.b  Entity_Active(a0)
	beq    @Elapsed

	; If holding Start button, don't timeout
	jsr    PAD_ReadPadA
	btst   #pad_button_start, d0
	bne    @StartHeld

	ENTITY_GETBYNAME Fuzzl, legal_screen_LegalScreenFuzzl, a0
	move.w #0x0000, PhysicsObj_AccelX(a0)
	move.l #0x0000, PhysicsObj_VelX(a0)
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	subq.l #0x1, d0
	move.l d0, TimerLogoFade
	cmp.l  #0x1, d0
	bne    @NotElapsed
	@Elapsed:
	move.l #0x0000, TimerLogoFade
	
	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #0, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #1, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #2, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #3, d0
	move.l #LegalScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #LegalScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Enter controls screen state
	lea    GameStateMainMenu, a0
	jsr    GameStateEnter

	bra    @End

	@StartHeld:

	ENTITY_GETBYNAME Fuzzl, legal_screen_LegalScreenFuzzl, a0

	move.w #0x0000, PhysicsObj_AccelX(a0)
	move.b #0x1, PhysicsObj_OnFloor(a0)
	move.b #0x1, PhysicsObj_CloseToFloor(a0)

	btst   #input_move_left, d0
	beq    @NoLeft
	move.w #-Player1AccelWalk, PhysicsObj_AccelX(a0)
	@NoLeft:

	btst   #input_move_right, d0
	beq    @NoRight
	move.w #Player1AccelWalk, PhysicsObj_AccelX(a0)
	@NoRight:

	cmp.w  #screen_width+vdp_sprite_border_x-Fuzzl_Width, Entity_WorldPosX(a0)
	ble    @NoClamp
	move.w #screen_width+vdp_sprite_border_x-Fuzzl_Width, Entity_WorldPosX(a0)
	move.w #0x0000, PhysicsObj_AccelX(a0)
	move.l #0x0000, PhysicsObj_VelX(a0)
	@NoClamp:

	move.l (CurrentLevel), a1
	jsr    PhysicsObjPreStep

	ENTITY_GETBYNAME Monster, legal_screen_LegalScreenDjakk, a1
	jsr    PHYS_TestEntityBoxIntersectBox
	tst.b  d0
	beq    @NoEat

	move.l a1, a0
	lea    Monster_Animations+(MonsterAnimIdx_Bite*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation

	PLAYSFX #SFX_Djakk_Bite

	ENTITY_GETBYNAME Fuzzl, legal_screen_LegalScreenFuzzl, a0
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	move.b #0x0, Entity_Active(a0)

	move.b #0x1, LegalFuzzlEaten

	@NoEat:

	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1

	; Update cutscenes
	jsr CutsceneUpdateAll
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
LegalScreen_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll

	rts
	
LegalScreen_Cutscene:

	CUTSCENE_START

	; Start Djakk walk anim
	CUTSCENE_GET_ENTITY Monster,legal_screen_LegalScreenDjakk,a2
	CUTSCENE_CHARACTER_ANIM a2,#Character_Animations,#CharacterAnimIdx_Walk

	; Load Fuzzl eye watch anim
	CUTSCENE_ROUTINE LegalScreen_FuzzlLoadAnim,#0x0,#0x0,#0x0

	; Look left
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Fuzzl,legal_screen_LegalScreenFuzzl,a2
	CUTSCENE_CHARACTER_ANIM_SET_SUBFRAME a2,#Fuzzl_Eye_Frame_MidLeft

	; Look right
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Fuzzl,legal_screen_LegalScreenFuzzl,a2
	CUTSCENE_CHARACTER_ANIM_SET_SUBFRAME a2,#Fuzzl_Eye_Frame_MidRight

	; Look top
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Fuzzl,legal_screen_LegalScreenFuzzl,a2
	CUTSCENE_CHARACTER_ANIM_SET_SUBFRAME a2,#Fuzzl_Eye_Frame_TopMiddle

	; Look top-right
	CUTSCENE_DELAY #0x0040
	CUTSCENE_GET_ENTITY Fuzzl,legal_screen_LegalScreenFuzzl,a2
	CUTSCENE_CHARACTER_ANIM_SET_SUBFRAME a2,#Fuzzl_Eye_Frame_MidRight

	CUTSCENE_END

	rts

LegalScreen_FuzzlLoadAnim:

	PUSHALL

	; Load Fuzzl eye watch anim as idle
	ENTITY_GETBYNAME Fuzzl,legal_screen_LegalScreenFuzzl,a0
	ANIM_LOAD_DEFAULT fuzzl,yellow_eyes,yellow_eyes,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	lea    Fuzzl_Animations+(FuzzlAnimIdx_Idle*Animation_Struct_Size)(a0), a1
	move.w #0x0, Animation_Speed(a1)

	POPALL

	move.b #0x0, d0

	rts

LegalScreenDrawText:

	; Get length
	PUSHM  d1/a0-a2
	jsr    TXT_StrLen
	POPM   d1/a0-a2
	lsr.w  #0x1, d0							; String length / 2
	move.w #LegalScreenTextCentrePosX, d3	; Sub from screen centre
	sub.w  d0, d3
	swap   d1
	move.w d3, d1
	swap   d1

	move.w (vram_addr_systemfontb), d0			; Font tile ID
	BYTES2TILES d0
	move.b #LegalScreenTextFontPaletteId, d2	; Palette
	move.b #0x0, d3								; Plane A
	jsr    TXT_DrawPlane

	rts
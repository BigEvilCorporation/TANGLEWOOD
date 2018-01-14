;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   mainmenu.asm - Main Menu state
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_MainMenu:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateMainMenuData			; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_main_menu			; Block map
	dc.l 0x0							; Block map compressed column offsets
	dc.l 0x0							; Collision tileset
	dc.l 0x0							; Collision blocks
	dc.l 0x0							; Collision block map
	dc.l 0x0							; 'Special' terrain descriptor table
	dc.l 0x0							; Palettes
	dc.l 0x0							; Init routine
	dc.l 0x0							; Update routine
	dc.l 0x0							; Serialise routine
	dc.l 0x0							; Load game objects routine
	dc.l 0x0							; End routine
	dc.l 0x0							; Next level
	dc.l 0x0							; Default gravity
	dc.w map_main_menu_width			; Map width (tiles)
	dc.w map_main_menu_height			; Map height (tiles)
	dc.w map_blockmap_main_menu_width	; Map width (blocks)
	dc.w map_blockmap_main_menu_height	; Map height (blocks)
	dc.w 0x0							; Collision map width (tiles)
	dc.w 0x0							; Collision map height (tiles)
	dc.w 0x0							; Collision map left bounds (tiles)
	dc.w 0x0							; Collision map top bounds (tiles)
	dc.w 0x0							; Collision map width (blocks)
	dc.w 0x0							; Collision map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	dc.w 0x0							; Num 'special' terrain descriptors
	dc.b 0xD							; Background colour idx
	dc.b -1								; Index
	
	even

; Constants
MainMenuFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)
MainMenuSoundFadeSpeed	equ -10
MenuBgFadeDelay		equ 0x0080
MainMenuLogoBorder	equ 0x0000
MainMenuLogoPosX	equ (vdp_sprite_border_x+(screen_width/2)-(actor_twd_logo_sheet_twd_logo_width/2))*subpixels_per_pixel
MainMenuLogoPosY	equ (vdp_sprite_border_y+MainMenuLogoBorder)*subpixels_per_pixel

MainMenuUIX				equ (screen_width/2)-(8*4)
MainMenuUIY				equ (8*20)
MainMenuUILineSpacing	equ 0x10

MainMenu_Opt_NewGame		equ 0x0
MainMenu_Opt_Continue		equ 0x1
MainMenu_Opt_LevelSelect	equ 0x2
MainMenu_Opt_SoundTest		equ 0x3

MainMenu_Str_NewGame		dc.b "New Game",0
MainMenu_Str_Continue		dc.b "Continue",0
MainMenu_Str_LevelSelect	dc.b "Level Select",0
MainMenu_Str_SoundTest		dc.b "Sound Test",0
	even

; Struct
	rsset	LevelData_Struct_Size
;---------------------------------
MainMenuState_LogoSprite	rs.b SpriteObj_Struct_Size
MainMenuState_UIWindow		rs.l 1
MainMenuState_NextState		rs.l 1
MainMenuState_FadeTimer		rs.w 1
;---------------------------------
	RS_ALIGN
MainMenuState_Struct_Size	rs.b 0
;---------------------------------

GameStateMainMenu:
	dc.l MainMenu_Enter
	dc.l MainMenu_Exit
	dc.l MainMenu_Update
	dc.l MainMenu_Render
	dc.l 0x0
	
MainMenu_Enter:

	; Reset
	PUSHL  a0
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset
	POPL   a0

	;==============================================================
	
	; Set BG colour
	move.w #(PaletteId_World0<<4)|0xD, d0
	VDPSETREG 7, d0

	; Load tiles
	moveq #0x0, d1
	lea    tiles_l1, a0
	move.w #tiles_l1_size_t, d0
	jsr    LevelLoadCompressedTileset

	; Load BG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB
	
	; Load FG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_main_menu, a1
	move.l #(map_blockmap_main_menu_width<<16)|map_blockmap_main_menu_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneA

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl0_MainMenu, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    main_menu_LoadGameObjects

	; Load logo
	lea    GameStateMainMenuData+MainMenuState_LogoSprite, a0
	jsr    SpriteObjInit
	move.w #actor_twd_logo_sheet_twd_logo_width, Entity_Width(a0)
	move.w #actor_twd_logo_sheet_twd_logo_height, Entity_Height(a0)
	move.l #SpriteObjUpdate, Entity_UpdateRoutine(a0)
	move.l #SpriteObjDraw, Entity_RenderRoutine(a0)
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	; Load sprite sheet
	SPRITE_LOAD_DEFAULT twd_logo,twd_logo,0,PaletteId_TanglewoodLogo,0x0

	move.l #MainMenuLogoPosX, Entity_WorldPosX(a0)	; Set pos
	move.l #MainMenuLogoPosY, Entity_WorldPosY(a0)

	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations

	;==============================================================

	; Disable Nymn physics (no terrain data)
	ENTITY_GETBYNAME Nymn, main_menu_Nymn_1, a0
	move.b #0x0, PhysicsObj_HasCollision(a0)
	
	; Start sleep anim
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)

	;==============================================================

	; Init UI
	jsr    MainMenu_InitUI

	;==============================================================
	
	; Begin logo fade up
	lea    palette_twd_logo, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade

	; Start bg fade timer
	lea    GameStateMainMenuData, a2
	MOVE_NTSC_W MenuBgFadeDelay, MainMenuState_FadeTimer(a2), d0

	move.w #0x0, d0
	jsr    VDP_SetHScrollPlaneA
	jsr    VDP_SetVScrollPlaneB
	jsr    VDP_SetHScrollPlaneA
	jsr    VDP_SetVScrollPlaneB
	
	rts
	
MainMenu_Exit:
	
	move.l #0x0, CurrentLevel

	rts
	
MainMenu_Update:

	; Get menu data
	lea    GameStateMainMenuData, a2
	
	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading
	
	; If already started fade to black
	tst.l  TimerLogoFade
	beq    @FadedOut

	; If waiting to fade in bg
	move.w MainMenuState_FadeTimer(a2), d0
	tst.w  d0
	bgt    @WaitingForBgFade
	blt    @StartedBgFade

	; Start bg fade
	lea    palette_l1_night, a0
	move.l #PaletteId_World0, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    Pal_Nymn_Red, a0
	move.l #PaletteId_Player, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	; Enable UI
	lea    GameStateMainMenuData, a2
	move.l MainMenuState_UIWindow(a2), a3
	move.b #0x1, Entity_Active(a3)

	@StartedBgFade:
	bra    @End
	
	@FadedOut:

	; Enter next state
	lea    GameStateMainMenuData, a2
	move.l MainMenuState_NextState(a2), a0
	jsr    GameStateEnter

	bra    @End
	
	@WaitingForBgFade:
	subq.w  #0x1, MainMenuState_FadeTimer(a2)
	bra     @NoUpdate

	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll

	@NoUpdate:

	move.w #0x0, d0
	jsr    VDP_SetHScrollPlaneA
	jsr    VDP_SetVScrollPlaneB
	jsr    VDP_SetHScrollPlaneA
	jsr    VDP_SetVScrollPlaneB
	
	rts
	
MainMenu_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts

MainMenu_InitUI:

	; Alloc UI window
	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #UIWindow_Struct_Size
	move.l a1, EntityPoolStart_UIWindow
	move.l a1, a0
	POPL   a1

	; Create UI window
	move.l (EntityPoolStart_UIWindow), a0
	jsr    UIWindowInit

	lea    GameStateMainMenuData, a2
	move.l a0, MainMenuState_UIWindow(a2)

	; Disable by default
	move.b #0x0, Entity_Active(a0)

	; Create cursor and add to window
	WINDOW_CREATE_WIDGET_CURSOR a0
	move.l a3, a5
	CURSOR_LOAD_SPRITE a5,fuzzl,red_idle,0x10,0x10,PaletteId_Fuzzl,0x0

	; Create widgets and add to window and cursor
LINECOUNT = 0

	WINDOW_CREATE_WIDGET_TEXT a0,#MainMenu_Str_NewGame,#tiles_twfontf,(vram_addr_systemfontb),#PaletteId_Fuzzl,#UIWidgetText_DrawPlane_Sprite,#MainMenuUIX,#MainMenuUIY+(MainMenuUILineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,MainMenu_OnSelected,MainMenu_Opt_NewGame
LINECOUNT = LINECOUNT+1

	WINDOW_CREATE_WIDGET_TEXT a0,#MainMenu_Str_Continue,#tiles_twfontf,(vram_addr_systemfontb),#PaletteId_Fuzzl,#UIWidgetText_DrawPlane_Sprite,#MainMenuUIX,#MainMenuUIY+(MainMenuUILineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,MainMenu_OnSelected,MainMenu_Opt_Continue
LINECOUNT = LINECOUNT+1

	IF INCLUDE_SOUNDTEST
	WINDOW_CREATE_WIDGET_TEXT a0,#MainMenu_Str_SoundTest,#tiles_twfontf,(vram_addr_systemfontb),#PaletteId_Fuzzl,#UIWidgetText_DrawPlane_Sprite,#MainMenuUIX,#MainMenuUIY+(MainMenuUILineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,MainMenu_OnSelected,MainMenu_Opt_SoundTest
LINECOUNT = LINECOUNT+1
	ENDIF

	IF INCLUDE_LEVELSELECT
	IF !DEMO_SHOW_LEVEL_SELECT
	; Test for level select cheat
	cmp.l  #CheatCodeLevelSelect, SoundTestHistory
	bne    @NoLevelSelect
	ENDIF
	WINDOW_CREATE_WIDGET_TEXT a0,#MainMenu_Str_LevelSelect,#tiles_twfontf,(vram_addr_systemfontb),#PaletteId_Fuzzl,#UIWidgetText_DrawPlane_Sprite,#MainMenuUIX,#MainMenuUIY+(MainMenuUILineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,MainMenu_OnSelected,MainMenu_Opt_LevelSelect
LINECOUNT = LINECOUNT+1
	@NoLevelSelect:
	ENDIF

	rts

MainMenu_OnSelected:
	; a0 --- Widget
	; a1 --- Userdata

	move.l a1, d0

	cmp.b  #MainMenu_Opt_NewGame, d0
	beq    @NewGame
	cmp.b  #MainMenu_Opt_Continue, d0
	beq    @Continue
	cmp.b  #MainMenu_Opt_LevelSelect, d0
	beq    @LevelSelect
	cmp.b  #MainMenu_Opt_SoundTest, d0
	beq    @SoundTest

	@NewGame:

	; Start new game
	jsr    GameStartNew

	; Set gameplay state
	lea    GameStateMainMenuData, a2

	IF DEMO_SHOW_DISCLAIMER
	move.l #GameStateDemoDisclaimerScreen, MainMenuState_NextState(a2)
	ELSE
	move.l #GameStateGameplay, MainMenuState_NextState(a2)
	ENDIF

	; Stop music
	jsr    SND_StopTrack

	; Play New Game SFX
	PLAYSFX #SFX_UI_Press_Start

	bra    @BeginFade

	@Continue:

	; Set password screen state
	lea    GameStateMainMenuData, a2
	move.l #GameStatePasswordScreen, MainMenuState_NextState(a2)

	bra    @BeginFade

	@LevelSelect:

	; Set level select screen state
	lea    GameStateMainMenuData, a2
	move.l #GameStateLevelSelect, MainMenuState_NextState(a2)

	bra    @BeginFade

	@SoundTest:

	; Set sound test screen state
	lea    GameStateMainMenuData, a2
	move.l #GameStateSoundTest, MainMenuState_NextState(a2)

	bra    @BeginFade

	@BeginFade:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_Player, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #MainMenuFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	; Mark fading out
	move.l #0x0, TimerLogoFade

	rts
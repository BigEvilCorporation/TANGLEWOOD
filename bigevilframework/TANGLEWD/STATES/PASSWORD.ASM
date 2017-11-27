;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   password.asm - Save load screen
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_PasswordScreen:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStatePasswordScreenData	; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_main_menu			; Block map
	dc.l 0x0							; Collision tileset
	dc.l 0x0							; Collision blocks
	dc.l 0x0							; Collision block map
	dc.l 0x0							; Palettes
	dc.l 0x0							; Init routine
	dc.l 0x0							; Update routine
	dc.l 0x0							; Serialise routine
	dc.l 0x0							; Load game objects routine
	dc.l 0x0							; End routine
	dc.l 0x0							; Next level
	dc.w 0x0							; Default gravity
	dc.w map_main_menu_width			; Map width (tiles)
	dc.w map_main_menu_height			; Map height (tiles)
	dc.w map_blockmap_main_menu_width	; Map width (blocks)
	dc.w map_blockmap_main_menu_height	; Map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	
	even

; Constants
PasswordScreenFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)
PasswordScreenSoundFadeSpeed	equ -10
MenuBgFadeDelay		equ 0x0080
PasswordScreenLogoPosX	equ 18*8*subpixels_per_pixel
PasswordScreenLogoPosY	equ 36*8*subpixels_per_pixel

PasswordScreenListX		equ (screen_width/2)-(8*8)
PasswordScreenListY		equ 0x30
PasswordScreenLineSpacing	equ 0x10

PasswordScreenTitleX	equ (screen_width/2)-(8*8)
PasswordScreenTitleY	equ 0x18

PasswordScreenTitle		dc.b "Enter save code:",0
	even

PasswordOptionA			dc.b "A",0
PasswordOptionB			dc.b "B",0
PasswordOptionC			dc.b "C",0
PasswordOptionD			dc.b "D",0
PasswordOptionE			dc.b "E",0
PasswordOptionF			dc.b "F",0
PasswordOptionG			dc.b "G",0
PasswordOptionH			dc.b "H",0
PasswordOptionI			dc.b "I",0
PasswordOptionJ			dc.b "J",0
PasswordOptionK			dc.b "K",0
PasswordOptionL			dc.b "L",0
PasswordOptionM			dc.b "M",0
PasswordOptionN			dc.b "N",0
PasswordOptionO			dc.b "O",0
PasswordOptionP			dc.b "P",0

; Struct
	rsset	0x0
;-------------------------------------
PasswordScreenState_FadeTimer		rs.w 1
;-------------------------------------
	RS_ALIGN
PasswordScreenState_Struct_Size	rs.b 0
;-------------------------------------

GameStatePasswordScreen:
	dc.l PasswordScreen_Enter
	dc.l PasswordScreen_Exit
	dc.l PasswordScreen_Update
	dc.l PasswordScreen_Render
	dc.l 0x0
	
PasswordScreen_Enter:

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
	move.l #Lvl0_PasswordScreen, CurrentLevel
	move.l (CurrentLevel), a1

	;==============================================================

	; Load fonts for menu
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfontb)
	lea    tiles_twfontbs, a0
	jsr    TXT_LoadFont

	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations

	;==============================================================

	; Init UI
	jsr    PasswordScreen_InitUI

	;==============================================================

	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade

	; Fade in palettes
	lea    palette_l1_dusk_lowcontrast, a0
	move.l #PaletteId_World0, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs, a0
	move.l #PaletteId_MenuText, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs_grey, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	rts
	
PasswordScreen_Exit:

	rts
	
PasswordScreen_Update:

	; Get menu data
	lea    GameStatePasswordScreenData, a2
	
	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading
	
	; If already started fade to black
	tst.l  TimerLogoFade
	bne    @End
	
	; Enter next state
	lea    GameStatePasswordScreenData, a2
	IF DEMO_SHOW_DISCLAIMER
	move.l #GameStateDemoDisclaimerScreen, a0
	jsr    GameStateEnter
	ELSE
	; Load from password
	move.l CurrentSavePassword, d0
	jsr    LoadGameFromPassword

	; Enter gameplay state
	move.l #GameStateGameplay, a0
	jsr    GameStateEnter
	ENDIF
	
	bra    @End
	
	@WaitingForBgFade:
	subq.w  #0x1, PasswordScreenState_FadeTimer(a2)
	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
PasswordScreen_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts

PasswordScreen_OnSelected:
	; a0 --- Widget
	; a1 --- Save password

	; Set save password for first act
	move.l (a1), CurrentSavePassword

	; Stop music
	jsr    SND_StopTrack

	; Play New Game SFX
	PLAYSFX #SFX_UI_Press_Start

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_MenuText, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #PasswordScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	; Mark fading out
	move.l #0x0, TimerLogoFade

	rts
	
PasswordScreen_InitUI:

	; Alloc UI window
	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #UIWindow_Struct_Size
	move.l a1, EntityPoolStart_UIWindow
	move.l a1, a0
	POPL   a1

	; Create UI window
	move.l (EntityPoolStart_UIWindow), a0
	jsr    UIWindowInit

	; Create title text widget
	WINDOW_CREATE_WIDGET_TEXT a0,#PasswordScreenTitle,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#PasswordScreenTitleX,#PasswordScreenTitleY+(PasswordScreenLineSpacing*0)

	; Create cursor and add to window
	WINDOW_CREATE_WIDGET_CURSOR a0
	move.l a3, a5
	CURSOR_LOAD_SPRITE a5,fuzzl,yellow_idle,0x10,0x10,PaletteId_Fuzzl,0x0

	; Create list widgets and add to window and cursor
_COUNT = 0
	REPT 8
	WINDOW_CREATE_WIDGET_LIST a0,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#PasswordScreenListX,#PasswordScreenListY+(PasswordScreenLineSpacing*_COUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionA
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionB
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionC
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionD
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionE
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionF
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionG
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionH
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionI
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionJ
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionK
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionL
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionM
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionN
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionO
	WIDGET_LIST_ADD_ITEM a3,#PasswordOptionP
_COUNT = _COUNT+1
	ENDR

	rts
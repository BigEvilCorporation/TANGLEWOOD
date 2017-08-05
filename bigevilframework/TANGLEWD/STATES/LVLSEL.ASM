;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   LevelSelect.asm - Main Menu state
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_LevelSelect:

	dc.l tiles_l1						; Tileset
	dc.l map_blocks_main_menu			; Blocks
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
LevelSelectFadeTime	equ (0x2<<0x8) ; Subframes (1 frame per tick)
LevelSelectSoundFadeSpeed	equ -10
MenuBgFadeDelay		equ 0x0080
LevelSelectLogoPosX	equ 18*8*subpixels_per_pixel
LevelSelectLogoPosY	equ 36*8*subpixels_per_pixel

LevelSelectListX		equ 0x48
LevelSelectListY		equ 0x30
LevelSelectLineSpacing	equ 0x10

; UI strings
LevelSelect_Str_01	dc.b "Chapter 1 : Harlequin",0
LevelSelect_Str_02	dc.b "Chapter 2 : Storm Warning",0
LevelSelect_Str_03	dc.b "Chapter 3 : Heritage",0
LevelSelect_Str_04	dc.b "Chapter 4 : Tethered",0
LevelSelect_Str_05	dc.b "Chapter 5 : Bygone",0
LevelSelect_Str_06	dc.b "Chapter 6 : Deadwood",0
LevelSelect_Str_07	dc.b "Chapter 7 : Oasis",0
LevelSelect_Str_08	dc.b "Chapter 8 : Turntail",0
	even

; Struct
	rsset	0x0
;-------------------------------------
LevelSelectState_FadeTimer		rs.w 1
;-------------------------------------
LevelSelectState_Struct_Pad		rs.b 2
LevelSelectState_Struct_Size	rs.b 0
;-------------------------------------

GameStateLevelSelect:
	dc.l LevelSelect_Enter
	dc.l LevelSelect_Exit
	dc.l LevelSelect_Update
	dc.l LevelSelect_Render
	dc.l 0x0
	
LevelSelect_Enter:

	; Reset
	PUSHL  a0
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset
	POPL   a0

	;==============================================================
	
	; Set BG colour
	move.w #(PaletteId_World0<<4)|0xD, d0
	VDPSETREG 7, d0

	; Alloc VRAM
	move.w #tiles_l1_size_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, vram_addr_leveltiles
	
	; Load tiles
	clr.l d1
	lea    tiles_l1, a0
	move.w #tiles_l1_size_t, d1
	move.w (vram_addr_leveltiles), d0
	jsr    VDP_LoadTiles

	; Load BG map
	lea    map_blocks_l1bg, a0
	lea    map_blockmap_l1bg, a1
	move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB
	
	; Load FG map
	lea    map_blocks_main_menu, a0
	lea    map_blockmap_main_menu, a1
	move.l #(map_blockmap_main_menu_width<<16)|map_blockmap_main_menu_height, d1
	move.w (vram_addr_leveltiles), d2
	divu   #size_tile_b, d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneA

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl0_LevelSelect, CurrentLevel
	move.l (CurrentLevel), a1

	;==============================================================

	; Load scene animations
	jsr    L1_LoadSceneAnimations

	;==============================================================

	; Init UI
	jsr    LevelSelect_InitUI

	;==============================================================

	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade

	; Fade in palettes
	lea    palette_l1_dusk, a0
	move.l #PaletteId_World0, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_text_white, a0
	move.l #PaletteId_MenuText, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart
	
	rts
	
LevelSelect_Exit:
	
	move.l #0x0, CurrentLevel

	rts
	
LevelSelect_Update:

	; Get menu data
	lea    GameStateLevelSelectData, a2
	
	; Wait for fade to finish
	jsr    PAL_LerpActive
	cmp.b  #0x0, d0
	bne    @Fading
	
	; If already started fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	lea    GameStateLevelSelectData, a2

	; Read pad
	jsr    PAD_ReadPadA
	
	; Check start button
	btst   #pad_button_start, d0
	bne    @StartGame
	
	bra    @End
	
	@StartGame:

	; Stop music
	jsr    SND_StopTrack

	; Play New Game SFX
	PLAYSFX #SFX_UI_Press_Start

	@StartSoundTest:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_TanglewoodLogo, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_fade_black, a0
	move.l #PaletteId_Player, d0
	move.l #LevelSelectFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart
	
	; Mark fading out
	move.l #0x0, TimerLogoFade

	bra    @End
	
	@FadedOut:
	
	; Enter next state
	lea    GameStateLevelSelectData, a2
	move.l #GameStateDemoDisclaimerScreen, a0
	jsr    GameStateEnter
	bra    @End
	
	@WaitingForBgFade:
	sub.w  #0x1, LevelSelectState_FadeTimer(a2)
	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
LevelSelect_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts
	
LevelSelect_InitUI:

	; Create UI window
	move.l #EntityArray_UIWindow, a0
	jsr    UIWindowInit

	; Create cursor and add to window
	WINDOW_CREATE_WIDGET_CURSOR a0
	move.l a3, a5
	CURSOR_LOAD_SPRITE a5,fuzzl,0x10,0x10,PaletteId_Fuzzl,0x0

	; Create widgets and add to window and cursor
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_01,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*0)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_02,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*1)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_03,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*2)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_04,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*3)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_05,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*4)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_06,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*5)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_07,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*6)
	CURSOR_ADD_WIDGET a5,a3
	WINDOW_CREATE_WIDGET_TEXT a0,#LevelSelect_Str_08,#tiles_twfont,(vram_addr_systemfont),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#LevelSelectListX,#LevelSelectListY+(LevelSelectLineSpacing*7)
	CURSOR_ADD_WIDGET a5,a3

	rts
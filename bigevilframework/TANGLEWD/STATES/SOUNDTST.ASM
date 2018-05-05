;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SoundTest.asm - Save load screen
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_SoundTestScreen:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateSoundTestData			; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_credits			; Block map
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
	dc.w map_credits_width				; Map width (tiles)
	dc.w map_credits_height				; Map height (tiles)
	dc.w map_blockmap_credits_width		; Map width (blocks)
	dc.w map_blockmap_credits_height	; Map height (blocks)
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
SoundTestScreenFadeTime			equ (0x2<<0x8) ; Subframes (1 frame per tick)
SoundTestScreenSoundFadeSpeed	equ -10
MenuBgFadeDelay					equ 0x0080
SoundTestScreenLogoPosX			equ 18*8*subpixels_per_pixel
SoundTestScreenLogoPosY			equ 36*8*subpixels_per_pixel

SoundTestScreenListX			equ (screen_width/2)-(8*8)
SoundTestScreenListY			equ 0x30
SoundTestScreenLineSpacing		equ 0x10

SoundTestScreenTitleX			equ (screen_width/2)-(8*8)
SoundTestScreenTitleY			equ 0x18

SoundTestScreenTitle		dc.b "Sound Test",0
SoundTestScreenControl1		dc.b "A: Play",0
SoundTestScreenControl2		dc.b "B: Stop",0
SoundTestScreenControl3		dc.b "C: Skip +8",0
SoundTestScreenTitleMusic	dc.b "Music",0
SoundTestScreenTitleSFX		dc.b "SFX",0
SoundTestScreenBack			dc.b "Back",0
	even

SOUNDTEST_ALLOC_HEX_BYTE_STRING: macro byte
	move.b \byte, d0
	PUSHM  a0/a2-a5
	PUSHW  d0
	RAMPOOL_ALLOC Pool_Entities, #0x5	; 0x + byte + terminator
	POPW   d0
	move.l a1, a0
	jsr    TXT_ItoA_Hex_b
	move.l a0, a1
	POPM   a0/a2-a5
	endm

; Struct
	rsset	0x0
;-------------------------------------
SoundTestState_FadeTimer	rs.w 1
;-------------------------------------
	RS_ALIGN
SoundTestState_Struct_Size	rs.b 0
;-------------------------------------

GameStateSoundTest:
	dc.l SoundTest_Enter
	dc.l SoundTest_Exit
	dc.l SoundTest_Update
	dc.l SoundTest_Render
	dc.l 0x0
	
SoundTest_Enter:

	; Reset
	PUSHL  a0
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset
	POPL   a0

	;==============================================================
	
	; Set BG colour
	move.w #(PaletteId_World0<<4)|0xD, d0
	VDP_SETREG 7, d0

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
	move.l #Lvl0_SoundTestScreen, CurrentLevel
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
	jsr    SoundTest_InitUI

	;==============================================================

	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade

	; Fade in palettes
	lea    palette_l1_dusk_lowcontrast, a0
	move.l #PaletteId_World0, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs, a0
	move.l #PaletteId_MenuText, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs_grey, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	rts
	
SoundTest_Exit:

	rts
	
SoundTest_Update:

	; Get menu data
	lea    GameStateSoundTestData, a2
	
	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading
	
	; If already started fade to black
	tst.l  TimerLogoFade
	bne    @End

	; Back to main menu
	lea GameStateMainMenu, a0
	jsr GameStateEnter

	bra    @NextState
	
	@WaitingForBgFade:
	subq.w  #0x1, SoundTestState_FadeTimer(a2)
	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll

	@NextState:
	
	rts
	
SoundTest_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts

SoundTest_BeginFadeDown:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_MenuText, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #SoundTestScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	; Mark fading out
	move.l #0x0, TimerLogoFade

	rts

SoundTest_OnPlayMusic:
	; a0 --- Widget
	; a1 (b) Index

	PUSHALL

	; Index to track table entry
	move.l a1, d0
	andi.l #0xFF, d0
	mulu   #Track_Struct_Size, d0

	; Get track table entry
	lea    TrackTableBegin, a0
	add.l  d0, a0

	; Stop old, play new
	jsr    SND_StopTrack
	jsr    SND_PlayTrack

	POPALL

	rts

SoundTest_OnPlaySFX:
	; a0 --- Widget
	; a1 (b) Index

	PUSHALL

	; Get index
	move.l a1, d0
	andi.l #0xFF, d0

	; Store history for cheats
	move.l SoundTestHistory, d1
	lsl.l  #0x8, d1
	move.b d0, d1
	move.l d1, SoundTestHistory

	; Index to SFX table entry
	mulu   #SFX_Struct_Size, d0

	; Get sound table entry
	lea    SFXTableBegin, a0
	add.l  d0, a0

	; Stop old, play new
	jsr    SND_StopSFX
	jsr    SND_PlaySFX

	POPALL

	rts

SoundTest_OnStop:
	; a0 --- Widget
	; a1 (b) Index

	; Stop music and SFX
	jsr    SND_StopSFX
	jsr    SND_StopTrack

	rts

SoundTest_OnBack:

	; Begin fade down
	jsr    SoundTest_BeginFadeDown

	; Stop music and SFX
	jsr    SND_StopSFX
	jsr    SND_StopTrack

	; Restart title track
	lea    track_bgm_titles, a0
	jsr    SND_PlayTrack

	rts
	
SoundTest_InitUI:

	; Alloc UI window
	PUSHL  a1
	RAMPOOL_ALLOC Pool_Entities, #UIWindow_Struct_Size
	move.l a1, EntityPoolStart_UIWindow
	move.l a1, a0
	POPL   a1

	; Create UI window
	move.l (EntityPoolStart_UIWindow), a0
	jsr    UIWindowInit

LINECOUNT = 0

	; Create title text widget
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenTitle,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+2

	; create instructions text widgets
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenControl1,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenControl2,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenControl3,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+2

	; Create music title
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenTitleMusic,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1

	; Create cursor and add to window
	WINDOW_CREATE_WIDGET_CURSOR a0
	move.l a3, a5
	CURSOR_LOAD_SPRITE a5,fuzzl,yellow_idle,0x10,0x10,PaletteId_Fuzzl,0x0

	; Create music list widget and add to window and cursor
	WINDOW_CREATE_WIDGET_LIST a0,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenListX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,SoundTest_OnPlayMusic,0x0
	WIDGET_SET_ONCANCELLED a3,SoundTest_OnStop,0x0

	; Add all tracks
	move.w #TrackTableSize-1, d0
	@TrackListLp:
	PUSHW  d0
	move.w #TrackTableSize-1, d1
	sub.w  d0, d1
	PUSHW  d1
	SOUNDTEST_ALLOC_HEX_BYTE_STRING d1
	WIDGET_LIST_ADD_ITEM a3,a1
	POPW   d1
	POPW   d0
	dbra   d0, @TrackListLp

	; Align memory
	RAMPOOL_ALIGN Pool_Entities

LINECOUNT = LINECOUNT+2

	; Create SFX title
	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenTitleSFX,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenTitleX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1

	; Create SFX list widget and add to window and cursor
	WINDOW_CREATE_WIDGET_LIST a0,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenListX,#SoundTestScreenTitleY+(SoundTestScreenLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,SoundTest_OnPlaySFX,0x0
	WIDGET_SET_ONCANCELLED a3,SoundTest_OnStop,0x0

	; Add all SFX
	move.w #SFXTableSize-1, d0
	@SFXListLp:
	PUSHW  d0
	move.w #SFXTableSize-1, d1
	sub.w  d0, d1
	PUSHW  d1
	SOUNDTEST_ALLOC_HEX_BYTE_STRING d1
	WIDGET_LIST_ADD_ITEM a3,a1
	POPW   d1
	POPW   d0
	dbra   d0, @SFXListLp

	; Align memory
	RAMPOOL_ALIGN Pool_Entities

LINECOUNT = LINECOUNT+2

	WINDOW_CREATE_WIDGET_TEXT a0,#SoundTestScreenBack,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#SoundTestScreenListX,#SoundTestScreenTitleY+(LevelSelectLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,SoundTest_OnBack,0x0

	rts
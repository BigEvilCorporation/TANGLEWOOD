;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2018
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   options.asm - Options screen
;==============================================================

; Level data (menu contains game objects, so need to provide one)
Lvl0_OptionsScreen:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateOptionsData			; Userdata
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
OptionsScreenFadeTime			equ (0x2<<0x8) ; Subframes (1 frame per tick)
OptionsScreenSoundFadeSpeed		equ -10
MenuBgFadeDelay					equ 0x0080
OptionsScreenLogoPosX			equ 18*8*subpixels_per_pixel
OptionsScreenLogoPosY			equ 36*8*subpixels_per_pixel

OptionsScreenListX				equ (screen_width/2)-(8*8)
OptionsScreenListY				equ 0x30
OptionsScreenLineSpacing		equ 0x08

OptionsScreenTitleX				equ (screen_width/2)-(8*4)
OptionsScreenTitleY				equ 0x28
OptionsScreenOptionX			equ (screen_width/2)-(8*7)
OptionsScreenXInteract			equ (screen_width/2)-(8*4)-(8*4)
OptionsScreenXPower				equ (screen_width/2)-(8*4)-(8*3)
OptionsScreenXJump				equ (screen_width/2)-(8*4)

OptionsScreenTitle				dc.b "Options",0
OptionsScreenControlInteract	dc.b "Interact",0
OptionsScreenControlPower		dc.b "Special",0
OptionsScreenControlJump		dc.b "Jump",0
OptionsScreenControl1			dc.b "Control scheme",0
OptionsScreenSSGEG				dc.b "YM2612 SSG-EG",0
OptionsScreenBack				dc.b "Back",0
	even

OPTIONS_ALLOC_HEX_BYTE_STRING: macro byte
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
OptionsState_TextInteract	rs.l 1
OptionsState_TextPower		rs.l 1
OptionsState_TextJump		rs.l 1
OptionsState_FadeTimer		rs.w 1
;-------------------------------------
	RS_ALIGN
OptionsState_Struct_Size	rs.b 0
;-------------------------------------

GameStateOptions:
	dc.l Options_Enter
	dc.l Options_Exit
	dc.l Options_Update
	dc.l Options_Render
	dc.l 0x0
	
Options_Enter:

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
	move.l #Lvl0_OptionsScreen, CurrentLevel
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
	jsr    Options_InitUI

	;==============================================================

	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Use timer as fading out flag
	move.l #0x1, TimerLogoFade

	; Fade in palettes
	lea    palette_l1_dusk_lowcontrast, a0
	move.l #PaletteId_World0, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs, a0
	move.l #PaletteId_MenuText, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_twfontbs_grey, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	rts
	
Options_Exit:

	rts
	
Options_Update:

	; Get menu data
	lea    GameStateOptionsData, a2
	
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
	subq.w  #0x1, OptionsState_FadeTimer(a2)
	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll

	@NextState:
	
	rts
	
Options_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts

Options_BeginFadeDown:

	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #PaletteId_MenuText, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_MenuTextDisabled, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_World0, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fade_black, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #OptionsScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo
	
	; Mark fading out
	move.l #0x0, TimerLogoFade

	rts

Options_OnCycleControls:
	; a0 --- Widget
	; d0 (b) Mapping index

	PUSHM  a0-a1
	jsr    InputApplyMapping
	POPM   a0-a1

	PUSHM  a0-a1
	jsr    Options_SetString_Interact
	jsr    Options_SetString_Power
	jsr    Options_SetString_Jump
	POPM   a0-a1
	
	rts

Options_OnCycleSSGEG:
	; a0 --- Widget
	; d0 (b) 0 = off, 1= on

	eor.b #0x1, d0

	tst.b d0
	beq   @Disable
	jsr   SND_EnableSSGEG
	bra   @Enable
	@Disable:
	jsr   SND_DisableSSGEG
	@Enable:

	rts

Options_OnBack:

	; Begin fade down
	jsr    Options_BeginFadeDown

	rts

Options_SetString_Interact:
	; a0 --- String

	; Alloc string
	sub.l   #UIWidgetText_MaxStringLen, sp
	move.l  sp, a0

	lea    OptionsScreenControlInteract, a1
	jsr    TXT_StrCpy
	lea    StringOptionSeparator, a1
	jsr    TXT_StrConcat

	lea    GamepadButtonNames, a1
	moveq  #0x0, d0
	move.b input_interact, d0
	lsl.l  #0x2, d0
	add.l  d0, a1
	move.l (a1), a1
	jsr    TXT_StrConcat

	; Set string
	lea    GameStateOptionsData, a6
	move.l a0, a1
	move.l OptionsState_TextInteract(a6), a0
	WIDGET_TEXT_SET_STRING a0, a1

	; Free string space
	addi.l  #UIWidgetText_MaxStringLen, sp

	rts

Options_SetString_Power:
	; a0 --- String

	; Alloc string
	sub.l   #UIWidgetText_MaxStringLen, sp
	move.l  sp, a0

	lea    OptionsScreenControlPower, a1
	jsr    TXT_StrCpy
	lea    StringOptionSeparator, a1
	jsr    TXT_StrConcat

	lea    GamepadButtonNames, a1
	moveq  #0x0, d0
	move.b input_power, d0
	lsl.l  #0x2, d0
	add.l  d0, a1
	move.l (a1), a1
	jsr    TXT_StrConcat

	; Set string
	lea    GameStateOptionsData, a6
	move.l a0, a1
	move.l OptionsState_TextPower(a6), a0
	WIDGET_TEXT_SET_STRING a0, a1

	; Free string space
	addi.l  #UIWidgetText_MaxStringLen, sp

	rts

Options_SetString_Jump:
	; a0 --- String

	; Alloc string
	sub.l   #UIWidgetText_MaxStringLen, sp
	move.l  sp, a0

	lea    OptionsScreenControlJump, a1
	jsr    TXT_StrCpy
	lea    StringOptionSeparator, a1
	jsr    TXT_StrConcat

	lea    GamepadButtonNames, a1
	moveq  #0x0, d0
	move.b input_jump, d0
	lsl.l  #0x2, d0
	add.l  d0, a1
	move.l (a1), a1
	jsr    TXT_StrConcat

	; Set string
	lea    GameStateOptionsData, a6
	move.l a0, a1
	move.l OptionsState_TextJump(a6), a0
	WIDGET_TEXT_SET_STRING a0, a1

	; Free string space
	addi.l  #UIWidgetText_MaxStringLen, sp

	rts
	
Options_InitUI:

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
	WINDOW_CREATE_WIDGET_TEXT a0,#OptionsScreenTitle,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenTitleX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+3

	; Create controls titles
	lea    GameStateOptionsData, a6
	WINDOW_CREATE_WIDGET_TEXT a0,#StringBlankOptionsMax,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenXInteract,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	move.l a3, OptionsState_TextInteract(a6)
LINECOUNT = LINECOUNT+1
	WINDOW_CREATE_WIDGET_TEXT a0,#StringBlankOptionsMax,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenXPower,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	move.l a3, OptionsState_TextPower(a6)
LINECOUNT = LINECOUNT+1
	WINDOW_CREATE_WIDGET_TEXT a0,#StringBlankOptionsMax,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenXJump,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	move.l a3, OptionsState_TextJump(a6)
LINECOUNT = LINECOUNT+3

	; Create controls title
	WINDOW_CREATE_WIDGET_TEXT a0,#OptionsScreenControl1,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenOptionX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1

	; Create cursor and add to window
	WINDOW_CREATE_WIDGET_CURSOR a0
	move.l a3, a5
	CURSOR_LOAD_SPRITE a5,fuzzl,yellow_idle,0x10,0x10,PaletteId_Fuzzl,0x0

	; Create control list widget and add to window and cursor
	WINDOW_CREATE_WIDGET_LIST a0,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenOptionX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	move.l #Options_OnCycleControls, UIWidgetList_OnCycle(a3)

	; Add all control schemes
	;move.w #InputMappingsCount-1, d0
	;@MappingListLp:
	;PUSHW  d0
	;move.w #InputMappingsCount-1, d1
	;sub.w  d0, d1
	;PUSHW  d1
	;OPTIONS_ALLOC_HEX_BYTE_STRING d1
	;WIDGET_LIST_ADD_ITEM a3,a1
	;POPW   d1
	;POPW   d0
	;dbra   d0, @MappingListLp

	WIDGET_LIST_ADD_ITEM a3,#ControlSchemeStr1
	WIDGET_LIST_ADD_ITEM a3,#ControlSchemeStr2
	WIDGET_LIST_ADD_ITEM a3,#ControlSchemeStr3
	WIDGET_LIST_ADD_ITEM a3,#ControlSchemeStr4

	; Set intial layout setting
	PUSHM  a0-a5
	move.b InputMappingScheme, d0
	move.l a3, a0
	jsr    UIWidgetListSetItem
	POPM   a0-a5

	; Align memory
	RAMPOOL_ALIGN Pool_Entities

LINECOUNT = LINECOUNT+2

	; Create audio title
	WINDOW_CREATE_WIDGET_TEXT a0,#OptionsScreenSSGEG,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenOptionX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
LINECOUNT = LINECOUNT+1

	; Create SSG-EG list widget and add to window and cursor
	WINDOW_CREATE_WIDGET_LIST a0,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenOptionX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	move.l #Options_OnCycleSSGEG, UIWidgetList_OnCycle(a3)
	WIDGET_LIST_ADD_ITEM a3,#OptionsScreen_Str_On
	WIDGET_LIST_ADD_ITEM a3,#OptionsScreen_Str_Off

	; Set initial value
	PUSHM  a0-a5
	jsr    SND_GetSSGEGEnabled
	eor.b  #0x1, d0
	move.l a3, a0
	jsr    UIWidgetListSetItem
	POPM   a0-a5

LINECOUNT = LINECOUNT+2

	; Add back option
	WINDOW_CREATE_WIDGET_TEXT a0,#OptionsScreenBack,#tiles_twfontbs,(vram_addr_systemfontb),#PaletteId_MenuText,#UIWidgetText_DrawPlane_Sprite,#OptionsScreenOptionX,#OptionsScreenTitleY+(OptionsScreenLineSpacing*LINECOUNT)
	CURSOR_ADD_WIDGET a5,a3
	WIDGET_SET_ONSELECTED a3,Options_OnBack,0x0

	; Set initial strings
	jsr    Options_SetString_Interact
	jsr    Options_SetString_Power
	jsr    Options_SetString_Jump

	rts
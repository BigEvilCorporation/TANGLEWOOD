;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   score.asm - Very ugly quick and temp hardcoded end of level firefly "score sheet"
;==============================================================

; Level data (screen contains game objects, so need to provide one)
Lvl0_EndLevel:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateEndLevelScoreData		; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_end_level			; Block map
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
	dc.w map_end_level_width			; Map width (tiles)
	dc.w map_end_level_height			; Map height (tiles)
	dc.w map_blockmap_end_level_width	; Map width (blocks)
	dc.w map_blockmap_end_level_height	; Map height (blocks)
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
EndLevelScoreScreenDelayTime	equ 0x0300
EndLevelScoreScreenFadeTime		equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
EndLevelScoreScreenNumColours	equ 0xF ; For palette lerping

GameStateEndLevelScoreScreen:
	dc.l EndLevelScoreScreen_Enter
	dc.l EndLevelScoreScreen_Exit
	dc.l EndLevelScoreScreen_Update
	dc.l EndLevelScoreScreen_Render
	dc.l 0x0

EndLevelScore_TextFontSize		equ tiles_twfont_size_t
EndLevelScore_TextFontPaletteId	equ 0x1
EndLevelScore_TextFontColourIdx	equ	0x1
EndLevelScore_TextFontColour	equ 0x0EEE
EndLevelScore_LevelPosX			equ ((screen_width/8/2)-(27/2))
EndLevelScore_LevelPosY			equ 2
EndLevelScore_TitlePosX			equ ((screen_width/8/2)-(18/2))
EndLevelScore_TitlePosY			equ 4
EndLevelScore_TextPosX			equ 8
EndLevelScore_TextPosY			equ 8
EndLevelScore_TextColumnX		equ 7
EndLevelScore_TextSpacingY		equ 2

; Palette
EndLevelScore_Palette:
	dc.w 0x0000
	dc.w 0x0EEE
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000
	dc.w 0x0000

; Struct
	rsset	LevelData_Struct_Size
;-------------------------------------
EndLevelScore_NextLevel			rs.l 1
;-------------------------------------
	RS_ALIGN
EndLevelScore_Struct_Size		rs.b 0
;-------------------------------------
	
EndLevelScoreScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset state (but leave audio playing)
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset

	; Set BG colour
	move.w #(EndLevelScore_TextFontPaletteId<<4), d0
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
	lea    map_blockmap_end_level, a1
	move.l #(map_blockmap_end_level_width<<16)|map_blockmap_end_level_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneA

	;==============================================================

	; Store next level
	lea    GameStateEndLevelScoreData, a0
	move.l (CurrentLevel), EndLevelScore_NextLevel(a0)

	; Set empty level (for game object processing)
	move.l #Lvl0_EndLevel, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    end_level_LoadGameObjects

	; Disable Fuzzl physics (no terrain data)
	ENTITY_GETBYNAME Fuzzl, end_level_Fuzzl, a0
	move.b #0x0, PhysicsObj_HasCollision(a0)

	;==============================================================

	; Get prev level
	move.l (PreviousLevel), a2

	; Get userdata
	move.l Level_UserData(a2), a3

	; Create text
	lea    GameStateEndLevelScoreData, a0

	; Level
	move.l Level_Name(a2), a0					; String
	move.w (vram_addr_systemfont), d0			; Font tile ID
	BYTES2TILES d0
	move.l #(EndLevelScore_LevelPosX<<16)|EndLevelScore_LevelPosY, d1	; X/Y coord
	move.b #EndLevelScore_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3								; Plane A
	jsr    TXT_DrawPlane

	; Title
	lea    EndLevelString_Title, a0				; String
	move.w (vram_addr_systemfont), d0			; Font tile ID
	BYTES2TILES d0
	move.l #(EndLevelScore_TitlePosX<<16)|EndLevelScore_TitlePosY, d1	; X/Y coord
	move.b #EndLevelScore_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3								; Plane A
	jsr    TXT_DrawPlane

	move.l #(EndLevelScore_TextPosX<<16)|EndLevelScore_TextPosY, d1	; X/Y coord

	; For all acts in level
	move.w (CurrentLevelNumActs), d0
	tst.w  d0
	beq    @NoActSetup
	subq.w #0x1, d0
	lea    CurrentActDatas, a4
	move.l #EndLevelActNames, a5
	@ActLoop:

	; Get act data
	move.l (a4)+, a3

	; Get act name
	move.l (a5)+, a0
	
	PUSHM  d0/a4-a5

	; Draw act string
	move.w (vram_addr_systemfont), d0			; Font tile ID
	BYTES2TILES d0
	move.b #EndLevelScore_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3								; Plane A
	PUSHL  d1
	jsr    TXT_DrawPlane
	POPL   d1

	addi.l #(EndLevelScore_TextColumnX<<16), d1

	; Draw firefly count
	move.w LevelData_FireflyCount(a3), d0; Get collected firefly count
	move.w #L1A1_Firefly_count, d2	; Get total firefly count
	PUSHL  d1
	jsr    EndLevelScoreScreen_DrawFireflyCountText
	POPL   d1

	swap   d1
	move.w #EndLevelScore_TextPosX, d1
	swap   d1
	addi.w #EndLevelScore_TextSpacingY, d1

	POPM   d0/a4-a5
	dbra   d0, @ActLoop

	@NoActSetup:

	;==============================================================

	; Begin fade up
	lea    palette_l1_night, a0
	move.l #PaletteId_World0, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    EndLevelScore_Palette, a0
	move.l #EndLevelScore_TextFontPaletteId, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #EndLevelScoreScreenNumColours, d4
	jsr    GameScenePaletteFadeTo

	;==============================================================
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	MOVE_NTSC_L EndLevelScoreScreenDelayTime, TimerLogoFade, d0
	
	rts
	
EndLevelScoreScreen_Exit:
	
	rts
	
EndLevelScoreScreen_Update:

	; Wait for fade to finish
	jsr    PAL_LerpActive
	tst.b  d0
	bne    @Fading

	; If already done fade to black
	tst.l  TimerLogoFade
	beq    @FadedOut
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	subq.l #0x1, d0
	move.l d0, TimerLogoFade
	cmp.l  #0x1, d0
	bne    @NotElapsed
	
	; Begin fade to black
	lea    palette_fade_black, a0
	move.l #EndLevelScore_TextFontPaletteId, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #EndLevelScoreScreenNumColours, d4
	jsr    GameScenePaletteFadeTo
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	; Set next level
	lea    GameStateEndLevelScoreData, a0
	move.l EndLevelScore_NextLevel(a0), a1
	move.l a1, CurrentLevel
	cmp.l  #0x0, a1
	beq    @EndOfGame
	
	; Next level gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	bra    @End
	
	@EndOfGame:

	; Reset to first level
	move.l #InitialLevel, CurrentLevel
	
	IF DEMO_SHOW_THANKS

	; Head to demo end screen
	lea    GameStateDemoEnd, a0
	jsr    GameStateEnter

	ELSE

	; Roll credits
	lea    GameStateCredits, a0
	jsr    GameStateEnter

	ENDIF

	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
EndLevelScoreScreen_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll

	rts
	
EndLevelScoreScreen_DrawFireflyCountText:
	; d0 (w) Collected count
	; d1 (ww) X/Y pos (tiles)
	; d2 (w) Total Count

	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	move.l  a0, a2

	PUSHL   d1
	
	; Firefly count to string
	PUSHL   d2
	jsr     TXT_ItoA_w					; To string
	POPL    d2
	subq.l  #0x1, a0					; Remove terminator
	move.b  #'/', (a0)+					; Append '/'
	move.w  d2, d0
	jsr     TXT_ItoA_w					; To string

	POPL    d1
	
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	BYTES2TILES d0
	move.l  a2, a0						; String
	move.b #EndLevelScore_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3								; Plane A
	jsr    TXT_DrawPlane
	
	; Free string space
	addi.l  #0x10, sp

	rts

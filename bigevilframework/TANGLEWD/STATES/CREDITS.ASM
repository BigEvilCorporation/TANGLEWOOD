;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   credits.asm - So long, and thanks for all the Fuzzls
;==============================================================

; Level data (screen contains game objects, so need to provide one)
Lvl11_Credits:

	dc.l LevelSelect_Str_00				; Name
	dc.l GameStateEndLevelScoreData		; Userdata
	dc.l tiles_l1						; Tileset
	dc.l map_blocks_l1					; Blocks
	dc.l map_blockmap_end_level			; Block map
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
	dc.w map_end_level_width			; Map width (tiles)
	dc.w map_end_level_height			; Map height (tiles)
	dc.w map_blockmap_end_level_width	; Map width (blocks)
	dc.w map_blockmap_end_level_height	; Map height (blocks)
	dc.w tiles_l1_size_t				; Num tiles
	
	even

GameStateCredits:
	dc.l Credits_Enter
	dc.l Credits_Exit
	dc.l Credits_Update
	dc.l Credits_Render
	dc.l 0x0

; Constants
Credits_FadeTime			equ (0x2<<fade_frame_shift) ; Subframes (2 frames per tick)
Credits_NumColours			equ 0xF ; For palette lerping

Credits_TextPaletteId		equ PaletteId_Monster
Credits_TextFontSize		equ tiles_twfont_size_t
Credits_TextFontPaletteId	equ 0x1
Credits_TextFontColourIdx	equ	0x1
Credits_TextFontColour		equ 0x0EEE
Credits_CentrePosX			equ vdp_sprite_border_x
Credits_CentrePosY			equ vdp_sprite_border_y
Credits_TextColumnX			equ 7
Credits_TextSpacingY		equ 2

CreditsState_OpeningTitle	equ 0
CreditsState_OpeningCredit	equ 1
CreditsState_Rolling		equ 2
CreditsState_ClosingCredit	equ 3

; Palette
Credits_Palette:
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
Credits_StreamPtr			rs.l 1
Credits_CurrentString		rs.l 1
Credits_CurrentStringType	rs.b 1
Credits_State				rs.b 1
;-------------------------------------
Credits_Struct_Pad			rs.b 2
Credits_Struct_Size			rs.b 0
;-------------------------------------
	
Credits_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset state (but leave audio playing)
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset

	; Set BG colour
	move.w #(Credits_TextFontPaletteId<<4), d0
	VDPSETREG 7, d0

	; Load tiles
	clr.l d1
	lea    tiles_l1, a0
	move.w #tiles_l1_size_t, d0
	jsr    LevelLoadCompressedTileset

	; Load BG map
	;lea    map_blocks_l1, a0
	;lea    map_blockmap_l1bg, a1
	;move.l #(map_blockmap_l1bg_width<<16)|map_blockmap_l1bg_height, d1
	;move.w (vram_addr_leveltiles), d2
	;BYTES2TILES d2
	;move.l #PaletteId_World0, d3
	;jsr    VDP_LoadBlockMapPlaneB

	; Load FG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_end_level, a1
	move.l #(map_blockmap_end_level_width<<16)|map_blockmap_end_level_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneA

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl11_Credits, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    end_level_LoadGameObjects

	; Disable Fuzzl physics (no terrain data)
	ENTITY_GETBYNAME Fuzzl, end_level_Fuzzl, a0
	move.b #0x0, PhysicsObj_HasPhysics(a0)

	;==============================================================

	; Begin fade up
	lea    palette_l1_night, a0
	move.l #PaletteId_World0, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    Credits_Palette, a0
	move.l #Credits_TextFontPaletteId, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #Credits_NumColours, d4
	jsr    PAL_LerpStart

	;==============================================================
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll

	; Set stream ptr
	lea    GameStateCreditsData, a2
	move.l #CreditsStrings, Credits_StreamPtr(a2)

	; Set initial state
	move.b #CreditsState_OpeningTitle, Credits_state(a2)

	; Fetch first string
	jsr    Credits_FetchNextString
	
	rts
	
Credits_Exit:
	
	rts
	
Credits_Update:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll

	; Reset to first level and head to demo end screen
	;move.l #InitialLevel, CurrentLevel
	;lea    GameStateDemoEnd, a0
	;jsr    GameStateEnter
	
	rts
	
Credits_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll

	; Draw current string
	lea    GameStateCreditsData, a2
	move.l Credits_CurrentString(a2), a0					; String
	clr.l   d0
	move.w  (vram_addr_systemfont), d0						; Font VDP address
	BYTES2TILES d0
	move.w #((Credits_TextPaletteId<<13)|1<<15), d2			; Palette/flip/priority bits
	move.l #(Credits_CentrePosX<<16)|Credits_CentrePosY, d1	; Position
	jsr    TXT_DrawSprites

	rts
	
Credits_FetchNextString:

	lea    GameStateCreditsData, a2
	move.l Credits_StreamPtr(a2), a3

	; Get string type
	move.b (a3)+, d0
	move.b d0, Credits_CurrentStringType(a2)

	; Get string pointer
	move.l a3, Credits_CurrentString(a2)

	; Seek to end of string
	move.l a3, a0
	PUSHL  a3
	jsr    TXT_StrLen
	POPL   a3

	; Advance stream
	andi.l #0xFFFF, d0
	add.l  d0, a3
	move.l a3, Credits_StreamPtr(a2)

	rts

Credits_BakeString:

	lea    GameStateCreditsData, a2
	move.l Credits_StreamPtr(a2), a3

	; Draw string to bg map

	rts
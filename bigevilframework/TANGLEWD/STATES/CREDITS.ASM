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
	dc.l map_blockmap_credits			; Block map
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
	dc.w map_credits_width			; Map width (tiles)
	dc.w map_credits_height			; Map height (tiles)
	dc.w map_blockmap_credits_width	; Map width (blocks)
	dc.w map_blockmap_credits_height	; Map height (blocks)
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
Credits_CentrePosX			equ screen_width/8/2
Credits_CentrePosY			equ vdp_plane_height/2
Credits_TextColumnX			equ 7
Credits_TextSpacingY		equ 2
Credits_ScrollSpeed			equ 0x00003000

CreditsState_OpeningTitle	equ 0
CreditsState_OpeningCredit	equ 1
CreditsState_Rolling		equ 2
CreditsState_ClosingCredit	equ 3

; Palette
Credits_Palette:
	dc.w 0x0808
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
Credits_VScroll				rs.l 1
Credits_CurrentLineIdx		rs.w 1
Credits_LastLineIdx			rs.w 1
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
	move.w #(PaletteId_World0<<4)|0xD, d0
	VDPSETREG 7, d0

	; Load tiles
	clr.l d1
	lea    tiles_l1, a0
	move.w #tiles_l1_size_t, d0
	jsr    LevelLoadCompressedTileset

	; Load BG map
	lea    map_blocks_l1, a0
	lea    map_blockmap_credits, a1
	move.l #(map_blockmap_credits_width<<16)|map_blockmap_credits_height, d1
	move.w (vram_addr_leveltiles), d2
	BYTES2TILES d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneB

	; Load fonts
	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfont)
	lea    tiles_twfonts, a0
	jsr    TXT_LoadFont

	move.w #CharMap_SizeB, d0
	jsr    VRAM_PoolAlloc
	move.w d0, (vram_addr_systemfontb)
	lea    tiles_twfontbs, a0
	jsr    TXT_LoadFont

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl11_Credits, CurrentLevel
	move.l (CurrentLevel), a1

	; Load scene animations
	jsr    L1_LoadSceneAnimations

	; Load objects
	jsr    credits_LoadGameObjects

	; Disable Fuzzl physics (no terrain data)
	ENTITY_GETBYNAME Fuzzl, credits_Fuzzl, a0
	move.b #0x0, PhysicsObj_HasPhysics(a0)

	;==============================================================

	; Begin fade up
	lea    palette_l1_night, a0
	move.l #PaletteId_World0, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    GameScenePaletteFadeTo

	lea    Credits_Palette, a0
	move.l #Credits_TextFontPaletteId, d0
	move.l #Credits_FadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #Credits_NumColours, d4
	jsr    GameScenePaletteFadeTo

	;==============================================================
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll

	; Set stream ptr
	lea    GameStateCreditsData, a2
	move.l #CreditsStrings, Credits_StreamPtr(a2)

	; Set initial state
	move.b #CreditsState_OpeningTitle, Credits_state(a2)
	move.w #0x0, Credits_VScroll(a2)
	move.w #0x0, Credits_CurrentLineIdx(a2)
	move.w #0x7FFF, Credits_LastLineIdx(a2)

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

	; Scroll
	lea    GameStateCreditsData, a2
	move.l Credits_VScroll(a2), d0
	addi.l #Credits_ScrollSpeed, d0
	move.l d0, Credits_VScroll(a2)
	TOPIXELS d0
	jsr    VDP_SetVScrollPlaneA

	; Get current line idx
	lsr.w  #0x3, d0

	; If changed
	cmp.w  Credits_CurrentLineIdx(a2), d0
	beq    @NoChange
	move.w d0, Credits_CurrentLineIdx(a2)

	; Clear top line
	PUSHM  d0/a2
	jsr    Credits_ClearTopLine
	POPM   d0/a2

	; If not closing credit, draw next string
	cmp.b  #CreditsState_ClosingCredit, Credits_State(a2)
	beq    @ClosingCredit

	jsr    Credits_FetchNextString
	bra    @End

	@ClosingCredit:

	; Wait for last credit to scroll off
	sub.w  #(screen_height/8), d0
	move.w Credits_LastLineIdx(a2), d1
	cmp.w  d1, d0
	bne    @End

	; Reset to first level and head to demo end screen
	move.l #InitialLevel, CurrentLevel
	lea    GameStateDemoEnd, a0
	jsr    GameStateEnter

	@NoChange:
	@End:
	
	rts
	
Credits_Render:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll

	; Draw current string
	;lea    GameStateCreditsData, a2
	;move.l Credits_CurrentString(a2), a0					; String
	;clr.l   d0
	;move.w  (vram_addr_systemfont), d0						; Font VDP address
	;BYTES2TILES d0
	;move.w #((Credits_TextPaletteId<<13)|1<<15), d2			; Palette/flip/priority bits
	;move.l #(Credits_CentrePosX<<16)|Credits_CentrePosY, d1	; Position
	;jsr    TXT_DrawSprites

	rts
	
Credits_FetchNextString:

	lea    GameStateCreditsData, a2
	move.l Credits_StreamPtr(a2), a3

	; Get string type
	move.b (a3)+, d0
	move.b d0, Credits_CurrentStringType(a2)

	; Determine type
	move.b Credits_CurrentStringType(a2), d0
	cmp.b  #CreditsToken_Space, d0
	beq    @NoString
	cmp.b  #CreditsToken_End, d0
	beq    @ClosingCredit
	bra    @String

	@ClosingCredit:
	move.b #CreditsState_ClosingCredit, Credits_state(a2)
	move.w Credits_CurrentLineIdx(a2), Credits_LastLineIdx(a2)

	@String:

	; Set string pointer
	move.l a3, Credits_CurrentString(a2)

	; Seek to end of string
	move.l a3, a0
	PUSHM  a0-a3
	jsr    TXT_StrLen
	POPM   a0-a3

	; Advance stream
	andi.l #0xFFFF, d0
	addq.l #0x1, d0		; + terminator
	add.l  d0, a3

	; Draw string
	PUSHM  a2-a3
	jsr    Credits_BakeString
	POPM   a2-a3

	@NoString:

	; Set stream ptr
	move.l a3, Credits_StreamPtr(a2)

	rts

Credits_BakeString:

	lea    GameStateCreditsData, a2

	; Get string and line
	move.l Credits_CurrentString(a2), a0
	move.w Credits_CurrentLineIdx(a2), d1

	; Get length
	PUSHM  d1/a0-a2
	jsr    TXT_StrLen
	POPM   d1/a0-a2

	; Position bottom centre
	lsr.w  #0x1, d0					; String length / 2
	move.w #Credits_CentrePosX, d3	; Sub from screen centre
	sub.w  d0, d3
	add.w  #(screen_height/8), d1	; 1 line off screen
	divu   #vdp_plane_height, d1	; Line index to scroll space
	move.w d3, d1					; X
	swap   d1						; Y

	; Set font
	clr.l   d0
	cmp.b   #CreditsToken_Name, Credits_CurrentStringType(a2)
	bne     @BoldFont
	move.w  (vram_addr_systemfont), d0		; Font VDP address
	bra     @RegularFont
	@BoldFont:
	move.w  (vram_addr_systemfontb), d0		; Font VDP address
	@RegularFont:
	BYTES2TILES d0

	; Draw text
	move.b #Credits_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3							; Plane A
	jsr    TXT_DrawPlane

	rts

Credits_ClearTopLine:
	
	clr.l  d1
	move.w Credits_CurrentLineIdx(a2), d1
	add.w  #(screen_height/8), d1			; 1 line off screen
	divu   #vdp_plane_height, d1			; Line index to scroll space
	clr.w  d1
	swap   d1
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	move.b #Credits_TextFontPaletteId, d2	; Palette
	move.b #0x0, d3							; Plane A

	; d1 (ww)- XY coord (in tiles)
	; d2 (b) - Palette
	; d3 (b) - Plane (0=A, 1=B)

	clr.l    d4                     ; Clear d4 ready to work with
	move.b   d1, d4                 ; Move Y coord (lower byte of d1) to d4
	lsl.w    #0x6, d4 ; mulu.w   #vdp_plane_width, d4   ; Multiply Y by line width (H40 mode - 64 tiles horizontally) to get Y offset
	swap     d1               		; X coord to lower word
	add.b    d1, d4                 ; Add X coord to offset
	lsl.w    #0x1, d4               ; Convert to words

	tst.b   d3
	bne     @PlaneB
	addi.l  #vram_addr_plane_a, d4	; Add VRAM address offset
	bra     @EndSelectPlane
	@PlaneB:
	addi.l  #vram_addr_plane_b, d4	; Add VRAM address offset
	@EndSelectPlane:

	rol.l   #0x2, d4				; Roll bits 14/15 of address to bits 16/17
	lsr.w   #0x2, d4				; Shift lower word back
	swap    d4                     	; Swap address hi/lo
	ori.l   #vdp_cmd_vram_write, d4 ; OR in VRAM write command
	move.l  d4, vdp_control        	; Move dest address to VDP control port

	; Map tile bit pattern: LPPH VTTT TTTT TTTT (L=lo/hi plane, P=Palette, H=HFlip, V=VFlip, T=TileId)

	clr.l    d4                     ; Clear d4 ready to work with again
	move.b   d2, d4                 ; Move palette ID (lower byte of d2) to d4
	andi.w  #0x3, d4
	ror.w   #0x3, d4				; Shift palette ID to bits 14-13

	clr.w    d2

	move.w   #(screen_width/8), d3
	@CharCopy:
	clr.w    d4                     ; Clear tile ID
	move.w   d4, vdp_data           ; Move palette and tile ID to VDP data port
	dbra     d3, @CharCopy          ; Next tile

	@OutOfBounds:


	rts
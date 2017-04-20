;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   score.asm - End of level firefly "score sheet"
;==============================================================

; Level data (screen contains game objects, so need to provide one)
Lvl0_EndLevel:

	dc.l tiles_l1						; Tileset
	dc.l map_blocks_end_level			; Blocks
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

EndLevelScore_TextFontSize		equ Tiles_PixelFontSizeT
EndLevelScore_TextFontPaletteId	equ 0x1
EndLevelScore_TextFontColourIdx	equ	0x1
EndLevelScore_TextFontColour	equ 0x0EEE
EndLevelScore_TitlePosX			equ (screen_width/2-((19/2)*8))
EndLevelScore_TitlePosY			equ (2*8)
EndLevelScore_TextPosX			equ (screen_width/2-(3*8))
EndLevelScore_TextPosY			equ (4*8)
EndLevelScore_TextSpacingY		equ (2*8)
EndLevelScore_MaxStringLen		equ 0x18

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

; Strings
EndLevelString_title:
	dc.b 'FIREFLIES COLLECTED',0
	even
	
; Struct
	rsset	0x0
;----------------------------------
EndLevelScore_Firefly			 rs.b Firefly_Struct_Size
EndLevelScore_TextTileBuffTitle	 rs.w EndLevelScore_MaxStringLen
EndLevelScore_TextTileBuffAct1	 rs.w EndLevelScore_MaxStringLen
EndLevelScore_TextTileBuffAct2	 rs.w EndLevelScore_MaxStringLen
EndLevelScore_TextTileBuffAct3	 rs.w EndLevelScore_MaxStringLen
EndLevelScore_TextTileBuffAct4	 rs.w EndLevelScore_MaxStringLen
EndLevelScore_TextSpritesCountT	 rs.b 1
EndLevelScore_TextSpritesCount1	 rs.b 1
EndLevelScore_TextSpritesCount2	 rs.b 1
EndLevelScore_TextSpritesCount3	 rs.b 1
EndLevelScore_TextSpritesCount4	 rs.b 1
;----------------------------------
EndLevelScore_Struct_Pad		 rs.b 3
EndLevelScore_Struct_Size		 rs.b 0
;----------------------------------
	
EndLevelScoreScreen_Enter:

	; Disable vint during state change
	move.b #0x0, vint_enabled

	; Reset state (but leave audio playing)
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset

	; Set BG colour
	move.w #(EndLevelScore_TextFontPaletteId<<4), d0
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

	; Load FG map
	lea    map_blocks_end_level, a0
	lea    map_blockmap_end_level, a1
	move.l #(map_blockmap_end_level_width<<16)|map_blockmap_end_level_height, d1
	move.w (vram_addr_leveltiles), d2
	move.l #PaletteId_World0, d3
	jsr    VDP_LoadBlockMapPlaneA

	;==============================================================

	; Set empty level (for game object processing)
	move.l #Lvl0_EndLevel, CurrentLevel
	move.l (CurrentLevel), a1

	; Load objects
	jsr    end_level_LoadGameObjects

	; Disable Fuzzl physics (no terrain data)
	ENTITY_GETBYNAME Fuzzl, end_level_Fuzzl, a0
	move.b #0x0, PhysicsObj_HasPhysics(a0)

	;==============================================================

	; Create text
	lea    GameStateEndLevelScoreData, a0

	; Title
	PUSHL  a0
	clr.l  d0
	move.w (vram_addr_systemfont), d0	; Font VDP address
	divu.w #size_tile_b, d0
	lea    EndLevelString_title, a0	; String
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffTitle, a1	; Output tile ID buffer
	jsr    TXT_CreateTileIDList		; Create tile ID string
	POPL   a0

	move.b d0, EndLevelScore_TextSpritesCountT(a0)

	; L1A1
	; TODO: Store in level data
	PUSHL  a0
	move.w (FireflyPickupCountL1A1), d0; Get collected firefly count
	move.w #L1A1_Firefly_count, d1	; Get total firefly count
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct1, a1	; Output tile ID buffer
	jsr    EndLevelScoreScreen_CreateFireflyCountText
	POPL   a0

	move.b d0, EndLevelScore_TextSpritesCount1(a0)

	; L1A2
	; TODO: Store in level data
	PUSHL  a0
	move.w (FireflyPickupCountL1A2), d0; Get collected firefly count
	move.w #L1A2_Firefly_count, d1	; Get total firefly count
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct2, a1	; Output tile ID buffer
	jsr    EndLevelScoreScreen_CreateFireflyCountText
	POPL   a0

	move.b d0, EndLevelScore_TextSpritesCount2(a0)

	; L1A3
	; TODO: Store in level data
	PUSHL  a0
	move.w (FireflyPickupCountL1A3), d0; Get collected firefly count
	move.w #L1A3_Firefly_count, d1	; Get total firefly count
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct3, a1	; Output tile ID buffer
	jsr    EndLevelScoreScreen_CreateFireflyCountText
	POPL   a0

	move.b d0, EndLevelScore_TextSpritesCount3(a0)

	; L1A4
	; TODO: Store in level data
	PUSHL  a0
	move.w (FireflyPickupCountL1A4), d0; Get collected firefly count
	move.w #L1A4_Firefly_count, d1	; Get total firefly count
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct4, a1	; Output tile ID buffer
	jsr    EndLevelScoreScreen_CreateFireflyCountText
	POPL   a0

	move.b d0, EndLevelScore_TextSpritesCount4(a0)

	;==============================================================

	; Begin fade up
	lea    palette_l1_night, a0
	move.l #PaletteId_World0, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    palette_fuzzl, a0
	move.l #PaletteId_Fuzzl, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #0xF, d4
	jsr    PAL_LerpStart

	lea    EndLevelScore_Palette, a0
	move.l #EndLevelScore_TextFontPaletteId, d0
	move.l #EndLevelScoreScreenFadeTime, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.l #0x0, d3
	move.l #EndLevelScoreScreenNumColours, d4
	jsr    PAL_LerpStart

	;==============================================================
	
	; Flush VDP queue
	jsr    VDP_JobQueue_ExecuteAll
	
	; Reset timer
	move.l #EndLevelScoreScreenDelayTime, TimerLogoFade
	
	rts
	
EndLevelScoreScreen_Exit:
	
	rts
	
EndLevelScoreScreen_Update:

	; Wait for fade to finish
	jsr    PAL_LerpActive
	cmp.b  #0x0, d0
	bne    @Fading

	; If already done fade to black
	cmp.l  #0x0, TimerLogoFade
	beq    @FadedOut
	
	; Wait for timeout
	move.l (TimerLogoFade), d0
	sub.l  #0x1, d0
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
	jsr    PAL_LerpStart
	bra    @End
	
	; Mark end of sequence
	move.l #0x0, TimerLogoFade
	
	@FadedOut:
	
	move.l (CurrentLevel), a1
	cmp.l  #0x0, a1
	beq    @EndOfGame
	move.l Level_NextLevel(a1), CurrentLevel
	cmp.l  #0x0, CurrentLevel
	beq    @EndOfGame
	
	; Next level gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	bra    @End
	
	@EndOfGame:
	
	; Reset to first level and head to demo end screen
	move.l #InitialLevel, CurrentLevel
	lea    GameStateDemoEnd, a0
	jsr    GameStateEnter

	@Fading:
	@NotElapsed:
	@End:

	; Get level data
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	rts
	
EndLevelScoreScreen_Render:

	PUSHL  a0
	PUSHL  a1

	lea    GameStateEndLevelScoreData, a0

	move.l #(((EndLevelScore_TitlePosX+vdp_sprite_border_x)<<16)|(EndLevelScore_TitlePosY+vdp_sprite_border_y)), d1		; X/Y coord

	; Title
	; TODO: Store in level data
	clr.l  d4
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffTitle, a1	; Tile ID buffer
	move.b EndLevelScore_TextSpritesCountT(a0), d4							; Count
	PUSHL  d1/a0
	jsr    EndLevelScoreScreen_DrawText
	POPL   d1/a0

	add.l  #EndLevelScore_TextSpacingY, d1
	
	move.l #(((EndLevelScore_TextPosX+vdp_sprite_border_x)<<16)|(EndLevelScore_TextPosY+vdp_sprite_border_y)), d1		; X/Y coord

	; L1A1
	; TODO: Store in level data
	clr.l  d4
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct1, a1	; Tile ID buffer
	move.b EndLevelScore_TextSpritesCount1(a0), d4							; Count
	PUSHL  d1/a0
	jsr    EndLevelScoreScreen_DrawText
	POPL   d1/a0

	add.l  #EndLevelScore_TextSpacingY, d1

	; L1A2
	; TODO: Store in level data
	clr.l  d4
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct2, a1	; Tile ID buffer
	move.b EndLevelScore_TextSpritesCount2(a0), d4							; Count
	PUSHL  d1/a0
	jsr    EndLevelScoreScreen_DrawText
	POPL   d1/a0

	add.l  #EndLevelScore_TextSpacingY, d1

	; L1A3
	; TODO: Store in level data
	clr.l  d4
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct3, a1	; Tile ID buffer
	move.b EndLevelScore_TextSpritesCount3(a0), d4							; Count
	PUSHL  d1/a0
	jsr    EndLevelScoreScreen_DrawText
	POPL   d1/a0

	add.l  #EndLevelScore_TextSpacingY, d1

	; L1A4
	; TODO: Store in level data
	clr.l  d4
	move.l #GameStateEndLevelScoreData+EndLevelScore_TextTileBuffAct4, a1	; Tile ID buffer
	move.b EndLevelScore_TextSpritesCount4(a0), d4							; Count
	PUSHL  d1/a0
	jsr    EndLevelScoreScreen_DrawText
	POPL   d1/a0

	add.l  #EndLevelScore_TextSpacingY, d1
	
	POPL   a1
	POPL   a0

	rts
	
EndLevelScoreScreen_CreateFireflyCountText:
	; a1 --- Tile buffer
	; d0 (w) Collected count
	; d1 (w) Total Count

	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	move.l  a0, a2
	
	; Firefly count to string
	PUSHL   d1
	jsr     TXT_ItoA_w					; To string
	POPL    d1
	subi.l  #0x1, a0					; Remove terminator
	move.b  #'/', (a0)+					; Append '/'
	move.w  d1, d0
	jsr     TXT_ItoA_w					; To string
	
	clr.l   d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	divu.w  #size_tile_b, d0
	move.l  a2, a0						; String
	jsr     TXT_CreateTileIDList		; Create tile ID string
	
	; Free string space
	add.l   #0x10, sp

	rts

EndLevelScoreScreen_DrawText:
	; a1 --- Tile ID buffer
	; d1 (l) X/Y pos
	; d4 (b) Count

	; Add all text glyphs for drawing
	move.b #0x0, d0															; 1x1 sprite
	move.w #((EndLevelScore_TextFontPaletteId<<13)|1<<15), d3				; Palette/flip/priority bits
	subi.w #0x1, d4
	@TextLp:
	PUSHL  d4
	
	; Get tile idx
	move.w (a1)+, d2
	
	; Create and link sprite
	PUSHM  d0-d3/a0-a1
	jsr    SPR_AddSubSprite
	POPM   d0-d3/a0-a1

	; Next X
	add.l  #0x00080000, d1

	POPL   d4
	dbra   d4, @TextLp

	; Get level data
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll

	rts
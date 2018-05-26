;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pause.asm - Pause game state
;==============================================================

GameStatePause:
	dc.l Pause_Enter
	dc.l Pause_Exit
	dc.l Pause_Update
	dc.l Pause_Render
	dc.l 0x0

GameStatePause_MaxStringLen	equ 0x8
	
; Struct
	rsset	0x0
;---------------------------------------------
PauseState_FireflyTextTileBuff			rs.w GameStatePause_MaxStringLen
PauseState_FireflyTotalTextTileBuff		rs.w GameStatePause_MaxStringLen
PauseState_PasswordTextTileBuff			rs.w GameStatePause_MaxStringLen
PauseState_Firefly						rs.l 1
PauseState_FireflyPosX					rs.l 1
PauseState_FireflyPosY					rs.l 1
PauseState_VRAMAddr						rs.w 1
PauseState_PrevPadState					rs.w 1
PauseState_FireflyWorldGridFlags		rs.b 1
PauseState_FireflySpritePrio			rs.b 1
PauseState_FireflyVisible				rs.b 1
PauseState_FireflyActive				rs.b 1
PauseState_FireflyTextSpritesCount		rs.b 1
PauseState_FireflyTotalTextSpritesCount	rs.b 1
PauseState_PasswordTextSpritesCount		rs.b 1
PauseState_DebugDrawMode				rs.b 1
PauseState_PrevWaterLevel				rs.b 1
;---------------------------------------------
	RS_ALIGN
PauseState_Struct_Size					rs.b 0
;---------------------------------------------

PauseText_FontSize		equ tiles_twfont_size_t
PauseText_FontPaletteId	equ PaletteId_Monster	; Least used palette
PauseText_FontColourIdx	equ	0x1
PauseText_FontColour	equ 0x0EEE

PauseText_FireflyPosX		equ (screen_width-(10*8))
PauseText_FireflyPosY		equ (screen_height-(4*8))
PauseText_FireflyTotalPosX	equ (screen_width-(10*8))
PauseText_FireflyTotalPosY	equ (screen_height-(3*8))
PauseText_FireflySpritePosX	equ (screen_width-(10*8))
PauseText_FireflySpritePosY	equ (screen_height-(3*8))
PauseText_PasswordPosX		equ (4*8)
PauseText_PasswordPosY		equ (screen_height-(4*8))

	IFND FINAL
DebugText_VRAM_PosX		equ 0x2*8
DebugText_VRAM_PosY		equ 0x2*8
DebugText_VRAM_StrLen	equ 13
DebugText_VRAM_Str1:	dc.b "VRAM 1 free: "
DebugText_VRAM_Str2:	dc.b "VRAM 2 free: "
DebugText_VRAM_Str3:	dc.b "VRAM 3 free: "
DebugText_RAM_Str:		dc.b "OBJ RAM free: "
	even
	ENDIF
	
Pause_Enter:

	PUSHL  a0
	PUSHL  a1
	
	lea    GameStatePauseData, a0

	; Pause audio, stop SFX
	jsr    SND_PauseBGM
	jsr    SND_StopSFX
	
	; Backup current pad state
	; TODO: Handle input reads globally
	IF AUTOTEST_ENABLED
	lea AutotestData, a4
	move.w Autotest_PadDataA(a4), d0
	ELSE
	jsr    PAD_ReadPadA
	ENDIF

	move.w d0, PauseState_PrevPadState(a0)

	; Backup water level
	move.b raster_water_level, PauseState_PrevWaterLevel(a0)
	
	; Begin greyscale effect
	PUSHL  a0
	
	; Greyscale palettes
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleInst, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Player, d0
	move.b #VFXGreyscaleInst, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Monster, d0
	move.b #VFXGreyscaleInst, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Fuzzl, d0
	move.b #VFXGreyscaleInst, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	; Hack: Set font colour directly
	lea    CurrentPalettes+(size_palette_b*PauseText_FontPaletteId), a0
	move.w #PauseText_FontColour, (PauseText_FontColourIdx*size_word)(a0)
	bset   #PauseText_FontPaletteId, DirtyPalettesMask

	POPL a0

	;==============================================================

	tst.w   EntityCount_Firefly
	beq     @NoFireflyString
	
	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	
	; Firefly count to string
	PUSHL   a0
	move.w  (FireflyPickupCountAct), d0	; Get collected firefly count
	jsr     TXT_ItoA_w					; To string
	subq.l  #0x1, a0					; Remove terminator
	move.b  #'/', (a0)+					; Append '/'
	move.w  (EntityCount_Firefly), d0	; Get total firefly count
	jsr     TXT_ItoA_w					; To string
	POPL    a0
	
	PUSHL   a0
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	BYTES2TILES d0
	move.l  #GameStatePauseData+PauseState_FireflyTextTileBuff, a1	; Output tile ID buffer
	jsr     TXT_CreateTileIDList
	POPL    a0

	; Store text sprites count
	lea    GameStatePauseData, a2
	move.b d0, PauseState_FireflyTextSpritesCount(a2)

	; Free string space
	addi.l  #0x10, sp

	@NoFireflyString:

	;==============================================================

	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	
	; Firefly total count to string
	PUSHL   a0
	move.w  (FireflyPickupCountTotalUI), d0	; Get total collected firefly count
	jsr     TXT_ItoA_w					; To string
	subq.l  #0x1, a0					; Remove terminator
	move.b  #'/', (a0)+					; Append '/'
	move.w  #TotalFireflyCount, d0		; Get total firefly count
	jsr     TXT_ItoA_w					; To string
	POPL    a0
	
	PUSHL   a0
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	BYTES2TILES d0
	move.l  #GameStatePauseData+PauseState_FireflyTotalTextTileBuff, a1	; Output tile ID buffer
	jsr     TXT_CreateTileIDList
	POPL    a0

	; Store text sprites count
	lea    GameStatePauseData, a2
	move.b d0, PauseState_FireflyTotalTextSpritesCount(a2)

	; Free string space
	addi.l  #0x10, sp

	;==============================================================

	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0

	; Password to string
	PUSHL   a0
	move.l  (CurrentSavePassword), d0	; Get password
	move.w  #(size_long*2)-1, d3		; 8 nybbles

	@PasswdStringLp:
	move.b  d0, d1					; Move bottom byte to d1
	andi.b  #0x0F, d1				; Mask bottom nybble
	addi.b  #'A', d1				; Offset to 'A' ASCII start
	move.b  d1, (a0)+				; To string
	lsr.l   #0x4, d0				; Next nybble
	dbra    d3, @PasswdStringLp

	move.b  #0x0, (a0)+				; Add terminator
	POPL    a0

	PUSHL   a0
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	BYTES2TILES d0
	move.l  #GameStatePauseData+PauseState_PasswordTextTileBuff, a1	; Output tile ID buffer
	jsr     TXT_CreateTileIDList
	POPL    a0

	; Store text sprites count
	lea    GameStatePauseData, a2
	move.b d0, PauseState_PasswordTextSpritesCount(a2)
	
	; Free string space
	addi.l  #0x10, sp

	;==============================================================

	; Hijack a firefly from the game
	PUSHM  a0-a1

	tst.w   EntityCount_Firefly
	beq     @NoFireflies

	lea    GameStatePauseData, a1
	move.l EntityPoolStart_Firefly, a0
	move.l a0, PauseState_Firefly(a1)
	cmpa.w #0x0, a0
	beq    @NoFireflies

	; Backup its world grid state, position and sprite prio
	move.l Entity_WorldPosX(a0), PauseState_FireflyPosX(a1)
	move.l Entity_WorldPosY(a0), PauseState_FireflyPosY(a1)
	move.b Entity_WorldGridFlags(a0), PauseState_FireflyWorldGridFlags(a1)
	move.b SpriteObj_Priority(a0), PauseState_FireflySpritePrio(a1)
	move.b SpriteObj_Visible(a0), PauseState_FireflyVisible(a1)
	move.b Entity_Active(a0), PauseState_FireflyActive(a1)

	; Set as rendering, remove from world grid
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToRenderList
	
	; Set visible and active
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x1, Entity_Active(a0)
	
	; Set UI position
	move.l (WorldScrollX), d0
	move.l (WorldScrollY), d1
	addi.l #((PauseText_FireflySpritePosX+vdp_sprite_border_x-Firefly_Width-4)*subpixels_per_pixel), d0
	addi.l #((PauseText_FireflySpritePosY+vdp_sprite_border_y-(Firefly_Height/2))*subpixels_per_pixel), d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	
	; Set high sprite priority
	move.b #0x1, SpriteObj_Priority(a0)

	@NoFireflies:
	POPM   a0-a1
	
	POPL    a1
	POPL    a0
	
	rts
	
Pause_Exit:

	PUSHL  a0
	PUSHL  a1

	; Restore audio
	jsr    SND_ResumeBGM

	; Restore water level
	move.b PauseState_PrevWaterLevel(a0), raster_water_level

	; Restore scene palettes
	PUSHL  a0

	lea    ScenePalettes+(size_palette_b*PaletteId_World0), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    ScenePalettes+(size_palette_b*PaletteId_Monster), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    ScenePalettes+(size_palette_b*PaletteId_Fuzzl), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    ScenePalettes+(size_palette_b*PaletteId_Player), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	; Mark all palettes dirty
	move.b #0xF, DirtyPalettesMask
	move.b #0xF, UnderwaterDirtyPalettesMask
	
	POPL   a0

	tst.w   EntityCount_Firefly
	beq     @NoDisplayFireflies
	
	; Restore firefly
	PUSHM  a0-a1
	lea    GameStatePauseData, a1
	move.l PauseState_Firefly(a1), a0
	cmpa.w #0x0, a0
	beq    @NoFirefly

	; Restore its world grid state, position and sprite prio
	move.l PauseState_FireflyPosX(a1), Entity_WorldPosX(a0)
	move.l PauseState_FireflyPosY(a1), Entity_WorldPosY(a0)
	move.b PauseState_FireflySpritePrio(a1), SpriteObj_Priority(a0)
	move.b PauseState_FireflyVisible(a1), SpriteObj_Visible(a0)
	move.b PauseState_FireflyActive(a1), Entity_Active(a0)
	
	; Remove from render list if not previously present
	move.b PauseState_FireflyWorldGridFlags(a1), d0
	btst   #EntityWorldGridFlag_InRenderList, d0
	bne    @InRenderList
	jsr    EntityRemoveFromRenderList
	@InRenderList:

	; Re-add to world grid if previously present
	move.b PauseState_FireflyWorldGridFlags(a1), d0
	btst   #EntityWorldGridFlag_InWorldGrid, d0
	beq    @NotInWorldGrid
	andi.b #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr    EntityAddToWorldGrid
	@NotInWorldGrid:

	@NoFirefly:
	POPM   a0-a1

	@NoDisplayFireflies:
	
	; Backup current pad state
	; TODO: Handle input reads globally

	IF AUTOTEST_ENABLED

	; Autotest pad input
	lea AutotestData, a4
	move.w Autotest_PadDataA(a4), d0
	
	ELSE

	jsr    PAD_ReadPadA

	ENDIF

	move.w d0, Gamepad1PrevState
	
	POPL   a1
	POPL   a0
	
	rts
	
Pause_Update:

	PUSHL  a0
	PUSHL  a1
	
	lea    GameStatePauseData, a0

	; Read pad
	IF AUTOTEST_ENABLED
	lea AutotestData, a4
	move.w Autotest_PadDataA(a4), d0
	move.w #0x0, Autotest_PadDataA(a4)
	ELSE
	jsr    PAD_ReadPadA
	ENDIF
	
	; Get prev state
	move.w PauseState_PrevPadState(a0), d1

	; Check reset combo
	cmp.w  #SoftResetButtonCombo, d0
	bne    @NoSoftReset
	jsr    GameSoftReset
	bra    @End

	@NoSoftReset:
	
	; Check start button
	btst   #pad_button_start, d0
	beq    @NoStart
	btst   #pad_button_start, d1
	bne    @NoStart
	
	; Resume game
	PUSHM  a0-a1
	jsr    GameStatePop
	POPM   a0-a1
	
	@NoStart:
	
	IFND FINAL
	; Check debug mode button
	btst   #pad_button_c, d0
	beq    @NoDebug
	btst   #pad_button_c, d1
	bne    @NoDebug
	
	; Toggle debug draw mode
	eor.b  #0x1, PauseState_DebugDrawMode(a0)
	@NoDebug:
	ENDIF
	
	; Backup prev pad state
	move.w d0, PauseState_PrevPadState(a0)

	tst.w   EntityCount_Firefly
	beq     @NoDisplayFireflies
	
	; Update temp firefly
	PUSHM  a0-a1
	lea    GameStatePauseData, a1
	move.l PauseState_Firefly(a1), a0
	cmpa.w #0x0, a0
	beq    @NoFirefly
	move.l Entity_UpdateRoutine(a0), a3
	jsr    (a3)
	@NoFirefly:
	POPM   a0-a1

	@NoDisplayFireflies:

	; Force water level off
	move.b #0xFF, raster_water_level

	@End:
	
	POPL   a1
	POPL   a0
	
	rts
	
Pause_Render:

	PUSHL  a0
	PUSHL  a1
	
	lea    GameStatePauseData, a0
	
	; If debug mode, draw RAM/VRAM usage
	IFND FINAL
	tst.b  PauseState_DebugDrawMode(a0)
	beq    @NotDebugMode
	jsr    Debug_DrawVRAMPools
	jsr    Debug_DrawRAMPools
	bra    @End
	@NotDebugMode:
	ENDIF
	
	; Draw game objects
	jsr EntityRenderAll
	
	; Draw firefly text
	tst.w   EntityCount_Firefly
	beq     @NoDisplayFireflies
	jsr     Pause_RenderFireflyText
	@NoDisplayFireflies:

	; Draw total firefly text
	jsr     Pause_RenderFireflyTotalText

	; Draw password text
	jsr Pause_RenderPasswordText

	@End:
	
	POPL   a1
	POPL   a0
	
	rts

Pause_RenderFireflyText:

	; Add all text glyphs for drawing
	moveq #0x0, d4
	lea    GameStatePauseData, a0
	move.l #GameStatePauseData+PauseState_FireflyTextTileBuff, a1	; Tile ID buffer
	move.b PauseState_FireflyTextSpritesCount(a0), d4				; Count
	move.b #0x0, d0											; 1x1 sprite
	move.l #(((PauseText_FireflyPosX+vdp_sprite_border_x)<<16)|(PauseText_FireflyPosY+vdp_sprite_border_y)), d1		; X/Y coord
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d3		; Palette/flip/priority bits
	subq.w #0x1, d4
	@TextLp:

	; If out of sprites, bail
	cmp.w    #vdp_max_sprites-1, next_sprite_index
	beq      @OutOfSprites

	PUSHL  d4
	
	; Get tile idx
	move.w (a1)+, d2
	
	; Create and link sprite
	PUSHM  d0-d3/a0-a1
	jsr    SPR_AddSubSprite
	POPM   d0-d3/a0-a1

	; Next X
	addi.l #0x00080000, d1

	POPL   d4
	dbra   d4, @TextLp
	
	@OutOfSprites:

	rts

Pause_RenderFireflyTotalText:

	; Add all text glyphs for drawing
	moveq #0x0, d4
	lea    GameStatePauseData, a0
	move.l #GameStatePauseData+PauseState_FireflyTotalTextTileBuff, a1	; Tile ID buffer
	move.b PauseState_FireflyTotalTextSpritesCount(a0), d4				; Count
	move.b #0x0, d0											; 1x1 sprite
	move.l #(((PauseText_FireflyTotalPosX+vdp_sprite_border_x)<<16)|(PauseText_FireflyTotalPosY+vdp_sprite_border_y)), d1		; X/Y coord
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d3		; Palette/flip/priority bits
	subq.w #0x1, d4
	@TextLp:

	; If out of sprites, bail
	cmp.w    #vdp_max_sprites-1, next_sprite_index
	beq      @OutOfSprites

	PUSHL  d4
	
	; Get tile idx
	move.w (a1)+, d2
	
	; Create and link sprite
	PUSHM  d0-d3/a0-a1
	jsr    SPR_AddSubSprite
	POPM   d0-d3/a0-a1

	; Next X
	addi.l #0x00080000, d1

	POPL   d4
	dbra   d4, @TextLp
	
	@OutOfSprites:

	rts

Pause_RenderPasswordText:

	; Add all text glyphs for drawing
	moveq #0x0, d4
	lea    GameStatePauseData, a0
	move.l #GameStatePauseData+PauseState_PasswordTextTileBuff, a1	; Tile ID buffer
	move.b PauseState_PasswordTextSpritesCount(a0), d4				; Count
	move.b #0x0, d0											; 1x1 sprite
	move.l #(((PauseText_PasswordPosX+vdp_sprite_border_x)<<16)|(PauseText_PasswordPosY+vdp_sprite_border_y)), d1		; X/Y coord
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d3		; Palette/flip/priority bits
	subq.w #0x1, d4
	@TextLp:

	; If out of sprites, bail
	cmp.w    #vdp_max_sprites-1, next_sprite_index
	beq      @OutOfSprites

	PUSHL  d4
	
	; Get tile idx
	move.w (a1)+, d2
	
	; Create and link sprite
	PUSHM  d0-d3/a0-a1
	jsr    SPR_AddSubSprite
	POPM   d0-d3/a0-a1

	; Next X
	addi.l #0x00080000, d1

	POPL   d4
	dbra   d4, @TextLp
	
	@OutOfSprites:

	rts

	IFND FINAL
	
Debug_DrawVRAMPools:

	PUSHM   a0-a1

	; Get pools addr
	lea vram_pools, a2

	; Get pool count
	move.w  #VRAMPoolCount-1, d3

	; Get draw pos
	move.l  #((DebugText_VRAM_PosX<<16)|DebugText_VRAM_PosY), d1
	
	; Get string
	lea     DebugText_VRAM_Str1, a3

	; Index
	move.w  #0x0, d4

	@PoolLp:

	PUSHM   d1-d4/a2-a3
	
	; Alloc string space
	sub.l   #0x20, sp
	move.l  sp, a0
	
	PUSHM   d1/a0
	
	; Copy string
	move.l  a3, a1
	move.l  #DebugText_VRAM_StrLen, d0
	MEMCPYB a0, a1, d0

	; Get free tiles
	moveq #0x0, d0
	move.w  VRAMPool_Free(a2), d0
	BYTES2TILES d0
	
	; Append to string
	jsr     TXT_ItoA_w
	
	POPM    d1/a0

	; Draw
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0					; Font VDP address
	BYTES2TILES d0
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d2	; Palette/flip/priority bits
	; a0 (l) - String address
	; d0 (w) - First tile ID of font
	; d1 (ww)- XY coord (in pixels)
	; d2 (w) - Palette/flip/priority bits
	jsr    TXT_DrawSprites
	
	; Free string space
	addi.l  #0x20, sp

	; Next pool
	POPM    d1-d4/a2-a3
	lea     VRAMPool_Struct_Size(a2), a2
	lea     DebugText_VRAM_StrLen(a3), a3
	addq.w  #0x8, d1
	addq.w  #0x1, d4
	dbra    d3, @PoolLp

	POPM    a0-a1

	rts

Debug_DrawRAMPools:

	PUSHM   a0-a1
	
	; Get string
	lea     DebugText_RAM_Str, a3
	
	; Alloc string space
	sub.l   #0x20, sp
	move.l  sp, a0
	
	PUSHM   a0
	
	; Copy string
	move.l  a3, a1
	move.l  #DebugText_VRAM_StrLen, d0
	MEMCPYB a0, a1, d0

	; Get free bytes
	moveq #0x0, d0
	PUSHL   a0
	lea     RAMPool_Pool_Entities, a0
	jsr     RAM_PoolGetFree
	POPL    a0
	BYTES2TILES d0
	
	; Append to string
	jsr     TXT_ItoA_w
	
	POPM    a0

	; Draw
	moveq #0x0, d0
	move.w  (vram_addr_systemfont), d0					; Font VDP address
	BYTES2TILES d0
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d2	; Palette/flip/priority bits
	move.l  #((DebugText_VRAM_PosX<<16)|(DebugText_VRAM_PosY+0x18)), d1	; Pos
	; a0 (l) - String address
	; d0 (w) - First tile ID of font
	; d1 (ww)- XY coord (in pixels)
	; d2 (w) - Palette/flip/priority bits
	jsr    TXT_DrawSprites
	
	; Free string space
	addi.l  #0x20, sp

	POPM    a0-a1
	
	rts

	ENDIF

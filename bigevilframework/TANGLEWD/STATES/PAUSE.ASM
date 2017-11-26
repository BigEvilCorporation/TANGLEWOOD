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
;----------------------------------
PauseState_Firefly					rs.b Firefly_Struct_Size
PauseState_FireflyTextTileBuff		rs.w GameStatePause_MaxStringLen
PauseState_PasswordTextTileBuff		rs.w GameStatePause_MaxStringLen
PauseState_VRAMAddr					rs.w 1
PauseState_PrevPadState				rs.w 1
PauseState_FireflyTextSpritesCount	rs.b 1
PauseState_PasswordTextSpritesCount	rs.b 1
PauseState_DebugDrawMode			rs.b 1
;----------------------------------
	RS_ALIGN
PauseState_Struct_Size				rs.b 0
;----------------------------------

PauseText_FontSize		equ tiles_twfont_size_t
PauseText_FontPaletteId	equ PaletteId_Monster	; Least used palette
PauseText_FontColourIdx	equ	0x1
PauseText_FontColour	equ 0x0EEE
PauseText_FireflyPosX	equ (screen_width-(8*8))
PauseText_FireflyPosY	equ (screen_height-(4*8))
PauseText_PasswordPosX	equ (4*8)
PauseText_PasswordPosY	equ (screen_height-(4*8))

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
	
	; Backup current pad state
	; TODO: Handle input reads globally
	jsr    PAD_ReadPadA
	move.w d0, PauseState_PrevPadState(a0)
	
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

	;==============================================================

	; Password to string
	PUSHL   a0
	move.l  (CurrentSavePassword), d0	; Get password
	move.w  #(size_long*2)-1, d3		; 8 nybbles

	@PasswdStringLp:
	move.b  d0, d1					; Move bottom byte to d1
	andi.b  #0x0F, d1				; Mask bottom nyble
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

	; Create temp firefly
	lea    GameStatePauseData, a0
	lea    PauseState_Firefly(a0), a0
	jsr    FireflyInit
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityAddToRenderList

	; TODO: This isn't freed :(
	move.w PauseState_VRAMAddr(a0), d0
	bne    @Allocated
	move.w #actor_firefly_sheet_red_VRAM_size_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, PauseState_VRAMAddr(a0)
	@Allocated:

	; Load sprite sheet
	SPRITE_LOAD_DEFAULT firefly,red,PaletteId_Fuzzl,0x0
	
	move.l (WorldScrollX), d0
	move.l (WorldScrollY), d1
	addi.l #((PauseText_FireflyPosX+vdp_sprite_border_x-Firefly_Width-4)*subpixels_per_pixel), d0
	addi.l #((PauseText_FireflyPosY+vdp_sprite_border_y-(Firefly_Height/2))*subpixels_per_pixel), d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	
	; Set high sprite priority
	move.b #0x1, SpriteObj_Priority(a0)
	
	POPL    a1
	POPL    a0
	
	rts
	
Pause_Exit:

	PUSHL  a0
	PUSHL  a1

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
	
	; Delete temp firefly
	lea    GameStatePauseData+PauseState_Firefly, a0
	jsr    FireflyShutdown
	
	; Backup current pad state
	; TODO: Handle input reads globally
	jsr    PAD_ReadPadA
	move.w d0, Gamepad1PrevState
	
	POPL   a1
	POPL   a0
	
	rts
	
Pause_Update:

	PUSHL  a0
	PUSHL  a1
	
	lea    GameStatePauseData, a0

	; Read pad
	jsr    PAD_ReadPadA
	
	; Get prev state
	move.w PauseState_PrevPadState(a0), d1
	
	; Check start button
	btst   #pad_button_start, d0
	beq    @NoStart
	btst   #pad_button_start, d1
	bne    @NoStart
	
	; Resume game
	PUSHL  a1
	jsr    GameStatePop
	POPL   a1
	
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
	
	; Update temp firefly
	lea    GameStatePauseData+PauseState_Firefly, a0
	move.l Entity_UpdateRoutine(a0), a3
	jsr    (a3)
	
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
	jsr Pause_RenderFireflyText

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

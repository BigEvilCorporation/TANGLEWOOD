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
PauseState_PaletteBackup	 rs.b (0x20*4)	; TODO: why won't size_palette_b evaluate here? 
PauseState_Firefly			 rs.b Firefly_Struct_Size
PauseState_TextTileBuff		 rs.b GameStatePause_MaxStringLen
PauseState_VRAMAddr			 rs.w 1
PauseState_PrevPadState		 rs.w 1
PauseState_TextSpritesCount  rs.b 1
;----------------------------------
PauseState_Struct_Pad		 rs.b 3
PauseState_Struct_Size		 rs.b 0
;----------------------------------

PauseText_FontSize		equ Tiles_PixelFontSizeT
PauseText_FontPaletteId	equ PaletteId_Monster	; Least used palette
PauseText_FontColourIdx	equ	0x1
PauseText_FontColour	equ 0x0EEE
PauseText_PosX			equ (screen_width-(8*8))
PauseText_PosY			equ (screen_height-(4*8))
	
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
	
	; Backup palettes
	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_World0), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Monster), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Fuzzl), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Player), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a0, a1, d0
	
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
	
	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	move.l  a0, a1
	
	; Firefly count to string
	move.w  (FireflyPickupCount), d0	; Get collected firefly count
	jsr     TXT_ItoA_w					; To string
	subi.l  #0x1, a0					; Remove terminator
	move.b  #'/', (a0)+					; Append '/'
	move.w  (EntityCount_Firefly), d0	; Get total firefly count
	jsr     TXT_ItoA_w					; To string
	
	clr.l   d0
	move.w  (vram_addr_systemfont), d0	; Font VDP address
	divu.w  #size_tile_b, d0
	move.l  a1, a0						; String
	move.l  #GameStatePauseData+PauseState_TextTileBuff, a1	; Output tile ID buffer
	jsr     TXT_CreateTileIDList
	
	; Free string space
	add.l   #0x10, sp
	
	; Store text sprites count
	lea    GameStatePauseData, a0
	move.b d0, PauseState_TextSpritesCount(a0)
		
	; Create temp firefly
	addi.l #PauseState_Firefly, a0
	jsr    FireflyInit

	; TODO: This isn't freed :(
	move.w PauseState_VRAMAddr(a0), d0
	cmp.w  #0x0, d0
	bne    @Allocated
	move.w #sprite_firefly_size_b, d0
	jsr    VRAM_PoolAlloc
	move.w d0, PauseState_VRAMAddr(a0)
	@Allocated:

	; Load sprite sheet
	lea    spritesheets_firefly, a1
	lea    sprite_firefly_subsprite_dimensions_bits, a2
	lea    sprite_firefly_subsprite_pos_offsets, a3
	lea    sprite_firefly_numtiles_per_subsprite, a4
	move.l #sprite_firefly_size_t, d1
	move.b #sprite_firefly_size_subsprites, d2
	move.w #sprite_firefly_widthheight_subsprites, d3
	move.b #PaletteId_Fuzzl, d4
	move.b #0x0, d5
	jsr    SpriteObjLoad
	
	move.l (WorldScrollX), d0
	move.l (WorldScrollY), d1
	add.l  #((PauseText_PosX+vdp_sprite_border_x-Firefly_Width-4)*subpixels_per_pixel), d0
	add.l  #((PauseText_PosY+vdp_sprite_border_y-(Firefly_Height/2))*subpixels_per_pixel), d1
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

	; Reset palettes
	PUSHL  a0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_World0), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_World0), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Monster), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Monster), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Fuzzl), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Fuzzl), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	lea    (GameStatePauseData+PauseState_PaletteBackup)+(size_palette_b*PaletteId_Player), a0
	lea    CurrentPalettes+(size_palette_b*PaletteId_Player), a1
	move.l #(size_palette_b/size_long), d0
	MEMCPYL a1, a0, d0

	; Mark all palettes dirty
	move.b #0xF, DirtyPalettesMask
	move.b #0xF, UnderwaterDirtyPalettesMask
	
	POPL   a0
	
	; Delete temp firefly
	lea    GameStatePauseData, a0
	addi.l #PauseState_Firefly, a0
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
	
	; Backup prev pad state
	move.w d0, PauseState_PrevPadState(a0)
	
	; Update temp firefly
	lea    GameStatePauseData, a0
	addi.l #PauseState_Firefly, a0
	move.l Entity_UpdateRoutine(a0), a3
	jsr    (a3)
	
	POPL   a1
	POPL   a0
	
	rts
	
Pause_Render:

	PUSHL  a0
	PUSHL  a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	; Add all text glyphs for drawing
	clr.l  d4
	lea    GameStatePauseData, a0
	move.l #GameStatePauseData+PauseState_TextTileBuff, a1	; Tile ID buffer
	move.b PauseState_TextSpritesCount(a0), d4				; Count
	move.b #0x0, d0											; 1x1 sprite
	move.l #(((PauseText_PosX+vdp_sprite_border_x)<<16)|(PauseText_PosY+vdp_sprite_border_y)), d1		; X/Y coord
	move.w #((PauseText_FontPaletteId<<13)|1<<15), d3		; Palette/flip/priority bits
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
	
	POPL   a1
	POPL   a0
	
	rts
	
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
	
; Struct
	rsset	0x0
;----------------------------------
PauseState_PaletteBackup	 rs.b (0x20*4)	; TODO: why won't size_palette_b evaluate here? 
PauseState_Firefly			 rs.b Firefly_Struct_Size
PauseState_PrevPadState		 rs.w 1
PauseState_TextSpritesID     rs.w 1
PauseState_TextSpritesCount  rs.w 1
;----------------------------------
PauseState_Struct_Pad		 rs.b 2
PauseState_Struct_Size		 rs.b 0
;----------------------------------

PauseText_Font			equ Tiles_PixelFont
PauseText_FontSize		equ Tiles_PixelFontSizeT
PauseText_FontAddr		equ Tiles_PixelFontVRAM
PauseText_FontTileId	equ (PauseText_FontAddr/size_tile_b)
PauseText_Palette		equ 0x0
PauseText_PosX			equ 0x04
PauseText_PosY			equ 0x04
	
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
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_World0), a0
	move.l #PaletteId_World0, d0
	jsr    PAL_Read
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Player), a0
	move.l #PaletteId_Player, d0
	jsr    PAL_Read
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Monster), a0
	move.l #PaletteId_Monster, d0
	jsr    PAL_Read
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Fuzzl), a0
	move.l #PaletteId_Fuzzl, d0
	jsr    PAL_Read
	
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
	move.w  (EntityCount_Fireflies), d0	; Get total firefly count
	jsr     TXT_ItoA_w					; To string
	
	move.w  #PauseText_FontTileId, d0	; Font VDP address
	move.l  #(((PauseText_PosX*8)<<16)|(PauseText_PosY*8)), d1		; X/Y coord
	move.b  #PauseText_Palette, d2		; Palette index
	move.b  #0x0, d3					; Plane A
	move.l  a1, a0						; String
	jsr     TXT_DrawSprites
	
	; Free string space
	add.l   #0x10, sp
	
	; Store text sprites ID/count
	lea    GameStatePauseData, a0
	move.w d3, PauseState_TextSpritesID(a0)
	move.w d4, PauseState_TextSpritesCount(a0)
		
	; Create temp firefly
	addi.l #PauseState_Firefly, a0
	jsr    FireflyInit

	move.l #Tiles_fireflyVRAM, d0
	move.l (EntityCount_Fireflies), d0
	subi.l #0x1, d0
	mulu   #sprite_firefly_size_b, d0
	
	lea    spritesheets_firefly, a1
	lea    sprite_firefly_subsprite_dimensions_bits, a2
	lea    sprite_firefly_subsprite_pos_offsets, a3
	lea    sprite_firefly_numtiles_per_subsprite, a4
	
	move.l #sprite_firefly_size_t, d1
	move.b #sprite_firefly_size_subsprites, d2
	move.w #sprite_firefly_widthheight_subsprites, d3
	move.b #PaletteId_Fuzzl, d4
	jsr    SpriteObjLoad
	
	lea    Player1, a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	POPL    a1
	POPL    a0
	
	rts
	
Pause_Exit:

	PUSHL  a0
	PUSHL  a1

	; Reset palettes
	PUSHL  a0

	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_World0), a0
	move.l #PaletteId_World0, d0		; Palette idx
	jsr    PAL_LoadDMA
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Player), a0
	move.l #PaletteId_Player, d0		; Palette idx
	jsr    PAL_LoadDMA
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Monster), a0
	move.l #PaletteId_Monster, d0		; Palette idx
	jsr    PAL_LoadDMA
	
	lea    (GameStatePauseData+PauseState_PaletteBackup), a0
	add.l  #(size_palette_b*PaletteId_Fuzzl), a0
	move.l #PaletteId_Fuzzl, d0			; Palette idx
	jsr    PAL_LoadDMA
	
	POPL   a0
	
	; Delete temp firefly
	lea    GameStatePauseData, a0
	addi.l #PauseState_Firefly, a0
	jsr    FireflyShutdown
	
	; HACK: only if last allocated sprite
	subi.w #0x1, (next_sprite_index)
	
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
	
	; Draw text
	lea    GameStatePauseData, a0
	
	move.w PauseState_TextSpritesID(a0), d1 ; Next id
	move.w PauseState_TextSpritesCount(a0), d2
	
	subi.w #0x1, d2
	@TextLp:
	
	PUSHL  a0
	
	move.w (prev_sprite_link), d0			; Prev id
	PUSHL  d0
	PUSHL  d1
	jsr    SPR_Link							; Link sprite with prev
	POPL   d1
	POPL   d0
	move.w d1, prev_sprite_link				; Set as next_sprite_index
	addi.b #0x1, sprite_link_count			; Increment link count
	
	; Next sprite
	addi.w #0x1, d1
	
	POPL   a0
	
	dbra   d2, @TextLp
	
	POPL   a1
	POPL   a0
	
	rts
	
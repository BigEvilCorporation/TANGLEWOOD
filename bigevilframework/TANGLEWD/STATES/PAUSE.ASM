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
;---------------------------------
PauseState_PaletteBackup	rs.b (0x20*4)	; TODO: why won't size_palette_b evaluate here? 
PauseState_PrevPadState		rs.w 1
;---------------------------------
PauseState_Struct_Pad		rs.b 3
PauseState_Struct_Size		rs.b 0
;---------------------------------

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
	
	; Draw text
	; Alloc string space
	sub.l   #0x10, sp
	move.l  sp, a0
	
	; Firefly count to string
	move.w  (FireflyPickupCount), d0
	jsr     TXT_ItoA_Hex_w
	addi.l  #0x6, a0
	move.b  #'/', (a0)+
	move.w  (EntityCount_Fireflies), d0
	jsr     TXT_ItoA_Hex_w
	subi.l  #0x7, a0
	
	move.w  #PauseText_FontTileId, d0	; Font VDP address
	move.l  #((PauseText_PosX<<16)|PauseText_PosY), d1		; X/Y coord
	move.b  #PauseText_Palette, d2		; Palette index
	move.b  #0x0, d3					; Plane A
	jsr     TXT_DrawPlane
	
	; Free string space
	add.l   #0x10, sp
		
	; Create temp firefly
	
	POPL    a1
	POPL    a0
	
	rts
	
Pause_Exit:

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
	
	; Backup current pad state
	; TODO: Handle input reads globally
	jsr    PAD_ReadPadA
	move.w d0, Gamepad1PrevState
	
	rts
	
Pause_Update:

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
	
	rts
	
Pause_Render:

	; Draw temp firefly
	
	rts
	
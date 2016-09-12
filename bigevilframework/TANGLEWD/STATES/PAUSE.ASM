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
	
Pause_Enter:

	lea    GameStatePauseData, a0
	
	; Backup current pad state
	; TODO: Handle input reads globally
	jsr    PAD_ReadPadA
	move.w d0, PauseState_PrevPadState(a0)
	
	; Create temp firefly
	
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
	
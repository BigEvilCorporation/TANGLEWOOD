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
PauseState_PrevPadState		rs.w 1
;---------------------------------
PauseState_Struct_Pad		rs.b 2
PauseState_Struct_Size		rs.b 0
;---------------------------------
	
Pause_Enter:

	lea    GameStatePauseData, a0
	
	; Backup current pad state
	jsr    PAD_ReadPadA
	move.w d0, PauseState_PrevPadState(a0)
	
	; Create temp firefly
	
	; Begin greyscale effect
	
	; Draw text
	
	rts
	
Pause_Exit:

	; Release greyscale effect
	
	; Delete temp firefly
	
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
	
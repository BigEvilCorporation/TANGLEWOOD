;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Fail.asm - Level failed game state
;==============================================================	

; ************************************
; Function table
; ************************************
GameStateFail:
	dc.l Fail_Enter
	dc.l Fail_Exit
	dc.l Fail_Update
	dc.l Fail_Render
	
; ************************************
; Constants
; ************************************
GameStateFail_FadeDownPalette	equ palette_fade_black
GameStateFail_FadeDownSpeed		equ (0x1<<0x8) ; Subframes (1 frame per tick)
GameStateFail_ResetTimer		equ 0x0100
	
Fail_Enter:

	; Reset timer
	move.l #GameStateFail_ResetTimer, TimerFailReset
	
	; Begin fade down - all palettes except player
	move.l #GameStateFail_FadeDownPalette, a0
	move.w #GameStateFail_FadeDownSpeed, d1
	move.b #0x0, d2
	move.b #0xF, d3
	
	move.b #PaletteId_World0, d0
	jsr    PAL_LerpStart
	move.b #PaletteId_Monster, d0
	jsr    PAL_LerpStart
	move.b #PaletteId_Fuzzl, d0
	jsr    PAL_LerpStart
	
	rts
	
Fail_Exit:
	rts
	
Fail_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Update timer
	move.l (TimerFailReset), d0
	sub.l  #0x1, d0
	move.l d0, TimerFailReset
	cmp.l  #0x0, d0
	bne    @TimerRunning
	
	; Timer elapsed, restart gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	
	@TimerRunning:
	
	rts
	
Fail_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts
	
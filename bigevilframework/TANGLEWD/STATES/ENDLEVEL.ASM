;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   endlevel.asm - End level game state
;==============================================================	

; ************************************
; Function table
; ************************************
GameStateEndLevel:
	dc.l EndLevel_Enter
	dc.l EndLevel_Exit
	dc.l EndLevel_Update
	dc.l EndLevel_Render
	
; ************************************
; Constants
; ************************************
GameStateEndLevel_FadeDownPalette	equ palette_fade_white
GameStateEndLevel_FadeDownSpeed		equ (0x1<<0x8) ; Subframes (1 frame per tick)
GameStateEndLevel_ResetTimer		equ 0x0200
	
EndLevel_Enter:

	; Reset timer
	move.l #GameStateEndLevel_ResetTimer, TimerEndLevelReset
	
	; Begin fade down - all palettes except player
	move.l #GameStateEndLevel_FadeDownPalette, a0
	move.w #GameStateEndLevel_FadeDownSpeed, d1
	move.b #0x0, d2
	move.b #0xF, d3
	
	move.b #PaletteId_World0, d0
	jsr    PaletteLerpStart
	move.b #PaletteId_Monster, d0
	jsr    PaletteLerpStart
	move.b #PaletteId_Fuzzl, d0
	jsr    PaletteLerpStart
	
	rts
	
EndLevel_Exit:
	rts
	
EndLevel_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Update timer
	move.l (TimerEndLevelReset), d0
	sub.l  #0x1, d0
	move.l d0, TimerEndLevelReset
	cmp.l  #0x0, d0
	bne    @TimerRunning
	
	; Timer elapsed, set next level
	move.l Level_NextLevel(a0), CurrentLevel
	
	cmp.l  #0x0, CurrentLevel
	beq    @EndOfGame
	
	; Start gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	bra    @End
	
	@EndOfGame:
	
	; Return to main menu
	; TODO: End game/credits state
	lea    GameStateMainMenu, a0
	jsr    GameStateEnter
	
	@TimerRunning:
	@End:
	
	rts
	
EndLevel_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	rts
	
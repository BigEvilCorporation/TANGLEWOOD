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
GameStateEndLevel_SleepTime			equ 0x0180
GameStateEndLevel_ResetTime			equ 0x0100

EndLevelPhase_Sleep					equ 0x1
EndLevelPhase_Fade					equ 0x2

; ************************************
; Struct
; ************************************
	rsset	0x0
;---------------------------------
EndLevelState_Timer			rs.w 1
EndLevelState_Phase			rs.b 1
;---------------------------------
EndLevelState_Struct_Pad	rs.b 1
EndLevelState_Struct_Size	rs.b 0
;---------------------------------
	
EndLevel_Enter:

	lea    GameStateEndLevelData, a2
	
	; Set sleep phase and begin timer
	move.b #EndLevelPhase_Sleep, EndLevelState_Phase(a2)
	move.w #GameStateEndLevel_SleepTime, EndLevelState_Timer(a2)
	
	rts
	
EndLevel_Exit:
	rts
	
EndLevel_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Get state data
	lea    GameStateEndLevelData, a2
	
	; Check phase
	cmp.b  #EndLevelPhase_Sleep, EndLevelState_Phase(a2)
	beq    @SleepPhase
	cmp.b  #EndLevelPhase_Fade, EndLevelState_Phase(a2)
	beq    @FadePhase
	
	@SleepPhase:
	
	; Update timer
	move.w EndLevelState_Timer(a2), d0
	sub.w  #0x1, d0
	move.w d0, EndLevelState_Timer(a2)
	cmp.w  #0x0, d0
	bne    @TimerRunning
	
	; Timer elapsed, set fade phase and begin timer
	move.b #EndLevelPhase_Fade, EndLevelState_Phase(a2)
	move.w #GameStateEndLevel_ResetTime, EndLevelState_Timer(a2)
	
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
	
	@FadePhase:
	
	; Update timer
	move.w EndLevelState_Timer(a2), d0
	sub.w  #0x1, d0
	move.w d0, EndLevelState_Timer(a2)
	cmp.w  #0x0, d0
	bne    @TimerRunning
	
	; Timer elapsed, set next level
	move.l Level_NextLevel(a1), CurrentLevel
	
	cmp.l  #0x0, CurrentLevel
	beq    @EndOfGame
	
	; Start gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	bra    @End
	
	@EndOfGame:
	
	; Reset to first level and head to demo end screen
	move.l #Lvl1_HarlequinForest, CurrentLevel
	lea    GameStateDemoEnd, a0
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
	
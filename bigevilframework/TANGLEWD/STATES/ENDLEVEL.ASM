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
	dc.l 0x0
	
; ************************************
; Constants
; ************************************
GameStateEndLevel_FadeDownPalette	equ palette_fade_white
GameStateEndLevel_FadeDownSpeed		equ (0x1<<fade_frame_shift) ; Subframes (1 frames per tick)
GameStateEndLevel_SleepTime			equ 0x0180
GameStateEndLevel_ResetTime			equ 0x0200

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

	PUSHL  a0
	PUSHL  a1
	
	lea    GameStateEndLevelData, a2
	
	; Set sleep phase and begin timer
	move.b #EndLevelPhase_Sleep, EndLevelState_Phase(a2)
	move.w #GameStateEndLevel_SleepTime, EndLevelState_Timer(a2)
		
	; Start end of level theme
	lea    track_bgm_lvloutro, a0
	jsr    SND_PlayTrack
	
	POPL   a1
	POPL   a0
	
	rts
	
EndLevel_Exit:

	; Finished with checkpoint data
	move.l #0x0, LastActivatedCheckpoint
	move.w #0x0, LastSaveVersion
	
	rts
	
EndLevel_Update:

	PUSHL  a0
	PUSHL  a1
	
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
	subq.w  #0x1, d0
	move.w d0, EndLevelState_Timer(a2)
	tst.w  d0
	bne    @TimerRunning
	
	; Timer elapsed, set fade phase and begin timer
	move.b #EndLevelPhase_Fade, EndLevelState_Phase(a2)
	move.w #GameStateEndLevel_ResetTime, EndLevelState_Timer(a2)

	; Set player sprite high prio (so fading environment doesn't mask)
	move.l (Player1), a3
	move.b #0x1, SpriteObj_Priority(a3)
	
	; Begin fade down of level palette (all objects should be out of view)
	move.l #GameStateEndLevel_FadeDownPalette, a0
	move.w #GameStateEndLevel_FadeDownSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	
	move.b #PaletteId_World0, d0
	jsr    PAL_LerpStart
	
	@FadePhase:
	
	; Update timer
	move.w EndLevelState_Timer(a2), d0
	subq.w  #0x1, d0
	move.w d0, EndLevelState_Timer(a2)
	tst.w  d0
	bne    @TimerRunning
	
	; Timer elapsed, set next level
	move.l (CurrentLevel), PreviousLevel
	move.l Level_NextLevel(a1), CurrentLevel

	; Start firefly score state
	lea    GameStateEndLevelScoreScreen, a0
	jsr    GameStateEnter
	
	@TimerRunning:
	@End:
	
	POPL   a1
	POPL   a0
	
	rts
	
EndLevel_Render:

	PUSHL  a0
	PUSHL  a1
	
	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	POPL   a1
	POPL   a0
	
	rts
	
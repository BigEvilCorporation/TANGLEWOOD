;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   endact.asm - End of act game state
;==============================================================	

; ************************************
; Function table
; ************************************
GameStateEndAct:
	dc.l EndAct_Enter
	dc.l EndAct_Exit
	dc.l EndAct_Update
	dc.l EndAct_Render
	dc.l 0x0
	
; ************************************
; Constants
; ************************************
GameStateEndAct_FadeDownPalette		equ palette_fade_white
GameStateEndAct_FadeDownSpeed		equ (0x8<<fade_frame_shift) ; Subframes (1 frames per tick)
	
EndAct_Enter:

	; Take player velocity/acceleration
	move.l (Player1), a2
	move.l PhysicsObj_VelX(a2), EndOfActVelocity
	move.w PhysicsObj_AccelX(a2), EndOfActAcceleration

	; Begin fade down of all palettes
	move.l #GameStateEndAct_FadeDownPalette, a0
	move.w #GameStateEndAct_FadeDownSpeed, d1
	move.b #DefaultFadeTicksPerUpdate, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStartAll

	; If collected all fireflies, play victory outro
	move.w (EntityCount_Firefly), d0
	move.w (FireflyPickupCount), d1
	cmp.w  d0, d1
	bne    @NotCollectedAll
	lea    track_bgm_actoutro_allfireflies, a0
	jsr    SND_PlayTrack
	@NotCollectedAll:
	
	rts
	
EndAct_Exit:

	; Finished with checkpoint data
	move.l #0x0, LastActivatedCheckpoint
	move.w #0x0, LastSaveVersion
	
	rts
	
EndAct_Update:

	PUSHL  a0
	PUSHL  a1
	
	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Wait for fade
	jsr    PAL_LerpActive
	cmp.b  #0x0, d0
	bne    @LerpActive

	; Finished fade, set next level
	move.l (CurrentLevel), PreviousLevel
	move.l Level_NextLevel(a1), CurrentLevel
	
	cmp.l  #0x0, CurrentLevel
	beq    @EndOfGame
	
	; Start gameplay state
	lea    GameStateGameplay, a0
	jsr    GameStateEnter
	bra    @End
	
	@EndOfGame:
	
	; Start firefly score state
	lea    GameStateEndLevelScoreScreen, a0
	jsr    GameStateEnter
	
	@End:
	@LerpActive:
	
	POPL   a1
	POPL   a0
	
	rts
	
EndAct_Render:

	PUSHL  a0
	PUSHL  a1
	
	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Draw game objects
	jsr EntityRenderAll
	
	POPL   a1
	POPL   a0
	
	rts
	
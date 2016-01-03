;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gameplay.asm - Gameplay game state
;==============================================================	

GameStateGameplay:
	dc.l Gameplay_Enter
	dc.l Gameplay_Exit
	dc.l Gameplay_Update
	dc.l Gameplay_Render
	
Gameplay_Enter:

	; Set first level
	IFD DEBUG
	move.l #Tst1_Forest, CurrentLevel
	ELSE
	move.l #Lvl1_HarlequinForest, CurrentLevel
	ENDIF
	
	; Disable vint during state change
	move.b #0x0, vint_enabled
	
	; Load assets
	jsr LevelLoad
	
	; Reset all positions/velocities
	jsr LevelReset
	
	rts
	
Gameplay_Exit:
	rts
	
Gameplay_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Read and process gamepad input
	jsr UpdateInput
	
	; Update game objects
	jsr EntityUpdateAll
	
	; Check if player is dead
	move.l #Player1, a2
	cmp.b  #0x0, Character_Dead(a2)
	beq    @PlayerAlive
	
	; Player dead, enter fail state
	lea    GameStateFail, a0
	jsr    GameStateEnter
	
	@PlayerAlive:
	
	rts
	
Gameplay_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update camera
	jsr UpdateCamera
	
	; Draw game objects
	jsr EntityRenderAll
	
	; Update map streaming
	jsr UpdateMapStreaming
	
	; Update time of day
	jsr UpdateTimeOfday
	
	rts
	
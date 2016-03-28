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
	
	; Disable vint during state change
	move.b #0x0, vint_enabled
	
	; Load assets
	jsr LevelLoad
	
	; Reset all positions/velocities
	jsr LevelReset
	
	; Init level
	move.l (CurrentLevel), a1
	move.l Level_InitRoutine(a1), a2
	jsr    (a2)
	
	rts
	
Gameplay_Exit:
	rts
	
Gameplay_Update:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Read and process gamepad input
	jsr    UpdateInput
	
	IFND FINAL
	; No update if in debug move mode
	cmp.b  #0x0, DebugMoveObjectMode
	bne    @NoUpdate
	ENDIF
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Update level
	move.l Level_UpdateRoutine(a1), a2
	jsr    (a2)
	
	; Check if player is dead
	move.l #Player1, a2
	cmp.b  #0x0, Character_Dead(a2)
	beq    @PlayerAlive
	
	; Player dead, enter fail state
	lea    GameStateFail, a0
	jsr    GameStateEnter
	
	@NoUpdate:
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
	
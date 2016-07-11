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
	
	; Reset
	PUSHL  a0
	jsr    GameStateReset
	POPL   a0
	
	; Load assets
	jsr LevelLoad
	
	; Reset all positions/velocities
	jsr LevelReset
	
	; Get level id
	move.l (CurrentLevel), a1
	
	; Get player 1
	move.l #Player1, a0
	
	; Get first checkpoint
	cmp.w  #0x0, EntityCount_Checkpoints
	beq    @NoCheckpoints
	lea    EntityArray_Checkpoints, a2
	
	; Set as activated
	move.b #0x1, Checkpoint_Activated(a2)
	
	; Set player pos from checkpoint
	move.l Entity_WorldPosX(a2), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a2), Entity_WorldPosY(a0)
	
	; Re-stream map
	; TODO: Work this into level init
	jsr    LevelPreStreamMap
	
	@NoCheckpoints:
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor
	
	; Start level intro tune
	lea    bgm_lvlintro, a0
	jsr    Echo_PlayBGM
	
	; Start demo timer
	move.l #DemoTimeout3Min, TimerDemoReset
	
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
	
	; Update audio
	jsr	   UpdateBGMTimer
	jsr    UpdateAmbientAudio
	
	; Check if player is dead
	move.l #Player1, a2
	cmp.b  #0x0, Character_Dead(a2)
	beq    @PlayerAlive
	
	; Player dead, enter fail state
	lea    GameStateFail, a0
	jsr    GameStateEnter
	
	@NoUpdate:
	@PlayerAlive:
	
	; Player movement resets demo timer
	move.l #Player1, a2
	cmp.w  #0x0, PhysicsObj_VelX(a2)
	bne    @ResetDemoTimer
	cmp.w  #0x0, PhysicsObj_VelY(a2)
	bne    @ResetDemoTimer
	
	; Check if demo timer elapsed
	cmp.l  #0x0, TimerDemoReset
	beq    @NoDemoTimer
	sub.l  #0x1, TimerDemoReset
	cmp.l  #0x0, TimerDemoReset
	bne    @DemoTimerRunning
	lea    GameStateLogos, a0
	jsr    GameStateEnter
	
	@ResetDemoTimer:
	move.l #DemoTimeout3Min, TimerDemoReset
	
	@NoDemoTimer:
	@DemoTimerRunning:
	
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
	
	rts
	
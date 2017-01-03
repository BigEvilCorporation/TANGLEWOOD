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
	dc.l Gameplay_Serialise
	
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
	
	;==============================================================
	
	; Check save version
	cmp.w  #0x0, LastSaveVersion
	beq    @NoSave
	
	; Load saved game
	jsr    LoadGame
	
	@NoSave:
	
	;==============================================================
	
	cmp.w  #0x0, EntityCount_Checkpoints
	beq    @NoCheckpoints
	
	; Get last activated checkpoint
	move.l (LastActivatedCheckpoint), a2
	cmp.l  #0x0, a2
	bne    @ValidCheckpoint
	
	; No checkpoints activated, get first
	lea    EntityArray_Checkpoints, a2
	
	@ValidCheckpoint:
	
	; Set as activated, don't allow it to instigate a save
	move.b #0x1, Checkpoint_Activated(a2)
	
	; Get player 1
	move.l #Player1, a0
	
	; Set player pos from checkpoint
	move.l Entity_WorldPosX(a2), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a2), Entity_WorldPosY(a0)

	@NoCheckpoints:
	
	;==============================================================
	
	; Get player 1
	move.l #Player1, a0
	
	; Snap to floor
	jsr    PhysicsObjSnapToFloor
	
	; Pre-stream map
	jsr    LevelPreStreamMap
	
	;==============================================================
	
	; Start demo timer
	move.l #DemoTimeout, TimerDemoReset
	
	PUSHALL
	move.l #Player1, a0
	move.l #Player2, a1
	move.l Entity_WorldPosX(a0), Entity_WorldPosX(a1)
	move.l Entity_WorldPosY(a0), Entity_WorldPosY(a1)
	POPALL
	
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
	IFND DEBUG
	lea    GameStateFail, a0
	jsr    GameStateEnter
	ENDIF
	
	; Increment death counter
	addi.w #0x1, DeathCount
	
	@NoUpdate:
	@PlayerAlive:
	
	; Player movement resets demo timer
	move.l #Player1, a2
	cmp.w  #0x0, PhysicsObj_VelX(a2)
	bne    @ResetDemoTimer
	cmp.w  #0x0, PhysicsObj_VelY(a2)
	bne    @ResetDemoTimer
	
	; Check if demo timer elapsed
	IFND DEBUG
	cmp.l  #0x0, TimerDemoReset
	beq    @NoDemoTimer
	sub.l  #0x1, TimerDemoReset
	cmp.l  #0x0, TimerDemoReset
	bne    @DemoTimerRunning
	lea    GameStateDemoEnd, a0
	jsr    GameStateEnter
	ENDIF
	
	@ResetDemoTimer:
	move.l #DemoTimeout, TimerDemoReset
	
	@NoDemoTimer:
	@DemoTimerRunning:
	
	rts
	
Gameplay_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update camera
	jsr CAM_Update
	
	; Draw game objects
	jsr EntityRenderAll
	
	; Update map streaming (don't flush VDP queue)
	move.b #0x0, d0
	jsr MAP_UpdateStreaming
	
	rts
	
Gameplay_Serialise:
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	; Serialise globals
	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	@Saving:
	SAVEL (LastActivatedCheckpoint)
	SAVEW (FireflyPickupCount)
	SAVEB (TimeOfDay)
	bra   @End

	@Loading:
	LOADL (LastActivatedCheckpoint)
	LOADW (FireflyPickupCount)
	LOADB (TimeOfDay)
	
	PUSHM  d0-d1/a0-a3
	move.b (TimeOfDay), d0
	jsr    SetTimeOfDay
	POPM   d0-d1/a0-a3
	@End:
	
	; Serialise level
	PUSHL  a1
	PUSHL  a2
	move.l (CurrentLevel), a1
	move.l Level_SerialiseRoutine(a1), a2
	jsr    (a2)
	POPL   a2
	POPL   a1
	
	rts
	
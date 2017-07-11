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
	
	; Disable vint/hint during state change
	move.b #0x0, vint_enabled
	jsr    VDP_DisableHINT
	
	; Reset
	PUSHL  a0
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Get level address
	move.l (CurrentLevel), a1

	; If none, get initial level
	cmp.l  #0x0, a1
	bne    @LevelSet
	move.l #InitialLevel, a1
	move.l a1, CurrentLevel
	@LevelSet:

	; Load assets
	jsr LevelLoad
	
	; Reset all positions/velocities
	jsr LevelReset
	
	;==============================================================
	
	; Check save version
	cmp.w  #0x0, LastSaveVersion
	beq    @NoSave
	
	; Load saved game
	jsr    LoadGame
	
	@NoSave:
	
	;==============================================================
	
	cmp.w  #0x0, EntityCount_Checkpoint
	beq    @NoCheckpoints
	
	; Get last activated checkpoint
	move.l (LastActivatedCheckpoint), a2
	cmp.l  #0x0, a2
	beq    @NoCheckpoints
	
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
	move.l (CurrentLevel), a1
	jsr    PhysicsObjSnapToFloor
	
	; Pre-stream map
	jsr    LevelPreStreamMap

	; Apply velocity/acceleration from end of last act
	move.l (EndOfActVelocity), PhysicsObj_VelX(a0)
	move.w (EndOfActAcceleration), PhysicsObj_AccelX(a0)

	; Clear
	move.l #0x0, EndOfActVelocity
	move.w #0x0, EndOfActAcceleration
	
	;==============================================================
	
	; Start demo timer
	move.l #DemoTimeout, TimerDemoReset

	; Restore hint
	jsr    VDP_EnableHINT
	
	rts
	
Gameplay_Exit:

	; Notify level
	move.l (CurrentLevel), a1
	cmp.l  #0x0, a1
	beq    @NoLevel
	move.l Level_EndRoutine(a1), a2
	cmp.l  #0x0, a2
	beq    @NoEndRoutine
	jsr    (a2)
	@NoLevel:
	@NoEndRoutine:

	rts
	
Gameplay_Update:

	; Get current level ptr
	move.l (CurrentLevel), a1
	
	; Read and process gamepad input
	jsr    UpdateInput
	
	IFND FINAL
	; No update if in debug move mode
	cmp.b  #0x0, DebugMoveObjectMode
	bne    @NoUpdate
	ENDIF

	; Clear all platforms total mass
	LIST_GET_HEAD Platforms,a3
	@PlatformLp:
	cmp.l  #0x0, a3
	beq    @NoPlatform
	move.w #0x0, Platform_TotalMass(a3)
	move.b #0x0, Platform_Occupied(a3)
	LIST_GET_NEXT Platforms,a3,a3
	bra    @PlatformLp
	@NoPlatform:
	
	; Clear all moving barriers
	LIST_CLEAR MovingBarriers,a3,a4
	
	; Add all moving barriers to list
	LIST_GET_HEAD Barriers,a3
	@BarrierLp:
	cmp.l  #0x0, a3
	beq    @NoBarrier
	cmp.l  #0x0, Barrier_VelX(a3)
	beq    @NextBarrier
	LIST_APPEND_TAIL MovingBarriers,a3,a4
	@NextBarrier:
	LIST_GET_NEXT Barriers,a3,a3
	bra    @BarrierLp
	@NoBarrier:
	
	; Update game objects
	jsr    EntityUpdateAll
	
	; Update level
	move.l Level_UpdateRoutine(a1), a2
	jsr    (a2)

	; Update weather
	jsr    WeatherUpdate
	
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
	cmp.l  #0x0, PhysicsObj_VelX(a2)
	bne    @ResetDemoTimer
	cmp.l  #0x0, PhysicsObj_VelY(a2)
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
	
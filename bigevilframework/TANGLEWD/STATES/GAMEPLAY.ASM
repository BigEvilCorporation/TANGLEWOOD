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
	
	; Reset
	PUSHL  a0
	move.b #GamestateReset_LeaveAudio, d0
	jsr    GameStateReset
	POPL   a0
	
	; Get level address
	move.l (CurrentLevel), a1

	; If none, get initial level
	cmpa.w #0x0, a1
	bne    @LevelSet
	move.l #InitialLevel, a1
	move.l a1, CurrentLevel
	@LevelSet:

	; Load assets
	jsr LevelLoad
	
	; Reset all positions/velocities
	jsr LevelReset

	; Default firefly count to game total
	move.w FireflyPickupCountTotalSave, d0
	move.w d0, FireflyPickupCountTotalUI

	; If loaded from password
	move.l CurrentSavePassword, d0
	beq    @NoPassword

	; Set firefly data
	jsr   LoadFireflyActDataFromPassword

	@NoPassword:

	; Generate current save password
	jsr    SavePasswordEncode
	move.l d0, CurrentSavePassword
	
	;==============================================================
	
	; Check save version
	tst.w  LastSaveVersion
	beq    @NoSave
	
	; Load saved game
	jsr    LoadGame
	
	@NoSave:
	
	;==============================================================
	
	tst.w  EntityCount_Checkpoint
	beq    @NoCheckpoints
	
	; Get last activated checkpoint
	move.l (LastActivatedCheckpoint), a2
	cmpa.w #0x0, a2
	beq    @NoCheckpoints
	
	; Set as activated, don't allow it to instigate a save
	move.b #0x1, Checkpoint_Activated(a2)
	
	; Get player 1
	move.l (Player1), a0
	
	; Set player pos from checkpoint
	move.l Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1
	add.w  Entity_Height(a2), d1
	sub.w  Entity_Height(a0), d1
	TOSUBPIXELS d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	; If P2 present, set checkpoint pos
	move.l Player2, a0
	cmpa   #0x0, a0
	beq    @NoP2
	jsr    EchoSetCheckpointPos
	@NoP2:

	@NoCheckpoints:
	
	;==============================================================
	
	; Get player 1
	move.l (Player1), a0
	
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
	
	IF DEMO_USE_TIMEOUT
	; Start demo timer
	MOVE_NTSC_L DemoTimeout, TimerDemoReset, d0
	ENDIF
	
	rts
	
Gameplay_Exit:

	move.l (CurrentLevel), a1
	cmpa.w #0x0, a1
	beq    @NoLevel

	; Store firefly count
	move.l Level_UserData(a1), a2
	move.w (FireflyPickupCountAct), LevelData_FireflyCount(a2)

	; Run end level routine
	move.l Level_EndRoutine(a1), a2
	cmpa.w #0x0, a2
	beq    @NoEndRoutine
	jsr    (a2)
	@NoEndRoutine:


	@NoLevel:

	rts
	
Gameplay_Update:

	; Get current level ptr
	move.l (CurrentLevel), a1
	
	; Read and process gamepad input
	jsr    UpdateInput
	
	IFND FINAL
	; No update if in debug move mode
	tst.b  DebugMoveObjectMode
	bne    @NoUpdate
	ENDIF

	; Update world grid
	jsr    EntityUpdateWorldGrid

	; Physics pre-step
	jsr    PhysicsWorldPreStep
	
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

	; Update cutscenes
	jsr    CutsceneUpdateAll
	
	; Check if player 1 is dead
	move.l (Player1), a2
	tst.b  Character_Dead(a2)
	bne    @PlayerDead

	; Check if player 2 is dead
	move.l (Player2), a2
	cmpa.w #0x0, a2
	beq    @PlayerAlive
	tst.b  Character_Dead(a2)
	beq    @PlayerAlive

	@PlayerDead:
	
	; Player dead, enter fail state
	IFND DEBUG
	lea    GameStateFail, a0
	jsr    GameStateEnter
	ENDIF
	
	; Increment death counter
	addq.w #0x1, DeathCount
	
	@NoUpdate:
	@PlayerAlive:
	
	IF DEMO_USE_TIMEOUT

	; Player movement resets demo timer
	move.l (Player1), a2
	tst.l  PhysicsObj_VelX(a2)
	bne    @ResetDemoTimer
	tst.l  PhysicsObj_VelY(a2)
	bne    @ResetDemoTimer
	
	; Check if demo timer elapsed
	IFND DEBUG
	tst.l  TimerDemoReset
	beq    @NoDemoTimer
	subq.l #0x1, TimerDemoReset
	tst.l  TimerDemoReset
	bne    @DemoTimerRunning
	lea    GameStateDemoEnd, a0
	jsr    GameStateEnter
	ENDIF
	
	@ResetDemoTimer:
	MOVE_NTSC_L DemoTimeout, TimerDemoReset, d0
	
	@NoDemoTimer:
	@DemoTimerRunning:

	ENDIF
	
	rts
	
Gameplay_Render:

	; Set current level ptr
	move.l (CurrentLevel), a1
	
	; Update camera
	jsr CAM_Update
	
	; Render all entities
	jsr EntityRenderAll
	
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
	SAVEW (FireflyPickupCountAct)
	SAVEW (FireflyPickupCountTotalUI)
	SAVEW (FireflyPickupCountTotalSave)
	move.b (TimeOfDay), d6
	SAVEB (TimeOfDay)
	bra   @End

	@Loading:
	LOADL (LastActivatedCheckpoint)
	LOADW (FireflyPickupCountAct)
	LOADW (FireflyPickupCountTotalUI)
	LOADW (FireflyPickupCountTotalSave)
	LOADB (TimeOfDay)
	
	PUSHM  d0-d1/a0-a3
	move.b (TimeOfDay), d0
	move.b #0x0, d1
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
	
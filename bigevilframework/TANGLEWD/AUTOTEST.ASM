;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   autotest.asm - Automated testing
;==============================================================

AutotestMode_LevelLoad		equ 0x0

Autotest_NextLevelTime		equ 0x0100
Autotest_StreamTestSpeed	equ 0x00200000

AutotestLevelStage_Soak		equ 0x0	; Leave level running for a while
AutotestLevelStage_Pause	equ 0x1	; Pause game
AutotestLevelStage_CheckPnt	equ 0x2	; Teleport to next checkpoint
AutotestLevelStage_Die		equ 0x3	; Die and respawn
AutotestLevelStage_Stream	equ 0x4	; Move camera around edges of map
AutotestLevelStage_Next		equ 0x5	; Next level
;----------------------------------
AutotestLevelStage_Max		equ 0x6

	rsset 0
;-----------------------------
Autotest_PadDataA		rs.w 1
Autotest_PadDataB		rs.w 1
Autotest_Timer			rs.w 1
Autotest_Mode			rs.b 1
Autotest_LevelStage		rs.b 1
Autotest_StreamPoint	rs.b 1
;-----------------------------
	RS_ALIGN
Autotest_Struct_Size	rs.b 0
;-----------------------------

AutotestInit:
	; d0 (b) - Mode

	lea AutotestData, a0

	move.b d0, Autotest_Mode(a0)
	move.w #0x0, Autotest_PadDataA(a0)
	move.w #0x0, Autotest_PadDataB(a0)
	MOVE_NTSC_W Autotest_NextLevelTime, Autotest_Timer(a0), d0
	move.b #AutotestLevelStage_Soak, Autotest_LevelStage(a0)

	rts

AutotestUpdate:

	PUSHALL

	lea    AutotestData, a0
	move.l GameStatePtr, d0

	tst.w  Autotest_Timer(a0)
	beq    @UpdateState

	; Advance timer
	subq.w #0x1, Autotest_Timer(a0)
	tst.w  Autotest_Timer(a0)
	bne    @UpdateState

	; Timer elapsed, advance to next satte
	jsr    AutotestAdvanceState
	bra    @End

	@UpdateState:

	; Update current state
	jsr    AutotestUpdateState

	@End:
	
	POPALL

	rts

AutotestAdvanceState:

	; Reset timer
	MOVE_NTSC_W Autotest_NextLevelTime, Autotest_Timer(a0), d1

	; Determine state
	move.l GameStatePtr, d0
	cmp.l  #GameStateMainMenu, d0
	beq    @MainMenu
	
	IF INCLUDE_LEVELSELECT
	cmp.l  #GameStateLevelSelect, d0
	beq    @LevelSelect
	ENDIF
	
	cmp.l  #GameStateGameplay, d0
	beq    @Gameplay
	cmp.l  #GameStatePause, d0
	beq    @Pause
	bra    @End

	;==============================================================

	@MainMenu:

	; Press start
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@Pause:

	; In pause menu, just unpause
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)
	
	bra    @End

	;==============================================================

	@Gameplay:

	; Next level stage
	move.b Autotest_LevelStage(a0), d0
	addq.b #0x1, d0
	cmp.b  #AutotestLevelStage_Max, d0
	bne    @NotAtEnd
	move.b #0x0, d0
	@NotAtEnd:
	move.b d0, Autotest_LevelStage(a0)

	cmp.b  #AutotestLevelStage_Soak, d0
	beq    @GameplaySoak
	cmp.b  #AutotestLevelStage_Pause, d0
	beq    @GameplayPause
	cmp.b  #AutotestLevelStage_CheckPnt, d0
	beq    @GameplayCheckpoint
	cmp.b  #AutotestLevelStage_Die, d0
	beq    @GameplayDie
	cmp.b  #AutotestLevelStage_Stream, d0
	beq    @GameplayStream
	cmp.b  #AutotestLevelStage_Next, d0
	beq    @GameplayNext

	;==============================================================

	@GameplaySoak:
	bra    @End

	;==============================================================

	@GameplayPause:

	; Press start
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@GameplayCheckpoint:

	; Find next checkpoint
	move.l EntityPoolStart_Checkpoint, a3
	cmpa.w #0x0, a3
	beq    @NoCheckpoint

	; Teleport to checkpoint (right hand side to activate it)
	move.w Entity_WorldPosX(a3), d0
	addi.w #Checkpoint_Width+1, d0
	move.w Entity_WorldPosY(a3), d1
	jsr    PlayerTeleport

	@NoCheckpoint:

	bra    @End

	;==============================================================

	@GameplayDie:

	; Kill player
	move.l Player1, a3
	move.b #0x1, Character_Dead(a3)

	bra    @End

	;==============================================================

	@GameplayStream:

	; Test map streaming
	move.w #0x0, Autotest_Timer(a0)
	move.b #0x0, Autotest_StreamPoint(a0)
	move.l #0x0, CameraTargetGameObj
	move.l #0x0, CameraWorldPosX
	move.l #0x0, CameraWorldPosY
	jsr    LevelPreStreamMap

	bra    @End

	;==============================================================

	@GameplayNext:

	; Next level
	PUSHL  a0
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	POPL   a0

	bra    @End

	;==============================================================

	@LevelSelect:

	; Press start
	ori.w  #1<<pad_button_start, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@End:

	rts

AutotestUpdateState:

	move.b Autotest_LevelStage(a0), d0

	cmp.b  #AutotestLevelStage_Soak, d0
	beq    @GameplaySoak
	cmp.b  #AutotestLevelStage_Stream, d0
	beq    @GameplayStream

	bra    @End

	;==============================================================

	@GameplaySoak:

	; Determine state
	move.l GameStatePtr, d0
	cmp.l  #GameStateMainMenu, d0
	beq    @MainMenu
	
	IF INCLUDE_LEVELSELECT
	cmp.l  #GameStateLevelSelect, d0
	beq    @LevelSelect
	ENDIF
	
	cmp.l  #GameStateGameplay, d0
	beq    @Gameplay
	bra    @End

	;==============================================================

	@MainMenu:
	bra    @End

	;==============================================================

	@Gameplay:

	; Always allow player control
	move.l Player1, a3
	move.b #0x1, Player_ControlEnabled(a3)

	; Move right
	ori.w  #1<<pad_button_right, Autotest_PadDataA(a0)

	bra    @End

	;==============================================================

	@LevelSelect:
	bra    @End

	;==============================================================

	@GameplayStream:

	move.l CurrentLevel, a1

	move.b Autotest_StreamPoint(a0), d0
	cmp.b  #0x0, d0
	beq    @StreamPointTopLeft
	cmp.b  #0x1, d0
	beq    @StreamPointBottomLeft
	cmp.b  #0x2, d0
	beq    @StreamPointBottomRight
	cmp.b  #0x3, d0
	beq    @StreamPointTopRight

	@StreamPointTopLeft:
	addi.l #Autotest_StreamTestSpeed, CameraWorldPosY
	move.w Level_MapHeight(a1), d3
	lsl.l  #0x3, d3
	cmp.w  CameraWorldPosY, d3
	bgt    @End
	move.b #0x1, Autotest_StreamPoint(a0)
	bra    @End

	@StreamPointBottomLeft:
	addi.l #Autotest_StreamTestSpeed, CameraWorldPosX
	move.w Level_MapWidth(a1), d3
	lsl.l  #0x3, d3
	cmp.w  CameraWorldPosX, d3
	bgt    @End
	move.b #0x2, Autotest_StreamPoint(a0)
	bra    @End

	@StreamPointBottomRight:
	subi.l #Autotest_StreamTestSpeed, CameraWorldPosY
	cmp.w  #0x0, CameraWorldPosY
	bgt    @End
	move.b #0x3, Autotest_StreamPoint(a0)
	bra    @End

	@StreamPointTopRight:
	subi.l #Autotest_StreamTestSpeed, CameraWorldPosX
	cmp.w  #0x0, CameraWorldPosX
	bgt    @End
	move.w #0x1, Autotest_Timer(a0)
	bra    @End

	;==============================================================

	@End:

	rts
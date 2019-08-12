;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   input.asm - Gamepad input state machine
;==============================================================

InputNumMappedButtons	equ 10
InputMappingDefault		equ 0x0

InputMappingTables:
InputMapping1:
	dc.b pad_button_start	; input_pause
	dc.b pad_button_left	; input_move_left
	dc.b pad_button_right	; input_move_right
	dc.b pad_button_up		; input_move_up
	dc.b pad_button_down	; input_move_down
	dc.b pad_button_up		; input_peek_up
	dc.b pad_button_down	; input_peek_down
	dc.b pad_button_a		; input_interact
	dc.b pad_button_b		; input_power
	dc.b pad_button_c		; input_jump

InputMapping2:
	dc.b pad_button_start	; input_pause
	dc.b pad_button_left	; input_move_left
	dc.b pad_button_right	; input_move_right
	dc.b pad_button_up		; input_move_up
	dc.b pad_button_down	; input_move_down
	dc.b pad_button_up		; input_peek_up
	dc.b pad_button_down	; input_peek_down
	dc.b pad_button_b		; input_interact
	dc.b pad_button_c		; input_power
	dc.b pad_button_a		; input_jump

InputMapping3:
	dc.b pad_button_start	; input_pause
	dc.b pad_button_left	; input_move_left
	dc.b pad_button_right	; input_move_right
	dc.b pad_button_up		; input_move_up
	dc.b pad_button_down	; input_move_down
	dc.b pad_button_up		; input_peek_up
	dc.b pad_button_down	; input_peek_down
	dc.b pad_button_c		; input_interact
	dc.b pad_button_b		; input_power
	dc.b pad_button_a		; input_jump

InputMapping4:
	dc.b pad_button_start	; input_pause
	dc.b pad_button_left	; input_move_left
	dc.b pad_button_right	; input_move_right
	dc.b pad_button_up		; input_move_up
	dc.b pad_button_down	; input_move_down
	dc.b pad_button_up		; input_peek_up
	dc.b pad_button_down	; input_peek_down
	dc.b pad_button_b		; input_interact
	dc.b pad_button_a		; input_power
	dc.b pad_button_c		; input_jump
InputMappingsTablesEnd
InputMappingsCount	equ (InputMappingsTablesEnd-InputMappingTables)/InputNumMappedButtons

InputApplyDefaultMapping:
	move.b #InputMappingDefault, d0
	jsr    InputApplyMapping
	rts

InputApplyMapping:
	; d0 --- Mapping index

	; Set new scheme index
	move.b d0, InputMappingScheme

	; Get scheme mapping table
	lea    InputMappingTables, a0
	andi.l #0xFF, d0
	mulu   #InputNumMappedButtons, d0
	add.l  d0, a0

	; Copy mappings
	lea    InputMappingStart, a1
	move.w #InputNumMappedButtons, d0
	MEMCPYB a1, a0, d0

	rts

UpdateInput:
	
	; =====================================================================
	; Pad A
	; =====================================================================
	
	move.w #0x0, d0

	IF AUTOTEST_ENABLED

	; Autotest pad input
	lea AutotestData, a0
	move.w Autotest_PadDataA(a0), d0
	move.w #0x0, Autotest_PadDataA(a0)

	ELSE

	; Read pad A
	jsr PAD_ReadPadA

	ENDIF
	
	move.w d0, Gamepad1State
	move.w (Gamepad1PrevState), d1
	
	; Player 1 movement
	move.l (Player1), a0
	move.l (CurrentLevel), a1
	tst.b  Player_ControlEnabled(a0)
	beq    @NoControlP1
	jsr    HandlePlayerInput
	@NoControlP1:
	move.w d0, Gamepad1PrevState
	
	; =====================================================================
	; Pad B
	; =====================================================================
	
	; Read pad B
	;jsr PAD_ReadPadB
	;move.w (Gamepad2PrevState), d1

	; Autotest pad input
	;IFND FINAL
	;IF AUTOTEST_ENABLED
	;lea AutotestData, a0
	;or.w Autotest_PadDataB(a0), d0
	;move.w #0x0, Autotest_PadDataB(a0)
	;ENDIF
	;ENDIF
	
	; Player 2 movement
	;move.l (Player2), a0
	;tst.b  Player_ControlEnabled(a0)
	;beq    @NoControlP2
	;jsr    HandlePlayerInput
	;@NoControlP2:
	;move.w d0, Gamepad2PrevState
	
	rts
	
HandlePlayerInput:
	; a0 --- Player GameObj address
	; a1 --- Level address
	; d0 (w) Gamepad input bits
	; d1 (w) Gamepad prev input bits
	
	PUSHL  a0
	PUSHL  a1
	
	; Handle debug input first
	IFND FINAL
	jsr   HandleDebugInput
	tst.b d2
	bne   @SkipInput
	ENDIF

	; =====================================================================
	; Start - pause game (TODO: move to Gameplay state + fix conflicting debug input)
	; =====================================================================
	move.b input_pause, d7
	btst  d7, d0
	beq   @NoStart
	btst  d7, d1
	bne   @NoStart
	PUSHL a0
	PUSHL d0
	PUSHL d1
	; HACK - Don't pause if palette fading
	; TODO - Wait for palette to finish lerping before starting greyscale effect
	jsr   PAL_LerpActive
	tst.b d0
	bne   @NoPause
	lea   GameStatePause, a0
	jsr   GamestatePush
	@NoPause:
	POPL  d1
	POPL  d0
	POPL  a0
	@NoStart:
	
	; =====================================================================
	; Left/Right - X movement
	; =====================================================================
	
	; Move left
	move.b input_move_right, d7
	btst d7, d0  ; Check right button
	beq  @NoRight               ; Branch if button off
	jsr  CharacterMoveRight
	bra  @XHandled
	@NoRight:
	
	; Move right
	move.b input_move_left, d7
	btst d7, d0   ; Check left button
	beq  @NoLeft                ; Branch if button off
	jsr  CharacterMoveLeft
	bra  @XHandled
	@NoLeft:
	
	jsr CharacterCancelXMovement ; No Player1 X input
	
	@XHandled:

	; =====================================================================
	; Up/Down - Y movement (if climbing)
	; =====================================================================
	tst.b  Character_CanClimb(a0)
	beq    @NotClimbing
	
	; Move up
	move.b input_move_up, d7
	btst d7, d0
	beq  @NoClimbUp
	jsr  CharacterMoveUp
	bra  @YHandled
	@NoClimbUp:
	
	; Move down
	move.b input_move_down, d7
	btst d7, d0
	beq  @NoClimbDown
	jsr  CharacterMoveDown
	bra  @YHandled
	@NoClimbDown:
	
	move.l #0x0, PhysicsObj_VelY(a0) ; No Player1 Y input

	@NotClimbing:

	; =====================================================================
	; Up/Down - Y Peek (if not climbing, and on floor)
	; =====================================================================

	tst.b PhysicsObj_CloseToFloor(a0)
	beq   @NoPeek

	; Camera up (if only button pressed)
	moveq  #0x0, d7
	move.b input_peek_up, d7
	move.w #0x1, d6
	lsl.w  d7, d6
	cmp.w d6, d0
	bne   @NoUp
	PUSHL d0
	jsr   CameraHandlePeekUp
	POPL  d0
	bra   @YHandled
	@NoUp:
	
	; Camera down (if only button pressed)
	moveq  #0x0, d7
	move.b input_peek_down, d7
	move.w #0x1, d6
	lsl.w  d7, d6
	cmp.w d6, d0
	bne   @NoDown
	PUSHL d0
	jsr   CameraHandlePeekDown
	POPL  d0
	bra   @YHandled
	@NoDown:

	@NoPeek:

	; No up/down, return peek offset
	PUSHL d0
	jsr   CameraHandlePeekOff
	POPL  d0

	@YHandled:

	; =====================================================================
	; Jump
	; =====================================================================
	move.b input_jump, d7
	btst d7, d0		; Check jump pressed
	beq  @NoB
	btst d7, d1		; Check jump not already held
	bne  @EndB
	move.b #0x0, d2
	jsr  CharacterStartJump		; Jump
	bra  @EndB
	@NoB:
	btst d7, d1		; Check not already released
	beq  @EndB
	jsr  CharacterCancelJump	; Cancel jump
	@EndB:
	
	; =====================================================================
	; Interact type A (colour ability)
	; =====================================================================
	move.b input_power, d7
	btst d7, d0			; Check A pressed
	beq  @NoA
	btst d7, d1			; Check A not already held
	bne  @EndA
	PUSHMW d0-d1
	jsr  CharacterStartInteractA	; A
	POPMW  d0-d1
	bra  @EndA
	@NoA:
	btst d7, d1			; Check not already released
	beq  @EndA
	PUSHMW d0-d1
	jsr  CharacterCancelInteractA	; Cancel A
	POPMW  d0-d1
	@EndA:
	
	; =====================================================================
	; Interact type B (interact object)
	; =====================================================================
	
	; Check if current player interaction is using toggle behaviour
	tst.b  Player_InteractionToggle(a0)
	bne    @ToggleC

	move.b input_interact, d7
	btst d7, d0		; Check C button
	beq  @NoC						; Branch if button off
	PUSHMW d0-d1
	jsr  CharacterStartInteractB	; Start interaction
	POPMW  d0-d1
	bra  @EndC
	@NoC:
	PUSHMW d0-d1
	jsr  CharacterCancelInteractB
	POPMW  d0-d1
	bra  @EndC

	@ToggleC:
	
	move.b input_interact, d7
	btst d7, d0		; Check C pressed
	beq  @NoToggleC
	btst d7, d1		; Check C not already held
	bne  @EndToggleC
	PUSHMW d0-d1
	jsr  CharacterStartInteractB	; Start interaction
	POPMW  d0-d1
	bra  @EndToggleC
	@NoToggleC:
	btst d7, d1		; Check C not already released
	beq  @EndToggleC
	PUSHMW d0-d1
	jsr  CharacterCancelInteractB
	POPMW  d0-d1
	@EndToggleC:

	@EndC:
	
	; =====================================================================
	
	@SkipInput:
	
	POPL a1
	POPL a0
	
	rts

HandleDebugInput:
	; a0 --- Player GameObj address
	; a1 --- Level address
	; d0 (w) Gamepad input bits
	; d1 (w) Gamepad prev input bits
	; d2 (b) OUT: Input handled

	; =====================================================================
	; Debug button combos
	; =====================================================================

	; A+Start = profile frame
	IF INCLUDE_PROFILER
	cmp.w  #DebugButtonCombo_Profiler, d0
	bne    @NoProfileCombo
	cmp.w  #DebugButtonCombo_Profiler, d1
	beq    @NoProfileCombo
	jsr    DBG_Profile_CaptureFrame
	bra    @DebugInputHandled
	@NoProfileCombo:
	ENDIF
	
	; A+B+C+Start = kill player
	IF INCLUDE_DEBUG_DEATH
	cmp.w  #DebugButtonCombo_KillPlayer, d0
	bne    @NoPlayerKillCombo
	cmp.w  #DebugButtonCombo_KillPlayer, d1
	beq    @NoPlayerKillCombo
	move.b #0xFF, d0
	jsr    CharacterDealDamage
	bra    @DebugInputHandled
	@NoPlayerKillCombo:
	ENDIF
	
	; A+B+Start = complete level
	IF INCLUDE_DEBUG_SKIPLEVEL
	cmp.w  #DebugButtonCombo_CompleteLevel, d0
	bne    @NoCompleteLevelCombo
	cmp.w  #DebugButtonCombo_CompleteLevel, d1
	beq    @NoCompleteLevelCombo
	lea    GameStateEndAct, a0
	jsr    GameStateEnter
	bra    @DebugInputHandled
	@NoCompleteLevelCombo:
	ENDIF
	
	; B+C+Start = move object mode
	IF INCLUDE_DEBUG_FLY
	cmp.w  #DebugButtonCombo_MoveObject, d0
	bne    @NoMoveModeCombo
	cmp.w  #DebugButtonCombo_MoveObject, d1
	beq    @NoMoveModeCombo
	tst.b  DebugMoveObjectMode
	beq    @EnableMoveMode
	move.b #0x0, DebugMoveObjectMode
	bra    @DebugInputHandled
	@EnableMoveMode:
	move.b #0x1, DebugMoveObjectMode
	@EndMoveModeSwitch:
	bra    @DebugInputHandled
	@NoMoveModeCombo:
	
	; Handle debug move mode
	tst.b  DebugMoveObjectMode
	beq    @MoveModeDisabled

	; Default move speed
	move.l #DebugMoveMode_Speed, d3
	
	; A = mul object move speed
	btst #pad_button_a, d0
	beq  @NoDbgMoveA
	lsl.l #0x4, d3
	@NoDbgMoveA:
	
	; B = mul object move speed
	btst #pad_button_b, d0
	beq  @NoDbgMoveB
	lsl.l #0x1, d3
	@NoDbgMoveB:
	
	; C = mul object move speed
	btst #pad_button_c, d0
	beq  @NoDbgMoveC
	lsl.l #0x1, d3
	@NoDbgMoveC:
	
	; TODO: Entity selection + set camera follow

	btst #pad_button_right, d0
	beq  @NoDbgRight
	add.l d3, Entity_WorldPosX(a0)
	@NoDbgRight:
	
	btst #pad_button_left, d0
	beq  @NoDbgLeft
	sub.l d3, Entity_WorldPosX(a0)
	@NoDbgLeft:
	
	btst #pad_button_up, d0
	beq  @NoDbgUp
	sub.l d3, Entity_WorldPosY(a0)
	@NoDbgUp:
	
	btst #pad_button_down, d0
	beq  @NoDbgDown
	add.l d3, Entity_WorldPosY(a0)
	@NoDbgDown:
	
	bra    @DebugInputHandled
	
	@MoveModeDisabled:
	ENDIF

	move.b #0x0, d2
	bra    @End

	@DebugInputHandled:
	move.b #0x1, d2

	@End:

	rts
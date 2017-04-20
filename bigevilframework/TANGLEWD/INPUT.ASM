;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   input.asm - Gamepad input state machine
;==============================================================

UpdateInput:
	
	; =====================================================================
	; Pad A
	; =====================================================================
	
	move.w #0x0, d0
	
	; Read pad A
	jsr PAD_ReadPadA
	
	move.w d0, Gamepad1State
	move.w (Gamepad1PrevState), d1
	
	; Player 1 movement
	move.l #Player1, a0
	move.l (CurrentLevel), a1
	cmp.b  #0x0, Player_ControlEnabled(a0)
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
	
	; Player 2 movement
	;move.l #Player2, a0
	;cmp.b  #0x0, Player_ControlEnabled(a0)
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
	bra    @SkipInput
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
	bra    @SkipInput
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
	bra    @SkipInput
	@NoCompleteLevelCombo:
	ENDIF
	
	; B+C+Start = move object mode
	IF INCLUDE_DEBUG_FLY
	cmp.w  #DebugButtonCombo_MoveObject, d0
	bne    @NoMoveModeCombo
	cmp.w  #DebugButtonCombo_MoveObject, d1
	beq    @NoMoveModeCombo
	cmp.b  #0x0, DebugMoveObjectMode
	beq    @EnableMoveMode
	move.b #0x0, DebugMoveObjectMode
	bra    @SkipInput
	@EnableMoveMode:
	move.b #0x1, DebugMoveObjectMode
	@EndMoveModeSwitch:
	bra    @SkipInput
	@NoMoveModeCombo:
	
	; Handle debug move mode
	cmp.b  #0x0, DebugMoveObjectMode
	beq    @MoveModeDisabled

	; Default move speed
	move.l #DebugMoveMode_Speed, d3
	
	; A = mul object move speed
	btst #pad_button_a, d0
	beq  @NoDbgMoveA
	mulu #DebugMoveMode_SpeedMulA, d3
	@NoDbgMoveA:
	
	; B = mul object move speed
	btst #pad_button_b, d0
	beq  @NoDbgMoveB
	mulu #DebugMoveMode_SpeedMulB, d3
	@NoDbgMoveB:
	
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
	
	bra    @SkipInput
	
	@MoveModeDisabled:
	ENDIF
	
	; =====================================================================
	; Start - pause game (TODO: move to Gameplay state + fix conflicting debug input)
	; =====================================================================
	IFND DEBUG
	btst  #pad_button_start, d0
	beq   @NoStart
	btst  #pad_button_start, d1
	bne   @NoStart
	PUSHL a0
	PUSHL d0
	PUSHL d1
	lea   GameStatePause, a0
	jsr   GamestatePush
	POPL  d1
	POPL  d0
	POPL  a0
	@NoStart:
	ENDIF
	
	; =====================================================================
	; Left/Right - X movement
	; =====================================================================
	
	; Move left
	btst #pad_button_right, d0  ; Check right button
	beq  @NoRight               ; Branch if button off
	jsr  CharacterMoveRight
	bra  @XHandled
	@NoRight:
	
	; Move right
	btst #pad_button_left, d0   ; Check left button
	beq  @NoLeft                ; Branch if button off
	jsr  CharacterMoveLeft
	bra  @XHandled
	@NoLeft:
	
	jsr CharacterCancelXMovement ; No Player1 X input
	
	@XHandled:

	; =====================================================================
	; Up/Down - Y Peek
	; =====================================================================

	; Camera up
	btst  #pad_button_up, d0
	beq   @NoUp
	PUSHL d0
	jsr   CAM_PeekUp
	POPL  d0
	bra   @YHandled
	@NoUp:
	
	; Camera down
	btst  #pad_button_down, d0
	beq   @NoDown
	PUSHL d0
	jsr   CAM_PeekDown
	POPL  d0
	bra   @YHandled
	@NoDown:

	; No up/down, return peek offset
	PUSHL d0
	jsr   CAM_PeekReturn
	POPL  d0
	
	@YHandled:
	
	; =====================================================================
	; A - hold to walk instead of run
	; =====================================================================
	
	btst #pad_button_a, d0      ; Check A button
	beq  @NoA                   ; Branch if button off
	jsr  CharacterCancelRun		; Cancel run
	bra  @EndA
	@NoA:
	jsr  CharacterStartRun		; Run
	@EndA:
	
	; =====================================================================
	; B - Jump
	; =====================================================================
	
	btst #pad_button_b, d0		; Check jump pressed
	beq  @NoB
	btst #pad_button_b, d1		; Check jump not already held
	bne  @EndB
	jsr  CharacterStartJump		; Jump
	bra  @EndB
	@NoB:
	btst #pad_button_b, d1		; Check not already released
	beq  @EndB
	jsr  CharacterCancelJump	; Cancel jump
	@EndB:
	
	; =====================================================================
	; C - interact
	; =====================================================================
	
	; Check if current player interaction is using toggle behaviour
	cmp.b  #0x0, Player_InteractionToggle(a0)
	bne    @ToggleC

	btst #pad_button_c, d0		; Check C button
	beq  @NoC					; Branch if button off
	jsr  CharacterStartInteract	; Start interaction
	bra  @EndC
	@NoC:
	jsr  CharacterCancelInteract
	bra  @EndC

	@ToggleC:
	
	btst #pad_button_c, d0		; Check C pressed
	beq  @NoToggleC
	btst #pad_button_c, d1		; Check C not already held
	bne  @EndToggleC
	jsr  CharacterStartInteract	; Start interaction
	bra  @EndToggleC
	@NoToggleC:
	btst #pad_button_c, d1		; Check C not already released
	beq  @EndToggleC
	jsr  CharacterCancelInteract
	@EndToggleC:

	@EndC:
	
	; =====================================================================
	
	@SkipInput:
	
	POPL a1
	POPL a0
	
	rts

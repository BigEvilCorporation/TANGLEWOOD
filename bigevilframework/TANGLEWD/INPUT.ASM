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
	
	; Read pad A
	jsr ReadPadA
	move.w (Gamepad1PrevState), d1
	
	; Player 1 movement
	move.l #Player1, a0
	move.l (CurrentLevel), a1
	jsr HandlePlayerInput
	move.w d0, Gamepad1PrevState
	
	; =====================================================================
	; Pad B
	; =====================================================================
	
	; Read pad B
	;jsr ReadPadB
	;move.w (Gamepad2PrevState), d1
	
	; Player 2 movement
	;move.l #Player2, a0
	;jsr HandlePlayerInput
	;move.w d0, Gamepad2PrevState
	
	rts
	
HandlePlayerInput:
	; a0 --- Player GameObj address
	; a1 --- Level address
	; d0 (w) Gamepad input bits
	; d1 (w) Gamepad prev input bits
	
	; =====================================================================
	; Debug button combos
	; =====================================================================
	IFND FINAL

	IFD DEBUG
	; A+Start = profile frame
	cmp.w  #DebugButtonCombo_Profiler, d0
	bne    @NoProfileCombo
	cmp.w  #DebugButtonCombo_Profiler, d1
	beq    @NoProfileCombo
	jsr    Profile_CaptureFrame
	bra    @EndDebugInput
	@NoProfileCombo:
	ENDIF
	
	; A+B+C+Start = kill player
	cmp.w  #DebugButtonCombo_KillPlayer, d0
	bne    @NoPlayerKillCombo
	cmp.w  #DebugButtonCombo_KillPlayer, d1
	beq    @NoPlayerKillCombo
	move.b #0xFF, d0
	jsr    CharacterDealDamage
	bra    @EndDebugInput
	@NoPlayerKillCombo:
	
	; B+C+Start = move object mode
	cmp.w  #DebugButtonCombo_MoveObject, d0
	bne    @NoMoveModeCombo
	cmp.w  #DebugButtonCombo_MoveObject, d1
	beq    @NoMoveModeCombo
	cmp.b  #0x0, DebugMoveObjectMode
	beq    @EnableMoveMode
	move.b #0x0, DebugMoveObjectMode
	bra    @EndMoveModeSwitch
	@EnableMoveMode:
	move.b #0x1, DebugMoveObjectMode
	@EndMoveModeSwitch:
	bra    @EndDebugInput
	@NoMoveModeCombo:
	
	; Handle debug move mode
	cmp.b  #0x0, DebugMoveObjectMode
	beq    @MoveModeDisabled
	
	; A = change object move speed
	move.l #DebugMoveMode_Speed1, d3
	btst #pad_button_a, d0
	beq  @NoDbgA
	move.l #DebugMoveMode_Speed2, d3
	@NoDbgA:
	
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
	
	@EndDebugInput:
	ENDIF
	
	; =====================================================================
	; Left/Right - X movement
	; =====================================================================
	
	; Move left
	btst #pad_button_right, d0  ; Check right button
	beq  @NoRight               ; Branch if button off
	jsr  CharacterMoveRight
	jmp  @XHandled
	@NoRight:
	
	; Move right
	btst #pad_button_left, d0   ; Check left button
	beq  @NoLeft                ; Branch if button off
	jsr  CharacterMoveLeft
	jmp  @XHandled
	@NoLeft:
	
	jsr CharacterCancelXMovement ; No Player1 X input
	
	@XHandled:
	
	; =====================================================================
	; A - hold to run instead of walk
	; =====================================================================
	
	btst #pad_button_a, d0      ; Check A button
	beq  @NoA                   ; Branch if button off
	jsr  CharacterStartRun		; Run
	jmp  @EndA
	@NoA:
	jsr  CharacterCancelRun		; Cancel run
	@EndA:
	
	; =====================================================================
	; B - Jump
	; =====================================================================
	
	btst #pad_button_b, d0		; Check jump pressed
	beq  @NoB
	btst #pad_button_b, d1		; Check jump not already held
	bne  @EndB
	jsr  CharacterStartJump		; Jump
	jmp  @EndB
	@NoB:
	btst #pad_button_b, d1		; Check not already released
	beq  @EndB
	jsr  CharacterCancelJump	; Cancel jump
	@EndB:
	
	; =====================================================================
	; C - interact
	; =====================================================================
	
	btst #pad_button_c, d0  	; Check C button
	beq  @NoC	                ; Branch if button off
	btst #pad_button_c, d1		; Check C not already held
	bne  @EndC
	jsr  PlayerStartInteract 	; Start interaction
	jmp  @EndC
	@NoC:
	jsr  PlayerCancelInteract
	@EndC:
	
	; =====================================================================
	
	@SkipInput:
	
	rts

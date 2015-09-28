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
	; d0 (w) Gamepad input bits
	; d1 (w) Gamepad prev input bits
	
	; =====================================================================
	; C - interact
	; =====================================================================
	
	btst #pad_button_c, d0  	; Check C button
	bne  @NoC	                ; Branch if button off
	jsr  CharacterCancelRun		; Can't run whilst interacting
	jsr  CharacterCancelJump	; Can't jump whilst interacting
	jsr  CharacterStartInteract ; Start interaction
	jmp  @EndC
	@NoC:
	jsr  CharacterCancelInteract
	@EndC:
	
	; =====================================================================
	; A - hold to run instead of walk
	; =====================================================================
	
	btst #pad_button_a, d0      ; Check A button
	bne  @NoA                   ; Branch if button off
	jsr  CharacterStartRun		; Run
	jmp  @EndA
	@NoA:
	jsr  CharacterCancelRun		; Cancel run
	@EndA:
	
	; =====================================================================
	; Left/Right - X movement
	; =====================================================================
	
	; Move left
	btst #pad_button_right, d0  ; Check right button
	bne  @NoRight               ; Branch if button off
	jsr  CharacterMoveRight
	jmp  @XHandled
	@NoRight:
	
	; Move right
	btst #pad_button_left, d0   ; Check left button
	bne  @NoLeft                ; Branch if button off
	jsr  CharacterMoveLeft
	jmp  @XHandled
	@NoLeft:
	
	jsr CharacterCancelXMovement ; No Player1 X input
	
	@XHandled:
	
	; =====================================================================
	; B - Jump
	; =====================================================================
	
	btst #pad_button_b, d0		; Check jump pressed
	bne  @NoB
	btst #pad_button_b, d1		; Check jump not already held
	beq  @EndB
	jsr  CharacterStartJump		; Jump
	jmp  @EndB
	@NoB:
	btst #pad_button_b, d1		; Check not already released
	bne  @EndB
	jsr  CharacterCancelJump	; Cancel jump
	@EndB:
	
	; =====================================================================
	
	@SkipMovement:
	
	rts
;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gamestate.asm - Game state logic
;==============================================================

	rsset 0
GameState_EnterRoutine		rs.l 1
GameState_ExitRoutine		rs.l 1
GameState_UpdateRoutine		rs.l 1
GameState_RenderRoutine		rs.l 1
GameState_SerialiseRoutine	rs.l 1
;---------------------------------
GameState_StructSize		rs.b 0

; Enter new game state (and exit previous), then set as current state
GameStateEnter:
	; a0 --- GameState address
	
	; Exit prev state
	move.l (GameStatePtr), a1
	cmp.l  #0x0, a1
	beq    @NoPrevState
	move.l GameState_ExitRoutine(a1), a2
	move.l a0, -(sp)
	jsr    (a2)
	move.l (sp)+, a0
	@NoPrevState:
	
	; Set as current state
	move.l a0, GameStatePtr
	
	; Enter state
	move.l GameState_EnterRoutine(a0), a1
	jsr    (a1)
	
	rts
	
; Enter() new game state (don't Exit() previous), then push to state stack (e.g., push pause menu, leaving gameplay state intact)
GameStatePush:
	; a0 --- GameState address
	
	; Push prev state to stack
	move.l (GameStateStackPtr), a1
	move.l (GameStatePtr), (a1)+
	move.l a1, GameStateStackPtr
	
	; Set as current state
	move.l a0, GameStatePtr
	
	; Enter state
	move.l GameState_EnterRoutine(a0), a1
	jsr    (a1)
	
	rts
	
; Exit() previous game state (don't Enter() new), then pop from stack (e.g., pop pause menu, resume gameplay state)
GameStatePop:

	; Exit prev state
	move.l (GameStatePtr), a0
	move.l GameState_ExitRoutine(a0), a2
	jsr    (a2)
	
	; Pop state stack
	move.l (GameStateStackPtr), a1
	move.l -(a1), GameStatePtr
	move.l a1, GameStateStackPtr
	
	rts
	
GameStateUpdate:
	move.l (GameStatePtr), a0
	move.l GameState_UpdateRoutine(a0), a1
	jsr    (a1)
	rts
	
GameStateRender:
	move.l (GameStatePtr), a0
	move.l GameState_RenderRoutine(a0), a1
	jsr    (a1)
	rts
	
GameStateSerialise:
	move.l (GameStatePtr), a0
	move.l GameState_SerialiseRoutine(a0), a1
	cmp.l  #0x0, a1
	beq    @NoSerialise
	jsr    (a1)
	@NoSerialise:
	rts
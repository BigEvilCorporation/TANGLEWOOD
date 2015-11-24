;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gamestate.asm - Game state logic
;==============================================================

	rsset 0
GameState_EnterRoutine	rs.l 1
GameState_ExitRoutine	rs.l 1
GameState_UpdateRoutine	rs.l 1
GameState_RenderRoutine	rs.l 1
;-----------------------------
GameState_StructSize	rs.b 0

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
	
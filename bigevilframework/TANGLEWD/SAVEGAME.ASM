;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   savegame.asm - Checkpoint save/load from RAM
;==============================================================

SaveGame:
	
	PUSHL  a0
	PUSHL  a1
	
	; Get serialise block
	lea    CheckpointSerialiseMemBlock, a3
	
	; Set saving
	move.b #serialise_dir_out, d1
	
	; Serialise current state
	jsr    GameStateSerialise
	
	; Serialise all entities
	jsr    EntitySerialiseAll
	
	; Increment save version
	addi.w #0x1, LastSaveVersion
	
	POPL   a1
	POPL   a0
	
	rts
	
LoadGame:

	PUSHL  a0
	PUSHL  a1
	
	; Get serialise block
	lea    CheckpointSerialiseMemBlock, a3
	
	; Set loading
	move.b #serialise_dir_in, d1
	
	; Serialise current state
	jsr    GameStateSerialise
	
	; Serialise all entities
	jsr    EntitySerialiseAll
	
	POPL   a1
	POPL   a0
	
	rts
	
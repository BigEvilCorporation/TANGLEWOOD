;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   saveload.asm - Game state saving/loading
;==============================================================

SaveGame:

	; Get mem block
	lea CheckpointSerialiseMemBlock, a2
	
	; Set as saving
	move.b #serialise_dir_out, d0

	; Serialise entities
	jsr EntitySerialiseAll

	rts
	
LoadGame:

	; Get mem block
	lea CheckpointSerialiseMemBlock, a2
	
	; Set as loading
	move.b #serialise_dir_in, d0

	; Serialise entities
	jsr EntitySerialiseAll

	rts
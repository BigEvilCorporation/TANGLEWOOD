;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   savegame.asm - Checkpoint save/load from RAM/password
;==============================================================

;==============================================================
; Password format:
;==============================================================
;  0xFEDCFEDC - ((AB ^ 0x2612) << 16) | ((C ^ 0x19) << 8 | (D ^ 0x85))
;==============================================================
;  D = Level index
;  C = Total fireflies
;  B = Checksum lo (8 bits) (sum of bytes C + D ^ 85)
;  A = Checksum hi (7 bits)
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

	; Check overflow
	move.l a3, d0
	subi.l #CheckpointSerialiseMemBlock, d0
	cmp.l  #CheckpointSerialiseBlockSize, d0
	blt    @NoOverflow
	RAISE_EXCEPTION *
	@NoOverflow:
	
	; Increment save version
	addq.w #0x1, LastSaveVersion
	
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

	; Force world grid recalculation
	move.w #-1, CameraWorldGridIndexTL
	jsr    EntityUpdateWorldGrid

	; Tick physics world
	jsr    PhysicsWorldPreStep

	; Tick inactive physics objs in world grid
	LIST_GET_HEAD EntityWorldGrid,a0
	@EntityLp:
	cmp.l  #0x0, a0
	beq    @ListEnd
	btst.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)
	beq    @NextObj
	btst.b #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	bne    @NextObj
	jsr    PhysicsObjPreStep
	@NextObj:
	LIST_GET_NEXT EntityWorldGrid,a0,a0
	bra    @EntityLp
	@ListEnd:

	; Tick all entities
	jsr    EntityUpdateAll
	
	POPL   a1
	POPL   a0
	
	rts
	
SavePasswordEncode:
	; a0 --- Level
	; d0 (l) OUT: password

	; Get level index
	moveq  #0x0, d0
	move.b Level_Index(a1), d0

	; ^ 0x85
	eor.b  #0x85, d0

	; Get total fireflies
	move.w FireflyPickupCountGame, d1

	; ^ 0x19
	eor.b  #0x19, d1

	; Generate checksum
	move.w d1, d2
	add.w  d0, d2

	; ^ 0x2612
	eor.w  #0x2612, d2

	; Level index to byte 0
	moveq  #0x0, d3
	move.b d0, d3

	; Fireflies to byte 1
	lsl.w  #0x8, d1
	or.w   d1, d3

	; Checksum to bytes 2 + 3
	swap   d2
	or.l   d2, d3

	; 0xFEDCFEDC-password
	move.l #0xFEDCFEDC, d0
	sub.l  d3, d0

	rts

SavePasswordDecode:
	; d0 (l) IN:  Password
	; d0 (b) OUT: Password valid
	; d1 (b) Level index
	; d2 (b) Firefly count

	; 0xFEDCFEDC-password
	move.l #0xFEDCFEDC, d3
	sub.l  d0, d3
	move.l d3, d0

	; Generate checksum
	move.w d0, d1
	move.w d0, d2
	andi.w #0xFF, d1
	lsr.w  #0x8, d2
	add.w  d1, d2

	; Extract checksum
	move.l d0, d3
	swap   d3

	; ^ 0x2612
	eor.w  #0x2612, d3
	cmp.w  d2, d3
	bne    @Invalid

	; Extract level id
	move.b d0, d1

	; ^ 0x85
	eor.b  #0x85, d1

	; Extract firefly count
	lsr.w  #0x8, d0
	move.b d0, d2

	; ^ 0x19
	eor.b  #0x19, d2

	; Test level id
	cmp.b  #MaxLevels, d1
	bge    @Invalid

	@Valid:
	move.b #0x1, d0
	bra    @End

	@Invalid:
	move.b #0x0, d0

	@End:

	rts

LoadGameFromPassword:
	; d0 (l) IN:  Password
	; d0 (b) OUT: Password valid
	
	jsr    SavePasswordDecode
	tst.b  d0
	beq    @Invalid

	; Set firefly count
	andi.w #0xFF, d2
	move.w d2, FireflyPickupCountGame

	; Get level from index
	lea    LevelList, a1
	andi.l #0xFF, d1
	lsl.l  #0x2, d1
	add.l  d1, a1

	; Set level
	move.l (a1), CurrentLevel

	@Invalid:

	rts
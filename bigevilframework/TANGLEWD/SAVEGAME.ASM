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
;  0xAABBCCDD >> 2
;==============================================================
; D = AAAB BBBB (A = checksum, B = level id ^ (CCC0))
;==============================================================
;  D = Level index and checksum ^ 0x85
;  C = Total fireflies ^ 0x19
;  B = Firefly count acts 1+2 ^ 0x12 ^ (CCC0 CCC0)
;  A = Firefly count acts 3+4 ^ 0x26 ^ (0CCC 0CCC)
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

	IFD EMUBUILD
	; Save game in host app
	addi.b #0x1, EmuTrap_SaveGame
	ENDIF
	
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
	@PhysicsLp:
	cmpa.w #0x0, a0
	beq    @PhysicsListEnd
	btst.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)
	beq    @NextPhysicsObj
	btst.b #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	bne    @NextPhysicsObj
	jsr    PhysicsObjPreStep
	@NextPhysicsObj:
	LIST_GET_NEXT EntityWorldGrid,a0,a0
	bra    @PhysicsLp
	@PhysicsListEnd:
	
	POPL   a1
	POPL   a0
	
	rts
	
SavePasswordEncode:
	; a0 --- Level
	; d0 (l) OUT: password

	; Get level index
	moveq  #0x0, d0
	move.b Level_Index(a1), d0

	; Get total fireflies
	move.w FireflyPickupCountTotalSave, d1

	; Get fireflies for each act
	move.w #0x0, d6
	move.w (CurrentLevelNumActs), d5
	beq    @NoActSetup
	subq.w #0x1, d5
	lea    CurrentActDatas, a4
	@ActLoop:

	; Shift << 1 nybble
	lsl.w  #0x4, d6

	; Get act data
	move.l (a4)+, a3
	
	; Get firefly count
	move.w LevelData_FireflyCount(a3), d4

	; To bottom nybble
	andi.b #0x0F, d4
	or.b   d4, d6

	dbra   d5, @ActLoop
	@NoActSetup:

	; Pad to 4 acts
	move.w CurrentLevelNumActs, d5
	cmp.w  #0x4, d5
	beq    @ActShiftEnd
	@ActShiftlp:
	lsl.w  #0x4, d6
	addi.w #0x1, d5
	cmp.w  #0x4, d5
	blt    @ActShiftlp
	@ActShiftEnd:

	; Level index to byte 0
	andi.l #0xFF, d0

	; Total fireflies to byte 1
	lsl.w  #0x8, d1
	or.w   d1, d0

	; Act fireflies to bytes 3+4
	swap   d6
	clr.w  d6
	or.l   d6, d0

	; Checksum
	move.l d0, d4
	move.w #0x0, d1
	move.w #0x8-1, d2
	@ChecksumLp:
	move.b d4, d3
	andi.b #0x0F, d3
	add.b  d3, d1
	andi.b #0x07, d1
	ror.l  #0x4, d4
	dbra   d2, @ChecksumLp

	; Checksum << 5
	lsl.w  #0x5, d1
	or.w   d1, d0

	; ^ 0x26121985
	eor.l #0x26121985, d0
	
	; >> 2
	ror.l #0x2, d0

	rts

SavePasswordDecode:
	; d0 (l) IN:  Password
	; d0 (b) OUT: Password valid
	; d1 (b) Level index
	; d2 (b) Firefly count (total)
	; d3 (b) Firefly count (act 1)
	; d4 (b) Firefly count (act 2)
	; d5 (b) Firefly count (act 3)
	; d6 (b) Firefly count (act 4)

	; << 2
	rol.l  #0x2, d0

	; ^ 0x26121985
	eor.l #0x26121985, d0

	; Extract saved checksum
	move.b d0, d5
	lsr.b #0x5, d5

	; Zero saved checksum
	andi.b #%00011111, d0

	; Calculate checksum
	move.l d0, d4
	move.w #0x0, d1
	move.w #0x8-1, d2
	@ChecksumLp:
	move.b d4, d3
	andi.b #0x0F, d3
	add.b  d3, d1
	andi.b #0x07, d1
	ror.l  #0x4, d4
	dbra   d2, @ChecksumLp

	; Compare checksum
	cmp.b  d1, d5
	bne    @Invalid

	; Extract level id
	move.b d0, d1

	; Extract firefly total
	lsr.w  #0x8, d0
	move.b d0, d2

	; Extract firefly act counts
	swap   d0
	move.b d0, d3
	andi.b #0x0F, d3
	cmp.b  #MaxFirefliesPerAct, d3
	bgt    @Invalid

	lsr.w  #0x4, d0
	move.b d0, d4
	andi.b #0x0F, d4
	cmp.b  #MaxFirefliesPerAct, d4
	bgt    @Invalid

	lsr.w  #0x4, d0
	move.b d0, d5
	andi.b #0x0F, d5
	cmp.b  #MaxFirefliesPerAct, d5
	bgt    @Invalid

	lsr.w  #0x4, d0
	move.b d0, d6
	andi.b #0x0F, d6
	cmp.b  #MaxFirefliesPerAct, d6
	bgt    @Invalid

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
	move.w d2, FireflyPickupCountTotalSave
	move.w d2, FireflyPickupCountTotalUI

	cmp.b  #MaxLevels, d1
	bge    @Invalid

	; Get level from index
	lea    LevelList, a1
	andi.l #0xFF, d1
	lsl.l  #0x2, d1
	add.l  d1, a1

	; Set level
	move.l (a1), CurrentLevel

	@Invalid:

	rts

LoadFireflyActDataFromPassword:
	; d0 (l) IN:  Password

	jsr    SavePasswordDecode
	tst.b  d0
	beq    @Invalid
	
	; Set fireflies for each act
	move.w (CurrentLevelNumActs), d1
	beq    @EndFireflySetup
	lea    CurrentActDatas, a4

	move.l (a4)+, a3
	andi.w #0xFF, d6
	cmp.b  #MaxFirefliesPerAct, d6
	bgt    @Invalid
	move.w d6, LevelData_FireflyCount(a3)
	cmp.w  #0x1, d1
	beq    @EndFireflySetup

	move.l (a4)+, a3
	andi.w #0xFF, d5
	cmp.b  #MaxFirefliesPerAct, d5
	bgt    @Invalid
	move.w d5, LevelData_FireflyCount(a3)
	cmp.w  #0x2, d1
	beq    @EndFireflySetup

	move.l (a4)+, a3
	andi.w #0xFF, d4
	cmp.b  #MaxFirefliesPerAct, d4
	bgt    @Invalid
	move.w d4, LevelData_FireflyCount(a3)
	cmp.w  #0x3, d1
	beq    @EndFireflySetup

	move.l (a4)+, a3
	andi.w #0xFF, d3
	cmp.b  #MaxFirefliesPerAct, d3
	bgt    @Invalid
	move.w d3, LevelData_FireflyCount(a3)

	@EndFireflySetup:

	@Invalid:

	rts
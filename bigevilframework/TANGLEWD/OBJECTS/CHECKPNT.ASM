;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   checkpoint.asm - Player spawn/save points
;==============================================================

; Constants
Checkpoint_MaxEntities  equ 0x8
Checkpoint_Width        equ 0x0010
Checkpoint_Height       equ 0x0008

; Struct
	rsset (Entity_Struct_Size)
;--------------------------
Checkpoint_Activated	rs.b 1	; Checkpoint reached/available
;--------------------------
Checkpoint_Struct_Pad   rs.b 3	; Alignment padding
Checkpoint_Struct_Size  rs.b 0

CheckpointInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set type
	ori.l  #entity_type_checkpoint, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Checkpoint
	
	; Set update and serialise routines
	move.l #CheckpointUpdate, Entity_UpdateRoutine(a0)
	move.l #CheckpointSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and serialise lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToSerialiseList
	
	move.w #Checkpoint_Width, Entity_Width(a0)
	move.w #Checkpoint_Height, Entity_Height(a0)
	move.b #0x0, Checkpoint_Activated(a0)

	rts

CheckpointLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts

CheckpointUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If not already active
	; TODO: Remove from entity update list completely
	tst.b  Checkpoint_Activated(a0)
	bne    @AlreadyActivated
	
	; If player reaches checkpoint X pos, it is activated
	move.l (Player1), a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosX(a2), d1
	cmp.l  d0, d1
	blt    @NotReached
	
	; Checkpoint activated
	move.b #0x1, Checkpoint_Activated(a0)
	
	; Set as last activated
	move.l a0, LastActivatedCheckpoint
	
	; Save game state
	jsr    SaveGame
	
	@AlreadyActivated:
	@NotReached:
	
	rts
	
CheckpointSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB Checkpoint_Activated(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Checkpoint_Activated(a0)
	
	;==============================================================
	
	@End:
	
	rts
	
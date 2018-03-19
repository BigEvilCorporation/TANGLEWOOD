;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   checkpoint.asm - Player spawn/save points
;==============================================================

; Constants
Checkpoint_Width        equ 0x0038
Checkpoint_Height       equ 0x0030

; Struct
	rsset (SpriteObj_Struct_Size)
;--------------------------
Checkpoint_Activated	rs.b 1	; Checkpoint reached/available
;--------------------------
	RS_ALIGN
Checkpoint_Struct_Size  rs.b 0

CheckpointInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    SpriteObjInit
	
	; Set type
	ori.l  #entity_type_checkpoint, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Checkpoint
	
	; Set update, render and serialise routines
	move.l #CheckpointUpdate, Entity_UpdateRoutine(a0)
	move.l #CheckpointDraw, Entity_RenderRoutine(a0)
	move.l #CheckpointSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to serialise list
	jsr    EntityAddToSerialiseList
	
	move.b #0x1, Entity_Active(a0)
	move.w #Checkpoint_Width, Entity_Width(a0)
	move.w #Checkpoint_Height, Entity_Height(a0)
	move.b #0x0, Checkpoint_Activated(a0)

	rts

CheckpointLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Load initial sprite (to alloc shared VRAM)
	SPRITE_LOAD_SHARED checkpnt,inactive,0,PaletteId_Player,0x0

	; Load correct sprite for current state
	jsr    CheckpointLoadStateSprite

	; Add to world grid
	move.b #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr    EntityAddToWorldGrid

	rts

CheckpointLoadStateSprite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Checkpoint_Activated(a0)
	beq    @Inactive
	SPRITE_LOAD_SHARED_VRAM checkpnt,active,0,PaletteId_Player,0x0,a0
	bra    @Active
	@Inactive:
	SPRITE_LOAD_SHARED_VRAM checkpnt,inactive,0,PaletteId_Player,0x0,a0
	@Active:

	move.b Checkpoint_Activated(a0), CheckpointSpriteLoaded

	rts

CheckpointUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If entity active
	tst.b  Entity_Active(a0)
	beq    @Inactive
	
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

	; Play sound
	PLAYSFX #SFX_Checkpoint
	
	; Save game state
	jsr    SaveGame
	
	@Inactive:
	@AlreadyActivated:
	@NotReached:
	
	rts

CheckpointDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	; Base functionality
	jsr   SpriteObjDraw

	; If visible, make sure correct version is loaded
	tst.b SpriteObj_SpriteLinked(a0)
	beq   @Invisible

	move.b Checkpoint_Activated(a0), d0
	cmp.b  CheckpointSpriteLoaded, d0
	beq    @Loaded

	; Switch sprite
	jsr    CheckpointLoadStateSprite

	@Invisible:
	@Loaded:

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
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Djakkcage.asm - Raising/lowring cage containing a Djakk
;==============================================================

; Constants
DjakkCage_Width				equ 0xC0
DjakkCage_Height			equ 0x60
DjakkCage_SpriteWidth		equ 0x10

DjakkCage_RaiseLowerSpeed	equ 0x00020000

;==============================================================

; States
DjakkCageState_Closed		equ 0x0
DjakkCageState_Open			equ 0x1
DjakkCageState_Opening		equ 0x2

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
DjakkCage_Barrier           rs.b Barrier_Struct_Size
DjakkCage_CallbackUserData  rs.l 1
DjakkCage_OnEndRaise        rs.l 1
DjakkCage_RaisedHeight		rs.l 1
DjakkCage_State				rs.b 1
;-----------------------------
	RS_ALIGN
DjakkCage_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

DjakkCageInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	addq.w #0x1, EntityCount_DjakkCage
	
	; Set update and render routines
	move.l #DjakkCageUpdate, Entity_UpdateRoutine(a0)
	move.l #DjakkCageDraw, Entity_RenderRoutine(a0)
	move.l #DjakkCageSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #DjakkCage_Width, Entity_Width(a0)
	move.w  #DjakkCage_Height, Entity_Height(a0)
	move.l  #0x0, DjakkCage_CallbackUserData(a0)
	move.l  #0x0, DjakkCage_OnEndRaise(a0)
	move.l  #0x0, DjakkCage_RaisedHeight(a0)
	move.b  #DjakkCageState_Closed, DjakkCage_State(a0)

	;==============================================================
	
	; Setup barrier
	lea    DjakkCage_Barrier(a0), a2
	move.l #Barrier_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #DjakkCage_Width, Barrier_Width(a2)
	move.w #DjakkCage_Height, Barrier_Height(a2)
	LIST_APPEND_TAIL Barriers, a2, a3

	rts

DjakkCageLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED DjakCage,djakk_cage,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	; Reposition barrier
	lea    DjakkCage_Barrier(a0), a2
	move.l Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.l Entity_WorldPosY(a0), Barrier_PosY(a2)

	rts
	
DjakkCageUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.b DjakkCage_State(a0), d0
	cmp.b  #DjakkCageState_Closed, d0
	beq    @End
	cmp.b  #DjakkCageState_Open, d0
	beq    @End
	cmp.b  #DjakkCageState_Opening, d0
	beq    @Opening

	@Opening:

	; Raising cage
	MOVE_NTSC_L DjakkCage_RaiseLowerSpeed, d1, d0
	sub.l  d1, Entity_WorldPosY(a0)
	add.l  d1, DjakkCage_RaisedHeight(a0)

	cmp.l  #DjakkCage_Height*subpixels_per_pixel, DjakkCage_RaisedHeight(a0)
	ble    @End

	; Finished raising
	move.b #DjakkCageState_Open, DjakkCage_State(a0)

	; Trigger callback
	move.l DjakkCage_OnEndRaise(a0), a2
	cmpa.w #0x0, a2
	beq    @End
	PUSHM  a0-a1
	move.l DjakkCage_CallbackUserData(a0), a0
	jsr    (a2)
	POPM   a0-a1

	; Disable barrier
	lea    DjakkCage_Barrier(a0), a2
	LIST_REMOVE Barriers, a2, a3, a4

	@End:
	
	jsr    SpriteObjUpdate

	; Reposition barrier
	lea    DjakkCage_Barrier(a0), a2
	move.l Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.l Entity_WorldPosY(a0), Barrier_PosY(a2)

	rts

DjakkCageDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	move.l Entity_WorldPosX(a0), d0
	PUSHL  d0

	; Draw left cage front
	jsr    SpriteObjDraw

	; Draw right cage front
	addi.l #(DjakkCage_Width-DjakkCage_SpriteWidth)*subpixels_per_pixel, Entity_WorldPosX(a0)
	jsr    SpriteObjDraw

	POPL   d0
	move.l d0, Entity_WorldPosX(a0)

	rts

DjakkCageBeginRaise:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #DjakkCageState_Opening, DjakkCage_State(a0)

	; Play SFX
	PLAYSFX #SFX_CageDoorRaise

	rts

DjakkCageSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	jsr   EntitySerialise

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB DjakkCage_State(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB DjakkCage_State(a0)
	
	;==============================================================
	
	@End:
	
	rts
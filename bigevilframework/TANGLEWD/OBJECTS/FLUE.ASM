;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   flue.asm - Chucks a character/Fuzzl up high
;==============================================================

; Constants
Flue_MaxEntities		equ 0x8
Flue_Width				equ 0x40
Flue_Height				equ 0x40
Flue_BoundsExtendX		equ 0x08
Flue_HoldDelay			equ 0x0040
Flue_DefaultEjectForceX	equ 0x0000
Flue_DefaultEjectForceY	equ 0x0E00
Flue_MaxOccupants		equ 0x2
Flue_OccupantTypes		equ (entity_type_player|entity_type_fuzzl)	; Accepted occupant entity types

; Occupant struct
	rsset 0
;---------------------------------
FlueOccupant_ObjAddr		rs.l 1	; Occupant GameObj address
FlueOccupant_HoldTimer		rs.w 1	; Hold timer
FlueOccupant_Ejecting		rs.b 1	; Currently ejecting the held GameObj
;---------------------------------
FlueOccupant_Struct_Pad   	rs.b 1	; Alignment padding
FlueOccupant_Struct_Size  	rs.b 0

; Flue struct

	rsset (Entity_Struct_Size)
;--------------------------
Flue_Occupants		rs.b (FlueOccupant_Struct_Size*Flue_MaxOccupants)	; Occupants
Flue_EjectForceX	rs.w 1	; Eject force X
Flue_EjectForceY	rs.w 1	; Eject force Y
;--------------------------
Flue_Struct_Pad   	rs.b 0	; Alignment padding
Flue_Struct_Size  	rs.b 0

FlueInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set type
	addi.l #entity_type_flue, Entity_TypeBits(a0)

	; Set update routine
	move.l #FlueUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	jsr EntityAddToUpdateList

	; Default state
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)	; Flue graphics are baked into the level
	move.w #Flue_Width, Entity_Width(a0)
	move.w #Flue_Height, Entity_Height(a0)
	
	move.w #Flue_DefaultEjectForceX, Flue_EjectForceX(a0)
	move.w #Flue_DefaultEjectForceY, Flue_EjectForceY(a0)

	rts

FlueUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l a0, -(sp)
	move.l a1, -(sp)
	
	move.l a0, a2
	add.l  #Flue_Occupants, a2
	move.l #(Flue_MaxOccupants-1), d0
	@OccupantLp:
	move.l d0, -(sp)
	jsr    FlueOccupantUpdate
	move.l (sp)+, d0
	add.l  #FlueOccupant_Struct_Size, a2
	dbra   d0, @OccupantLp

	move.l (sp)+, a1
	move.l (sp)+, a0

	jsr GameObjUpdate
	rts
	
FlueOccupantUpdate:
	; a0 --- GameObj addr
	; a2 --- Occupant desc address
	
	; Check if holding a GameObj
	move.l FlueOccupant_ObjAddr(a2), a1
	cmp.l  #0x0, a1
	beq    @NotHolding

	; Check if still ejecting a GameObj
	move.b FlueOccupant_Ejecting(a2), d0
	cmp.b  #0x0, d0
	bne    @StillEjecting

	; Check if timer elapsed
	move.w FlueOccupant_HoldTimer(a2), d0
	cmp.w  #0x0, d0
	bne    @TimerRunning

	; Timer elapsed, eject GameObj
	move.w Flue_EjectForceX(a0), GameObj_VelX(a1)
	move.w Flue_EjectForceY(a0), GameObj_VelY(a1)
	move.b #0x1, FlueOccupant_Ejecting(a2)

	; Snap to X centre
	clr.l  d1
	move.l Entity_WorldPosX(a0), d0
	move.w Entity_Width(a0), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	add.l  d1, d0
	move.w Entity_Width(a1), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	sub.l  d1, d0
	move.l d0, Entity_WorldPosX(a1)

	; Snap to Y top
	move.l Entity_WorldPosY(a0), Entity_WorldPosY(a1)

	;; If a character
	;
	;; Set jumping
	;move.b #0x1, Character_Jumping(a1)

	; Visible and active
	move.b #0x1, GameObj_Visible(a1)
	move.b #0x1, GameObj_Active(a1)
	
	@StillEjecting:
	
	;; If character
	;
	;; Check if dead
	;move.b Character_Dead(a1), d4
	;cmp.b  #0x1, d4
	;beq    @PlayerDead
	
	; Check if inside the flue
	jsr	   FlueTestGameObjInside

	cmp.b  #0x0, d0
	beq    @Outside

	; Object inside, check if they were being ejected
	move.b FlueOccupant_Ejecting(a2), d0
	cmp.b  #0x0, d0
	bne    @End
	bra    @AlreadyHolding
	
	@NotHolding:
	
	; Not holding anything yet, check if an object is inside
	jsr    FlueFindOccupant
	cmp.l  #0x0, a1
	beq    @NoOccupantFound
	
	@AlreadyHolding:

	; Object inside and not yet ejected, set invisible and hold in place
	move.b #0x0, GameObj_Visible(a1)
	move.b #0x0, GameObj_Active(a1)

	; Set current gameobj ptr
	move.l a1, FlueOccupant_ObjAddr(a2)

	; Start timer
	move.w #Flue_HoldDelay, FlueOccupant_HoldTimer(a2)

	bra    @End

	@Outside:
	; Player fully clear of box, no longer ejecting
	move.b #0x0, FlueOccupant_Ejecting(a2)
	move.l #0x0, FlueOccupant_ObjAddr(a2)

	bra    @End

	@TimerRunning:
	; Decrement eject timer
	sub.w  #0x1, FlueOccupant_HoldTimer(a2)

	@NoOccupantFound:
	;@PlayerDead:
	@End:
	
	rts
	
FlueFindOccupant:
	; a0 --- GameObj addr
	; a2 --- Occupant desc address

	; Search all entities
	; TODO: Slow, sort entities into type lists
	move.l (EntityListSize_Update), d0	 ; Get entity list size
	subi.l #0x1, d0						 ; -1 for loop
	move.l (EntityListHead_Update), a3	 ; Get list head
	@EntityLp:							 ; For all entities in list
	move.l d0, -(sp)					 ; Backup counter

	; Check entity type
	move.l Entity_TypeBits(a3), d0
	andi.l #Flue_OccupantTypes, d0
	cmp.l  #0x0, d0
	beq    @NextEntity
	
	;; If character
	;
	;; Check if dead
	;move.b Character_Dead(a1), d4
	;cmp.b  #0x1, d4
	;beq    @PlayerDead
	
	; Check if inside the flue
	move.l a3, a1
	jsr	   FlueTestGameObjInside
	move.l #0x0, a1

	cmp.b  #0x0, d0
	beq    @Outside

	; Object inside, check if already held
	move.l a0, a4
	add.l  #Flue_Occupants, a4
	move.l #(Flue_MaxOccupants-1), d1
	@OccupantLp:
	cmp.l  FlueOccupant_ObjAddr(a4), a3
	beq    @AlreadyHeld
	add.l  #FlueOccupant_Struct_Size, a4
	dbra   d1, @OccupantLp
	
	; New occupant found
	move.l a3, a1
	bra    @NewOccupantFound
	
	@AlreadyHeld:
	@Outside:
	@NextEntity:
	move.l (sp)+, d0					 ; Restore entity counter
	move.l Entity_UpdateNext(a0), a3	 ; Get next ptr
	dbra   d0, @EntityLp				 ; Loop
	
	@NewOccupantFound:
	
	rts

FlueTestGameObjInside:
	; d0 (b) Return value
	; a0 --- GameObj 1
	; a1 --- GameObj 2
	
	; Obj 1 min X
	move.l Entity_WorldPosX(a0), d1	; X
	lsr.l  #0x8, d1						; To screen space
	move.w d1, d2						; Copy for max
	sub.w  #Flue_BoundsExtendX, d1		; Extend X bounds for Flue
	swap   d1							; In upper word d1
	
	; Obj 1 max X
	move.w Entity_Width(a0), d3		; Width
	add.w  d3, d2						; Fuzzl X max
	add.w  #Flue_BoundsExtendX, d2		; Extend X bounds for Flue
	swap   d2							; In upper word d2
	
	; Obj 1 min Y
	move.l Entity_WorldPosY(a0), d3	; Y
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d2						; Copy for max
	move.w d3, d1						; In lower word d1
	
	; Obj 1 max Y
	move.w Entity_Height(a0), d3		; Height
	add.w  d3, d2						; Fuzzl Y max
	
	; Obj 2 min X
	move.l Entity_WorldPosX(a1), d3	; X
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d4						; Copy for max
	swap   d3							; In upper word d1
	
	; Obj 2 max X
	move.w Entity_Width(a1), d5		; Width
	add.w  d5, d4						; Fuzzl X max
	swap   d4							; In upper word d2
	
	; Obj 2 min Y
	move.l Entity_WorldPosY(a1), d5	; Y
	lsr.l  #0x8, d5						; To screen space
	move.w d5, d4						; Copy for max
	move.w d5, d3						; In lower word d1
	
	; Obj 2 max Y
	move.w Entity_Height(a1), d5		; Height
	add.w  d5, d4						; Fuzzl Y max
	
	jsr TestBoxInsideBox
	
	rts

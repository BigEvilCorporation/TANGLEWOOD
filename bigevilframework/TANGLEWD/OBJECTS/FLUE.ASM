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
Flue_HoldDelay			equ 0x0020
Flue_DefaultEjectForceX	equ 0x0000
Flue_DefaultEjectForceY	equ 0x0E00
Flue_MaxOccupants		equ 0x2
Flue_OccupantTypes		equ (entity_type_player|entity_type_fuzzl)	; Accepted occupant entity types
Flue_OccupantCheckFreq	equ 0x4	; Check for new occupants every n frames
Flue_CameraLerpSpeed	equ 0x4

; Occupant struct
	rsset 0
;---------------------------------
FlueOccupant_ObjAddr		rs.l 1	; Occupant GameObj address
FlueOccupant_HoldTimer		rs.w 1	; Hold timer
FlueOccupant_Ejecting		rs.b 1	; Currently ejecting the held PhysicsObj
FlueOccupant_CameraOwner	rs.b 1 	; Occupant owned the camera before lerping to output flue
;---------------------------------
FlueOccupant_Struct_Pad   	rs.b 0	; Alignment padding
FlueOccupant_Struct_Size  	rs.b 0

; Flue struct

	rsset (Entity_Struct_Size)
;--------------------------
Flue_OutputFlue			rs.l 1	; Linked flue to output occupant
Flue_Occupants			rs.b (FlueOccupant_Struct_Size*Flue_MaxOccupants)	; Occupants
Flue_EjectForceX		rs.w 1	; Eject force X
Flue_EjectForceY		rs.w 1	; Eject force Y
Flue_OccupantCheckTimer	rs.w 1
;-----------------------------
Flue_Struct_Pad   		rs.b 2	; Alignment padding
Flue_Struct_Size  		rs.b 0

FlueInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set type
	ori.l  #entity_type_flue, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Flues

	; Set update routine
	move.l #FlueUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	jsr EntityAddToUpdateList

	; Default state
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)	; Flue graphics are baked into the level
	move.l #0x0, Flue_OutputFlue(a0)
	move.w #Flue_Width, Entity_Width(a0)
	move.w #Flue_Height, Entity_Height(a0)
	
	move.w #Flue_DefaultEjectForceX, Flue_EjectForceX(a0)
	move.w #Flue_DefaultEjectForceY, Flue_EjectForceY(a0)
	
	; Stagger occupant checks for performance
	move.w (EntityCount_Flues), Flue_OccupantCheckTimer(a0)

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

	rts
	
FlueOccupantUpdate:
	; a0 --- GameObj addr
	; a2 --- Occupant desc address
	
	; Check if holding an occupant
	move.l FlueOccupant_ObjAddr(a2), a1
	cmp.l  #0x0, a1
	beq    @NotHolding

	; Check if still ejecting an occupant
	move.b FlueOccupant_Ejecting(a2), d0
	cmp.b  #0x0, d0
	bne    @StillEjecting
	
	; If occupant was camera owner, wait for camera lerp
	cmp.b  #0x0, FlueOccupant_CameraOwner(a2)
	beq    @NotLerpingCamera
	cmp.l  #0x0, CameraTargetLerpSource
	bne    @LerpingCamera
	@NotLerpingCamera:

	; Check if timer elapsed
	move.w FlueOccupant_HoldTimer(a2), d0
	cmp.w  #0x0, d0
	bne    @TimerRunning

	; Timer elapsed, eject occupant
	move.w Flue_EjectForceX(a0), PhysicsObj_VelX(a1)
	move.w Flue_EjectForceY(a0), PhysicsObj_VelY(a1)
	move.b #0x1, FlueOccupant_Ejecting(a2)
	
	; If linked to another flue, use that pos for output
	move.l a0, a3
	cmp.l  #0x0, Flue_OutputFlue(a0)
	beq    @NoLinkedFlue
	move.l Flue_OutputFlue(a0), a3
	@NoLinkedFlue:

	; Snap to X centre
	clr.l  d1
	move.l Entity_WorldPosX(a3), d0
	move.w Entity_Width(a3), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	add.l  d1, d0
	move.w Entity_Width(a1), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	sub.l  d1, d0
	move.l d0, Entity_WorldPosX(a1)

	; Snap to Y top
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a1)

	; TEMP: Objects should check their own upwards velocities, or only support characters? This is a bit hacky
	
	; If character
	move.l Entity_TypeBits(a1), d1
	andi.l #entity_type_character, d1
	cmp.l  #0x0, d1
	beq    @NotCharacter 
	
	; Set jumping
	move.b #0x1, Character_Jumping(a1)
	move.b #0x0, Character_Falling(a1)
	
	; If occupant was camera owner, give back control
	cmp.b  #0x0, FlueOccupant_CameraOwner(a2)
	beq    @NotCameraOwner
	move.l a1, CameraTargetGameObj
	move.l #0x0, CameraTargetLerpSource
	move.w #0x0, CameraTargetLerpTime
	move.w #0x0, CameraTargetLerpSpeed
	@NotCameraOwner:
	
	bra    @NotFuzzl
	
	@NotCharacter:
	
	; If Fuzzl
	move.l Entity_TypeBits(a1), d1
	andi.l #entity_type_fuzzl, d1
	cmp.l  #0x0, d1
	beq    @NotFuzzl 
	
	; Set flinging
	bset.b #Fuzzl_State_Fling, Fuzzl_State_bits(a1)
	bclr.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a1)
	
	@NotFuzzl:

	; Visible and active
	move.b #0x1, SpriteObj_Visible(a1)
	move.b #0x1, Entity_Active(a1)
	
	; Play SFX
	PLAYSFX_HIGHPRIO #SFX_FlueOut
	
	@StillEjecting:
	
	; Check if inside the flue
	jsr	   FlueTestPhysicsObjInside

	cmp.b  #0x0, d0
	beq    @Outside

	; Object inside, check if they were being ejected
	move.b FlueOccupant_Ejecting(a2), d0
	cmp.b  #0x0, d0
	bne    @End
	bra    @AlreadyHolding
	
	@NotHolding:
	
	; Only check for occupants every n frames
	subi.w #0x1, Flue_OccupantCheckTimer(a0)
	beq    @NoOccupantCheck
	
	; Reset timer
	move.w #Flue_OccupantCheckFreq, Flue_OccupantCheckTimer(a0)
	
	; Not holding anything yet, check if an object is inside
	jsr    FlueFindOccupant
	cmp.l  #0x0, a1
	beq    @NoOccupantFound
	
	@AlreadyHolding:

	; Object inside and not yet ejected, set invisible and hold in place
	move.b #0x0, SpriteObj_Visible(a1)
	move.b #0x0, Entity_Active(a1)

	; Set current gameobj ptr
	move.l a1, FlueOccupant_ObjAddr(a2)

	; Start timer
	move.w #Flue_HoldDelay, FlueOccupant_HoldTimer(a2)
	
	; If linked to another flue, use as camera lerp target
	move.l Flue_OutputFlue(a0), a3
	cmp.l  #0x0, a3
	beq    @NotCameraTarget
	
	; If occupant is also the camera target
	move.l (CameraTargetGameObj), a4
	cmp.l  a1, a4
	bne    @NotCameraTarget
	
	; Lerp camera towards output flue
	move.l a1, CameraTargetLerpSource
	move.l a3, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #Flue_CameraLerpSpeed, CameraTargetLerpSpeed
	
	; Occupant was camera owner
	move.b #0x1, FlueOccupant_CameraOwner(a2)
	
	@NotCameraTarget:

	bra    @End

	@Outside:
	; Player fully clear of box, no longer ejecting
	move.b #0x0, FlueOccupant_Ejecting(a2)
	move.l #0x0, FlueOccupant_ObjAddr(a2)

	bra    @End

	@TimerRunning:
	
	; Decrement eject timer
	sub.w  #0x1, FlueOccupant_HoldTimer(a2)

	@NoOccupantCheck:
	@NoOccupantFound:
	@LerpingCamera:
	@End:
	
	rts
	
FlueFindOccupant:
	; a0 --- GameObj addr
	; a2 --- Occupant desc address

	; Search all entities
	; TODO: Slow, sort entities into type lists
	LIST_GET_SIZE EntityUpdate, d0	 	 ; Get entity list size
	subi.l #0x1, d0						 ; -1 for loop
	LIST_GET_HEAD EntityUpdate, a3		 ; Get list head
	@EntityLp:							 ; For all entities in list

	; Check entity type
	move.l Entity_TypeBits(a3), d1
	andi.l #Flue_OccupantTypes, d1
	cmp.l  #0x0, d1
	beq    @NextEntity
	
	; If character
	move.l Entity_TypeBits(a3), d1
	btst.l #entity_type_character, d1
	beq    @NotCharacter 
	
	; Check if dead
	move.b Character_Dead(a1), d4
	cmp.b  #0x1, d4
	beq    @CharacterDead
	
	@NotCharacter:
	
	; Check active
	cmp.b  #0x0, Entity_Active(a3)
	beq    @NextEntity
	
	; Check if inside the flue
	move.l a3, a1						 ; PhysicsObj to a1
	move.l d0, -(sp)					 ; Backup entity counter
	jsr	   FlueTestPhysicsObjInside
	move.b d0, d1
	move.l (sp)+, d0					 ; Restore entity counter
	move.l #0x0, a1						 ; Clear a1 again, it's the return val

	cmp.b  #0x0, d1
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
	
	; Play SFX
	PLAYSFX_HIGHPRIO #SFX_FlueIn
	
	bra    @NewOccupantFound
	
	@AlreadyHeld:
	@Outside:
	@CharacterDead:
	@NextEntity:
	LIST_GET_NEXT EntityUpdate,a3,a3	 ; Get next ptr
	dbra   d0, @EntityLp				 ; Loop
	
	@NewOccupantFound:
	
	rts

FlueTestPhysicsObjInside:
	; d0 (b) Return value
	; a0 --- PhysicsObj 1
	; a1 --- PhysicsObj 2
	
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
	
	jsr PHYS_TestBoxInsideBox
	
	rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   windflue.asm - Giant flue that emits gusts of wind
;==============================================================

; Constants
WindFlue_Width			equ 0x0080
WindFlue_Height			equ 0x0018
WindFlue_MaxBlowDist	equ 0x0010
WindFlue_ResistStrength	equ 0x00010000
WindFlue_MinAccel		equ DefaultGravity+0x1000

; Struct
	rsset (Entity_Struct_Size)
;---------------------------------
;---------------------------------
WindFlue_Struct_Pad   rs.b 0	; Alignment padding
WindFlue_Struct_Size  rs.b 0

WindFlueInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Add to count
	addq.w #0x1, EntityCount_WindFlue

	; Set update routine
	move.l #WindFlueUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	jsr    EntityAddToUpdateList

	; Initialise
	move.w  #WindFlue_Width, Entity_Width(a0)
	move.w  #WindFlue_Height, Entity_Height(a0)

	rts

WindFlueLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
WindFlueUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if player within range
	move.l (Player1), a2
	ENTITY_GETBOUNDS d1,d2,d5,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	subi.w #WindFlue_MaxBlowDist, d1
	jsr   PHYS_TestBoxIntersectBox
	tst.b d0
	beq   @OutOfBounds

	; Add wind accel
	add.l #WindFlue_MinAccel, PhysicsObj_VelY(a2)

	; If lower than max height, apply resist strength

	@OutOfBounds:

	rts
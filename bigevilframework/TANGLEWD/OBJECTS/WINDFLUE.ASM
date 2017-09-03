;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   windflue.asm - Giant flue that emits gusts of wind
;==============================================================

; Constants
WindFlue_Width				equ 0x0080
WindFlue_Height				equ 0x0018
WindFlue_MaxBlowDist		equ 0x0010
WindFlue_MaxBlowDistGliding	equ 0x0100
WindFlue_BlowVel			equ DefaultGravity+0x1000
WindFlue_BlowVelGliding		equ DefaultGravity+0x2800

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

	; Add max blow height
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @GlideHeight
	subi.w #WindFlue_MaxBlowDist, d1
	bra    @FallHeight
	@GlideHeight:
	subi.w #WindFlue_MaxBlowDistGliding, d1
	@FallHeight:

	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @OutOfBounds

	; Add wind accel
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @GlideVel
	add.l  #WindFlue_BlowVel, PhysicsObj_VelY(a2)
	bra    @FallVel
	@GlideVel:
	add.l  #WindFlue_BlowVelGliding, PhysicsObj_VelY(a2)
	@FallVel:

	; Disable snap to floor
	move.b #0x0, PhysicsObj_SnapToFloor(a2)

	; Set falling
	move.b #0x1, Character_Falling(a2)

	@OutOfBounds:

	rts
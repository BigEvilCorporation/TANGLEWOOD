;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   button.asm - Weight activated button
;==============================================================

; Constants
Button_MaxEntities		equ 0x2
Button_Width			equ 0x20
Button_Height			equ 0x08

	;rsset (AnimObj_Struct_Size)
	rsset (Entity_Struct_Size)
;---------------------------------
Button_OnDown				rs.l 1
Button_OnUp					rs.l 1
Button_UserData				rs.l 1
Button_Pressed				rs.b 1
;---------------------------------
Button_Struct_Pad			rs.b 3   ; Alignment padding
Button_Struct_Size			rs.b 0
;---------------------------------

ButtonInit:

	; Set type
	addi.w #0x1, EntityCount_Button
	
	; Set update and render routines
	move.l #ButtonUpdate, Entity_UpdateRoutine(a0)
	;move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #ButtonSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList

	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.w  #Button_Width, Entity_Width(a0)
	move.w  #Button_Height, Entity_Height(a0)
	move.b  #0x0, Button_Pressed(a0)

	rts

ButtonLoadGfx:
	rts

ButtonUpdate:

	PUSHL  a1

	; Check if player heading down
	move.l #Player1, a1
	cmp.l  #0x0, PhysicsObj_VelY(a1)
	bgt    @PlayerHeadingUp
	
	; Check if player touching
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETCENTREX d3, a1
	ENTITY_GETBOTTOM d4, a1
	TOPIXELS d3
	TOPIXELS d4
	swap   d3
	move.w d4, d3
	jsr    PHYS_TestPointInsideBox
	
	cmp.b  #0x0, d0
	beq    @NotTouching
	
	; Player on button
	cmp.b  #0x0, Button_Pressed(a0)
	bne    @End

	; Trigger
	PUSHL  a0
	move.l Button_OnDown(a0), a2
	move.l Button_UserData(a0), a0
	jsr    (a2)
	POPL   a0

	move.b #0x1, Button_Pressed(a0)

	bra    @End
	
	@PlayerHeadingUp:
	@NotTouching:

	; Player off button
	cmp.b  #0x0, Button_Pressed(a0)
	beq    @End

	; Un-trigger
	PUSHL  a0
	move.l Button_OnUp(a0), a2
	move.l Button_UserData(a0), a0
	jsr    (a2)
	POPL   a0

	move.b #0x0, Button_Pressed(a0)

	@End:

	POPL   a1

	rts

ButtonSerialise:
	rts
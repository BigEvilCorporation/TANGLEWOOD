;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   button.asm - Weight activated button
;==============================================================

; Constants
Button_MaxEntities		equ 0x2
Button_Width			equ 0x40
Button_Height			equ 0x08
Button_PressSpeed		equ 0x00001000
Button_PressHeightMax	equ 0x04*subpixels_per_pixel

	rsset (AnimObj_Struct_Size)
;---------------------------------
Button_Animation			rs.b Animation_Struct_size
Button_Platform				rs.b Platform_Struct_Size
Button_PressHeight			rs.l 1
Button_OnDown				rs.l 1
Button_OnUp					rs.l 1
Button_UserData				rs.l 1
Button_Pressed				rs.b 1
;---------------------------------
Button_Struct_Pad			rs.b 3   ; Alignment padding
Button_Struct_Size			rs.b 0
;---------------------------------

ButtonInit:

	; Base init
	jsr    AnimObjInit

	; Set type
	addi.w #0x1, EntityCount_Button
	
	; Set update and render routines
	move.l #ButtonUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #ButtonSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList

	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.w  #Button_Width, Entity_Width(a0)
	move.w  #Button_Height, Entity_Height(a0)
	move.l  #0x0, Button_PressHeight(a0)
	move.b  #0x0, Button_Pressed(a0)

	;==============================================================
	
	; Setup platform
	move.l a0, a2
	add.l  #Button_Platform, a2
	
	move.b #0x1, Platform_Active(a2)
	move.w #Button_Width, Platform_Width(a2)
	
	; Add to physics platforms list
	LIST_APPEND_TAIL Platforms, a2, a3
	
	;==============================================================

	rts

ButtonLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT button,PaletteId_World0,0x0

	; Load anim
	ANIM_LOAD_DEFAULT button_button,button_press,Button_Animation,0,0,0,0

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

	; Base functionality
	jsr    SpriteObjupdate

	;==============================================================
	
	; Reposition platform
	move.l a0, a2
	add.l  #Button_Platform, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	;add.l  #Button_PlatformXOffset*subpixels_per_pixel, d0
	;add.l  #Button_PlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)

	rts

ButtonSerialise:
	rts
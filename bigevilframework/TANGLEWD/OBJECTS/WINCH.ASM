;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   winch.asm - A winch/pulley system that pushes/pulls an attached object
;==============================================================

; Constants
Winch_Width				equ 0x30
Winch_Height			equ 0x38
Winch_DefaultVelocity	equ 0x00020000

	rsset (AnimObj_Struct_Size)
;-----------------------------
Winch_Animation			rs.b Animation_Struct_Size
Winch_PhysObject		rs.l 1	; Physics object being pushed/pulled
Winch_Velocity			rs.l 1	; Velocity to push/pull attached object
Winch_Mirror			rs.l 1	; Winch on opposite side, mirrors animation
;-----------------------------
Winch_Struct_Pad		rs.b 0
Winch_struct_Size		rs.b 0
;-----------------------------

WinchInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr AnimObjInit
	
	; Count
	addq.w #0x1, EntityCount_Winch
	
	; Set update and render routines
	move.l #WinchUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #WinchSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr EntityAddToUpdateList
	;jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w #Winch_Width, Entity_Width(a0)
	move.w #Winch_Height, Entity_Height(a0)
	move.l #0x0, Winch_PhysObject(a0)
	move.l #0x0, Winch_Velocity(a0)
	move.l #0x0, Winch_Mirror(a0)

	rts

WinchLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED winch,winch,PaletteId_World0,0x0

	; Load animation
	ANIM_LOAD_DEFAULT winch,winch,turn,Winch_Animation,0,1,0,0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	rts

WinchUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If moving
	tst.l  Winch_Velocity(a0)
	beq    @Stopped

	; Get attached object
	move.l Winch_PhysObject(a0), a2
	cmp.l  #0x0, a2
	beq    @Stopped

	; Check object is latched
	move.l Winch_Mirror(a0), a3
	cmp.l  #0x0, a3
	beq    @NoMirror

	; Combine bounds of both winches
	ENTITY_GETBOUNDS d1,d6,d5,a0
	ENTITY_GETBOUNDS d6,d2,d5,a3
	ENTITY_GETBOUNDS d3,d4,d5,a2

	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoObj

	; Ignore barriers, assume the player must move them out of the way
	move.b PhysicsObj_HitWall(a2), d1
	move.b d1, d2
	andi.b #PhysicsObjHitBarrier, d2
	bne    @NotHittingWall

	; If object hit static wall, stop
	move.l Winch_Velocity(a0), d0
	tst.l  d0
	bgt    @HeadingRight
	move.b d1, d2
	andi.b #PhysicsObjHitWallLeft, d2
	bne    @HitWall
	bra    @NotHittingWall
	@HeadingRight:
	move.b d1, d2
	andi.b #PhysicsObjHitWallRight, d2
	beq    @NotHittingWall
	@HitWall:

	; Object hit wall, stop winch
	jsr    Winch_Stop

	bra    @Stopped
	
	@NotHittingWall:

	; Apply velocity
	move.l d0, PhysicsObj_VelX(a2)
	
	@Stopped:
	@NoObj:
	@NoMirror:

	; Base functionality
	jsr    AnimObjUpdate

	rts

WinchSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	
	;==============================================================
	
	@End:
	
	rts

Winch_RunClockwise:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1
	lea    Winch_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	PUSHM  a0-a1
	move.l Winch_Mirror(a0), a0
	cmp.l  #0x0, a0
	beq    @NoMirror
	lea    Winch_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	@NoMirror:
	POPM   a0-a1

	MOVE_NTSC_L Winch_DefaultVelocity, Winch_Velocity(a0), d0

	rts

Winch_RunAntiClockwise:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a1
	lea    Winch_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	PUSHM  a0-a1
	move.l Winch_Mirror(a0), a0
	cmp.l  #0x0, a0
	beq    @NoMirror
	lea    Winch_Animation(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	@NoMirror:
	POPM   a0-a1

	MOVE_NTSC_L Winch_DefaultVelocity, d0, d1
	neg.l  d0
	move.l d0, Winch_Velocity(a0)

	rts

Winch_Stop:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.b #0x0, AnimObj_Playing(a0)
	move.l #0x0, Winch_Velocity(a0)

	move.l Winch_Mirror(a0), a2
	cmp.l  #0x0, a2
	beq    @NoMirror
	move.b #0x0, AnimObj_Playing(a2)
	@NoMirror:

	rts
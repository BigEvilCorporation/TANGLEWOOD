;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   djubb.asm - Fish with sharp teeth, tastes awful
;==============================================================

; Constants
Djubb_Width				equ 0x28
Djubb_Height			equ 0x18
Djubb_Mass				equ 0x02
Djubb_SwimAccel			equ 0x001000
Djubb_SwimDecelIdle		equ 0x002000
Djubb_SwimDecelForced	equ 0x004000
Djubb_MaxSwimVel		equ 0x03E000
Djubb_WallProbeLeft		equ -0x0010
Djubb_WallProbeRight	equ Djubb_Width+0x0010
Djubb_PlayerYViewDist	equ 0x20
Djubb_AttackDamage		equ 0xFF

; Animations
DjubbAnimIdx_Bite		equ 0x0
; -------------------------------
Djubb_NumAnims			equ 1

; Struct
	rsset (Character_Struct_Size)
;-----------------------------
Djubb_Animations		rs.b (Animation_Struct_Size*Djubb_NumAnims)
;-----------------------------
Djubb_Struct_Pad		rs.b 0
Djubb_Struct_Size		rs.b 0
;-----------------------------

DjubbInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Count
	addq.w #0x1, EntityCount_Djubb
	
	; Set update and render routines
	move.l #DjubbUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	move.l #DjubbSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList

	; Default properties
	move.w  #Djubb_Width, Entity_Width(a0)
	move.w  #Djubb_Height, Entity_Height(a0)
	move.l  #Djubb_MaxSwimVel, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Djubb_MaxSwimVel, PhysicsObj_MaxVelAirX(a0)
	move.w  #Djubb_SwimDecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Djubb_WallProbeLeft, PhysicsObj_WallProbeLeft(a0)
	move.w  #Djubb_WallProbeRight, PhysicsObj_WallProbeRight(a0)
	move.w  #Djubb_Height, PhysicsObj_WallProbeBottom(a0)
	move.b  #Djubb_Mass, PhysicsObj_Mass(a0)
	move.b  #0x0, PhysicsObj_CollideCeilings(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.b  #0x1, PhysicsObj_DecelInAir(a0)
	
	move.l  #Djubb_MaxSwimVel, Character_MaxVelXWalk(a0)
	move.l  #Djubb_MaxSwimVel, Character_MaxVelXRun(a0)
	move.l  #Djubb_MaxSwimVel, Character_WalkToRunVel(a0)
	move.w  #Djubb_SwimAccel, Character_AccelWalk(a0)
	move.w  #Djubb_SwimAccel, Character_AccelRun(a0)
	move.w  #Djubb_SwimDecelIdle, Character_DecelIdle(a0)
	move.w  #Djubb_SwimDecelForced, Character_DecelForced(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	rts

DjubbLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT djubb,PaletteId_Monster,0x0

	; Setup default character animations
	ANIM_LOAD_DEFAULT djubb_idle,djubb_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT djubb_swim,djubb_swim,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT djubb_swim,djubb_swim,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Setup bespoke character animations
	ANIM_LOAD_DEFAULT djubb_bite,djubb_bite,Djubb_Animations,DjubbAnimIdx_Bite,0,1,0

	rts

DjubbUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get player
	move.l (Player1), a2

	; If dead, don't bother
	tst.b  Character_Dead(a2)
	bne    @PlayerDead

	; If within Y window
	ENTITY_GETCENTREY d0, a0
	ENTITY_GETCENTREY d1, a2
	sub.l  d0, d1
	ABS    d1
	cmp.l  #Djubb_PlayerYViewDist*subpixels_per_pixel, d1
	bgt    @PlayerOutOfView

	; If touching, bite
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NotTouching

	; Attack
	PUSHL  a0
	move.l a2, a0
	move.b #Djubb_AttackDamage, d0
	jsr    CharacterDealDamage
	POPL   a0

	PUSHL  a1
	lea    Djubb_Animations+(DjubbAnimIdx_Bite*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	bra    @EndMove

	@NotTouching:

	; Move towards
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a2
	sub.l  d0, d1
	tst.l  d1
	bgt    @MoveRight
	jsr    CharacterMoveLeft
	bra    @EndMove
	@MoveRight:
	jsr    CharacterMoveRight
	bra    @EndMove

	@PlayerOutOfView:

	jsr    CharacterCancelXMovement

	@EndMove:
	@PlayerDead:

	; Base functionality
	jsr CharacterUpdate
	
	rts
	
DjubbSerialise:
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

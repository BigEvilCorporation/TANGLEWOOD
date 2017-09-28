;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   demon.asm - Spirit demon, the end boss
;==============================================================

; Constants
Demon_Width			equ 0x0078
Demon_Height		equ 0x0060

Demon_MaxVelXWalk   equ 0x010000   ; Max X walking velocity
Demon_MaxVelXRun    equ 0x03E000   ; Max X running velocity
Demon_MaxVelXAir    equ 0x04E000
Demon_MaxVelYUp	    equ 0x060000   ; Max Y velocity up
Demon_MaxVelYDown	equ 0x080000   ; Max Y velocity down
Demon_WalkToRunVel  equ 0x030000   ; Walk to run transition velocity
Demon_AccelWalk     equ 0x000200   ; Walking acceleration
Demon_AccelRun      equ 0x001000   ; Running acceleration
Demon_DecelIdle     equ 0x002000   ; Deceleration if left alone
Demon_DecelForced   equ 0x004000   ; Deceleration if input opposite direction

Demon_BoundsWidth	equ Demon_Width
Demon_BoundsHeight	equ (Demon_Height-0x40)
Demon_BoundsOffsetX	equ (Demon_Width/2)-(Demon_BoundsWidth/2)
Demon_BoundsOffsetY	equ (Demon_Height/2)-(Demon_BoundsHeight/2)

DemonWisp_Width		equ 0x0038
DemonWisp_Height	equ 0x0030
DemonWisp_MinVel	equ 0x00002000
DemonWisp_MaxVel	equ 0x00020000
DemonWisp_Accel		equ 0x00008000
DemonWisp_MaxDistSq	equ Player1Height	; Max distance from player

DemonState_Wisp		equ 0x0

;==============================================================

	rsset (AnimObj_Struct_Size)
;-----------------------------
Wisp_Animation			rs.b Animation_Struct_Size
;-----------------------------
Wisp_Struct_Pad			rs.b 0   ; Alignment padding
Wisp_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

	rsset (Character_Struct_Size)
;-----------------------------
Demon_Wisp				rs.b Wisp_Struct_Size
Demon_State				rs.b 1
;-----------------------------
Demon_Struct_Pad		rs.b 3   ; Alignment padding
Demon_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

DemonInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    CharacterInit
	
	; Set type
	addq.w #0x1, EntityCount_Demon
	
	; Set update and render routines
	move.l #DemonUpdate, Entity_UpdateRoutine(a0)
	move.l #DemonDraw, Entity_RenderRoutine(a0)
	move.l #DemonSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.w  #Demon_Width, Entity_Width(a0)
	move.w  #Demon_Height, Entity_Height(a0)
	move.b  #0x0, PhysicsObj_HasPhysics(a0)

	move.l  #Demon_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Demon_MaxVelXRun, Character_MaxVelXRun(a0)
	move.l  #Demon_WalkToRunVel, Character_WalkToRunVel(a0)
	move.w  #Demon_AccelWalk, Character_AccelWalk(a0)
	move.w  #Demon_AccelRun, Character_AccelRun(a0)
	move.w  #Demon_DecelIdle, Character_DecelIdle(a0)
	move.w  #Demon_DecelForced, Character_DecelForced(a0)

	move.b  #DemonState_Wisp, Demon_State(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Init wisp
	PUSHL   a0
	lea     Demon_Wisp(a0), a0
	jsr     AnimObjInit
	move.w  #DemonWisp_Width, Entity_Width(a0)
	move.w  #DemonWisp_Height, Entity_Height(a0)
	POPL    a0

	rts

DemonLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Demon,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT demon_idle,demon_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Load wisp and start animation
	PUSHM   a0-a1
	lea     Demon_Wisp(a0), a0
	SPRITE_LOAD_DEFAULT wisp,PaletteId_Monster,0x0
	ANIM_LOAD_DEFAULT wisp_idle,wisp_idle,Wisp_Animation,0,1,0,0
	lea     Wisp_Animation(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPM    a0-a1

	rts
	
DemonUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    CharacterUpdate

	move.b Demon_State(a0), d0
	cmp.b  #DemonState_Wisp, d0
	beq    @Wisp
	bra    @End

	@Wisp:

	; If dist to player > max
	PUSHL  a1
	move.l Player1, a1
	jsr    PHYS_EntityDistSq
	cmp.l  #DemonWisp_MaxDistSq*DemonWisp_MaxDistSq, d0
	blt    @WithinRange

	; Accelerate towards player
	

	@WithinRange:
	POPL   a1

	; Update wisp
	PUSHL   a0
	move.l  a0, a2
	lea     Demon_Wisp(a0), a0
	move.l  Entity_WorldPosX(a2), Entity_WorldPosX(a0)
	move.l  Entity_WorldPosY(a2), Entity_WorldPosY(a0)
	jsr     AnimObjUpdate
	POPL    a0

	bra    @End

	@End:

	rts

DemonDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	cmp.b  #DemonState_Wisp, Demon_State(a0)
	beq    @DrawWisp

	; Draw demon
	jsr    CharacterDraw
	bra    @End

	@DrawWisp:

	; Draw wisp
	PUSHL   a0
	lea     Demon_Wisp(a0), a0
	jsr     AnimObjDraw
	POPL    a0

	@End:

	rts
	
DemonSerialise:
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
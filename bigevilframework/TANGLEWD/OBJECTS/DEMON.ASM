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
Demon_DecelIdle     equ 0x001000   ; Deceleration if left alone
Demon_DecelForced   equ 0x002000   ; Deceleration if input opposite direction

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
DemonState_Physical	equ 0x1

; Animations
DemonAnimIdx_WispToEmerge	equ 0x0
DemonAnimIdx_Transition		equ 0x1
DemonAnimIdx_Emerge			equ 0x2
DemonAnimIdx_IdleToSmirk	equ 0x3
DemonAnimIdx_Bite			equ 0x4
;----------------------------------
DemonAnimIdx_Max			equ 0x5

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
Demon_Animations		rs.b (Animation_Struct_Size*DemonAnimIdx_Max)
Demon_Wisp				rs.b Wisp_Struct_Size
Demon_TargetX			rs.w 1
Demon_TargetY			rs.w 1
Demon_State				rs.b 1
Demon_AtTarget			rs.b 1
Demon_ManualGfxLoad		rs.b 1	; Don't load gfx
;-----------------------------
Demon_Struct_Pad		rs.b 1   ; Alignment padding
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
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	move.b  #0x0, PhysicsObj_HasPhysics(a0)
	move.b  #0x1, PhysicsObj_DecelInAir(a0)
	move.l  #Demon_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Demon_MaxVelXAir, PhysicsObj_MaxVelAirX(a0)
	move.l  #Demon_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Demon_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Demon_DecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Demon_DecelIdle, PhysicsObj_DecelY(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_CollideWalls(a0)
	move.b  #0x0, PhysicsObj_CollideFloor(a0)

	move.l  #Demon_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Demon_MaxVelXRun, Character_MaxVelXRun(a0)
	move.l  #Demon_WalkToRunVel, Character_WalkToRunVel(a0)
	move.w  #Demon_AccelWalk, Character_AccelWalk(a0)
	move.w  #Demon_AccelRun, Character_AccelRun(a0)
	move.w  #Demon_DecelIdle, Character_DecelIdle(a0)
	move.w  #Demon_DecelForced, Character_DecelForced(a0)

	move.b  #DemonState_Wisp, Demon_State(a0)
	move.b  #0x0, Demon_AtTarget(a0)
	move.w  #0x0, Demon_TargetX(a0)
	move.w  #0x0, Demon_TargetY(a0)
	move.b  #0x0, Demon_ManualGfxLoad(a0)

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

	tst.b   Demon_ManualGfxLoad(a0)
	bne     @ManualLoad

	; Load sprite (to alloc VRAM for wisp)
	SPRITE_LOAD_DEFAULT Demon,PaletteId_Monster,0x0

	; Load wisp
	jsr DemonLoadWispGfx

	@ManualLoad:

	; Load default character animations
	ANIM_LOAD_DEFAULT demon_idle,demon_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT demon_emerge,demon_wisptoemerge,Demon_Animations,DemonAnimIdx_WispToEmerge,0,0,0
	ANIM_LOAD_DEFAULT demon_emerge,demon_transition,Demon_Animations,DemonAnimIdx_Transition,1,0,0
	ANIM_LOAD_DEFAULT demon_emerge,demon_emerge,Demon_Animations,DemonAnimIdx_Emerge,0,0,0
	ANIM_LOAD_DEFAULT demon_idletosmirk,demon_idletosmirk,Demon_Animations,DemonAnimIdx_IdleToSmirk,0,0,0
	ANIM_LOAD_DEFAULT demon_bite,demon_bite,Demon_Animations,DemonAnimIdx_Bite,0,0,0

	; Load wisp anim and start playing
	PUSHM   a0-a1
	move.l  a0, a4
	lea     Demon_Wisp(a0), a0
	ANIM_LOAD_DEFAULT wisp_idle,wisp_idle,Wisp_Animation,0,1,0,0
	lea     Wisp_Animation(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPM    a0-a1

	rts

DemonLoadWispGfx:

	; Load wisp (into Demon VRAM)
	PUSHM   a0-a1
	move.l  a0, a4
	lea     Demon_Wisp(a0), a0
	SPRITE_LOAD_COPY wisp,PaletteId_Monster,0x0,a4
	POPM    a0-a1

	rts
	
DemonUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Entity_Active(a0)
	beq    @Disabled
	
	; Base functionality
	jsr    CharacterUpdate

	PUSHL  a1

	move.b Demon_State(a0), d0
	cmp.b  #DemonState_Wisp, d0
	beq    @Wisp
	bra    @End

	@Wisp:

	; Get wisp move target
	move.w Demon_TargetX(a0), d1
	swap   d1
	move.w Demon_TargetY(a0), d1
	tst.l  d1
	bne    @HasTarget

	; No target, use player
	move.l Player1, a1
	ENTITY_GETCENTREVEC2 d1,d2,a1

	@HasTarget:

	; Get wisp pos
	ENTITY_GETCENTREVEC2 d0,d2,a0

	; If dist to target > max
	move.l d0, d2
	move.l d1, d3
	VEC2_DISTSQ d2, d3, d4
	cmp.l  #DemonWisp_MaxDistSq*DemonWisp_MaxDistSq, d2
	blt    @WithinRange

	move.b #0x0, Demon_AtTarget(a0)

	; Accelerate towards target
	VEC2_SUB d0,d1
	clr.l  d2
	clr.l  d3
	move.w d1, d2
	neg.w  d2
	swap   d1
	move.w d1, d3
	ext.l  d2
	ext.l  d3
	lsl.l  #0x8, d2
	lsl.l  #0x2, d2
	lsl.l  #0x8, d3
	lsl.l  #0x2, d3
	move.l d2, PhysicsObj_VelY(a0)
	move.l d3, PhysicsObj_VelX(a0)
	bra    @Following

	@WithinRange:

	move.w #0x0, PhysicsObj_AccelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.b #0x1, Demon_AtTarget(a0)

	@Following:

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

	POPL   a1

	@Disabled:

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
	move.l  a0, a2
	PUSHL   a2
	lea     Demon_Wisp(a0), a0
	jsr     AnimObjDraw
	POPL    a2
	move.b  SpriteObj_SpriteLinked(a0), SpriteObj_SpriteLinked(a2)
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

DemonStartWisp:

	; Load wisp sprite
	jsr     DemonLoadWispGfx

	; Set wisp state
	move.b  #DemonState_Wisp, Demon_State(a0)

	rts

DemonStartEmerge:

	; Load demon sprite over top of wisp
	SPRITE_LOAD_COPY Demon,PaletteId_Monster,0x0,a0

	; Start wisp to emerge anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_WispToEmerge)(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set transitioning idle anim
	ANIM_LOAD_DEFAULT demon_emerge,demon_transition,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Set physical state
	move.b  #DemonState_Physical, Demon_State(a0)

	rts

DemonEmerge:

	; Start emerge anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Emerge)(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set standard idle anim
	ANIM_LOAD_DEFAULT demon_idle,demon_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	rts

DemonSmirk:

	; Start smirk anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_IdleToSmirk)(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set smirking idle anim
	ANIM_LOAD_DEFAULT demon_smirk,demon_smirk,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	rts

DemonAttack:

	; Start bite anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Bite)(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPL    a1

	rts
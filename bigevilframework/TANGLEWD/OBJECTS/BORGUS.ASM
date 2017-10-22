;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Borgus.asm - Spirit Borgus, the end boss
;==============================================================

; Constants
Borgus_Width			equ 0x0058
Borgus_Height			equ 0x0090

Borgus_MaxVelXWalk		equ 0x010000   ; Max X walking velocity
Borgus_MaxVelXRun		equ 0x010000   ; Max X running velocity
Borgus_MaxVelXAir		equ 0x010000
Borgus_MaxVelYUp		equ 0x060000   ; Max Y velocity up
Borgus_MaxVelYDown		equ 0x080000   ; Max Y velocity down
Borgus_WalkToRunVel		equ 0x030000   ; Walk to run transition velocity
Borgus_AccelWalk		equ 0x000200   ; Walking acceleration
Borgus_AccelRun			equ 0x001000   ; Running acceleration
Borgus_DecelIdle		equ 0x002000   ; Deceleration if left alone
Borgus_DecelForced		equ 0x004000   ; Deceleration if input opposite direction
Borgus_Mass				equ 0x00A0

Borgus_StepHeight		equ 0x3
Borgus_MinWallHeight	equ 0x11				; High enough to avoid stones
Borgus_ProbeFloorX		equ (Borgus_Width/2)	; Floor detection probe position X
Borgus_ProbeFloorY		equ (Borgus_Height-8)	; Floor detection probe position Y
Borgus_ProbeWallTop		equ 0x08

Borgus_BoundsWidth		equ Borgus_Width
Borgus_BoundsHeight		equ (Borgus_Height-0x40)
Borgus_BoundsOffsetX	equ (Borgus_Width/2)-(Borgus_BoundsWidth/2)
Borgus_BoundsOffsetY	equ (Borgus_Height/2)-(Borgus_BoundsHeight/2)

Borgus_DefaultSpitTime	equ 0x0100
Borgus_SpitOffsetX		equ 0x0030
Borgus_SpitOffsetY		equ 0x0040
Borgus_SpitAnimFrame	equ 0x2

; AI
Borgus_AIFollowDistance	equ 0x0060

; Spitball
BorgusSpitball_Width	equ 0x0038
BorgusSpitball_Height	equ 0x0030
BorgusSpitball_MaxVel	equ 0x00040000

; States
BorgusAIState_Follow	equ 0x0
BorgusAIState_Spit		equ 0x1

; Animations
BorgusAnimIdx_Spit		equ 0x0
;------------------------------
BorgusAnimIdx_Max		equ 0x1

;==============================================================

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Spitball_Animation			rs.b Animation_Struct_Size
;-----------------------------
Spitball_Struct_Pad			rs.b 0   ; Alignment padding
Spitball_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

	rsset (Character_Struct_Size)
;-----------------------------
Borgus_Spitball			rs.b Spitball_Struct_Size
Borgus_Animations		rs.b (Animation_Struct_Size*BorgusAnimIdx_Max)
Borgus_SpitTimer		rs.w 1
Borgus_AIState			rs.b 1
;-----------------------------
Borgus_Struct_Pad		rs.b 1   ; Alignment padding
Borgus_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

BorgusInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    CharacterInit
	
	; Set type
	addq.w #0x1, EntityCount_Borgus
	
	; Set update and render routines
	move.l #BorgusUpdate, Entity_UpdateRoutine(a0)
	move.l #BorgusDraw, Entity_RenderRoutine(a0)
	move.l #BorgusSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.w  #Borgus_Width, Entity_Width(a0)
	move.w  #Borgus_Height, Entity_Height(a0)

	move.l  #Borgus_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Borgus_MaxVelXAir, PhysicsObj_MaxVelAirX(a0)
	move.l  #Borgus_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Borgus_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Borgus_DecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Borgus_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Borgus_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Borgus_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w  #Borgus_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #(Borgus_Width/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(Borgus_Width/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.w  #Borgus_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Borgus_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b  #Borgus_Mass, PhysicsObj_Mass(a0)

	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	move.l  #Borgus_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Borgus_MaxVelXRun, Character_MaxVelXRun(a0)
	move.l  #Borgus_WalkToRunVel, Character_WalkToRunVel(a0)
	move.w  #Borgus_AccelWalk, Character_AccelWalk(a0)
	move.w  #Borgus_AccelRun, Character_AccelRun(a0)
	move.w  #Borgus_DecelIdle, Character_DecelIdle(a0)
	move.w  #Borgus_DecelForced, Character_DecelForced(a0)

	move.w  #Borgus_DefaultSpitTime, Borgus_SpitTimer(a0)
	move.b  #BorgusAIState_Follow, Borgus_AIState(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	; Init spitball
	PUSHL   a0
	lea     Borgus_Spitball(a0), a0
	jsr     PhysicsObjInit
	move.w  #BorgusSpitball_Width, Entity_Width(a0)
	move.w  #BorgusSpitball_Height, Entity_Height(a0)
	move.l  #BorgusSpitball_MaxVel, PhysicsObj_MaxVelAirX(a0)
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_CollideFloor(a0)
	POPL    a0

	; Start follow state
	jsr     BorgusAIStart_Follow

	rts

BorgusLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Borgus,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT Borgus_idle,Borgus_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Borgus_walk,Borgus_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Borgus_walk,Borgus_walk,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT Borgus_spit,Borgus_spit,Borgus_Animations,BorgusAnimIdx_Spit,0,1,0

	; Load spitball and start animation
	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0
	SPRITE_LOAD_DEFAULT Spitball,PaletteId_Monster,0x0
	ANIM_LOAD_DEFAULT spitball_spitball,spitball_move,Spitball_Animation,0,1,0,0
	lea     Spitball_Animation(a0), a1
	move.b  #0x0, d0
	jsr     AnimObjSetAnimation
	POPM    a0-a1

	rts
	
BorgusUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Update AI state
	move.b Borgus_AIState(a0), d0
	cmp.b  #BorgusAIState_Follow, d0
	beq    @AIFollow
	cmp.b  #BorgusAIState_Spit, d0
	beq    @AISpit

	@AIFollow:
	jsr    BorgusAIUpdate_Follow
	bra    @EndAI

	@AISpit:
	jsr    BorgusAIUpdate_Spit
	bra    @EndAI

	@EndAI:

	;==============================================================
	
	; Base functionality
	jsr    CharacterUpdate

	;==============================================================

	; Update spitball
	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0
	jsr    PhysicsObjUpdate
	POPM    a0-a1

	rts

BorgusDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    CharacterDraw

	;==============================================================

	; Draw spitball
	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0
	jsr     AnimObjDraw
	POPM    a0-a1

	rts
	
BorgusSerialise:
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

BorgusAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #BorgusAIState_Follow, Borgus_AIState(a0)

	; Reset spit timer
	move.w  #Borgus_DefaultSpitTime, Borgus_SpitTimer(a0)

	rts

BorgusAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Follow player
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	
	; Check left bounds
	move.w d1, d2
	sub.w  #Borgus_AIFollowDistance, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  #Borgus_AIFollowDistance, d2
	cmp.w  d0, d2
	blt    @TooFarRight
	
	; Within bounds
	bra    @WithinBounds
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @EndFollow
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	bra    @EndFollow

	@WithinBounds:
	jsr    CharacterCancelXMovement
	
	@EndFollow:

	;==============================================================

	; Countdown spit timer
	move.w Borgus_SpitTimer(a0), d0
	subq.w #0x1, d0
	move.w d0, Borgus_SpitTimer(a0)
	tst.w  d0
	bne    @TimerRunning

	; Enter spit state
	jsr    BorgusAIStart_Spit

	@TimerRunning:

	rts

BorgusAIStart_Spit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #BorgusAIState_Spit, Borgus_AIState(a0)

	; Start spit animation
	PUSHL  a1
	lea    Borgus_Animations+(BorgusAnimIdx_Spit*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

BorgusAIUpdate_Spit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If at spit frame
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Borgus_SpitAnimFrame, d0
	bne    @NotHitFrame

	; Fire spitball
	jsr    BorgusFireSpitball

	; Back to follow state
	jsr    BorgusAIStart_Follow

	@NotHitFrame:

	rts

BorgusFireSpitball:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHM   a0-a1
	move.l  a0, a2
	lea     Borgus_Spitball(a0), a0

	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1
	addi.w #Borgus_SpitOffsetX, d0
	addi.w #Borgus_SpitOffsetY, d1

	move.l #BorgusSpitball_MaxVel, d2

	tst.b  SpriteObj_FlippedX(a2)
	beq    @Forward
	neg.l  d2
	@Forward:

	move.w  d0, Entity_WorldPosX(a0)
	move.w  d1, Entity_WorldPosY(a0)
	move.l  d2, PhysicsObj_VelX(a0)
	move.b  SpriteObj_FlippedX(a2), SpriteObj_FlippedX(a0)
	POPM    a0-a1

	rts

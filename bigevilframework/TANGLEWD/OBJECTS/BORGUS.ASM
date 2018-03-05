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
Borgus_Mass				equ 0x0B

Borgus_StepHeight		equ 0x3
Borgus_MinWallHeight	equ 0x11				; High enough to avoid stones
Borgus_ProbeFloorX		equ (Borgus_Width/2)	; Floor detection probe position X
Borgus_ProbeFloorY		equ (Borgus_Height-8)	; Floor detection probe position Y
Borgus_ProbeWallTop		equ 0x08
Borgus_ProbeWallX		equ (Borgus_Width/2)-8	; Distance from centre to start wall search

Borgus_BoundsWidth		equ Borgus_Width
Borgus_BoundsHeight		equ (Borgus_Height-0x40)
Borgus_BoundsOffsetX	equ (Borgus_Width/2)-(Borgus_BoundsWidth/2)
Borgus_BoundsOffsetY	equ (Borgus_Height/2)-(Borgus_BoundsHeight/2)

Borgus_DefaultSpitTime	equ 0x0200
Borgus_SpitOffsetX		equ 0x0030
Borgus_SpitOffsetY		equ 0x0040
Borgus_SpitAnimFrame	equ 0x2
Borgus_SwipeAnimFrame1	equ 0x2
Borgus_SwipeAnimFrame2	equ 0x4

Borgus_NumLives			equ 2
Borgus_PlayerDamage		equ 0xFF

; AI
Borgus_AIFollowDistance	equ 0x0018

; Spitball
BorgusSpitball_Width			equ 0x0038
BorgusSpitball_Height			equ 0x0030
BorgusSpitball_BoundsWidth		equ BorgusSpitball_Width
BorgusSpitball_BoundsHeight		equ (BorgusSpitball_Height-0x40)
BorgusSpitball_BoundsOffsetX	equ (BorgusSpitball_Width/2)-(BorgusSpitball_BoundsWidth/2)
BorgusSpitball_BoundsOffsetY	equ (BorgusSpitball_Height/2)-(BorgusSpitball_BoundsHeight/2)
BorgusSpitball_MaxVel			equ 0x00040000
BorgusFuzzl_MaxVel				equ 0x00020000

; Walk screen shake
Borgus_WalkShakeAmp		equ 0x0280
Borgus_WalkShakeVel		equ 0x5000
Borgus_WalkShakeDecay	equ 0x0050

; HACK: Borgus walk anim screen shake frames
; TODO: Add animation track for VFX
BorgusWalkShakeAnimTrack:
	dc.b 0,0,0,1,0,0,0,1
	even

; States
BorgusAIState_Idle		equ 0x0
BorgusAIState_Follow	equ 0x1
BorgusAIState_Spit		equ 0x2
BorgusAIState_Swipe		equ 0x3
BorgusAIState_Dead		equ 0x4
BorgusAIState_Dying		equ 0x5

; Animations
BorgusAnimIdx_Roar		equ 0x0
BorgusAnimIdx_Spit		equ 0x1
BorgusAnimIdx_Swipe		equ 0x2
BorgusAnimIdx_Dead		equ 0x3
;------------------------------
BorgusAnimIdx_Max		equ 0x4

;==============================================================

	rsset (PhysicsObj_Struct_Size)
;-----------------------------
Spitball_Animation			rs.b Animation_Struct_Size
;----------------------------- 
	RS_ALIGN
Spitball_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

	rsset (Character_Struct_Size)
;-----------------------------
Borgus_Spitball			rs.b Spitball_Struct_Size
Borgus_Animations		rs.b (Animation_Struct_Size*BorgusAnimIdx_Max)
Borgus_Fuzzl			rs.l 1
Borgus_SpitTimer		rs.w 1
Borgus_AIState			rs.b 1
;-----------------------------
	RS_ALIGN
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
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #BorgusSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.w  #Borgus_Width, Entity_Width(a0)
	move.w  #Borgus_Height, Entity_Height(a0)

	MOVE_NTSC_L Borgus_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Borgus_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Borgus_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Borgus_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Borgus_DecelIdle, PhysicsObj_DecelX(a0), d0
	move.w  #Borgus_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Borgus_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Borgus_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w  #Borgus_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Borgus_Width, PhysicsObj_WallProbeRight(a0)
	move.w  #Borgus_ProbeWallX, PhysicsObj_WallProbeCentreX(a0)
	move.w  #Borgus_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Borgus_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b  #Borgus_Mass, PhysicsObj_Mass(a0)

	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	move.b  #0x1, SpriteObj_PaletteAutoLoad(a0)

	MOVE_NTSC_L Borgus_MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Borgus_MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Borgus_WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_ACCEL_W Borgus_AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Borgus_AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Borgus_DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Borgus_DecelForced, Character_DecelForced(a0), d0

	MOVE_NTSC_W Borgus_DefaultSpitTime, Borgus_SpitTimer(a0), d0
	move.b  #BorgusAIState_Idle, Borgus_AIState(a0)
	move.l  #0x0, Borgus_Fuzzl(a0)

	; Setup collision bounds
	move.w  #Borgus_BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Borgus_BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Borgus_BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Borgus_BoundsHeight, PhysicsObj_BoundsHeight(a0)

	; Init spitball
	PUSHL   a0
	lea     Borgus_Spitball(a0), a0
	jsr     PhysicsObjInit
	move.l  #AnimObjDraw, Entity_RenderRoutine(a0)
	jsr     EntityAddToRenderList
	move.w  #BorgusSpitball_Width, Entity_Width(a0)
	move.w  #BorgusSpitball_Height, Entity_Height(a0)
	MOVE_NTSC_L BorgusSpitball_MaxVel, PhysicsObj_MaxVelAirX(a0), d0
	move.w  #BorgusSpitball_BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #BorgusSpitball_BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #BorgusSpitball_BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #BorgusSpitball_BoundsHeight, PhysicsObj_BoundsHeight(a0)
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_CollideFloor(a0)
	move.b  #0x0, PhysicsObj_CollideWalls(a0)
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	POPL    a0

	rts

BorgusLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Borgus,idle,palette_borgus,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT Borgus,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Borgus,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Borgus,walk,walk,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT Borgus,hit,hit,Character_Animations,CharacterAnimIdx_TakeDamage,0,1,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT Borgus,roar,roar,Borgus_Animations,BorgusAnimIdx_Roar,0,1,0
	ANIM_LOAD_DEFAULT Borgus,spit,spit,Borgus_Animations,BorgusAnimIdx_Spit,0,1,0
	ANIM_LOAD_DEFAULT Borgus,attack,attack,Borgus_Animations,BorgusAnimIdx_Swipe,0,1,0
	ANIM_LOAD_DEFAULT Borgus,death,death,Borgus_Animations,BorgusAnimIdx_Dead,0,1,0

	; Load spitball and start animation
	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0
	SPRITE_LOAD_DEFAULT Spitball,spitball,0,PaletteId_Monster,0x0
	ANIM_LOAD_DEFAULT spitball,spitball,move,Spitball_Animation,0,1,0,0
	lea     Spitball_Animation(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPM    a0-a1

	rts
	
BorgusUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    CharacterUpdate

	;==============================================================

	; If dying
	tst.b  Character_Dead(a0)
	beq    @NotDead
	cmp.b  #BorgusAIState_Dead, Borgus_AIState(a0)
	beq    @Dead
	cmp.b  #BorgusAIState_Dying, Borgus_AIState(a0)
	beq    @Dying

	; Spit Fuzzl out then die
	jsr    BorgusAIStart_Spit

	@NotDead:
	@Dead:
	@Dying:

	; Update AI state
	move.b Borgus_AIState(a0), d0
	cmp.b  #BorgusAIState_Idle, d0
	beq    @AIIdle
	cmp.b  #BorgusAIState_Follow, d0
	beq    @AIFollow
	cmp.b  #BorgusAIState_Spit, d0
	beq    @AISpit
	cmp.b  #BorgusAIState_Dying, d0
	beq    @AIDying
	cmp.b  #BorgusAIState_Swipe, d0
	beq    @AISwipe
	cmp.b  #BorgusAIState_Dead, d0
	beq    @AIDead

	@AIIdle:
	bra    @EndAI

	@AIFollow:
	jsr    BorgusAIUpdate_Follow
	bra    @EndAI

	@AISpit:
	@AIDying:
	jsr    BorgusAIUpdate_Spit
	bra    @EndAI

	@AISwipe:
	jsr    BorgusAIUpdate_Swipe
	bra    @EndAI

	@AIDead:
	jsr    BorgusAIUpdate_Dead
	bra    @EndAI

	@EndAI:

	;==============================================================

	; Update spitball
	cmp.b  #BorgusAIState_Dead, Borgus_AIState(a0)
	beq    @NoSpitball
	jsr    BorgusUpdateSpitball
	@NoSpitball:

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
	MOVE_NTSC_W Borgus_DefaultSpitTime, Borgus_SpitTimer(a0), d0

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

	; Stop moving
	jsr    CharacterCancelXMovement

	; If player not already dead
	move.l Player1, a2
	tst.b  Character_Dead(a2)
	bne    @EndFollow
	
	; If touching player, swipe
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @EndFollow

	; Swipe attack
	jsr    BorgusAIStart_Swipe
	
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

	; HACK: Add animation track for VFX
	tst.b  AnimObj_UploadFrame(a0)		; Only if anim frame advanced this frame
	beq    @NoShake
	lea    Character_Animations+(CharacterAnimIdx_Walk*Animation_Struct_Size)(a0), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2	; Check if idle anim
	bne    @NotWalking
	lea    BorgusWalkShakeAnimTrack, a2	; Get track data
	move.l AnimObj_AnimSubFrame(a0), d0	; Get subframe
	lsr.l  #0x8, d0						; Subframes to frames
	add.l  d0, a2						; Offset track data
	cmp.b  #0x0, (a2)					; If shake this frame
	beq    @NoShake
	move.w #Borgus_WalkShakeAmp, d0
	move.w #Borgus_WalkShakeVel, d1
	move.w #Borgus_WalkShakeDecay, d2
	move.w #0x0, d3
	jsr    VFX_StartScreenShake
	@NoShake:
	@NotWalking:

	rts

BorgusAIStart_Spit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Character_Dead(a0)
	bne    @Dead

	; Set state
	move.b #BorgusAIState_Spit, Borgus_AIState(a0)

	; Start spit animation (then back to follow state)
	PUSHL  a1
	lea    Borgus_Animations+(BorgusAnimIdx_Spit*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #BorgusAIStart_Follow, a2
	move.l a0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	bra    @NotDead

	@Dead:

	; Set state
	move.b #BorgusAIState_Dying, Borgus_AIState(a0)

	; Start spit animation (then to death state)
	PUSHL  a1
	lea    Borgus_Animations+(BorgusAnimIdx_Spit*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #BorgusAIStart_Dead, a2
	move.l a0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Prevent base character death aim
	move.b #0x0, Character_UpdateAnim(a0)

	; Add Fuzzl to world grid
	PUSHM   a0-a1
	move.l  Borgus_Fuzzl(a0), a0
	move.w  #-1, Entity_WorldGridIdxTL(a0)
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid
	POPM    a0-a1

	@NotDead:

	rts

BorgusAIUpdate_Spit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If at spit frame
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Borgus_SpitAnimFrame, d0
	bne    @NotHitFrame

	; If dying
	tst.b  Character_Dead(a0)
	beq    @FireSpitball

	; Fire Fuzzl
	jsr    BorgusFireFuzzl
	bra    @End

	@FireSpitball:

	; Fire spitball
	jsr    BorgusFireSpitball

	@FireFuzzl:

	@NotHitFrame:
	@End:

	rts

BorgusAIStart_Swipe:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start swipe animation
	PUSHL  a1
	lea    Borgus_Animations+(BorgusAnimIdx_Swipe*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #BorgusAIStart_Follow, a2
	move.l a0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Set state
	move.b #BorgusAIState_Swipe, Borgus_AIState(a0)

	rts

BorgusAIUpdate_Swipe:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If at swipe frame
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Borgus_SwipeAnimFrame1, d0
	beq    @HitFrame

	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Borgus_SwipeAnimFrame2, d0
	beq    @HitFrame

	bra    @NotHitFrame

	@HitFrame:

	; If touching player, deal damage
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoDamage

	PUSHL  a0
	move.l Player1, a0
	move.b #Borgus_PlayerDamage, d0
	jsr    CharacterDealDamage
	POPL   a0

	@NoDamage:

	@NotHitFrame:

	rts

BorgusAIStart_Dead:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start death animation
	PUSHL  a1
	lea    Borgus_Animations+(BorgusAnimIdx_Dead*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Prevent base character death aim
	move.b #0x0, Character_UpdateAnim(a0)

	; Set state
	move.b #BorgusAIState_Dead, Borgus_AIState(a0)

	; Stop rendering spitball
	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0
	jsr     EntityRemoveFromRenderList
	POPM    a0-a1

	rts

BorgusAIUpdate_Dead:
	; a0 --- GameObj addr
	; a1 --- Level addr
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

	MOVE_NTSC_L BorgusSpitball_MaxVel, d2, d4

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

BorgusFireFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHM   a0-a1
	move.l  a0, a2
	move.l  Borgus_Fuzzl(a0), a0
	cmpa.w #0x0, a0
	beq     @NoFuzzl

	; Activate Fuzzl
	move.b #0x1, Entity_Active(a0)
	move.b #0x1, SpriteObj_Visible(a0)

	; Set pos/vel
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1
	addi.w #Borgus_SpitOffsetX, d0
	addi.w #Borgus_SpitOffsetY, d1

	MOVE_NTSC_L BorgusFuzzl_MaxVel, d2, d4

	tst.b  SpriteObj_FlippedX(a2)
	beq    @Forward
	neg.l  d2
	@Forward:

	move.w  d0, Entity_WorldPosX(a0)
	move.w  d1, Entity_WorldPosY(a0)
	move.l  d2, PhysicsObj_VelX(a0)

	; Recalc world grid index
	move.b #0x1, d1
	jsr     EntityUpdateWorldGridIndex

	@NoFuzzl:
	POPM    a0-a1

	rts

BorgusUpdateSpitball:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHM   a0-a1
	lea     Borgus_Spitball(a0), a0

	; Update physics
	jsr    PhysicsObjUpdate

	; If hit player
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoHit

	; Deal damage
	PUSHL  a0
	move.b #Borgus_PlayerDamage, d0
	move.l a2, a0
	jsr    CharacterDealDamage
	POPL   a0
	
	@NoHit:

	POPM    a0-a1

	rts
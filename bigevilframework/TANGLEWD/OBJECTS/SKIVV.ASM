;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   skivv.asm - Shadow creature, takes Echo if left unnattended
;==============================================================

; Constants
Skivv_Width        equ 0x0038
Skivv_Height       equ 0x0030

Skivv_MaxVelXWalk	equ 0x010000   ; Max X walking velocity
Skivv_MaxVelXRun	equ 0x030000   ; Max X running velocity
Skivv_MaxVelXAir	equ 0x010000
Skivv_MaxVelYUp		equ 0x060000   ; Max Y velocity up
Skivv_MaxVelYDown	equ 0x080000   ; Max Y velocity down
Skivv_WalkToRunVel	equ 0x020000   ; Walk to run transition velocity
Skivv_AccelWalk		equ 0x000200   ; Walking acceleration
Skivv_AccelRun		equ 0x001000   ; Running acceleration
Skivv_DecelIdle		equ 0x002000   ; Deceleration if left alone
Skivv_DecelForced	equ 0x004000   ; Deceleration if input opposite direction
Skivv_Mass			equ 0x02

Skivv_StepHeight	equ 0x3
Skivv_MinWallHeight	equ 0x11			; High enough to avoid stones
Skivv_ProbeFloorX	equ (Skivv_Width/2)	; Floor detection probe position X
Skivv_ProbeFloorY	equ (Skivv_Height-8); Floor detection probe position Y
Skivv_ProbeWallTop	equ 0x08

Skivv_AIFollowDistance	equ 0x0008
Skivv_PlayerDamage		equ 0xFF
Skivv_SpikeAnimFrame	equ 0x1

; AI states
SkivvState_Inactive		equ 0x0
SkivvState_Following	equ 0x1
SkivvState_Attacking	equ 0x2
SkivvState_Chomping		equ 0x3
SkivvState_Predator		equ 0x4

; Animations
SkivvAnimIdx_Attack		equ 0x0
SkivvAnimIdx_Chomp		equ 0x1
SkivvAnimIdx_Max		equ 0x2

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
Skivv_Animations	rs.b (Animation_Struct_Size*SkivvAnimIdx_Max)
Skivv_Target		rs.l 1
Skivv_State			rs.b 1
;---------------------------------
	RS_ALIGN
Skivv_Struct_Size	rs.b 0

SkivvInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    CharacterInit

	; Set update and render routines
	move.l #SkivvUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #SkivvSerialise, Entity_SerialiseRoutine(a0)

	; Add to serialise list
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Skivv

	; Initialise
	move.w #Skivv_Width, Entity_Width(a0)
	move.w #Skivv_Height, Entity_Height(a0)
	move.b #0x1, SpriteObj_PaletteAutoLoad(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	MOVE_NTSC_L Skivv_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Skivv_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Skivv_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Skivv_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Skivv_DecelIdle, PhysicsObj_DecelX(a0), d0
	move.w #Skivv_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #Skivv_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w #Skivv_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w #Skivv_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w #Skivv_Width, PhysicsObj_WallProbeRight(a0)
	move.w #Skivv_StepHeight, PhysicsObj_StepHeight(a0)
	move.w #Skivv_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b #Skivv_Mass, PhysicsObj_Mass(a0)
	move.b #0x0, PhysicsObj_AffectedByWind(a0)
	move.b #SkivvState_Inactive, Skivv_State(a0)
	move.l #0x0, Skivv_Target(a0)

	; Setup collision bounds
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #Skivv_Width, PhysicsObj_BoundsWidth(a0)
	move.w #Skivv_Height, PhysicsObj_BoundsHeight(a0)

	MOVE_NTSC_L Skivv_MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Skivv_MaxVelXWalk, Character_MaxVelXWater(a0), d0
	MOVE_NTSC_L Skivv_MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Skivv_WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_ACCEL_W Skivv_AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Skivv_AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Skivv_DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Skivv_DecelForced, Character_DecelForced(a0), d0

	; Start follow state
	jsr    SkivvAIStart_Follow

	rts

SkivvLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite sheet
	SPRITE_LOAD_SHARED skivv,move,palette_skivv,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT skivv,move,move,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT skivv,move,move,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT skivv,move,move,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT skivv,attack,attack,Skivv_Animations,SkivvAnimIdx_Attack,0,1,0
	ANIM_LOAD_DEFAULT skivv,attack,chomp,Skivv_Animations,SkivvAnimIdx_Chomp,1,0,0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
	
SkivvUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr   CharacterUpdate

	move.b Skivv_State(a0), d0
	cmp.b  #SkivvState_Inactive, d0
	beq    @End
	cmp.b  #SkivvState_Following, d0
	beq    @Following
	cmp.b  #SkivvState_Attacking, d0
	beq    @Attacking
	cmp.b  #SkivvState_Chomping, d0
	beq    @Chomping

	@Following:
	jsr    SkivvAIUpdate_Follow
	bra    @End

	@Attacking:
	jsr    SkivvAIUpdate_Attack
	bra    @End

	@Chomping:
	jsr    SkivvAIUpdate_Chomp
	bra    @End

	@End:

	rts

SkivvSerialise:
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

SkivvAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #SkivvState_Following, Skivv_State(a0)

	rts

SkivvAIUpdate_Follow:
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
	sub.w  #Skivv_AIFollowDistance, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  #Skivv_AIFollowDistance, d2
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

	; If touching player, begin attack
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @EndFollow

	jsr    SkivvAIStart_Attack
	
	@EndFollow:

	rts

SkivvAIStart_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #SkivvState_Attacking, Skivv_State(a0)

	; Start anim
	PUSHL  a1
	lea    Skivv_Animations+(Animation_Struct_Size*SkivvAnimIdx_Attack)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Play SFX
	PLAYSFX #SFX_SpikeDeath

	rts

SkivvAIUpdate_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If anim on spike frame
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Skivv_SpikeAnimFrame, d0
	bne    @NotSpikeFrame

	; Get target
	move.l Skivv_Target(a0), a2
	cmp.l  #0x0, a2
	bne    @HasTarget
	move.l Player1, a2
	@HasTarget:

	; Check bounds
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoHit

	; Touching player, kill and enter chomp state
	PUSHL  a0
	move.b #Skivv_PlayerDamage, d0
	move.l a2, a0
	jsr    CharacterDealDamage
	POPL   a0
	
	jsr    SkivvAIStart_Chomp
	bra    @End

	@NoHit:

	; Player escaped, return to follow state (and interrupt anim early, return to move)
	jsr    SkivvAIStart_Follow
	move.b #0x0, AnimObj_Playing(a0)

	@NotSpikeFrame:
	@End:

	rts

SkivvAIStart_Chomp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #SkivvState_Chomping, Skivv_State(a0)

	rts

SkivvAIUpdate_Chomp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If already chomping, do nothing
	lea    Skivv_Animations+(Animation_Struct_Size*SkivvAnimIdx_Chomp)(a0), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	beq    @Chomping

	; Wait for attack anim to finish
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #actor_skivv_sheet_attack_anim_attack_numframes-1, d0
	bne    @StillAttacking

	; Start anim
	PUSHL  a1
	lea    Skivv_Animations+(Animation_Struct_Size*SkivvAnimIdx_Chomp)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Take anim control
	move.b #0x0, Character_UpdateAnim(a0)

	@Chomping:
	@StillAttacking:

	rts

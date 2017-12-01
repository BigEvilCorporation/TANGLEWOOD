;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   scirus.asm - Squirrel-like creature, nice by day, angry by night
;==============================================================

; Constants
Scirus_Width        equ 0x0018
Scirus_Height       equ 0x0010

Scirus_FriendMaxVelXWalk	equ 0x012000   ; Max X walking velocity
Scirus_FriendMaxVelXRun		equ 0x042000   ; Max X running velocity
Scirus_FriendAccelWalk		equ 0x001800   ; Walking acceleration
Scirus_FriendAccelRun		equ 0x003000   ; Running acceleration
Scirus_FriendDecelIdle		equ 0x001600   ; Deceleration if left alone
Scirus_FriendDecelForced	equ 0x003200   ; Deceleration if input opposite direction

Scirus_EnemyMaxVelXWalk		equ 0x010000   ; Max X walking velocity
Scirus_EnemyMaxVelXRun		equ 0x030000   ; Max X running velocity
Scirus_EnemyAccelWalk		equ 0x000200   ; Walking acceleration
Scirus_EnemyAccelRun		equ 0x001000   ; Running acceleration
Scirus_EnemyDecelIdle		equ 0x002000   ; Deceleration if left alone
Scirus_EnemyDecelForced		equ 0x004000   ; Deceleration if input opposite direction

Scirus_MaxVelXAir			equ 0x010000
Scirus_MaxVelYUp			equ 0x060000   ; Max Y velocity up
Scirus_MaxVelYDown			equ 0x080000   ; Max Y velocity down
Scirus_WalkToRunVel			equ 0x020000   ; Walk to run transition velocity
Scirus_Mass					equ 0x02

Scirus_StepHeight		equ 0x3
Scirus_MinWallHeight	equ 0x1					; High enough to avoid stones
Scirus_ProbeFloorX		equ (Scirus_Width/2)	; Floor detection probe position X
Scirus_ProbeFloorY		equ (Scirus_Height-8)	; Floor detection probe position Y
Scirus_ProbeWallTop		equ 0x08

Scirus_AIFollowDistanceEnemy		equ 0x0018
Scirus_AIFollowDistanceFriendInner	equ 0x0040
Scirus_AIFollowDistanceFriendOuter	equ 0x0090
Scirus_AIFollowDistanceY			equ 0x0030

Scirus_PlayerDamage		equ 0xFF
Scirus_SpikeAnimFrame	equ 0x1

Scirus_PackAddAccel		equ 0x0200
Scirus_PackAddVel		equ 0x1000

; Affinity
ScirusAffinity_Friend	equ 0x0
ScirusAffinity_Foe		equ 0x1

; AI states
ScirusState_Inactive		equ 0x0
ScirusState_FollowingEnemy	equ 0x1
ScirusState_FollowingFriend	equ 0x2
ScirusState_Attacking		equ 0x3

; Animations
ScirusAnimIdx_Attack	equ 0x0
ScirusAnimIdx_Max		equ 0x1

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
Scirus_Animations			rs.b (Animation_Struct_Size*ScirusAnimIdx_Max)
Scirus_State				rs.b 1
Scirus_Affinity				rs.b 1
;---------------------------------
	RS_ALIGN
Scirus_Struct_Size			rs.b 0

ScirusInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    CharacterInit

	; Set update and render routines
	move.l #ScirusUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #ScirusSerialise, Entity_SerialiseRoutine(a0)

	; Add to serialise list
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Scirus

	; Initialise
	move.w #Scirus_Width, Entity_Width(a0)
	move.w #Scirus_Height, Entity_Height(a0)
	move.b #ScirusState_Inactive, Scirus_State(a0)

	MOVE_NTSC_L Scirus_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Scirus_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.w #Scirus_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #Scirus_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w #Scirus_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w #Scirus_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w #Scirus_Width, PhysicsObj_WallProbeRight(a0)
	move.w #Scirus_StepHeight, PhysicsObj_StepHeight(a0)
	move.w #Scirus_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b #Scirus_Mass, PhysicsObj_Mass(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	MOVE_NTSC_L Scirus_WalkToRunVel, Character_WalkToRunVel(a0), d0

	; Exported the wrong way round, oops
	move.b #0x1, Character_InvertSpriteFlip(a0)

	; Setup collision bounds
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #Scirus_Width, PhysicsObj_BoundsWidth(a0)
	move.w #Scirus_Height, PhysicsObj_BoundsHeight(a0)

	; Friend by day, enemy by night
	move.b #ScirusAffinity_Friend, d0
	cmp.b  #TimeOfDay_Day, TimeOfDay
	beq    @Day
	;move.b #ScirusAffinity_Foe, d0
	@Day:
	move.b d0, Scirus_Affinity(a0)

	; Set friend (match player) or foe (custom) velocities, and set initial AI state
	cmp.b  #ScirusAffinity_Friend, Scirus_Affinity(a0)
	beq    @Friend

	MOVE_NTSC_L Scirus_EnemyMaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Scirus_EnemyMaxVelXWalk, Character_MaxVelXWater(a0), d0
	MOVE_NTSC_L Scirus_EnemyMaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyAccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyAccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelIdle, PhysicsObj_DecelX(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelForced, Character_DecelForced(a0), d0
	jsr    ScirusAIStart_FollowEnemy

	bra    @Enemy

	@Friend:

	MOVE_NTSC_L Scirus_FriendMaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Scirus_FriendMaxVelXWalk, Character_MaxVelXWater(a0), d0
	MOVE_NTSC_L Scirus_FriendMaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendAccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendAccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelIdle, PhysicsObj_DecelX(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelForced, Character_DecelForced(a0), d0
	jsr    ScirusAIStart_FollowFriend

	@Enemy:

	; Differ accelerations if in a pack
	move.l #Scirus_PackAddAccel, d0
	moveq  #0x0, d1
	move.w EntityCount_Scirus, d1
	mulu   d1, d0
	add.w  d0, Character_AccelWalk(a0)
	add.w  d0, Character_AccelRun(a0)

	move.l #Scirus_PackAddVel, d0
	moveq  #0x0, d1
	move.w EntityCount_Scirus, d1
	mulu   d1, d0
	add.l  d0, Character_MaxVelXWalk(a0)
	add.l  d0, Character_MaxVelXRun(a0)

	rts

ScirusLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	cmp.b  #ScirusAffinity_Friend, Scirus_Affinity(a0)
	beq    @Friend

	; Load sprite sheet
	SPRITE_LOAD_DEFAULT Scirus,idle_angry,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT Scirus,idle_angry,idle_angry,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Scirus,walk_angry,walk_angry,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Scirus,run_angry,run_angry,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT Scirus,attack,attack,Scirus_Animations,ScirusAnimIdx_Attack,0,1,0

	bra    @Foe

	@Friend:

	; Load sprite sheet
	SPRITE_LOAD_DEFAULT Scirus,idle,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT Scirus,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Scirus,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Scirus,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	@Foe:

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
	
ScirusUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr   CharacterUpdate

	move.b Scirus_State(a0), d0
	cmp.b  #ScirusState_Inactive, d0
	beq    @End
	cmp.b  #ScirusState_FollowingFriend, d0
	beq    @FollowingFriend
	cmp.b  #ScirusState_FollowingEnemy, d0
	beq    @FollowingEnemy
	cmp.b  #ScirusState_Attacking, d0
	beq    @Attacking

	@FollowingFriend:
	jsr    ScirusAIUpdate_FollowFriend
	bra    @End

	@FollowingEnemy:
	jsr    ScirusAIUpdate_FollowEnemy
	bra    @End

	@Attacking:
	jsr    ScirusAIUpdate_Attack
	bra    @End

	@End:

	rts

ScirusSerialise:
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

ScirusAIStart_FollowFriend:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScirusState_FollowingFriend, Scirus_State(a0)

	rts

ScirusAIUpdate_FollowFriend:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get player
	move.l Player1, a2

	; Check within Y distance of player
	ENTITY_GETBOTTOM d0,a0
	ENTITY_GETBOTTOM d1,a2
	TOPIXELS d0
	TOPIXELS d1

	sub.w  #Scirus_AIFollowDistanceY, d0
	cmp.w  d0, d1
	blt    @WithinBounds

	; Stay within inner and outer X distance of player
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1

	; If to the left of player
	cmp.w  d0, d1
	blt    @RightOfPlayer
	
	; Check outer left bounds
	move.w d1, d2
	sub.w  #Scirus_AIFollowDistanceFriendOuter, d2
	cmp.w  d0, d2
	bgt    @TooFarLeft

	; Check inner left bounds
	move.w d1, d2
	sub.w  #Scirus_AIFollowDistanceFriendInner, d2
	cmp.w  d2, d0
	bgt    @TooNearLeft

	; Within left bounds
	bra    @WithinBounds
	
	@RightOfPlayer:

	; Check outer right bounds
	move.w d1, d2
	add.w  #Scirus_AIFollowDistanceFriendOuter, d2
	cmp.w  d0, d2
	blt    @TooFarRight
	
	; Check inner right bounds
	move.w d1, d2
	add.w  #Scirus_AIFollowDistanceFriendInner, d2
	cmp.w  d2, d0
	blt    @TooNearRight
	
	; Within right bounds
	bra    @WithinBounds
	
	@TooFarleft:
	@TooNearRight:
	jsr    CharacterMoveRight
	bra    @EndFollow
	
	@TooFarRight:
	@TooNearLeft:
	jsr    CharacterMoveLeft
	bra    @EndFollow

	@WithinBounds:
	jsr    CharacterCancelXMovement

	; Within bounds, face player
	
	
	@EndFollow:

	rts

ScirusAIStart_FollowEnemy:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScirusState_FollowingEnemy, Scirus_State(a0)

	rts

ScirusAIUpdate_FollowEnemy:
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
	sub.w  #Scirus_AIFollowDistanceEnemy, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  #Scirus_AIFollowDistanceEnemy, d2
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

	jsr    ScirusAIStart_Attack
	
	@EndFollow:

	rts

ScirusAIStart_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScirusState_Attacking, Scirus_State(a0)

	; Start anim
	PUSHL  a1
	lea    Scirus_Animations+(Animation_Struct_Size*ScirusAnimIdx_Attack)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Play SFX
	;PLAYSFX #SFX_SpikeDeath

	rts

ScirusAIUpdate_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If anim on spike frame
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #Scirus_SpikeAnimFrame, d0
	bne    @NotSpikeFrame

	; Check bounds
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoHit

	; Touching player, kill
	PUSHL  a0
	move.b #Scirus_PlayerDamage, d0
	move.l a2, a0
	;jsr    CharacterDealDamage
	POPL   a0

	@NoHit:

	jsr ScirusAIStart_FollowEnemy

	@NotSpikeFrame:
	@End:

	rts

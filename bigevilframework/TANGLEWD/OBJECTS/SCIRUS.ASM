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

Scirus_AIActivateDistance			equ 0x0040	; Distance to alert and enter follow state
Scirus_AIFollowDistanceEnemy		equ 0x0018	; Distance to follow if enemy
Scirus_AIFollowDistanceFriendInner	equ 0x0060	; Distance to avoid if friend
Scirus_AIFollowDistanceFriendOuter	equ 0x0090	; Distance to follow if friend
Scirus_AIFollowDistanceY			equ 0x0030	; Y distance to follow
Scirus_AIUncomfortableDistance		equ 0x0050	; "Too close" distance if backed up against a wall, turns enemy
Scirus_AISafeDistance				equ 0x0090	; "Safe" distance to return to friendly state

Scirus_PlayerDamage		equ 0xFF
Scirus_SpikeAnimFrame	equ 0x1

Scirus_AccelRandMin		equ 0x0000
Scirus_AccelRandMax		equ 0x0400
Scirus_VelRandMin		equ 0x0000
Scirus_VelRandMax		equ 0x4000

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
ScirusAnimIdx_Warn		equ 0x1
ScirusAnimIdx_Shout		equ 0x2
ScirusAnimIdx_Max		equ 0x3

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
	move.b #0x1, SpriteObj_PaletteAutoLoad(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
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
	move.b #0x1, PhysicsObj_MaxVelClamp(a0)
	MOVE_NTSC_L Scirus_WalkToRunVel, Character_WalkToRunVel(a0), d0
	move.b #ScirusState_Inactive, Scirus_State(a0)

	; Exported the wrong way round, oops
	move.b #0x1, Character_InvertSpriteFlip(a0)

	; Setup collision bounds
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #Scirus_Width, PhysicsObj_BoundsWidth(a0)
	move.w #Scirus_Height, PhysicsObj_BoundsHeight(a0)

	; Friend by day, enemy by night
	move.b #ScirusAffinity_Foe, d0
	cmp.b  #TimeOfDay_Night, TimeOfDay
	beq    @Night
	move.b #ScirusAffinity_Friend, d0
	@Night:
	move.b d0, Scirus_Affinity(a0)

	; Set inactive AI state
	jsr    ScirusAIStart_Inactive

	rts

ScirusLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load initial sprite sheet (just to alloc VRAM)
	SPRITE_LOAD_DEFAULT Scirus,idle,palette_scirus,PaletteId_Monster,0x0

	; Set affinity to load correct friend/foe graphics
	move.b Scirus_Affinity(a0), d0
	jsr    ScirusSetAffinity

	; Add to world grid
	move.b #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr    EntityAddToWorldGrid

	rts
	
ScirusUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr   CharacterUpdate

	move.b Scirus_State(a0), d0
	cmp.b  #ScirusState_Inactive, d0
	beq    @Inactive
	cmp.b  #ScirusState_FollowingFriend, d0
	beq    @FollowingFriend
	cmp.b  #ScirusState_FollowingEnemy, d0
	beq    @FollowingEnemy
	cmp.b  #ScirusState_Attacking, d0
	beq    @Attacking

	@Inactive:
	jsr    ScirusAIUpdate_Inactive
	bra    @End

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

ScirusSetAffinity:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Affinity

	; Set new affinity
	move.b d0, Scirus_Affinity(a0)

	; Load bespoke animations
	ANIM_LOAD_DEFAULT Scirus,attack,attack,Scirus_Animations,ScirusAnimIdx_Attack,0,1,0
	ANIM_LOAD_DEFAULT Scirus,warn,warn,Scirus_Animations,ScirusAnimIdx_Warn,0,1,0
	ANIM_LOAD_DEFAULT Scirus,warn_angry,warn_angry,Scirus_Animations,ScirusAnimIdx_Shout,0,1,0

	; Set appropriate vel/accel values, load  graphics, and set AI state
	cmp.b  #ScirusAffinity_Friend, d0
	beq    @Friend

	; Set vel/accel values
	MOVE_NTSC_L Scirus_EnemyMaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Scirus_EnemyMaxVelXWalk, Character_MaxVelXWater(a0), d0
	MOVE_NTSC_L Scirus_EnemyMaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyAccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyAccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelIdle, PhysicsObj_DecelX(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_EnemyDecelForced, Character_DecelForced(a0), d0

	; Load sprite sheet
	SPRITE_LOAD_SHARED_VRAM Scirus,idle_angry,palette_scirus,PaletteId_Monster,0x0,a0

	; Load default character animations
	ANIM_LOAD_DEFAULT Scirus,idle_angry,idle_angry,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Scirus,walk_angry,walk_angry,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Scirus,run_angry,run_angry,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; If not inactive, start agressive follow state
	cmp.b  #ScirusState_Inactive, Scirus_State(a0)
	beq    @NofollowEnemy
	jsr    ScirusAIStart_FollowEnemy
	@NofollowEnemy:

	bra    @Foe

	@Friend:

	; Set vel/accel values
	MOVE_NTSC_L Scirus_FriendMaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Scirus_FriendMaxVelXWalk, Character_MaxVelXWater(a0), d0
	MOVE_NTSC_L Scirus_FriendMaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendAccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendAccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelIdle, PhysicsObj_DecelX(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Scirus_FriendDecelForced, Character_DecelForced(a0), d0

	; Load sprite sheet
	SPRITE_LOAD_SHARED_VRAM Scirus,idle,palette_scirus,PaletteId_Monster,0x0,a0

	; Load default character animations
	ANIM_LOAD_DEFAULT Scirus,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Scirus,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Scirus,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; If not inactive, start friendly follow state
	cmp.b  #ScirusState_Inactive, Scirus_State(a0)
	beq    @NofollowFriend
	jsr    ScirusAIStart_FollowFriend
	@NofollowFriend:

	@Foe:

	; Slightly randomise vel/accel for packs
	move.w #Scirus_AccelRandMin, d1
	move.w #Scirus_AccelRandMax, d2
	jsr    RND_GenerateWordClamped
	add.w  d0, Character_AccelWalk(a0)
	add.w  d0, Character_AccelRun(a0)

	move.w #Scirus_VelRandMin, d1
	move.w #Scirus_VelRandMax, d2
	jsr    RND_GenerateWordClamped
	andi.l #0xFFFF, d0
	add.l  d0, Character_MaxVelXWalk(a0)
	add.l  d0, Character_MaxVelXRun(a0)

	rts

ScirusAIStart_Inactive:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #ScirusState_Inactive, Scirus_State(a0)

	rts

ScirusAIUpdate_Inactive:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If within activation distance
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w  d0, d1
	ABSW   d1
	cmp.w  #Scirus_AIActivateDistance, d1
	bgt    @OutOfRange

	; Start follow state
	cmp.b  #ScirusAffinity_Friend, Scirus_Affinity(a0)
	beq    @Friend
	jsr    ScirusAIStart_FollowEnemy
	bra    @Foe

	@Friend:
	jsr    ScirusAIStart_FollowFriend

	@Foe:

	@OutOfRange:

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
	move.b #0x1, d3				; Face player
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

	move.b #0x0, d3				; Face player

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

	; Within bounds, face player if 0 vel
	tst.l  PhysicsObj_VelX(a0)
	bne    @EndFollow
	move.b d3, SpriteObj_FlippedX(a0)
	
	@EndFollow:

	; Check if player too close
	jsr    ScirusAI_CheckTooClose

	rts

ScirusAI_CheckTooClose:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If against wall
	tst.b  PhysicsObj_HitWall(a0)
	beq    @NotHitWall

	; If within min distance
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w  d0, d1
	ABSW   d1
	cmp.w  #Scirus_AIUncomfortableDistance, d1
	bgt    @Warn

	; Player too close, set aggressive affinity
	move.b #ScirusAffinity_Foe, d0
	jsr    ScirusSetAffinity

	; Play battle cry anim
	PUSHL  a1
	lea    Scirus_Animations+(Animation_Struct_Size*ScirusAnimIdx_Shout)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	bra    @Aggressive

	@Warn:

	; Up against wall, warn player
	PUSHL  a1
	lea    Scirus_Animations+(Animation_Struct_Size*ScirusAnimIdx_Warn)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	@NotHitWall:
	@OutOfRange:
	@Aggressive:

	rts

ScirusAI_CheckSafeDistance:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If not against wall
	tst.b  PhysicsObj_HitWall(a0)
	bne    @HitWall

	; If within min distance
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w  d0, d1
	ABSW   d1
	cmp.w  #Scirus_AISafeDistance, d1
	blt    @TooClose

	; Safe distance, back to friendly
	move.b #ScirusAffinity_Friend, d0
	jsr    ScirusSetAffinity

	@TooClose:
	@HitWall:
	@End:

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

	; If not night time, can revert back if player retreats to a safe distance
	move.b #ScirusAffinity_Friend, d0
	cmp.b  #TimeOfDay_night, TimeOfDay
	beq    @Night
	jsr    ScirusAI_CheckSafeDistance
	@Night:

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

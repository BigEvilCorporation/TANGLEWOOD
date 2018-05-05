;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   hogg.asm - Violence is usually the answer
;==============================================================

; Constants
Hogg_Width			equ 0x0028
Hogg_Height			equ 0x0018

Hogg_MaxVelXWalk	equ 0x060000   ; Max X walking velocity
Hogg_MaxVelXRun		equ 0x060000   ; Max X running velocity
Hogg_MaxVelXAir		equ 0x060000
Hogg_MaxVelYUp		equ 0x060000   ; Max Y velocity up
Hogg_MaxVelYDown	equ 0x080000   ; Max Y velocity down
Hogg_WalkToRunVel	equ 0x020000   ; Walk to run transition velocity
Hogg_AccelWalk		equ 0x000800   ; Walking acceleration
Hogg_AccelRun		equ 0x000800   ; Running acceleration
Hogg_DecelIdle		equ 0x000800   ; Deceleration if left alone
Hogg_DecelForced	equ 0x001000   ; Deceleration if input opposite direction
Hogg_Mass			equ 0x02

Hogg_StepHeight		equ 0x3
Hogg_MinWallHeight	equ 0x11			; High enough to avoid stones
Hogg_ProbeFloorX	equ (Hogg_Width/2)	; Floor detection probe position X
Hogg_ProbeFloorY	equ (Hogg_Height-8); Floor detection probe position Y
Hogg_ProbeWallTop	equ 0x08

Hogg_AlertDistance		equ 0x0090	; Distance from the player to begin charging
Hogg_SleepDistance		equ 0x0400	; Distance from the player to return to idle state
Hogg_AIFollowDistance	equ 0x0010	; Target charge distance

Hogg_MaxSoundDistance	equ 0x0140	; Audible distance

Hogg_PlayerDamage		equ 0xFF

Hogg_StuckVelocity		equ 0x00020000
Hogg_StuckTime			equ 0x0100
Hogg_WallExitImpulse	equ 0x00100000

; AI states
HoggState_Idle			equ 0x0
HoggState_Charging		equ 0x1
HoggState_Stuck			equ 0x2
HoggState_Recovering	equ 0x3

; Animations
HoggAnimIdx_Hit			equ 0x0
HoggAnimIdx_Stuck		equ 0x1
HoggAnimIdx_Recover		equ 0x2
HoggAnimIdx_Max			equ 0x3

; Struct
	rsset (Character_Struct_Size)
;---------------------------------
Hogg_Animations				rs.b (Animation_Struct_Size*HoggAnimIdx_Max)
Hogg_StuckTimer				rs.w 1
Hogg_PrevDirection			rs.b 1
Hogg_State					rs.b 1
;---------------------------------
	RS_ALIGN
Hogg_Struct_Size			rs.b 0

HoggInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    CharacterInit

	; Set update and render routines
	move.l #HoggUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #HoggSerialise, Entity_SerialiseRoutine(a0)

	; Add to serialise list
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Hogg

	; Initialise
	move.w #Hogg_Width, Entity_Width(a0)
	move.w #Hogg_Height, Entity_Height(a0)
	move.b #0x1, SpriteObj_PaletteAutoLoad(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	MOVE_NTSC_L Hogg_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Hogg_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Hogg_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Hogg_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Hogg_DecelIdle, PhysicsObj_DecelX(a0), d0
	move.w #Hogg_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w #Hogg_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w #Hogg_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w #Hogg_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w #0x0, PhysicsObj_WallBoundsLeft(a0)
	move.w #Hogg_Width, PhysicsObj_WallBoundsRight(a0)
	move.w #Hogg_StepHeight, PhysicsObj_StepHeight(a0)
	move.w #Hogg_MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b #Hogg_Mass, PhysicsObj_Mass(a0)
	move.b #0x0, PhysicsObj_AffectedByWind(a0)
	move.w #0x0, Hogg_StuckTimer(a0)
	move.b #0x0, Hogg_PrevDirection(a0)
	move.b #HoggState_Idle, Hogg_State(a0)

	; Setup collision bounds
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #Hogg_Width, PhysicsObj_BoundsWidth(a0)
	move.w #Hogg_Height, PhysicsObj_BoundsHeight(a0)

	MOVE_NTSC_L Hogg_MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Hogg_MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Hogg_WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_ACCEL_W Hogg_AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Hogg_AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Hogg_DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Hogg_DecelForced, Character_DecelForced(a0), d0

	rts

HoggLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite sheet
	SPRITE_LOAD_SHARED Hogg,run,palette_hogg,PaletteId_Monster,0x0

	; Load default character animations
	ANIM_LOAD_DEFAULT Hogg,run,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Hogg,run,run,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Hogg,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT Hogg,dead,dead,Character_Animations,CharacterAnimIdx_Dead,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT Hogg,wall,hit,Hogg_Animations,HoggAnimIdx_Hit,0,1,0
	ANIM_LOAD_DEFAULT Hogg,wall,stuck,Hogg_Animations,HoggAnimIdx_Stuck,1,0,0
	ANIM_LOAD_DEFAULT Hogg,wall,recover,Hogg_Animations,HoggAnimIdx_Recover,0,1,0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	; Start idle state
	jsr    HoggAIStart_Idle

	rts
	
HoggUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    CharacterUpdate

	; If not dead
	tst.b  Character_Dead(a0)
	bne    @Dead

	move.b Hogg_State(a0), d0
	cmp.b  #HoggState_Idle, d0
	beq    @Idle
	cmp.b  #HoggState_Charging, d0
	beq    @Charging
	cmp.b  #HoggState_Stuck, d0
	beq    @Stuck
	cmp.b  #HoggState_Recovering, d0
	beq    @Recovering

	@Idle:
	jsr    HoggAIUpdate_Idle
	bra    @End

	@Charging:
	jsr    HoggAIUpdate_Charge
	bra    @End

	@Stuck:
	jsr    HoggAIUpdate_Stuck
	bra    @End

	@Recovering:
	jsr    HoggAIUpdate_Recover
	bra    @End

	@End:
	@Dead:

	rts

HoggSerialise:
	; a1 --- Level address
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	PUSHM d1/a1

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	; Don't save world grid flags - not restoring Hogg AI state on load
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)

	move.b #0x1, d0
	jsr    EntityUpdateWorldGridIndex

	@End:

	POPM  d1/a1

	rts

HoggAIStart_Idle:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Update via world grid
	bset.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	bset.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)

	; Recalculate place in grid
	move.b #0x1, d1
	jsr    EntityUpdateWorldGridIndex

	; Set state
	move.b #HoggState_Idle, Hogg_State(a0)

	rts

HoggAIUpdate_Idle:
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
	cmp.w  #Hogg_AlertDistance, d1
	bgt    @OutOfRange

	; Start charge state
	jsr    HoggAIStart_Charge

	@OutOfRange:

	rts

HoggAIStart_Charge:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Stop updating via world grid
	bclr.b #EntityWorldGridFlag_GridUpdates, Entity_WorldGridFlags(a0)
	bclr.b #EntityWorldGridFlag_GridPhysics, Entity_WorldGridFlags(a0)

	; Set state
	move.b #HoggState_Charging, Hogg_State(a0)

	; Play SFX
	PUSHL  a1
	move.l Player1, a1
	jsr    PHYS_EntityDistSq
	cmp.l  #(Hogg_MaxSoundDistance*Hogg_MaxSoundDistance), d0
	bgt    @OutOfSoundRange
	PLAYSFX #SFX_Hogg_Grunt
	@OutOfSoundRange:
	POPL   a1

	rts

HoggAIUpdate_Charge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Follow player
	move.l Player1, a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1

	; If too far away, back to idle state
	move.w d0, d2
	move.w d1, d3
	sub.w  d2, d3
	ABSW   d3
	cmp.w  #Hogg_SleepDistance, d3
	blt    @WithinActiveRange
	jsr    HoggAIStart_Idle
	bra    @Idle
	@WithinActiveRange:
	
	; Check left bounds
	move.w d1, d2
	sub.w  #Hogg_AIFollowDistance, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	addi.w #Hogg_AIFollowDistance, d2
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

	; If touching player, deal damage
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @EndFollow

	; If player not visible, don't bother
	tst.b  SpriteObj_Visible(a2)
	beq    @PlayerInvisible
	
	; If player is being flung using a flue/bounce pad, don't bother
	MOVE_NTSC_L Monster_AttackMaxPlayerVel, d1, d0
	cmp.l  PhysicsObj_VelY(a2), d1
	blt    @PlayerBeingFlung

	PUSHL  a0
	move.l a2, a0
	move.b #Hogg_PlayerDamage, d0
	jsr    CharacterDealDamage
	POPL   a0
	
	@PlayerInvisible:
	@PlayerBeingFlung:
	@EndFollow:

	; If hit wall at high velocity, enter stuck state
	move.b PhysicsObj_HitWall(a0), d0
	andi.b #(PhysicsObjHitWallLeft|PhysicsObjHitWallRight), d0
	beq    @NotStuck
	move.l PhysicsObj_WallImpactVelX(a0), d0
	ABS    d0
	cmp.l  #Hogg_StuckVelocity, d0
	blt    @NotStuck
	jsr    HoggAIStart_Stuck
	@NotStuck:

	; If changed direction, grunt
	move.b Hogg_PrevDirection(a0), d0
	move.b SpriteObj_FlippedX(a0), d1
	cmp.b  d0, d1
	beq    @SameDir
	PUSHM  d1/a1
	move.l Player1, a1
	jsr    PHYS_EntityDistSq
	cmp.l  #(Hogg_MaxSoundDistance*Hogg_MaxSoundDistance), d0
	bgt    @OutOfSoundRange
	PLAYSFX #SFX_Hogg_Grunt
	@OutOfSoundRange:
	POPM   d1/a1
	move.b d1, Hogg_PrevDirection(a0)
	@SameDir:

	@Idle:

	rts

HoggAIStart_Stuck:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #HoggState_Stuck, Hogg_State(a0)

	; Start impact anim
	PUSHL  a1
	lea    Hogg_Animations+(Animation_Struct_Size*HoggAnimIdx_Hit)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Set stuck loop as idle anim
	ANIM_LOAD_DEFAULT Hogg,wall,stuck,Character_Animations,CharacterAnimIdx_Idle,1,1,0

	; Start timer
	move.w #Hogg_StuckTime, Hogg_StuckTimer(a0)

	; Play SFX
	PUSHL  a1
	move.l Player1, a1
	jsr    PHYS_EntityDistSq
	cmp.l  #(Hogg_MaxSoundDistance*Hogg_MaxSoundDistance), d0
	bgt    @OutOfSoundRange
	PLAYSFX #SFX_Hogg_Stuck
	@OutOfSoundRange:
	POPL   a1

	rts

HoggAIUpdate_Stuck:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait timer
	move.w Hogg_StuckTimer(a0), d0
	beq    @WaitAnim
	subq.w #0x1, d0
	move.w d0, Hogg_StuckTimer(a0)
	tst.w  d0
	bne    @StillStuck
	
	@WaitAnim:

	; Wait end of anim
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	divs   #actor_hogg_sheet_wall_anim_stuck_numframes, d0
	swap   d0
	cmp.w  #actor_hogg_sheet_wall_anim_stuck_numframes-1, d0
	bne    @StillStuck

	; Restore idle anim
	ANIM_LOAD_DEFAULT Hogg,run,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Start recovery state
	jsr    HoggAIStart_Recover

	@StillStuck:

	rts

HoggAIStart_Recover:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #HoggState_Recovering, Hogg_State(a0)
	
	; Start anim
	PUSHL  a1
	lea    Hogg_Animations+(Animation_Struct_Size*HoggAnimIdx_Recover)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Pop out of wall
	move.l #Hogg_WallExitImpulse, d0
	move.b PhysicsObj_HitWall(a0), d1
	andi.b #PhysicsObjHitWallRight, d1
	beq    @HitLeft
	neg.l  d0
	@HitLeft:
	move.l d0, PhysicsObj_ImpulseX(a0)

	rts

HoggAIUpdate_Recover:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If anim finished
	move.l AnimObj_AnimSubframe(a0), d0
	lsr.l  #0x8, d0
	cmp.b  #actor_hogg_sheet_wall_anim_recover_numframes-1, d0
	bne    @StillRecovering

	; Back to charge state
	jsr    HoggAIStart_Charge

	@StillRecovering:

	rts
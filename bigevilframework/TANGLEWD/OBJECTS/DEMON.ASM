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
Demon_BoundsHeight	equ (Demon_Height-0x58)		; Just enough to jump out of the way when attacking
Demon_BoundsOffsetX	equ (Demon_Width/2)-(Demon_BoundsWidth/2)+0x16
Demon_BoundsOffsetY	equ (Demon_Height/2)-(Demon_BoundsHeight/2)

Demon_AttackDelayMin	equ 0x0100
Demon_AttackDelayMax	equ 0x0300
Demon_AttackDamage		equ 0xFF
Demon_AttackOffsetX		equ 0x0018
Demon_AttackAnimSpeedInc	equ 0x4
Demon_AttackFlashFrames	equ 0x2

Demon_MaxLives			equ 0x3

Demon_WispMaxDist		equ Player1Height	; Max distance from player

DemonState_Wisp			equ 0x0
DemonState_Physical		equ 0x1
DemonState_Boss			equ 0x2
DemonState_Attacking	equ 0x3
DemonState_Dead			equ 0x4

; Animations
DemonAnimIdx_Wisp			equ 0x0
DemonAnimIdx_WispToEmerge	equ 0x1
DemonAnimIdx_Transition		equ 0x2
DemonAnimIdx_Emerge			equ 0x3
DemonAnimIdx_IdleToSmirk	equ 0x4
DemonAnimIdx_Bite			equ 0x5
;----------------------------------
DemonAnimIdx_Max			equ 0x6

;==============================================================

	rsset (Character_Struct_Size)
;-----------------------------
Demon_Animations		rs.b (Animation_Struct_Size*DemonAnimIdx_Max)
Demon_Swarm				rs.l 1
Demon_TargetDistSq		rs.l 1
Demon_TargetX			rs.w 1
Demon_TargetY			rs.w 1
Demon_AttackTimer		rs.w 1
Demon_BossBoundsLeft	rs.w 1
Demon_BossBoundsRight	rs.w 1
Demon_State				rs.b 1
Demon_AtTarget			rs.b 1
Demon_Vulnerable		rs.b 1	; Vulnerable to attacks
Demon_NumLives			rs.b 1
Demon_ManualGfxLoad		rs.b 1	; Don't load gfx
Demon_CanDie			rs.b 1
;-----------------------------
	RS_ALIGN
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
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #EntitySerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.w  #Demon_Width, Entity_Width(a0)
	move.w  #Demon_Height, Entity_Height(a0)
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	move.b  #0x1, SpriteObj_PaletteAutoLoad(a0)

	move.b  #0x0, PhysicsObj_HasCollision(a0)
	move.b  #0x1, PhysicsObj_DecelInAir(a0)
	MOVE_NTSC_L Demon_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Demon_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Demon_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Demon_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Demon_DecelIdle, PhysicsObj_DecelX(a0), d0
	MOVE_NTSC_ACCEL_W Demon_DecelIdle, PhysicsObj_DecelY(a0), d0
	move.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	move.b  #0x0, PhysicsObj_CollideWalls(a0)
	move.b  #0x0, PhysicsObj_CollideFloor(a0)

	MOVE_NTSC_L Demon_MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Demon_MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Demon_WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_ACCEL_W Demon_AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Demon_AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Demon_DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Demon_DecelForced, Character_DecelForced(a0), d0

	move.l  #0x0, Demon_Swarm(a0)
	move.b  #DemonState_Wisp, Demon_State(a0)
	move.b  #0x0, Demon_AtTarget(a0)
	move.w  #0x0, Demon_TargetX(a0)
	move.w  #0x0, Demon_TargetY(a0)
	move.l  #Demon_WispMaxDist*Demon_WispMaxDist, Demon_TargetDistSq(a0)
	move.w  #0x0, Demon_BossBoundsLeft(a0)
	move.w  #0x7FFF, Demon_BossBoundsRight(a0)
	move.b  #0x0, Demon_ManualGfxLoad(a0)
	move.b  #0x0, Demon_Vulnerable(a0)
	move.b  #Demon_MaxLives, Demon_NumLives(a0)
	move.b  #0x0, Demon_CanDie(a0)

	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	rts

DemonLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b   Demon_ManualGfxLoad(a0)
	bne     @ManualLoad

	; Load sprite
	SPRITE_LOAD_DEFAULT demon,wisp,palette_demon,PaletteId_Monster,0x0

	@ManualLoad:

	; Load default character animations
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Load bespoke animations
	ANIM_LOAD_DEFAULT demon,emerge,wisptoemerge,Demon_Animations,DemonAnimIdx_WispToEmerge,0,0,0
	ANIM_LOAD_DEFAULT demon,emerge,transition,Demon_Animations,DemonAnimIdx_Transition,1,0,0
	ANIM_LOAD_DEFAULT demon,emerge,emerge,Demon_Animations,DemonAnimIdx_Emerge,0,0,0
	ANIM_LOAD_DEFAULT demon,idletosmirk,idletosmirk,Demon_Animations,DemonAnimIdx_IdleToSmirk,0,0,0
	ANIM_LOAD_DEFAULT demon,bite,bite,Demon_Animations,DemonAnimIdx_Bite,0,0,0
	ANIM_LOAD_DEFAULT demon,wisp,idle,Demon_Animations,0,1,0,0

	rts

DemonLoadWispGfx:

	; Load wisp sprite
	SPRITE_LOAD_SHARED_VRAM Demon,wisp,palette_demon,PaletteId_Monster,0x0,a0

	; Load anims
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT demon,wisp,idle,Character_Animations,CharacterAnimIdx_Run,1,0,0

	rts

DemonLoadPhysicalGfx:

	; Load demon sprite
	SPRITE_LOAD_SHARED_VRAM Demon,idle,palette_demon,PaletteId_Monster,0x0,a0

	; Load idle anim
	ANIM_LOAD_DEFAULT demon,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT demon,idle,idle,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT demon,idle,idle,Character_Animations,CharacterAnimIdx_Run,1,0,0
	ANIM_LOAD_DEFAULT demon,death,death,Character_Animations,CharacterAnimIdx_Dead,0,0,0

	rts

DemonSetSwarmObj:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Swarm

	; Set swarm obj
	move.l a2, Demon_Swarm(a0)

	; Disable by default
	PUSHL  a0
	move.l a2, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	POPL   a0

	rts
	
DemonUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  Entity_Active(a0)
	beq    @Disabled
	
	; Base functionality
	jsr    CharacterUpdate

	; Update state
	move.b Demon_State(a0), d0
	cmp.b  #DemonState_Wisp, d0
	beq    @Wisp
	cmp.b  #DemonState_Physical, d0
	beq    @Physical
	cmp.b  #DemonState_Boss, d0
	beq    @Boss
	cmp.b  #DemonState_Attacking, d0
	beq    @Attacking
	cmp.b  #DemonState_Dead, d0
	beq    @Dead

	@Wisp:
	jsr    DemonAIUpdate_Wisp
	bra    @End

	@Physical:
	jsr    DemonAIUpdate_Physical
	bra    @End

	@Boss:
	jsr    DemonAIUpdate_Boss
	bra    @End

	@Attacking:
	jsr    DemonAIUpdate_Attack
	bra    @End

	@Dead:
	jsr    DemonAIUpdate_Dead
	bra    @End

	@End:
	@Disabled:

	rts

DemonStartEmerge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load physical form
	jsr     DemonLoadPhysicalGfx

	; Start wisp to emerge anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_WispToEmerge)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set transitioning idle anim
	ANIM_LOAD_DEFAULT demon,emerge,transition,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Set physical state
	move.b  #DemonState_Physical, Demon_State(a0)

	rts

DemonEmerge:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Stop emerge SFX loop
	jsr     SND_StopSFX

	; Start emerge anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Emerge)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set standard idle anim
	ANIM_LOAD_DEFAULT demon,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	rts

DemonSmirk:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start smirk anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_IdleToSmirk)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set smirking idle anim
	ANIM_LOAD_DEFAULT demon,smirk,smirk,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	rts

DemonAttack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start bite anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Bite)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	rts

DemonSetAttackSpeed:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) Attack speed (0 - 30)

	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Bite)(a0), a2
	add.w   d0, Animation_Speed(a2)

	rts

DemonReceiveDamage:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check vulnerable
	tst.b  Demon_Vulnerable(a0)
	beq    @Invulnerable

	; Check alive
	tst.b  Character_Dead(a0)
	bne    @AlreadyDead

	; Decrement lives
	move.b Demon_NumLives(a0), d0
	subq.b #0x1, d0
	move.b d0, Demon_NumLives(a0)
	tst.b  d0
	bne    @Pain

	; Kkill through character interface
	move.b #0xFF, d0
	jsr    CharacterDealDamage

	; If dying for real
	tst.b  Demon_CanDie(a0)
	beq    @Disappear

	; Enter death state
	jsr    DemonAIStart_Dead

	bra   @Dead

	@Disappear:

	; End of boss stage, disable and invisible
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	bra   @Dead

	@Pain:

	; Screech and disappear back into boss mode
	; TODO: Audio
	jsr    DemonAIStart_Boss

	; Release swarm
	jsr    DemonReleaseSwarm

	@Invulnerable:
	@AlreadyDead:
	@Dead:

	rts

DemonAIStart_Physical:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load physical form
	jsr    DemonLoadPhysicalGfx

	; Set state
	move.b #DemonState_Physical, Demon_State(a0)

	rts

DemonAIUpdate_Physical:
	; a0 --- GameObj addr
	; a1 --- Level addr
	rts

DemonAIStart_Boss:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load physical form
	jsr    DemonLoadPhysicalGfx

	; Set state
	move.b #DemonState_Boss, Demon_State(a0)

	; Invisible
	move.b #0x0, SpriteObj_Visible(a0)

	; Invulnerable
	move.b #0x0, Demon_Vulnerable(a0)

	; Clear follow target
	move.w #0x0, Demon_TargetX(a0)
	move.w #0x0, Demon_TargetY(a0)

	; Reset attack timer
	MOVE_NTSC_W Demon_AttackDelayMin, d1, d0
	MOVE_NTSC_W Demon_AttackDelayMax, d2, d0
	jsr    RND_GenerateWordClamped
	move.w d0, Demon_AttackTimer(a0)

	rts

DemonAIUpdate_Boss:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If player dead, don't bother
	move.l Player1, a2
	tst.b  Character_Dead(a2)
	bne    @PlayerDead

	; If swarm active, don't bother
	move.l Demon_Swarm(a0), a3
	cmpa.w #0x0, a3
	beq    @NoSwarm

	btst.b #EntityWorldGridFlag_InUpdateList, Entity_WorldGridFlags(a3)
	bne    @SwarmActive

	@NoSwarm:

	; Wait attack timer
	move.w Demon_AttackTimer(a0), d0
	beq    @NoAttack
	subq.w #0x1, d0
	move.w d0, Demon_AttackTimer(a0)
	tst.w  d0
	bne    @NoAttack

	; Choose random direction
	jsr    RND_GenerateLong
	andi.b #0x1, d0
	beq    @AttackFromLeft

	@AttackFromRight:

	; Set flip
	move.b #0x1, SpriteObj_FlippedX(a0)

	; Position to right of player
	move.l Player1, a2
	move.w Entity_WorldPosX(a2), d0
	add.w  Entity_Width(a2), d0
	subi.w #Demon_AttackOffsetX, d0
	move.w d0, Entity_WorldPosX(a0)

	bra    @EndAttackPos

	@AttackFromLeft:

	; Set flip
	move.b #0x0, SpriteObj_FlippedX(a0)

	; Position to left of player
	move.l Player1, a2
	move.w Entity_WorldPosX(a2), d0
	subi.w #Demon_Width, d0
	addi.w #Demon_AttackOffsetX, d0
	move.w d0, Entity_WorldPosX(a0)

	@EndAttackPos:

	; If out of bounds, reposition without randomisation
	move.w  Demon_BossBoundsLeft(a0), d1
	move.w  Demon_BossBoundsRight(a0), d2
	cmp.w   d0, d1
	bgt     @AttackFromRight
	cmp.w   d0, d2
	blt     @AttackFromLeft

	; Centre Y
	move.w Entity_WorldPosY(a2), d0
	move.w Entity_Height(a0), d2
	move.w Entity_Height(a2), d3
	lsr.w  #0x1, d2
	lsr.w  #0x1, d3
	sub.w  d3, d2
	sub.w  d2, d0
	move.w d0, Entity_WorldPosY(a0)

	; Set visible
	move.b #0x1, SpriteObj_Visible(a0)

	; Flash
	move.w #Demon_AttackFlashFrames, d0
	jsr    VFX_StartFlash

	; Attack
	jsr    DemonAIStart_Attack

	@NoAttack:
	@PlayerDead:
	@SwarmActive:

	rts

DemonAIStart_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load physical form
	jsr    DemonLoadPhysicalGfx

	; Begin attack anim
	jsr    DemonAttack

	; Set vulnerable to attack
	move.b #0x1, Demon_Vulnerable(a0)

	; Set state
	move.b #DemonState_Attacking, Demon_State(a0)

	rts

DemonAIUpdate_Attack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait for bite anim to finish
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @StillBiting
	
	; Check touching player
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoHit

	; Damage player
	PUSHL  a0
	move.l Player1, a0
	move.b #Demon_AttackDamage, d0
	jsr    CharacterDealDamage
	POPL   a0
	
	@NoHit:

	; Increment attack speed for next attack
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Bite)(a0), a2
	add.w   #Demon_AttackAnimSpeedInc, Animation_Speed(a2)

	; Flash
	move.w #Demon_AttackFlashFrames, d0
	jsr    VFX_StartFlash
	
	; Back to boss mode
	jsr    DemonAIStart_Boss

	; If player not dead
	move.l Player1, a2
	tst.b  Character_Dead(a2)
	beq    @PlayerDead

	; Release swarm
	jsr    DemonReleaseSwarm

	@PlayerDead:
	
	@StillBiting:

	rts

DemonAIStart_Dead:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #DemonState_Dead, Demon_State(a0)

	; Set anim
	PUSHL   a1
	lea     Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Dead)(a0), a1
	move.b  #0x0, d0
	move.l  #DemonDeathAnimFinished, a2
	move.l  a0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; No more character anim updates
	move.b  #0x0, Character_UpdateAnim(a0)

	rts

DemonAIUpdate_Dead:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts

DemonDeathAnimFinished:

	; Disabled and invisible
	move.b #0x0, Entity_Active(a0)
	move.b #0x0, SpriteObj_Visible(a0)

	rts

DemonAIStart_Wisp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load wisp gfx
	jsr    DemonLoadWispGfx

	; Start wisp anim
	PUSHL   a1
	lea     Demon_Animations+(Animation_Struct_Size*DemonAnimIdx_Wisp)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; Set state
	move.b #DemonState_Wisp, Demon_State(a0)

	rts

DemonAIUpdate_Wisp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHM  a0-a1

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
	move.l Demon_TargetDistSq(a0), d7
	cmp.l  Demon_TargetDistSq(a0), d2
	blt    @WithinRange

	move.b #0x0, Demon_AtTarget(a0)

	; Accelerate towards target
	VEC2_SUB d0,d1
	moveq #0x0, d2
	moveq #0x0, d3
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

	; TODO: Make sure vel > decel

	;move.w PhysicsObj_DecelX(a0), d0
	;ext.l  d0
	;tst.l  d3
	;blt    @CheckDecelNegX
	;cmp.l  d3, d0
	;blt    @ClampedX
	;move.l d0, d3
	;addi.l #0x00001000, d3
	;bra    @ClampedX
	;@CheckDecelNegX:
	;neg.l  d0
	;cmp.l  d3, d0
	;bgt    @ClampedX
	;move.l d0, d3
	;subi.l #0x00001000, d3
	;@ClampedX:

	move.l PhysicsObj_MaxVelAirX(a0), d6
	move.l d6, d7
	neg.l  d6
	CLAMPL d2, d6, d7
	CLAMPL d3, d6, d7

	move.l d2, PhysicsObj_VelY(a0)
	move.l d3, PhysicsObj_VelX(a0)
	bra    @Following

	@WithinRange:

	move.w #0x0, PhysicsObj_AccelY(a0)   
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.b #0x1, Demon_AtTarget(a0)

	@Following:

	POPM    a0-a1

	rts

DemonReleaseSwarm:

	; If Swarm registered
	move.l Demon_Swarm(a0), a2
	cmpa.w #0x0, a2
	beq    @NoSwarm

	; Reposition
	ENTITY_ALIGNCENTRE a2,a0,d0,d1

	; Let it loose
	PUSHL  a0
	move.l a2, a0
	jsr    SwarmActivate
	POPL   a0

	@NoSwarm:

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   Swarm.asm - Violence is usually the answer
;==============================================================

; Constants
Swarm_Width			equ 0x0020
Swarm_Height		equ 0x0020

Swarm_MaxVelXWalk	equ 0x060000   ; Max X walking velocity
Swarm_MaxVelXRun	equ 0x060000   ; Max X running velocity
Swarm_MaxVelXAir	equ 0x060000
Swarm_MaxVelYUp		equ 0x060000   ; Max Y velocity up
Swarm_MaxVelYDown	equ 0x080000   ; Max Y velocity down
Swarm_WalkToRunVel	equ 0x020000   ; Walk to run transition velocity
Swarm_AccelWalk		equ 0x000800   ; Walking acceleration
Swarm_AccelRun		equ 0x000800   ; Running acceleration
Swarm_DecelIdle		equ 0x000800   ; Deceleration if left alone
Swarm_DecelForced	equ 0x001000   ; Deceleration if input opposite direction

Swarm_AttackDist	equ 0x0040		; Distance to switch to attack anim
Swarm_Time			equ 0x0200
Swarm_PlayerDamage	equ 0xFF

SwarmAnimIdx_Move	equ 0x0
SwarmAnimIdx_Attack	equ 0x1
;--------------------------
SwarmAnimIdx_Max	equ 0x2

; Struct
	rsset (PhysicsObj_Struct_Size)
;---------------------------------
Swarm_Animations			rs.b (Animation_Struct_Size*SwarmAnimIdx_Max)
Swarm_SpeedMul				rs.l 1
Swarm_Timer					rs.w 1
;---------------------------------
	RS_ALIGN
Swarm_Struct_Size			rs.b 0

SwarmInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    PhysicsObjInit

	; Set update and render routines
	move.l #SwarmUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #SwarmSerialise, Entity_SerialiseRoutine(a0)

	; Add to serialise list
	jsr EntityAddToSerialiseList
	
	; Add to count
	addq.w #0x1, EntityCount_Swarm

	; Initialise
	move.w #Swarm_Width, Entity_Width(a0)
	move.w #Swarm_Height, Entity_Height(a0)
	move.b #0x1, SpriteObj_PaletteAutoLoad(a0)
	move.b #0x1, AnimObj_UpdateOutOfView(a0)
	MOVE_NTSC_L Swarm_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Swarm_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Swarm_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Swarm_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Swarm_DecelIdle, PhysicsObj_DecelX(a0), d0
	move.b #0x0, PhysicsObj_HasCollision(a0)
	move.w #Swarm_Time, Swarm_Timer(a0)
	move.l #0x00010000, Swarm_SpeedMul(a0)

	; Setup collision bounds
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #Swarm_Width, PhysicsObj_BoundsWidth(a0)
	move.w #Swarm_Height, PhysicsObj_BoundsHeight(a0)

	rts

SwarmLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite sheet
	SPRITE_LOAD_SHARED Swarm,move,palette_Swarm,PaletteId_Monster,0x0

	; Load default animation
	ANIM_LOAD_DEFAULT Swarm,move,move,Swarm_Animations,SwarmAnimIdx_Move,1,0,0
	ANIM_LOAD_DEFAULT Swarm,attack,attack,Swarm_Animations,SwarmAnimIdx_Attack,1,0,0

	; Start animation
	PUSHL   a1
	lea     Swarm_Animations+(Animation_Struct_Size*SwarmAnimIdx_Move)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
	
SwarmUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr    PhysicsObjUpdate
	
	PUSHL  a1

	; If timer elapsed, disappear
	move.w Swarm_Timer(a0), d0
	subq.w #0x1, d0
	move.w d0, Swarm_Timer(a0)
	tst.w  d0
	bne    @TimerRunning
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	bra    @Finished
	@TimerRunning:

	; Accelerate towards player
	move.l Player1, a1
	ENTITY_GETCENTREVEC2 d1,d2,a1
	ENTITY_GETCENTREVEC2 d0,d2,a0
	move.l d0, d2
	move.l d1, d3
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

	move.l PhysicsObj_MaxVelAirX(a0), d6
	move.l d6, d7
	neg.l  d6
	CLAMPL d2, d6, d7
	CLAMPL d3, d6, d7

	move.l Swarm_SpeedMul(a0), d1

	PUSHM  d1-d3
	move.l d2, d0
	jsr    Muls1616
	move.l d0, PhysicsObj_VelY(a0)
	POPM   d1-d3

	move.l d3, d0
	jsr    Muls1616
	move.l d0, PhysicsObj_VelX(a0)
	
	; If close enough, switch to attack anim
	move.l Player1, a1
	ENTITY_GETCENTREVEC2 d1,d2,a1
	ENTITY_GETCENTREVEC2 d0,d2,a0
	move.l d0, d2
	move.l d1, d3
	VEC2_DISTSQ d2, d3, d4
	cmp.l  #Swarm_AttackDist*Swarm_AttackDist, d2
	bgt    @OutOfAttackRange

	; Within range, use attack anim
	PUSHL   a1
	lea     Swarm_Animations+(Animation_Struct_Size*SwarmAnimIdx_Attack)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	; If touching, kill
	move.l Player1, a2
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NoHit

	; Damage player
	PUSHL  a0
	move.l Player1, a0
	move.b #Swarm_PlayerDamage, d0
	jsr    CharacterDealDamage
	POPL   a0

	bra     @AttackMode

	@OutOfAttackRange:

	; Out of attack range, use non-attack anim
	PUSHL   a1
	lea     Swarm_Animations+(Animation_Struct_Size*SwarmAnimIdx_Move)(a0), a1
	move.b  #0x0, d0
	move.l  #0x0, a2
	move.l  #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1
	
	@NoHit:
	@AttackMode:
	@Finished:
	
	POPL   a1

	rts

SwarmSerialise:
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

SwarmActivate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Reset timer
	move.w #Swarm_Time, Swarm_Timer(a0)

	; Re-add to world grid
	move.w  #-1, Entity_WorldGridIdxTL(a0)
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders)|(1<<EntityWorldGridFlag_GridPhysics), d0
	jsr     EntityAddToWorldGrid

	rts
;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   character.asm - Character structure and routines
;==============================================================

; ************************************
; Constants
; ************************************
Character_LandVel		    equ 0x030000
Character_FallVel		    equ 0x020000

Character_PushLight			equ 0x1
Character_PushHeavy			equ 0x2

Character_WalkInteract			equ 0x1
Character_WalkWater				equ 0x2
Character_WalkRollingPlatform	equ 0x3
Character_WalkGeneral			equ 0x4

; ************************************
; Animation ids
; ************************************
CharacterAnimIdx_Idle		equ 0
CharacterAnimIdx_Dead		equ 1
CharacterAnimIdx_Run		equ 2
CharacterAnimIdx_Walk		equ 3
CharacterAnimIdx_Jump		equ 4
CharacterAnimIdx_Hang		equ 5
CharacterAnimIdx_Glide		equ 6
CharacterAnimIdx_Push		equ 7
CharacterAnimIdx_PushHeavy	equ 8
CharacterAnimIdx_Fall		equ 9
CharacterAnimIdx_WalkToRun	equ 10
CharacterAnimIdx_WaterWade	equ 11
CharacterAnimIdx_RideTrot	equ 12
CharacterAnimIdx_RideGallop	equ 13
CharacterAnimIdx_RideJump	equ 14
; -------------------------------
Character_NumAnims			equ 15

; ************************************
; SFX ids
; ************************************
CharacterSFXIdx_Land		equ 0
CharacterSFXIdx_WaterSplash	equ 1
CharacterSFXIdx_WaterJump	equ 2
; -------------------------------
Character_NumSFX			equ 3

; ************************************
; Character struct
; ************************************

; Struct
	rsset (PhysicsObj_Struct_Size)
;---------------------------------
	LINKED_LIST_NODE Characters		; Linked list entry for characters
;---------------------------------
Character_InteractStartA	rs.l 1	; Interact routine type A address
Character_InteractCancelA	rs.l 1	; Cancel interact routine type A address
Character_InteractStartB	rs.l 1	; Interact routine type B address
Character_InteractCancelB	rs.l 1	; Cancel interact routine type B address
Character_Animations		rs.b (Animation_Struct_Size*Character_NumAnims)
Character_SFX				rs.l Character_NumSFX
Character_JumpVelX			rs.l 1
Character_JumpVelY			rs.l 1
Character_JumpVelWater		rs.l 1
Character_JumpCancelVelLo	rs.l 1
Character_JumpCancelVelHi	rs.l 1
Character_MaxGrabUpVel		rs.l 1
Character_MaxVelXRun		rs.l 1
Character_MaxVelXWalk		rs.l 1
Character_WalkToRunVel		rs.l 1
Character_LastLedgeX		rs.l 1
Character_LastLedgeY		rs.l 1
Character_ProbeLedgeX		rs.w 1
Character_ProbeLedgeY		rs.w 1
Character_AccelRun			rs.w 1
Character_AccelWalk			rs.w 1
Character_DecelIdle			rs.w 1
Character_DecelForced		rs.w 1
Character_CanJump			rs.b 1
Character_OnLedge			rs.b 1
Character_InWater			rs.b 1
Character_Walking			rs.b 1
Character_Jumping			rs.b 1
Character_Falling			rs.b 1
Character_Pushing			rs.b 1	; 1 = Light object, 2 = Heavy object
Character_Gliding			rs.b 1
Character_Riding			rs.b 1	; 1 = Trotting, 2 = Galloping
Character_Interacting		rs.b 1
Character_UpdateAnim		rs.b 1
Character_AnimIdx	    	rs.b 1
Character_Health        	rs.b 1
Character_Dead          	rs.b 1
Character_LockSpriteFlip	rs.b 1	; Don't change flip direction
;---------------------------------
Character_Struct_Pad    	rs.b 1
Character_Struct_Size   	rs.b 0

;==============================================================
; Character initialisation
;==============================================================

CharacterInit:

	; Base functionality
	jsr PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_character, Entity_TypeBits(a0)

	; Add to characters list
	LIST_APPEND_TAIL Characters, a0, a3

	; Default state
	move.l #0x0, Character_InteractStartA(a0)
	move.l #0x0, Character_InteractCancelA(a0)
	move.l #0x0, Character_InteractStartB(a0)
	move.l #0x0, Character_InteractCancelB(a0)
	move.l #0x0, Character_LastLedgeX(a0)
	move.l #0x0, Character_LastLedgeY(a0)
	move.b #0x1, Character_CanJump(a0)
	move.b #0x0, Character_OnLedge(a0)
	move.b #0x0, Character_InWater(a0)
	move.b #0x0, Character_Walking(a0)
	move.b #0x0, Character_Jumping(a0)
	move.b #0x0, Character_Pushing(a0)
	move.b #0x0, Character_Gliding(a0)
	move.b #0x0, Character_Riding(a0)
	move.b #0x0, Character_Interacting(a0)
	move.b #0x1, Character_UpdateAnim(a0)
	move.b #0xFF, Character_Health(a0)
	move.b #0x0, Character_Dead(a0)
	move.b #0x0, Character_LockSpriteFlip(a0)

	rts
	
;==============================================================
; Character update routines
;==============================================================

CharacterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Store current floor flag and Y velocity to check landing
	move.b PhysicsObj_OnFloor(a0), d0
	move.l PhysicsObj_VelY(a0), d1
	PUSHL  d0
	PUSHL  d1
	
	; Base functionality
	jsr PhysicsObjUpdate
	
	; Retrieve floor flag and Y velocity
	POPL   d1
	POPL   d0
	
	; If on floor, no longer jumping or falling
	cmp.b  #0x0, PhysicsObj_OnFloor(a0)
	beq    @OffFloor
	move.b #0x0, Character_Jumping(a0)
	move.b #0x0, Character_Falling(a0)

	; =====================================================================
	
	; Check if previously on floor
	cmp.b  #0x0, d0
	bne    @PrevOnFloor
	
	; If hit floor at landing velocity
	cmp.l  #-Character_LandVel, d1
	bge    @LowLandVel
	
	; Play land SFX
	move.l a0, a2
	add.l  #Character_SFX+(CharacterSFXIdx_Land*size_long), a2
	cmp.l  #0x0, (a2)
	beq    @NoLandSFX
	PLAYSFX (a2)
	@NoLandSFX:
	
	@OffFloor:
	@PrevOnFloor:
	@LowLandVel:
	
	; If Y vel < falling vel, set as falling
	cmp.l  #-Character_FallVel, d1
	bge    @NotFalling
	move.b #0x1, Character_Falling(a0)
	@NotFalling:
	
	; If in water, prevent running
	cmp.b  #0x0, Character_InWater(a0)
	beq    @NotInWater
	move.b #Character_WalkWater, d2
	jsr    CharacterPreventRun
	bra    @EndRunTest
	@NotInWater:
	move.b #Character_WalkWater, d2
	jsr    CharacterAllowRun
	@EndRunTest:
 
	; If not locked, apply sprite flipping
	cmp.b #0x0, Character_LockSpriteFlip(a0)
	bne   @FlipLocked
	jsr   CharacterApplySpriteFlip
	@FlipLocked:

	cmp.b #0x0, Character_UpdateAnim(a0)
	beq   @ManualAnim
	jsr   CharacterUpdateAnimState
	@ManualAnim:

	; Update rolling platforms
	jsr   CharacterUpdateRollingPlatform
	
	rts

CharacterUpdateRollingPlatform:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Clear reverse animation
	move.b #0x0, AnimObj_Reverse(a0)

	; Clear rolling platform walk flag
	btst   #Character_WalkRollingPlatform, Character_Walking(a0)
	beq    @NoClearWalkFlag
	move.b #Character_WalkRollingPlatform, d0
	jsr    CharacterAllowRun
	@NoClearWalkFlag:

	; If on a rolling platform
	tst.b  PhysicsObj_OnPlatform(a0)
	beq    @NotOnPlatform
	move.l PhysicsObj_LastPlatform(a0), a2
	beq    @NotOnPlatform
	cmp.b  #PlatformType_Rolling, Platform_Type(a2)
	bne    @NotRollingPlatform

	; If rolling object isn't hitting a wall
	move.l Platform_Owner(a2), a3
	PHYSICS_HITFACINGWALL a3
	tst.b  d0
	bne    @PlatformHittingWall

	; Match rolling object velocity
	move.l PhysicsObj_VelX(a0), PhysicsObj_ImpulseX(a3)

	; Cannot run
	move.b #Character_WalkRollingPlatform, d0
	jsr    CharacterPreventRun

	; Reverse walk animation
	move.b #0x1, AnimObj_Reverse(a0)

	@NotOnPlatform:
	@NotRollingPlatform:
	@PlatformHittingWall:

	rts
	
CharacterDealDamage:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Damage to deal
	
	; TODO - Damage/death anim type
	
	; Get current health
	move.b Character_Health(a0), d1
	
	; If already dead, do nothing
	cmp.b  #0x0, d1
	beq    @AlreadyDead
	
	; Subtract health
	sub.b  d0, d1
	bcc    @NoClamp	; Branch if Carry Clear (did not wrap to zero)
	move.b #0x0, d1	; Clamp to 0
	@NoClamp:
	move.b d1, Character_Health(a0)
	
	; Check if depleted
	cmp.b  #0x0, d1
	bne    @StillAlive
	
	; Health reached zero, character is dead
	move.b #0x1, Character_Dead(a0)
	
	; Cancel all actions
	jsr    CharacterCancelXMovement
	jsr    CharacterCancelJump
	move.b #0x0, Character_Interacting(a0)
	
	; Cancel velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	
	@AlreadyDead:
	@StillAlive:
	
	rts
	
CharacterApplySpriteFlip:

	; Sprite X flip direction
	move.l PhysicsObj_VelX(a0), d0
	cmp.l  #0x0, d0
	beq    @NoFlip
	blt    @FlipLeft
	@FlipRight:
	move.b #0x0, SpriteObj_FlippedX(a0)
	bra    @NoFlip
	@FlipLeft:
	move.b #0x1, SpriteObj_FlippedX(a0)
	@NoFlip:
	
	rts
	
CharacterUpdateAnimState:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	;Get current animation
	move.l AnimObj_CurrentAnim(a0), a2
	
	move.b Animation_Looping(a2), d0
	cmp.b  #0x0, d0						; If playing a looping anim, anim is interruptible
	bne    @InterruptibleAnim
	
	move.b AnimObj_Playing(a0), d0
	cmp.b  #0x0, d0						; If interruptible anim has finished, start next anim
	beq    @AnimFinished
	bra	   @EndAnim
	
	@InterruptibleAnim:
	@AnimFinished:
	
	clr.l  d1

	; =====================================================================
	; Dead
	; =====================================================================
	move.b #CharacterAnimIdx_Dead, d1
	move.b Character_Dead(a0), d0		; If player dead, set death anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Hanging
	; =====================================================================
	move.b #CharacterAnimIdx_Hang, d1
	move.b Character_OnLedge(a0), d0	; If player on ledge, set hanging anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Gliding
	; =====================================================================
	move.b #CharacterAnimIdx_Glide, d1
	move.b Character_Gliding(a0), d0	; If player is gliding, set glide anim
	cmp.b  #0x1, d0
	beq    @SetAnim

	; =====================================================================
	; Riding (trotting)
	; =====================================================================
	move.b #CharacterAnimIdx_RideTrot, d1
	move.b Character_Riding(a0), d0		; If player is riding, set ride anim
	cmp.b  #0x1, d0
	beq    @SetAnim

	; =====================================================================
	; Riding (galloping)
	; =====================================================================
	move.b #CharacterAnimIdx_RideGallop, d1
	move.b Character_Riding(a0), d0		; If player is riding, set ride anim
	cmp.b  #0x2, d0
	beq    @SetAnim
	
	; =====================================================================
	; Jumping
	; =====================================================================
	move.b #CharacterAnimIdx_Jump, d1
	move.b Character_Jumping(a0), d0	; If player is jumping, set jump anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Falling
	; =====================================================================
	move.b #CharacterAnimIdx_Fall, d1
	move.b Character_Falling(a0), d0	; If player is falling, set jump anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Pushing (light object)
	; =====================================================================
	move.b #CharacterAnimIdx_Push, d1
	move.b Character_Pushing(a0), d0	; If player is pushing, set push anim
	cmp.b  #Character_PushLight, d0
	beq    @SetAnim
	
	; =====================================================================
	; Pushing (heavy object)
	; =====================================================================
	move.b #CharacterAnimIdx_PushHeavy, d1
	move.b Character_Pushing(a0), d0	; If player is pushing, set push anim
	cmp.b  #Character_PushHeavy, d0
	beq    @SetAnim
	
	; =====================================================================
	; Idle
	; =====================================================================
	move.b #CharacterAnimIdx_Idle, d1
	move.l PhysicsObj_VelX(a0), d0			; If X velocity == 0, set idle anim
	cmp.l  #0x0, d0
	beq    @SetAnim

	; =====================================================================
	; Running/Walking
	; =====================================================================
	move.l PhysicsObj_VelX(a0), d0			; If X velocity > WalkToRun speed, set run anim
	cmp.l  Character_WalkToRunVel(a0), d0
	bgt    @Running
	neg.l  d0
	cmp.l  Character_WalkToRunVel(a0), d0
	bgt    @Running
	bra    @Walking
	
	; Running
	@Running:
	
	; If transitioning from walking/jumping/falling anim, set transition anim first
	move.b #CharacterAnimIdx_WalkToRun, d1
	cmp.b  #CharacterAnimIdx_Walk, Character_AnimIdx(a0)
	beq    @SetAnim
	cmp.b  #CharacterAnimIdx_Jump, Character_AnimIdx(a0)
	beq    @SetAnim
	cmp.b  #CharacterAnimIdx_Fall, Character_AnimIdx(a0)
	beq    @SetAnim
	
	; else set running anim
	move.b #CharacterAnimIdx_Run, d1
	bra    @SetAnim
	
	; Walking
	@Walking:
	
	; If transitioning from running anim, set transition anim first
	move.b #CharacterAnimIdx_WalkToRun, d1
	cmp.b  #CharacterAnimIdx_Run, Character_AnimIdx(a0)
	beq    @SetAnim
	
	; else if in water, set water wade anim
	move.b #CharacterAnimIdx_WaterWade, d1
	cmp.b  #0x1, Character_InWater(a0)
	beq    @SetAnim
	
	; else set walking anim
	move.b #CharacterAnimIdx_Walk, d1

	@SetAnim:

	; Set anim index
	move.b d1, Character_AnimIdx(a0)
	
	; Get anim struct address from character
	move.l a1, -(sp)
	move.l a0, a1
	add.l  #Character_Animations, a1
	mulu   #Animation_Struct_Size, d1
	add.l  d1, a1
	
	; Apply animation
	jsr AnimObjSetAnimation
	
	move.l (sp)+, a1

	@EndAnim:
	
	rts
	
;==============================================================
; Character draw routines
;==============================================================
	
CharacterDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr AnimObjDraw
	
	rts

;==============================================================
; Character control
;==============================================================

CharacterMoveLeft:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if player dead
	cmp.b  #0x0, Character_Dead(a0)
	bne    @End
	
	; Check if player on ledge
	cmp.b  #0x0, Character_OnLedge(a0)
	bne    @End
	
	; Check if heading in opposite direction
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bgt    @Decelerate
	
	; Check if running or walking
	cmp.b  #0x0, Character_Walking(a0)
	bne    @Else
	clr.w  d5
	sub.w  Character_AccelRun(a0), d5
	move.w d5, PhysicsObj_AccelX(a0)
	bra    @End
	@Else:
	clr.w  d5
	sub.w  Character_AccelWalk(a0), d5
	move.w d5, PhysicsObj_AccelX(a0)
	bra    @End
	
	@Decelerate:
	
	; Heading in opposite direction, fast deceleration
	clr.w  d5
	sub.w  Character_DecelForced(a0), d5
	move.w d5, PhysicsObj_AccelX(a0)
	
	@End:
	
	rts
	
CharacterMoveRight:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if player dead
	cmp.b  #0x0, Character_Dead(a0)
	bne    @End
	
	; Check if player on ledge
	cmp.b  #0x0, Character_OnLedge(a0)
	bne    @End
	
	; Check if heading in opposite direction
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	blt    @Decelerate
	
	; Check if running or walking
	cmp.b  #0x0, Character_Walking(a0)
	bne    @Else
	move.w Character_AccelRun(a0), PhysicsObj_AccelX(a0)
	bra    @End
	@Else:
	move.w Character_AccelWalk(a0), PhysicsObj_AccelX(a0)
	bra    @End
	
	@Decelerate:

	; Heading in opposite direction, fast deceleration
	move.w Character_DecelForced(a0), PhysicsObj_AccelX(a0)
	
	@End:
	
	rts

CharacterCancelXMovement:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.w #0x0, PhysicsObj_AccelX(a0)
	
	rts
	
CharacterStartJump:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	; d2 (b) Force (ignore all tests)

	PUSHM  d0-d1

	; Check if jump is to be forced
	tst.b d2
	bne   @CanJump

	; Check if player can jump
	cmp.b #0x0, Character_CanJump(a0)
	beq   @CantJump
	
	; Check if player dead
	cmp.b  #0x1, Character_Dead(a0)
	beq    @Dead

	; Check if player is riding
	cmp.b  #0x0, Character_Riding(a0)
	bne    @CanJump
	
	; Check if player is interacting
	cmp.b  #0x1, Character_Interacting(a0)
	beq    @CantJump
	
	; Check if player on ledge
	cmp.b  #0x1, Character_OnLedge(a0)
	beq    @CanJump
	
	; Check if player close enough to floor to jump
	cmp.b  #0x0, PhysicsObj_CloseToFloor(a0)
	beq    @CantJump

	@CanJump:

	; Set off floor
	move.b #0x0, PhysicsObj_OnFloor(a0)
	move.b #0x0, PhysicsObj_CloseToFloor(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastPlatform(a0)

	; Wake physics
	move.b #0x0, PhysicsObj_Asleep(a0)

	; Check if player in water
	cmp.b  #0x0, Character_InWater(a0)
	bne    @InWater
	
	; Set Y velocity
	move.l Character_JumpVelY(a0), PhysicsObj_VelY(a0)

	; Set min X velocity
	move.l Character_JumpVelX(a0), d0
	move.l PhysicsObj_VelX(a0), d1
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @Positive
	neg.l  d0
	cmp.l  d1, d0
	bgt    @EndXVel
	move.l d0, PhysicsObj_VelX(a0)
	bra    @EndXVel
	@Positive:
	cmp.l  d1, d0
	blt    @EndXVel
	move.l d0, PhysicsObj_VelX(a0)
	@EndXVel:

	; Set jumping
	move.b #0x1, Character_Jumping(a0)
	
	bra    @End
	
	@InWater:

	; Jump from water
	move.l Character_JumpVelWater(a0), PhysicsObj_VelY(a0)
	move.b #0x1, Character_Jumping(a0)

	; Play water jump SFX
	move.l a0, a2
	add.l  #Character_SFX+(CharacterSFXIdx_WaterJump*size_long), a2
	cmp.l  #0x0, (a2)
	beq    @NoWaterJumpSFX
	PLAYSFX (a2)
	@NoWaterJumpSFX:
	
	@Dead:
	@CantJump:
	@End:

	POPM   d0-d1
	
	rts
	
CharacterCancelJump:	
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone

	PUSHM  d0-d1
	
	; Check if player dead
	move.b Character_Dead(a0), d4
	cmp.b  #0x1, d4
	beq    @Dead
	
	; Check if jumping
	move.b Character_Jumping(a0), d4
	cmp.b  #0x0, d4
	beq    @NotJumping
	
	; Check if not gliding
	move.b Character_Gliding(a0), d4
	cmp.b  #0x0, d4
	bne    @Gliding
	
	; Check if Y vel is greater than min jump cancel vel
	move.l PhysicsObj_VelY(a0), d4
	cmp.l  Character_JumpCancelVelLo(a0), d4
	ble    @VelTooLow
	
	; Check if Y vel is lower than max jump cancel vel
	cmp.l  Character_JumpCancelVelHi(a0), d4
	bge    @VelTooHigh
	
	; Cancel jump
	move.l Character_JumpCancelVelLo(a0), PhysicsObj_VelY(a0)
	
	@Dead:
	@NotJumping:
	@Gliding:
	@VelTooLow:
	@VelTooHigh:

	POPM   d0-d1
	
	rts
	
CharacterAllowRun:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	; d2 (b) Reason bit (CharacterWalk_*)

	PUSHM  d0-d1

	; Clear walking flags
	bclr.b d2, Character_Walking(a0)

	; Set max X velocity and snap to floor flag
	cmp.b  #0x0, Character_Walking(a0)
	beq    @Running
	move.l Character_MaxVelXWalk(a0), PhysicsObj_MaxVelFloorX(a0)
	move.b #0x0, PhysicsObj_SnapToFloor(a0)
	bra    @Walking
	@Running:
	move.l Character_MaxVelXRun(a0), PhysicsObj_MaxVelFloorX(a0)
	move.b #0x1, PhysicsObj_SnapToFloor(a0)
	@Walking:
	
	@Dead:
	@CantRun:

	POPM   d0-d1
	
	rts
	
CharacterPreventRun:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	; d2 (b) Reason bit (CharacterWalk_*)

	PUSHM  d0-d1

	; Clear running flag
	bset.b d2, Character_Walking(a0)

	; Set max X velocity and snap to floor flag
	cmp.b  #0x0, Character_Walking(a0)
	beq    @Running
	move.l Character_MaxVelXWalk(a0), PhysicsObj_MaxVelFloorX(a0)
	move.b #0x0, PhysicsObj_SnapToFloor(a0)
	bra    @Walking
	@Running:
	move.l Character_MaxVelXRun(a0), PhysicsObj_MaxVelFloorX(a0)
	move.b #0x1, PhysicsObj_SnapToFloor(a0)
	@Walking:

	POPM   d0-d1
	
	rts

CharacterStartInteractA:
	move.l Character_InteractStartA(a0), a2
	cmp.l  #0x0, a2
	beq    @NoInteract
	jsr    (a2)
	@NoInteract:
	rts
	
CharacterCancelInteractA:
	move.l Character_InteractCancelA(a0), a2
	cmp.l  #0x0, a2
	beq    @NoInteract
	jsr    (a2)
	@NoInteract:
	rts

CharacterStartInteractB:
	move.l Character_InteractStartB(a0), a2
	cmp.l  #0x0, a2
	beq    @NoInteract
	jsr    (a2)
	@NoInteract:
	rts
	
CharacterCancelInteractB:
	move.l Character_InteractCancelB(a0), a2
	cmp.l  #0x0, a2
	beq    @NoInteract
	jsr    (a2)
	@NoInteract:
	rts

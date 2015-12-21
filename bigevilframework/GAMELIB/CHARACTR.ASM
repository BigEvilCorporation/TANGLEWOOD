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
CharacterAnimIdx_Idle		equ 0
CharacterAnimIdx_Run		equ 1
CharacterAnimIdx_Walk		equ 2
CharacterAnimIdx_Jump		equ 3
CharacterAnimIdx_Hang		equ 4
CharacterAnimIdx_Glide		equ 5
CharacterAnimIdx_Push		equ 6
CharacterAnimIdx_WalkToRun	equ 7
; -------------------------------
Character_NumAnims			equ 8

; ************************************
; Character struct
; ************************************

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
Character_Animations	rs.b (Animation_Struct_Size*Character_NumAnims)
Character_LastLedgeX	rs.l 1
Character_LastLedgeY	rs.l 1
Character_ProbeLedgeX	rs.w 1
Character_ProbeLedgeY	rs.w 1
Character_JumpVel		rs.w 1
Character_JumpCancelVel	rs.w 1
Character_MaxGrabUpVel	rs.w 1
Character_MaxVelXRun	rs.w 1
Character_MaxVelXWalk	rs.w 1
Character_WalkToRunVel	rs.w 1
Character_AccelRun		rs.w 1
Character_AccelWalk		rs.w 1
Character_DecelIdle		rs.w 1
Character_DecelForced	rs.w 1
Character_OnLedge		rs.b 1
Character_Running		rs.b 1
Character_Jumping		rs.b 1
Character_Pushing		rs.b 1
Character_Gliding		rs.b 1
Character_Interacting	rs.b 1
Character_UpdateAnim	rs.b 1
Character_AnimIdx	    rs.b 1
;-----------------------------
Character_Struct_Pad    rs.b 2
Character_Struct_Size   rs.b 0

;==============================================================
; Character initialisation
;==============================================================

CharacterInit:

	; Base functionality
	jsr AnimObjInit

	; Default state
	move.l #0x0, Character_LastLedgeX(a0)
	move.l #0x0, Character_LastLedgeY(a0)
	move.b #0x0, Character_OnLedge(a0)
	move.b #0x0, Character_Running(a0)
	move.b #0x0, Character_Jumping(a0)
	move.b #0x0, Character_Pushing(a0)
	move.b #0x0, Character_Interacting(a0)
	move.b #0x1, Character_UpdateAnim(a0)

	rts
	
;==============================================================
; Character update routines
;==============================================================

CharacterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr AnimObjUpdate
	
	; If on floor, no longer jumping
	move.b GameObj_OnFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @OffFloor
	move.b #0x0, Character_Jumping(a0) ; On floor, no longer jumping
	@OffFloor:
 
	jsr CharacterFindLedge
	jsr CharacterApplySpriteFlip

	cmp.b #0x0, Character_UpdateAnim(a0)
	beq   @ManualAnim
	jsr   CharacterUpdateAnimState
	@ManualAnim:
	
	rts

CharacterFindLedge:

	; Clear ledge flag
	move.b #0x0, Character_OnLedge(a0)
	
	; Check if on floor (don't bother finding ledge)
	move.b gameObj_OnFloor(a0), d3
	cmp.b  #0x0, d3
	bne    @EndLedgeTest
	
	; Check if past max Y up velocity (don't bother finding ledge)
	move.w GameObj_VelY(a0), d3
	cmp.w  Character_MaxGrabUpVel(a0), d3
	bgt    @EndLedgeTest
	
	; Default ledge direction and probe X pos
	move.b  #col_bit_ledge_rhs, d1
	clr.l   d2
	move.w  Character_ProbeLedgeX(a0), d2
	
	; Check if player X flipped
	move.b GameObj_FlippedX(a0), d0
	cmp.b  #0x0, d0
	beq    @NoProbeInv
	
	; Heading left - check for left edge, and invert probe X pos
	move.b #col_bit_ledge_lhs, d1
	clr.l  d2
	move.w Entity_Width(a0), d2
	sub.w  Character_ProbeLedgeX(a0), d2
	@NoProbeInv:
	
	; Find ledge
	move.l Entity_WorldPosX(a0), d0 ; Get player pos X
	lsr.l  #0x8, d0					; To sprite space
	sub.w  #SpritePlaneBorderX, d0	; To screen space
	add.l  d2, d0					; Ledge probe X position (in d2, may be flipped)

	; Check if X within collision map bounds
	cmp.w  #0x0, d0
	blt    @OutOfBounds
	move.w Level_MapWidth(a1), d3
	mulu   #0x8, d3
	cmp.w  d3, d0
	bge    @OutOfBounds

	swap   d0
	move.l Entity_WorldPosY(a0), d2 ; Get player pos Y
	lsr.l  #0x8, d2					; To sprite space
	clr.l  d2
	sub.w  #SpritePlaneBorderY, d2	; To screen space
	clr.l  d3
	move.w Character_ProbeLedgeY(a0), d3
	add.l  d3, d2					; Ledge probe Y position
	move.w d2, d0					; Player pos XY (screen space) to d0

	; Check if Y within collision map bounds
	cmp.w  #0x0, d0
	blt    @OutOfBounds
	move.w Level_MapHeight(a1), d3
	mulu   #0x8, d3
	cmp.w  d3, d0
	bge    @OutOfBounds
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	clr.l  d2
	move.w Level_MapWidth(a1), d2		; Map width to d2
	move.l Level_ColMapAddr(a1), a0		; Collision map to a0
	move.l Level_ColTilesAddr(a1), a1	; Collision tileset to a1
	jsr    FindLedge
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	cmp.l  #0xFFFFFFFF, d0			; XY return value in d0 (-1 if no ledge found)
	beq    @EndLedgeTest
	
	@FoundLedge:
	
	clr.l  d1
	move.w d0, d1
	sub.w  #SpritePlaneBorderY, d1	; Y coord back to sprite space
	sub.w  Character_ProbeLedgeY(a0), d1  ; Y coord back to scroll space
	lsl.l  #0x8, d1					; Y coord back to world space
	move.l d1, Character_LastLedgeY(a0)
	
	; Invert probe X if heading left (TODO: flag is one frame out of date)
	clr.l  d1
	move.w Character_ProbeLedgeX(a0), d1
	move.b GameObj_FlippedX(a0), d0
	cmp.b  #0x0, d0
	beq    @NoProbeInv2
	clr.l  d1
	move.w Entity_Width(a0), d1
	sub.w  Character_ProbeLedgeX(a0), d1
	@NoProbeInv2:
	
	clr.w  d0
	swap   d0
	sub.w  #SpritePlaneBorderY, d0	; X coord back to sprite space
	sub.l  d1, d0  					; X coord back to scroll space
	lsl.l  #0x8, d0					; X coord back to world space
	move.l d0, Character_LastLedgeX(a0)
	
	; Set ledge flag
	move.b #0x1, Character_OnLedge(a0)
	
	@EndLedgeTest:
	@OutOfBounds:
	
	; =====================================================================
	
	; Correct player pos if on ledge
	move.b Character_OnLedge(a0), d0
	cmp.b  #0x0, d0
	beq	   @EndLedgeCorrection
	
	; On ledge, fix player position
	move.l Character_LastLedgeX(a0), Entity_WorldPosX(a0)
	move.l Character_LastLedgeY(a0), Entity_WorldPosY(a0)
	
	; Clear velocity
	move.w #0x0, GameObj_VelX(a0)
	move.w #0x0, GameObj_VelY(a0)
	
	@EndLedgeCorrection:
	
	rts
	
CharacterApplySpriteFlip:

	; Sprite X flip direction
	move.w GameObj_VelX(a0), d0
	cmp.w  #0x0, d0
	beq    @NoFlip
	blt    @FlipLeft
	@FlipRight:
	move.b #0x0, GameObj_FlippedX(a0)
	jmp    @NoFlip
	@FlipLeft:
	move.b #0x1, GameObj_FlippedX(a0)
	@NoFlip:
	
	rts
	
CharacterUpdateAnimState:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b AnimObj_Looping(a0), d0
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
	; Jumping
	; =====================================================================
	move.b #CharacterAnimIdx_Jump, d1
	move.b Character_Jumping(a0), d0	; If player is jumping, set jump anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Pushing
	; =====================================================================
	move.b #CharacterAnimIdx_Push, d1
	move.b Character_Pushing(a0), d0	; If player is pushing, set push anim
	cmp.b  #0x1, d0
	beq    @SetAnim
	
	; =====================================================================
	; Idle
	; =====================================================================
	move.b #CharacterAnimIdx_Idle, d1
	move.w GameObj_VelX(a0), d0			; If X velocity == 0, set idle anim
	cmp.w  #0x0, d0
	beq    @SetAnim

	; =====================================================================
	; Running/Walking
	; =====================================================================
	move.w GameObj_VelX(a0), d0			; If X velocity > WalkToRun speed, set run anim
	cmp.w  Character_WalkToRunVel(a0), d0
	bgt    @Running
	neg.w  d0
	cmp.w  Character_WalkToRunVel(a0), d0
	bgt    @Running
	bra    @Walking
	
	; Running
	@Running:
	
	; If transitioning from walking/jumping anim, set transition anim first
	move.b #CharacterAnimIdx_WalkToRun, d1
	cmp.b  #CharacterAnimIdx_Walk, Character_AnimIdx(a0)
	beq    @SetAnim
	cmp.b  #CharacterAnimIdx_Jump, Character_AnimIdx(a0)
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
	
	; Check if player on ledge
	move.b Character_OnLedge(a0), d4
	cmp.b  #0x1, d4
	beq    @End
	
	; Check if heading in opposite direction
	move.w GameObj_VelX(a0), d4
	cmp.w  #0x0, d4
	bgt    @Decelerate
	
	; Check if running or walking
	move.b Character_Running(a0), d4
	cmp.b  #0x0, d4
	beq    @Else
	clr.w  d5
	sub.w  Character_AccelRun(a0), d5
	move.w d5, GameObj_AccelX(a0)
	bra    @End
	@Else:
	clr.w  d5
	sub.w  Character_AccelWalk(a0), d5
	move.w d5, GameObj_AccelX(a0)
	bra    @End
	
	@Decelerate:
	; Heading in opposite direction, fast deceleration
	clr.w  d5
	sub.w  Character_DecelForced(a0), d5
	move.w d5, GameObj_AccelX(a0)
	
	@End:
	
	rts
	
CharacterMoveRight:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if player on ledge
	move.b Character_OnLedge(a0), d4
	cmp.b  #0x1, d4
	beq    @End
	
	; Check if heading in opposite direction
	move.w GameObj_VelX(a0), d4
	cmp.w  #0x0, d4
	blt    @Decelerate
	
	; Check if running or walking
	move.b Character_Running(a0), d4
	cmp.b  #0x0, d4
	beq    @Else
	move.w Character_AccelRun(a0), GameObj_AccelX(a0)
	bra    @End
	@Else:
	move.w Character_AccelWalk(a0), GameObj_AccelX(a0)
	bra    @End
	
	@Decelerate:
	; Heading in opposite direction, fast deceleration
	move.w Character_DecelForced(a0), GameObj_AccelX(a0)
	
	@End:
	
	rts

CharacterCancelXMovement:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.w #0x0, GameObj_AccelX(a0)
	
	rts
	
CharacterStartJump:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if player is interacting
	move.b Character_Interacting(a0), d4
	cmp.b  #0x1, d4
	beq    @CantJump
	
	; Check if player on ledge
	move.b Character_OnLedge(a0), d4
	cmp.b  #0x1, d4
	beq    @CanJump
	
	; Check if player close enough to floor to jump
	move.b GameObj_CloseToFloor(a0), d4
	cmp.b  #0x0, d4
	beq    @CantJump

	@CanJump:
	
	; Jump
	move.w Character_JumpVel(a0), GameObj_VelY(a0)
	move.b #0x1, Character_Jumping(a0)
	
	@CantJump:
	
	rts
	
CharacterCancelJump:	
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if jumping
	move.b Character_Jumping(a0), d4
	cmp.b  #0x0, d4
	beq    @NotJumping
	
	; Check if Y vel is greater than min jump cancel vel
	move.w GameObj_VelY(a0), d4
	cmp.w  Character_JumpCancelVel(a0), d4
	ble    @VelTooLow
	
	; Cancel jump
	move.w Character_JumpCancelVel(a0), GameObj_VelY(a0)
	
	@NotJumping:
	@VelTooLow:
	
	rts
	
CharacterStartRun:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Check if player is interacting
	move.b Character_Interacting(a0), d4
	cmp.b  #0x1, d4
	beq    @CantRun

	; Set max running velocity
	move.w Character_MaxVelXRun(a0), GameObj_MaxVelX(a0)
	
	; Set running flag
	move.b #0x1, Character_Running(a0)
	
	@CantRun:
	
	rts
	
CharacterCancelRun:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone

	; Set max walking velocity
	move.w Character_MaxVelXWalk(a0), GameObj_MaxVelX(a0)
	
	; Clear running flag
	move.b #0x0, Character_Running(a0)
	
	rts
	
CharacterStartInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.b #0x1, Character_Interacting(a0)
	
	rts
	
CharacterCancelInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.b #0x0, Character_Interacting(a0)
	
	rts

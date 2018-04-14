;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

ECHO_AI_DEBUG_SAFE_POS 		equ 0
ECHO_AI_DEBUG_NODE_POS		equ 0
ECHO_AI_DEBUG_STATE			equ 0

; Constants
Echo_NumAINodes				equ 0x20			; Num AI follow nodes to store in queue (must be power of two)
Echo_AIOuterScreenBoundsExt	equ 0x0060			; Extension to screen bounds to determine if 'lost'
Echo_AIInnerScreenBoundsExt	equ 0x0030			; Extension to screen bounds to determine if 'found'
Echo_LostTime				equ 0x0300			; Time off screen until considered lost
Echo_NodeLostTime			equ 0x0300			; Time off screen until considered lost if following nodes
Echo_SkivvLostTime			equ 0x0400			; Time off screen until considered lost if a Skivv is prowling
Echo_CatchUpTime			equ 0x0300			; Time off screen in catchup mode until considered lost again
Echo_NodeFailTime			equ 0x0100			; Timeout to reach next node before returning to basic follow state
Echo_AINoNodeVelocity		equ 0x80000000		; Don't copy Nymn's X velocity when running node action
Echo_AICameraLerpTime		equ 0x0020			; Camera lerp time when interesting nodes reached
Echo_AIMarkerSearchHeight	equ 0x0040			; Search height for checking AI markers
Echo_AIWaterSafePosOffsetX	equ 0x0010			; Out of water distance to run to
Echo_AITerrainSearchYOffset	equ 0x0018			; Y offset for terrain searches
Echo_AITerrainSearchDist	equ 0x0030			; Max distance for terrain searches
Echo_AIWaterSearchOffsetX	equ 0x0008			; Offset to check for water
Echo_AIWaterSearchOffsetY	equ 0x0010			; Offset to check for water
Echo_AIMaxJumpHeight		equ Player1Height*2	; Max height to consider jumping distance (will find ladder otherwise)

; AI distances to add action nodes
Echo_AIFollowDistance		equ 0x0040			; Max X distance from Nymn when following
Echo_AIJumpDistance			equ 0x0020			; Y distance (upward) from Nymn to add a jump node
Echo_AIFindHoleDistance		equ 0x0030			; Y distance (downward) from Nymn to add a drop down node
Echo_AIDistFuzzlX			equ screen_width	; X distance from Fuzzl to add a push obj node
Echo_AIDistFuzzlY			equ Player1Height	; Y distance from Fuzzl to add a push obj node
Echo_AIDistLogX				equ screen_width	; X distance from log to add a goto node
Echo_AIDistLogY				equ Player1Height*2	; Y distance from log to add a goto node
Echo_AIDistLogXNymn			equ Player1Width*2	; X min distance from log to Nymn add a goto node
Echo_AIDistButtonX			equ screen_width	; X distance from button to add a goto node
Echo_AIDistButtonY			equ Player1Height	; Y distance from button to add a goto node
Echo_AIDistRaftX			equ screen_width/2	; X distance from raft to add a raft ride node
Echo_AIDistRaftY			equ Player1Height	; Y distance from raft to add a raft ride node
Echo_AIDistLadderX			equ screen_width/2	; X distance from ladder to add a ladder climb node
Echo_AIDistLadderY			equ 0x0010			; Y distance from top or bottom of ladder to add a ladder climb node
Echo_AIDistCartX			equ screen_width/4	; X distance from cart to add a cart ride node
Echo_AIDistCartY			equ Cart_Height+Player1Height	; Y distance from cart to add a cart ride node

; AI distance tolerances for reaching nodes
Echo_AINodeToleranceDefaultX	equ 0x0010
Echo_AINodeToleranceDefaultY	equ 0x0040
Echo_AINodeToleranceGotoX		equ 0x0010
Echo_AINodeToleranceGotoY		equ 0x0040
Echo_AINodeToleranceJumpX		equ 0x0010
Echo_AINodeToleranceJumpY		equ screen_height*2
Echo_AINodeToleranceLandX		equ 0x0020
Echo_AINodeToleranceLandY		equ 0x0060
Echo_AINodeToleranceFallX		equ 0x0020
Echo_AINodeToleranceFallY		equ 0x0100
Echo_AINodeToleranceGlideX		equ 0x0010
Echo_AINodeToleranceGlideY		equ 0x0040
Echo_AINodeToleranceGlideStopX	equ 0x0020
Echo_AINodeToleranceGlideStopY	equ 0x0060
Echo_AINodeTolerancePushObjX	equ 0x0010
Echo_AINodeTolerancePushObjY	equ Player1Height+0x0010
Echo_AINodeTolerancePushFuzzlX	equ 0x0008
Echo_AINodeTolerancePushFuzzlY	equ Player1Height+0x0010
Echo_AINodeToleranceRaftX		equ 0x0008
Echo_AINodeToleranceRaftY		equ Player1Height+0x0008
Echo_AINodeToleranceButtonX		equ 0x0008
Echo_AINodeToleranceButtonY		equ Player1Height+0x0008
Echo_AINodeToleranceLadderEnterX equ 0x0004
Echo_AINodeToleranceLadderEnterY equ screen_height
Echo_AINodeToleranceLadderExitX	equ 0x0004
Echo_AINodeToleranceLadderExitY	equ 0x0010
Echo_AINodeToleranceLadderMoveX	equ 0x0004
Echo_AINodeToleranceLadderMoveY	equ 0x0008
Echo_AINodeToleranceCartX		equ 0x0008
Echo_AINodeToleranceCartY		equ Cart_Height+Player1Height

; AI state
EchoAIState_None			equ 0	; No AI, under player/cutscene control
EchoAIState_Wait			equ 1	; No AI, no control, but still process lost timer
EchoAIState_Follow			equ 2	; Following Nymn directly
EchoAIState_FollowNodes		equ 3	; Following Nymn using nodes
EchoAIState_Lost			equ 4	; Waiting for safe place to transport to
EchoAIState_CatchUp			equ 5	; Running directly back to Nymn
EchoAIState_PushObj			equ 6	; Pushing an object towards Nymn
EchoAIState_Button			equ 7	; Holding a button until deactivated
EchoAIState_Water			equ 8	; Echo doesn't like water :(
EchoAIState_Raft			equ 9	; Standing on moving raft, waiting for it to stop
EchoAIState_Cart			equ 10	; Riding a cart
EchoAIState_Barrier			equ 11	; Waiting at an AI marker (barrier type)
EchoAIState_Skivv			equ 12	; Being taken by a Skivv
EchoAIState_Carried			equ 13	; Being carried by Nymn
EchoAIState_EnterLadder		equ 14	; Entering ladder
EchoAIState_ExitLadder		equ 15	; Exiting ladder
EchoAIState_EmergencyLadder	equ 16	; Climbing a ladder (in emergency - underwater)

; AI node actions
EchoAINode_Action_GoTo			equ 0x0
EchoAINode_Action_Jump			equ 0x1
EchoAINode_Action_Fall			equ 0x2
EchoAINode_Action_Land			equ 0x3
EchoAINode_Action_StartGlide	equ 0x4
EchoAINode_Action_StopGlide		equ 0x5
EchoAINode_Action_StartPush		equ 0x6
EchoAINode_Action_Button		equ 0x7
EchoAINode_Action_Raft			equ 0x8
EchoAINode_Action_EnterLadder	equ 0x9
EchoAINode_Action_ExitLadder	equ 0x10
EchoAINode_Action_MoveLadder	equ 0x11
EchoAINode_Action_EmergencyLadder equ 0x12
EchoAINode_Action_Cart			equ 0x13

; AI node userdata
EchoAIPush_Left					equ 0x0
EchoAIPush_Right				equ 0x1

; AI "breadcrumb" follow node
	rsset 0
;---------------------------------
EchoAINode_UserData			rs.l 1	; Node specific user data
EchoAINode_Object			rs.l 1	; Object of interest
EchoAINode_VelX				rs.l 1	; Forced X velocity set when target reached
EchoAINode_PosX				rs.w 1	; Target pos X
EchoAINode_PosY				rs.w 1	; Target pos Y
EchoAINode_PosXOffset		rs.w 1	; Target object X pos offset (if not using x/y pos)
EchoAINode_ToleranceX		rs.w 1	; Target distance tolerance X
EchoAINode_ToleranceY		rs.w 1	; Target distance tolerance Y
EchoAINode_Action			rs.b 1	; Action to run when target reached
EchoAINode_StopMovement		rs.b 1	; Stop X movement when target reached
EchoAINode_RequireOnFloor	rs.b 1	; Require character to be on floor to reach target
EchoAINode_LerpCamera		rs.b 1	; Lerp camera to character when node reached
EchoAINode_Walk				rs.b 1	; Walk, don't run, towards node
EchoAINode_WaitAtWater		rs.b 1	; Check for water, wait for terrain before enter
EchoAINode_RunActionIfClimbing rs.b 1	; Run the action even if climbing
;---------------------------------
	RS_ALIGN
EchoAINode_Struct_Size		rs.b 0

EchoAINodeInit:
	; a0 --- Node

	move.l #0x0, EchoAINode_UserData(a0)
	move.l #0x0, EchoAINode_Object(a0)
	move.w #0x0, EchoAINode_PosX(a0)
	move.w #0x0, EchoAINode_PosY(a0)
	move.w #0x0, EchoAINode_PosXOffset(a0)
	move.l #Echo_AINoNodeVelocity, EchoAINode_VelX(a0)
	move.w #Echo_AINodeToleranceDefaultX, EchoAINode_ToleranceX(a0)
	move.w #Echo_AINodeToleranceDefaultY, EchoAINode_ToleranceY(a0)
	move.b #0x0, EchoAINode_Action(a0)
	move.b #0x0, EchoAINode_StopMovement(a0)
	move.b #0x0, EchoAINode_RequireOnFloor(a0)
	move.b #0x0, EchoAINode_LerpCamera(a0)
	move.b #0x0, EchoAINode_Walk(a0)
	move.b #0x0, EchoAINode_WaitAtWater(a0)
	move.b #0x1, EchoAINode_RunActionIfClimbing(a0)

	rts

	
EchoUpdateAI:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	cmp.b  #EchoAIState_None, Echo_AIState(a0)
	beq    @End

	; If dead and off screen, revive and force lost state
	tst.b  Character_Dead(a0)
	beq    @NotDead
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @OnScreen
	move.b #0x0, Character_Dead(a0)
	jsr    EchoAIStart_Lost
	@NotDead:
	@OnScreen:

	; Record last floor pos (or ladder pos if climbing)
	tst.b  PhysicsObj_OnFloor(a0)		; If on floor
	beq    @CheckLadder
	move.w PhysicsObj_LastFloor(a0), Echo_AILastFloorPosY(a0)	; Get last floor pos
	bra    @UseFloorPos
	@CheckLadder:
	tst.b  Character_Climbing(a0)		; If climbing
	beq    @UseFloorPos
	ENTITY_GETBOTTOM d0, a0				; Get pos at feet
	TOPIXELS d0
	move.w d0, Echo_AILastFloorPosY(a0)
	@UseFloorPos:

	; Record last dry land pos
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @InAir
	tst.b  PhysicsObj_Underwater(a0)
	bne    @InWater
	move.w Entity_WorldPosX(a0), Echo_AILastDryLandY(a0)
	@InWater:
	@InAir:
	
	move.b Echo_AIState(a0), d0
	
	cmp.b  #EchoAIState_None, d0
	beq    @End
	cmp.b  #EchoAIState_Follow, d0
	beq    @Follow
	cmp.b  #EchoAIState_Wait, d0
	beq    @Wait
	cmp.b  #EchoAIState_FollowNodes, d0
	beq    @FollowNodes
	cmp.b  #EchoAIState_Lost, d0
	beq    @Lost
	cmp.b  #EchoAIState_CatchUp, d0
	beq    @CatchUp
	cmp.b  #EchoAIState_PushObj, d0
	beq    @PushObj
	cmp.b  #EchoAIState_Button, d0
	beq    @Button
	cmp.b  #EchoAIState_Water, d0
	beq    @Water
	cmp.b  #EchoAIState_Raft, d0
	beq    @Raft
	cmp.b  #EchoAIState_EmergencyLadder, d0
	beq    @EmergencyLadder
	cmp.b  #EchoAIState_EnterLadder, d0
	beq    @EnterLadder
	cmp.b  #EchoAIState_ExitLadder, d0
	beq    @ExitLadder
	cmp.b  #EchoAIState_Cart, d0
	beq    @Cart
	cmp.b  #EchoAIState_Barrier, d0
	beq    @Barrier
	cmp.b  #EchoAIState_Skivv, d0
	beq    @Skivv
	cmp.b  #EchoAIState_Carried, d0
	beq    @Carried
	bra    @End
	
	@Wait:
	jsr    EchoAIUpdate_Wait
	bra    @End

	@Follow:
	jsr    EchoAIUpdate_Follow
	bra    @End

	@FollowNodes:
	jsr    EchoAIUpdate_FollowNodes
	bra    @End

	@Lost:
	jsr    EchoAIUpdate_Lost
	bra    @End
	
	@CatchUp:
	jsr    EchoAIUpdate_CatchUp
	bra    @End

	@PushObj:
	jsr    EchoAIUpdate_PushObj
	bra    @End

	@Button:
	jsr    EchoAIUpdate_ButtonHold
	bra    @End

	@Water:
	jsr    EchoAIUpdate_Water
	bra    @End

	@Raft:
	jsr    EchoAIUpdate_Raft
	bra    @End

	@EmergencyLadder:
	jsr    EchoAIUpdate_EmergencyLadder
	bra    @End

	@EnterLadder:
	jsr    EchoAIUpdate_EnterLadder
	bra    @End

	@ExitLadder:
	jsr    EchoAIUpdate_ExitLadder
	bra    @End

	@Cart:
	jsr    EchoAIUpdate_Cart
	bra    @End

	@Barrier:
	jsr    EchoAIUpdate_WaitBarrier
	bra    @End

	@Skivv:
	jsr    EchoAIUpdate_Skivv
	bra    @End

	@Carried:
	jsr    EchoAIUpdate_Carried
	bra    @End
	
	@End:

	rts

EchoAIStop:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #EchoAIState_None, Echo_AIState(a0)

	; Cancel movement
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)

	; Can use rolling platforms again
	move.b #0x1, Character_CanUseRollPlatform(a0)

	rts

EchoAIStart_Wait:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Reset lost timer
	
	; Set wait state
	move.b #EchoAIState_Wait, Echo_AIState(a0)
	
	; Clear node queue
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Reset lost timer
	tst.b  d0
	beq    @NoResetTimer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	bra    @EndSkivv
	@NoSkivv:
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	@EndSkivv:
	@NoResetTimer:

	rts

EchoAIUpdate_Wait:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If off screen, count down lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	jsr    EchoAIStart_Skivv
	bra    @Lost
	@NoSkivv:

	@OnScreen:

	; On screen, reset lost timer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivvTime
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	@NoSkivvTime:

	@LostTimerRunning:
	@Lost:

	rts

EchoAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Reset lost timer
	
	; Set follow state
	move.b #EchoAIState_Follow, Echo_AIState(a0)
	
	; Clear node queue
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Reset lost timer
	tst.b  d0
	beq    @NoResetTimer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	bra    @EndSkivv
	@NoSkivv:
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	@EndSkivv:
	@NoResetTimer:

	; Reset run state
	move.b #Character_WalkAI, d2
	jsr    CharacterAllowRun

	; Can't use rolling platforms
	move.b #0x0, Character_CanUseRollPlatform(a0)
	
	rts
	
EchoAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get Nymn
	move.l (Player1), a2
	
	; If Echo touching Nymn, clear all follow nodes and do nothing
	;PHYSICS_GETBOUNDS d1,d2,d5,a0
	;PHYSICS_GETBOUNDS d3,d4,d5,a2
	;jsr    PHYS_TestBoxIntersectBox
	;tst.b  d0
	;bne    @CancelFollow

	; If only doing linear follow, don't use lost timer and don't collect nodes
	tst.b  Echo_AILinearFollowOnly(a0)
	bne    @LinearFollow

	; If off screen, count down lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	jsr    EchoAIStart_Skivv
	bra    @Lost
	@NoSkivv:
	jsr    EchoAIStart_Lost
	bra    @Lost
	
	@OnScreen:

	; On screen, reset lost timer
	; Reset lost timer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivvTime
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	bra    @EndSkivv
	@NoSkivvTime:
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	@EndSkivv:

	@LostTimerRunning:

	; Watch Nymn's actions, create AI follow nodes
	move.l (Player1), a2
	jsr    EchoAI_WatchNymnMovement
	
	; Watch Nymn's potential safe positions
	jsr    EchoAI_WatchNymnSafePos

	; Check for water
	jsr     EchoAILookAheadWater
	tst.b   d0
	bne     @WaterAhead

	@LinearFollow:

	; Follow distance tolerance
	move.w #Echo_AIFollowDistance, d3

	; Check if within X tolerance
	ENTITY_GETCENTREXW d0,a0
	ENTITY_GETCENTREXW d1,a2
	
	; Check left bounds
	move.w d1, d2
	sub.w  d3, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  d3, d2
	cmp.w  d0, d2
	blt    @TooFarRight
	
	; Within bounds
	bra    @WithinBounds
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @End
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	bra    @End
	
	@WithinBounds:

	;==============================================================
	
	@HittingWall:
	@CancelFollow:
	@Lost:

	; Cancel X movement
	jsr    CharacterCancelXMovement
	
	@WaterAhead:
	@End:

	; If on ladder in linear follow state, always head down
	tst.b  Echo_AILinearFollowOnly(a0)
	beq    @EndLadder
	tst.b  Character_Climbing(a0)
	beq    @EndLadder
	jsr    CharacterMoveDown
	@EndLadder:

	; Search for interesting objects
	jsr    EchoAI_FindInterestingObj
	
	rts

EchoAIStart_LinearFollow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start follow state
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	
	; Set linear follow flag
	move.b #0x1, Echo_AILinearFollowOnly(a0)
	
	rts

EchoAIStart_FollowNodes:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set follow nodes state
	move.b #EchoAIState_FollowNodes, Echo_AIState(a0)

	; Reset fail timer
	move.w #Echo_NodeFailTime, Echo_AINodeFailTimer(a0)

	; Reset run state
	move.b #Character_WalkAI, d2
	jsr    CharacterAllowRun
	
	rts
	
EchoAIUpdate_FollowNodes:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; This state follows the AI nodes (breadcrumbs) and executes
	; a node's action upon reaching it. Echo can always move left or
	; right towards a node, and if in climbing state can move up and
	; down towards a node.

	; Get Nymn
	move.l Player1, a2

	;==============================================================
	; Watch Nymn's movement, build "breadcrumb" nodes list
	;==============================================================

	; If not in water
	tst.b  PhysicsObj_Underwater(a0)
	bne    @InWater

	; Watch Nymn's actions, create AI follow nodes
	jsr    EchoAI_WatchNymnMovement

	@InWater:

	;==============================================================
	; Bail out if lost
	;==============================================================

	; Watch Nymn's potential safe positions (to return to if lost)
	jsr    EchoAI_WatchNymnSafePos

	; If off screen, countdown lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	
	; Timer elapsed, check if a Skivv is around
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv

	; Use it to kill Echo
	jsr    EchoAIStart_Skivv
	bra    @Lost

	; No Skivv, enter lost/recovery state
	@NoSkivv:
	jsr    EchoAIStart_Lost
	bra    @Lost

	@OnScreen:
	@LostTimerRunning:

	; Countdown node follow failure timer
	move.w Echo_AINodeFailTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AINodeFailTimer(a0)
	bne    @NodeFailTimerRunning

	; Timer elapsed - abandon breadcrumb nodes and return to basic
	; follow state (without resetting lost timer)
	move.b #0x0, d0
	jsr    EchoAIStart_Follow
	bra    @NodeFailed

	@NodeFailTimerRunning:

	;==============================================================
	; Process next AI "breadcrumb" node
	;==============================================================

	IFND FINAL
	; Sanity check node count
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @CountOk
	RAISE_EXCEPTION *
	@CountOk:
	ENDIF

	; Peek node queue
	jsr    EchoAIPeekNodeFront

	; Get node action type
	move.b EchoAINode_Action(a3), d7

	;==============================================================
	; Get node target position
	;==============================================================

	; Get node position
	move.w EchoAINode_PosY(a3), d2
	move.w EchoAINode_PosX(a3), d1
	bne    @UseNodePosition

	; No position, must have target object instead
	move.l EchoAINode_Object(a3), a4
	IFND FINAL
	cmpa   #0x0, a4
	bne    @ObjCheckOk
	RAISE_EXCEPTION *
	@ObjCheckOk:
	ENDIF

	; Use object centre as target pos
	ENTITY_GETCENTREXW d1,a4
	ENTITY_GETCENTREYW d2,a4
	add.w  EchoAINode_PosXOffset(a3), d1
	@UseNodePosition:

	; Get distance tolerance
	move.w EchoAINode_ToleranceX(a3), d3
	move.w EchoAINode_ToleranceY(a3), d4

	;==============================================================
	; Bail out if water detected ahead
	;==============================================================

	; Check for water
	jsr     EchoAILookAheadWater
	tst.b   d0
	bne     @WaterAhead

	;==============================================================
	; Move left/right towards next node
	;==============================================================

	; Within X tolerance by default
	move.b #0x1, d7

	; Get X pos
	ENTITY_GETCENTREXW d0,a0
	
	; Check left tolerance bounds
	move.w d1, d5
	sub.w  d3, d5
	cmp.w  d0, d5
	bgt    @TooFarleft
	
	; Check right tolerance bounds
	move.w d1, d5
	add.w  d3, d5
	cmp.w  d0, d5
	blt    @TooFarRight
	
	; Within X bounds
	bra    @WithinXTolerance
	
	@TooFarleft:

	; Too far left, move right
	jsr    CharacterMoveRight

	; If hit wall to right, jump
	move.b PhysicsObj_HitWall(a0), d6
	andi.b #PhysicsObjHitWallRight, d6
	beq    @NoJumpRight
	PUSHW  d2
	move.b #0x0, d2
	jsr    CharacterStartJump
	POPW   d2
	@NoJumpRight:

	; Outside X tolerance
	move.b #0x0, d7
	bra    @MovingX
	
	@TooFarRight:

	; Too far right, move left
	jsr    CharacterMoveLeft

	; If hit wall to left, jump
	move.b PhysicsObj_HitWall(a0), d6
	andi.b #PhysicsObjHitWallLeft, d6
	beq    @NoJumpLeft
	PUSHW  d2
	move.b #0x0, d2
	jsr    CharacterStartJump
	POPW   d2
	@NoJumpLeft:

	; Outside X tolerance
	move.b #0x0, d7
	bra    @MovingX

	; Within X tolerance, stop moving
	jsr    CharacterCancelXMovement
	
	@WithinXTolerance:
	@MovingX:

	;==============================================================
	; Move up/down toward next node
	;==============================================================

	; Only if climbing
	tst.b  Character_Climbing(a0)
	beq    @CantMoveUpDown

	; Get Y pos
	ENTITY_GETCENTREYW d0,a0

	; Determine direction
	cmp.w  d0, d2
	bgt    @MoveDown

	; Climb up
	jsr    CharacterMoveUp
	bra    @EndMoveUpDown

	@MoveDown:

	; Climb down
	jsr    CharacterMoveDown
	bra    @EndMoveUpDown

	@CantMoveUpDown:
	@EndMoveUpDown:

	;==============================================================
	; Check if within X tolerance of next node
	;==============================================================
	tst.b  d7
	beq    @OutsideXTolerance

	;==============================================================
	; Check if within Y tolerance of next node
	;==============================================================

	; Check if required to be on floor (or climbing) to execute node
	tst.b  Character_Climbing(a0)			; If climbing, don't care
	bne    @NotRequiredOnFloor
	tst.b  EchoAINode_RequireOnFloor(a3)	; If not required on floor, don't care
	beq    @NotRequiredOnFloor
	tst.b  PhysicsObj_CloseToFloor(a0)		; If on floor, go for it
	beq    @End
	@NotRequiredOnFloor:

	; If Y target reached
	ENTITY_GETCENTREYW d0,a0
	sub.w  d0, d2
	cmp.w  d4, d2
	bgt    @OutsideYTolerance
	neg.w  d2
	cmp.w  d4, d2
	bgt    @OutsideYTolerance

	; Within Y tolerance, stop moving
	jsr    CharacterCancelYMovement

	;==============================================================
	; Reached node, pop and execute
	;==============================================================

	; Pop AI node from queue and run action
	jsr    EchoAIPopNode

	; Reset node follow failure timer
	MOVE_NTSC_W Echo_NodeFailTime, Echo_AINodeFailTimer(a0), d0

	; If no more nodes in queue, and last pop didn't change state, return to basic follow state
	cmp.b  #EchoAIState_FollowNodes, Echo_AIState(a0)
	bne    @End
	moveq  #0x0, d0
	moveq  #0x0, d1
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @CheckGoToNodes
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	bra    @End

	;==============================================================
	; If only GoTo nodes left in list, Echo can find his way from here
	;==============================================================

	@CheckGoToNodes:

	; Search queue for non-GoTo nodes
	sub.w  d1, d0
	subq.w #0x1, d0
	lea    Echo_AIFollowNodes(a0), a3	; Get node queue head
	andi.w #Echo_NumAINodes-1, d1		; MOD to get consumer position
	mulu   #EchoAINode_Struct_Size, d1	; Index to first node
	add.l  d1, a3						; Add offset

	@GotoCheckLp:
	cmp.b  #EchoAINode_Action_GoTo, EchoAINode_Action(a3)
	bne    @OtherNodesInQueue
	lea    EchoAINode_Struct_Size(a3), a3	; Next node
	dbra   d0, @GotoCheckLp

	; Clear remaining nodes and return to basic follow state
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)
	jsr    CharacterCancelXMovement
	jsr    EchoAIStart_Follow
	bra    @End

	@OtherNodesInQueue:
	
	@OutsideXTolerance:
	@OutsideYTolerance:
	@WaterAhead:
	
	; Find interesting nearby objects (applicable to node follow state)
	jsr    EchoAI_FindInterestingObj_InNodeState
	
	@Lost:
	@NodeFailed:
	@End:
	
	rts

EchoAILookAheadWater:

	; If water ahead, stop and wait
	move.w #0x0, d0
	tst.b  Echo_AIWaitAtWater(a0)
	beq    @NoWater
	PUSHM  d1-d4/a0-a3
	ENTITY_GETBOTTOM d1,a0
	TOPIXELS d1
	addi.w #Echo_AIWaterSearchOffsetY, d1
	tst.b  SpriteObj_FlippedX(a0)
	bne    @Left
	ENTITY_GETRIGHT d0,a0
	TOPIXELS d0
	addi.w #Echo_AIWaterSearchOffsetX, d0
	bra    @Right
	@Left:
	move.w Entity_WorldPosX(a0), d0
	subi.w #Echo_AIWaterSearchOffsetX, d0
	@Right:
	jsr    PhysicsPointUnderwater
	move.w d4, d0
	POPM   d1-d4/a0-a3

	tst.w  d0
	beq    @NoWater
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)
	@NoWater:

	rts

EchoAIStart_Lost:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set lost state
	move.b #EchoAIState_Lost, Echo_AIState(a0)

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir

	@InAir:
	
	rts
	
EchoAIUpdate_Lost:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Watch Nymn for potential safe positions
	move.l (Player1), a2
	jsr    EchoAI_WatchNymnSafePos
	
	; If safe pos exists, transport there and enter catch up state
	move.w Echo_AISafePosY(a0), d1
	move.w Echo_AISafePosX(a0), d0
	beq    @NoSafePos
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	jsr    EchoAIStart_CatchUp
	bra    @End
	@NoSafePos:

	; If original pos back in view, enter catch up state
	jsr    EchoAI_CheckLostPosScreenBounds
	tst.b  d0
	beq    @LostPosOutOfView
	jsr    EchoAIStart_CatchUp
	bra    @End
	@LostPosOutOfView:
	
	@End:

	rts
	
EchoAIStart_CatchUp:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set catch up state
	move.b #EchoAIState_CatchUp, Echo_AIState(a0)
	
	; Reset catchup timer
	MOVE_NTSC_W Echo_CatchUpTime, Echo_AILostTimer(a0), d0
	
	rts
	
EchoAIUpdate_CatchUp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If on screen, back to follow state
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	beq    @OffScreen
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	@OffScreen:
	
	; Decrement lost timer, if elapsed then head back to lost state and try again
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	jsr    EchoAIStart_Lost
	bra    @Lost

	@LostTimerRunning:

	; Watch Nymn's potential safe positions
	move.l (Player1), a2
	jsr    EchoAI_WatchNymnSafePos
	
	; Default tolerance
	move.w #Echo_AIFollowDistance, d3
	
	; Check if within X tolerance
	move.l (Player1), a2
	ENTITY_GETCENTREXW d0,a0
	ENTITY_GETCENTREXW d1,a2
	
	; Check left bounds
	move.w d1, d2
	sub.w  d3, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  d3, d2
	cmp.w  d0, d2
	blt    @TooFarRight
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @End
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	
	@End:
	@Lost:
	
	rts

EchoAIStart_PushObj:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Object to push
	; a3 --- Destination marker
	
	; Set push state
	move.b #EchoAIState_PushObj, Echo_AIState(a0)

	; Set object
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Set destination marker
	move.l a3, Echo_AIPushObjMarker(a0)

	; Clear nodes
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)
	
	rts
	
EchoAIUpdate_PushObj:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get pushing object and destination
	move.l Echo_AIPushObjMarker(a0), a2
	cmpa   #0x0, a2
	bne    @HasMarker
	move.l Player1, a2		; No push marker, push towards Nymn
	@HasMarker:

	move.l Echo_AIObjectOfInterest(a0), a3

	; If off floor, abandon
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @OutOfBounds

	bra    @WithinBounds

	IF 0

	; Check obj between destination and Echo
	ENTITY_GETCENTREXW d0, a0		; Echo centre
	ENTITY_GETCENTREXW d1, a2		; Dest centre
	cmp.w  d0, d1
	bgt    @NymnToRight

	; Echo to right of Dest, check obj centre < Echo centre
	ENTITY_GETCENTREXW d2, a3		; Obj centre
	cmp.w  d0, d2
	bgt    @OutOfBounds

	; Check object right > Dest left
	move.w Entity_Width(a2), d3
	lsr.w  #0x1, d3
	sub.w  d3, d1					; Dest left
	move.w Entity_Width(a3), d3
	lsr.w  #0x1, d3
	add.w  d3, d2					; Object right
	cmp.w  d1, d2
	blt    @OutOfBounds
	bra    @WithinBounds
	
	@NymnToRight:

	; Echo to left of Dest, check obj centre > Echo centre
	ENTITY_GETCENTREXW d2, a3		; Obj centre
	cmp.w  d0, d2
	blt    @OutOfBounds

	; Check object left < Dest right
	move.w Entity_Width(a2), d3
	lsr.w  #0x1, d3
	add.w  d3, d1					; Dest right
	move.w Entity_Width(a3), d3
	lsr.w  #0x1, d3
	sub.w  d3, d2					; Object left
	cmp.w  d1, d2
	bgt    @OutOfBounds
	bra    @WithinBounds

	ENDIF

	@OutOfBounds:
	
	; Object not between Dest and Echo, abandon it
	jsr    PlayerCancelInteract
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	bra    @End

	@WithinBounds:

	; If object not touching dest
	ENTITY_GETBOUNDS d1,d2,d5,a2
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	bne    @TouchingNymn

	; If Echo heading in right direction
	ENTITY_GETCENTREXW d1, a0		; Echo (centre)
	ENTITY_GETCENTREXW d2, a2		; Dest (centre)
	cmp.w  d1, d2					; If Echo X > Nymn X
	bgt    @CheckVelPositive
	tst.l  PhysicsObj_VelX(a0)
	bge    @NoPush
	bra    @CheckVelNegative
	@CheckVelPositive:
	tst.l  PhysicsObj_VelX(a0)
	ble    @NoPush
	@CheckVelNegative:
	
	; Continue pushing towards Dest
	PUSHM  a0-a3
	jsr    PlayerStartInteract
	POPM   a0-a3

	@NoPush:

	move.w #Echo_AINodeTolerancePushObjX, d3
	
	; Check if within X tolerance
	ENTITY_GETCENTREXW d0,a0
	ENTITY_GETCENTREXW d1,a2
	
	; Check left bounds
	move.w d1, d2
	sub.w  d3, d2
	cmp.w  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d2
	add.w  d3, d2
	cmp.w  d0, d2
	blt    @TooFarRight

	@TouchingNymn:

	; Within bounds or touching Dest - back to follow state
	jsr    PlayerCancelInteract
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	bra    @End
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @Pushed
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	
	@Pushed:

	; If pushing object against wall - back to follow state
	move.b PhysicsObj_HitWall(a3), d2
	tst.w  PhysicsObj_AccelX(a0)
	bgt    @PushingRight
	andi.b #PhysicsObjHitWallLeft, d2
	beq    @End
	bra    @ObjHitWall
	@PushingRight:
	andi.b #PhysicsObjHitWallRight, d2
	beq    @End
	
	@ObjHitWall:

	; Prevent obj from bouncing and keep it against the wall,
	; to prevent Echo considering it for pushing again next frame
	move.l #0x0, PhysicsObj_VelX(a3)

	; Back to follow state
	jsr    PlayerCancelInteract
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	@End:

	rts

EchoAIStart_ButtonHold:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Button addr
	
	; Set button hold state
	move.b #EchoAIState_Button, Echo_AIState(a0)

	; Set button
	move.l a2, Echo_AIObjectOfInterest(a0)
	
	rts
	
EchoAIUpdate_ButtonHold:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If button inactive, back to follow state
	move.l Echo_AIObjectOfInterest(a0), a2
	tst.b  Button_Active(a2)
	bne    @StillActive
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	@StillActive:

	rts

EchoAIStart_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) Water body left bounds
	; d1 (w) Water body right bounds
	; d2 (w) Water body surface
	
	; Set water state
	move.b #EchoAIState_Water, Echo_AIState(a0)
	
	; Set water bounds
	move.w d0, Echo_AIWaterBodyLeft(a0)
	move.w d1, Echo_AIWaterBodyRight(a0)
	move.w d2, Echo_AIWaterBodySurface(a0)

	; Clear wait state
	move.b #0x0, Echo_AIWaitingForWaterPath(a0)

	; Clear out of water pos
	move.w #0x0, Echo_AILastWaterEdge(a0)

	; Clear follow nodes - forget what was happening,
	; Echo needs to get out of this water as a priority.
	; Emergency escape nodes will be collected in the state
	; update instead.
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; If escape direction set
	tst.b  Echo_AIWaterEscapeDirection(a0)
	blt    @MoveLeft
	bgt    @MoveRight

	; else start running towards closest shore
	ENTITY_GETCENTREXW d2, a0
	sub.w  d2, d1	; Right bounds - X pos
	sub.w  d0, d2	; X pos - left bounds

	cmp.w  d1, d2
	blt    @MoveLeft
	jsr    CharacterMoveRight
	move.b #0x1, Echo_AIObstacleDirection(a0)
	bra    @MoveRight
	@MoveLeft:
	jsr    CharacterMoveLeft
	move.b #0x0, Echo_AIObstacleDirection(a0)
	@MoveRight:
	
	rts

EchoAIUpdate_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If waiting for a path/Nymn's help
	tst.b  Echo_AIWaitingForWaterPath(a0)
	bne    @OutOfWater

	; If next node is emergency ladder node, process it
	jsr    EchoAIPeekNodeTypeFront
	cmp.b  #EchoAINode_Action_EmergencyLadder, d0
	bne    @NoLadderNode
	jsr    EchoAIUpdate_FollowNodes
	bra    @End
	@NoLadderNode:

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InWater

	; If hit wall, jump
	tst.b  PhysicsObj_HitWall(a0)
	beq    @NotHitWall
	move.b #0x0, d2
	jsr    CharacterStartJump
	@NotHitWall:

	; If no longer in water
	tst.b  PhysicsObj_Underwater(a0)
	bne    @InWater

	; Keep going until clear of safe distance
	move.w Echo_AILastWaterEdge(a0), d0
	bne    @SafePosSet
	move.w Entity_WorldPosX(a0), d0
	move.w d0, Echo_AILastWaterEdge(a0)
	@SafePosSet:

	tst.b  SpriteObj_FlippedX(a0)
	beq    @FacingRight
	sub.w  Entity_WorldPosX(a0), d0
	cmp.w  #Echo_AIWaterSafePosOffsetX, d0
	ble    @InWater
	bra    @FacingLeft

	@FacingRight:
	move.w Entity_WorldPosX(a0), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIWaterSafePosOffsetX, d1
	ble    @InWater
	@FacingLeft:

	; Stop moving
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)

	; Face water
	move.b Echo_AIObstacleDirection(a0), SpriteObj_FlippedX(a0)

	; Set wait state
	move.b #0x1, Echo_AIWaitingForWaterPath(a0)

	; Howl
	jsr    EchoHowl

	;==============================================================

	@OutOfWater:

	; If Nymn heading in opposite direction, back to follow state
	move.l (Player1), a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	cmp.l  d0, d1
	bgt    @FaceRight
	move.b #0x1, d0
	bra    @FaceLeft
	@FaceRight:
	move.b #0x0, d0
	@FaceLeft:

	cmp.b  Echo_AIObstacleDirection(a0), d0
	beq    @SameDir
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	bra    @End
	@SameDir:

	;==============================================================

	; Get nearest edge of water body
	ENTITY_GETCENTREXW d0,a0
	move.w Echo_AIWaterBodyLeft(a0), d1
	addi.w #Echo_AIWaterSearchOffsetX, d1
	move.w d1, d3
	move.w Echo_AIWaterBodyRight(a0), d2
	subi.w #Echo_AIWaterSearchOffsetX, d2
	move.w d2, d4
	
	sub.w  d0, d3
	ABSW   d3
	sub.w  d0, d4
	ABSW   d4
	
	move.w d1, d0
	cmp.w  d3, d4
	bgt    @LeftEdge
	move.w d2, d0
	@LeftEdge:

	; Get surface
	move.w Echo_AIWaterBodySurface(a0), d1
	
	; - search height
	subq.w #0x08, d1

	; Find floor
	jsr    EchoFindFloor
	tst.b  d0
	beq    @NoFloor

	; Get water body bounds
	move.w Echo_AIWaterBodyLeft(a0), d1
	move.w Echo_AIWaterBodyRight(a0), d2
	swap   d1
	swap   d2
	move.w Echo_AIWaterBodySurface(a0), d1
	move.w d1, d2
	add.w  Entity_Height(a0), d2

	; Check floor inside water
	jsr    PHYS_TestPointInsideBox
	tst.b  d0
	bne    @FloorInWater

	; Found dry land, back to follow state
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	; Lerp camera to show Echo is safe
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @OnScreen
	jsr    EchoStartCameraLerp
	@OnScreen:

	bra    @End

	;==============================================================

	@InWater:

	; Move to water edge
	tst.b  Echo_AIObstacleDirection(a0)
	beq    @MoveLeft
	jsr    CharacterMoveRight
	bra    @MoveRight
	@MoveLeft:
	jsr    CharacterMoveLeft
	@MoveRight:

	; Search for underwater objects
	jsr    EchoAI_FindInterestingObj_InWaterState

	@NoFloor:
	@FloorInWater:
	@End:

	rts

EchoFindFloor:
	; d0 (w) IN: X pos
	;		 OUT: 1 = found, 0 = not found
	; d1 (w) Y pos
	; d3 (l) Found X/Y position
	
	; Return val
	moveq  #0x0, d7

	; Check ground centre of water body to see if a path has opened up
	move.l Entity_WorldPosX(a0), d4
	move.l Entity_WorldPosY(a0), d5
	PUSHM  d4-d5
	
	; Sub player height
	sub.w  Entity_Height(a0), d1

	; Centre X
	move.w Entity_Width(a0), d4
	lsr.w  #0x1, d4
	sub.w  d4, d0

	; Set search position
	move.w d0, Entity_WorldPosX(a0)
	move.w d1, Entity_WorldPosY(a0)

	; Find floor
	move.b #0x1, d0
	jsr    PhysicsObjFindFloor

	; If not on floor, bail
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @NoFloor

	; Get floor pos
	move.w Entity_WorldPosX(a0), d3
	swap   d3
	move.w PhysicsObj_LastFloor(a0), d3

	; Bail if floor is default floor
	lea    PhysicsWorld, a2
	move.w PhysicsWorld_GroundHeight(a2), d4
	cmp.w  d3, d4
	beq    @NoFloor

	; Success
	move.b #0x1, d7

	@NoFloor:

	; Restore original pos
	POPM   d4-d5
	move.l d4, Entity_WorldPosX(a0)
	move.l d5, Entity_WorldPosY(a0)

	; Return val
	move.b d7, d0

	rts

EchoAIStart_WaitBarrier:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Barrier AI marker

	; Set barrier state
	move.b #EchoAIState_Barrier, Echo_AIState(a0)

	; Set barrier
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Set direction
	move.b SpriteObj_FlippedX(a0), Echo_AIObstacleDirection(a0)

	; Stop X movement
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)
	
	; Snap to marker left/right (so marker isn't intersected next frame)
	move.l Entity_WorldPosX(a2), d0

	tst.b  SpriteObj_FlippedX(a0)
	bne    @MarkerRight

	move.w Entity_Width(a0), d1
	addq.w #0x1, d1
	TOSUBPIXELS d1
	sub.l  d1, d0
	bra    @MarkerLeft

	@MarkerRight:

	move.w Entity_Width(a2), d1
	addq.w #0x1, d1
	TOSUBPIXELS d1
	add.l  d1, d0

	@MarkerLeft:
	
	move.l d0, Entity_WorldPosX(a0)

	rts

EchoAIUpdate_WaitBarrier:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If off screen, count down lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning

	; Lost - if a Skivv is registered, take Echo
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	jsr    EchoAIStart_Skivv
	bra    @Lost
	@NoSkivv:
	jsr    EchoAIStart_Lost
	bra    @Lost
	@OnScreen:
	@LostTimerRunning:

	; If barrier disabled, back to follow state
	move.l Echo_AIObjectOfInterest(a0), a2
	tst.b  Entity_Active(a2)
	beq    @Follow

	; If Nymn heading in opposite direction, back to follow state
	move.l (Player1), a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	cmp.l  d0, d1
	bgt    @FaceRight
	move.b #0x1, d0
	bra    @FaceLeft
	@FaceRight:
	move.b #0x0, d0
	@FaceLeft:

	cmp.b  Echo_AIObstacleDirection(a0), d0
	beq    @SameDir

	@Follow:
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	@SameDir:
	@Lost:

	rts

EchoAIStart_Carried:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #EchoAIState_Carried, Echo_AIState(a0)

	rts

EchoAIUpdate_Carried:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait until back on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir

	; Back to follow state
	jsr    EchoAIStart_Follow

	@InAir:

	rts

EchoAIStart_Skivv:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set state
	move.b #EchoAIState_Skivv, Echo_AIState(a0)

	; Begin camera lerp
	move.l CameraTargetGameObj, CameraLerpFromObj
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraLerpTime
	MOVE_NTSC_W Echo_HowlCameraLerpSpeed, CameraLerpSpeed, d0

	rts

EchoAIUpdate_Skivv:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait until on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir

	; If Echo not already dead
	tst.b  Character_Dead(a0)
	bne    @EchoDead

	; Get Skivv
	move.l Echo_Skivv(a0), a2

	; If skivv not alread in attack state
	cmp.b  #SkivvState_Attacking, Skivv_State(a2)
	beq    @AlreadyAttacking

	; Howl
	PUSHM  a0-a2
	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPM   a0-a2

	; If camera lerp finished
	tst.w  CameraLerpSpeed
	bne    @Lerping

	; Position Skivv at Echo's feet, + X offset
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1
	add.w  Entity_Height(a0), d1
	sub.w  Entity_Height(a2), d1
	move.w d0, Entity_WorldPosX(a2)
	move.w d1, Entity_WorldPosY(a2)

	; Face direction

	PUSHL  a0
	move.l a2, a0

	; Enable Skivv
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList

	; Begin Skivv attack state
	jsr    SkivvAIStart_Attack

	POPL   a0

	@InAir:
	@Lerping:
	@AlreadyAttacking:
	@EchoDead:

	rts

EchoAIStart_Raft:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Raft
	
	; Set raft state
	move.b #EchoAIState_Raft, Echo_AIState(a0)

	; Set raft
	move.l a2, Echo_AIObjectOfInterest(a0)
	
	rts

EchoAIUpdate_Raft:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get raft
	move.l Echo_AIObjectOfInterest(a0), a2

	; If hit static wall
	tst.b  PhysicsObj_HitWall(a2)
	tst.b  d0
	beq    @PlatformMoving
	
	move.b PhysicsObj_HitWall(a2), d1
	andi.b #PhysicsObjHitStaticWall, d1
	beq    @PlatformMoving
	
	; HACK: ...and to the right
	; TODO: Raft + winch mechanism needs a 'reached destiation' flag
	move.b PhysicsObj_HitWall(a2), d1
	andi.b #PhysicsObjHitWallRight, d1
	beq    @PlatformMoving

	; If visible
	tst.b  SpriteObj_SpriteLinked(a0)
	beq    @OutOfView

	; If Nymn on land
	move.l Player1, a2
	move.b PhysicsObj_Underwater(a2), d0
	bne    @NymnInWater
	
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @NymnInAir

	; Back to follow state
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	@PlatformMoving:
	@OutOfView:
	@NymnInWater:
	@NymnInAir:

	rts

EchoAIStart_EmergencyLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Ladder
	
	; Set emergency ladder state
	move.b #EchoAIState_EmergencyLadder, Echo_AIState(a0)

	; Reset lost timer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	bra    @EndSkivv
	@NoSkivv:
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	@EndSkivv:
	
	rts

EchoAIUpdate_EmergencyLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Climb up
	jsr    CharacterMoveUp

	; If on floor, done
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OffLadder

	; If not climbing, done
	tst.b  Character_Climbing(a0)
	beq    @OnLadder

	@OffLadder:

	; Back to water state (don't call EchoAIStart_Water, we already have an escape plan)
	move.b #EchoAIState_Water, Echo_AIState(a0)

	@OnLadder:

	rts

EchoAIStart_EnterLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set entering ladder state
	move.b #EchoAIState_EnterLadder, Echo_AIState(a0)

	; Collecting breadcrumb nodes, but don't auto-start follow state
	move.b #0x0, Echo_AIAutoStartFollowNodes(a0)
	
	rts

EchoAIUpdate_EnterLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Head in Nymn's Y position by default
	move.l Player1, a2
	ENTITY_GETCENTREYW d0, a2

	; If there's another node in the queue, and it's not another ladder node,
	; head in that direction
	move.w Echo_AINodeConsumer(a0), d6
	move.w Echo_AINodeProducer(a0), d7
	cmp.w  d6, d7
	beq    @NoNodes
	jsr    EchoAIPeekNodeFront
	cmp.b  #EchoAINode_Action_EnterLadder, EchoAINode_Action(a3)
	beq    @NoNodes
	move.w EchoAINode_PosY(a3), d0
	@NoNodes:

	; Start climbing up/down
	ENTITY_GETCENTREYW d1, a0
	cmp.w  d0, d1
	blt    @ClimbDown
	jsr    CharacterMoveUp
	bra    @ClimbUp
	@ClimbDown:
	jsr    CharacterMoveDown
	@ClimbUp:

	; If climbing ladder
	tst.b  Character_Climbing(a0)
	beq    @NotOnLadder

	; On ladder, can use follow state again
	move.b #0x1, Echo_AIAutoStartFollowNodes(a0)

	; Finished, enter follow/follow nodes state
	move.w Echo_AINodeConsumer(a0), d6
	move.w Echo_AINodeProducer(a0), d7
	cmp.w  d6, d7
	beq    @Follow
	jsr    EchoAIStart_FollowNodes
	bra    @End
	@Follow:
	jsr    EchoAIStart_Follow
	bra    @End

	@NotOnLadder:

	; Collect follow nodes
	jsr    EchoAI_WatchNymnMovement

	@End:

	rts

EchoAIStart_ExitLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set entering ladder state
	move.b #EchoAIState_ExitLadder, Echo_AIState(a0)

	; Collecting breadcrumb nodes, but don't auto-start follow state
	move.b #0x0, Echo_AIAutoStartFollowNodes(a0)
	
	rts

EchoAIUpdate_ExitLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If on floor, done
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OffLadder

	; If not climbling, done
	tst.b  Character_Climbing(a0)
	beq    @OffLadder

	bra    @OnLadder

	@OffLadder:

	; Can use follow state again
	move.b #0x1, Echo_AIAutoStartFollowNodes(a0)

	move.w Echo_AINodeConsumer(a0), d6
	move.w Echo_AINodeProducer(a0), d7
	cmp.w  d6, d7
	beq    @Follow
	jsr    EchoAIStart_FollowNodes
	bra    @End
	@Follow:
	jsr    EchoAIStart_Follow
	bra    @End

	@OnLadder:

	; Collect follow nodes
	jsr    EchoAI_WatchNymnMovement

	@End:

	rts

EchoAIStart_Cart:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Cart
	
	; Set cart state
	move.b #EchoAIState_Cart, Echo_AIState(a0)

	; Set cart
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Jump in
	move.b #0x0, d2
	jsr    CharacterStartJump
	
	rts

EchoAIUpdate_Cart:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get cart
	move.l Echo_AIObjectOfInterest(a0), a2

	; Check if cart is moving but the occupant differs (Nymn stole it)
	tst.l  PhysicsObj_VelX(a2)
	beq    @NotMoving
	cmp.l  Cart_Occupant(a2), a0
	bne    @LostCart
	@NotMoving:

	; Check if lost cart for some reason
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	sub.l  d0, d1
	ABS    d1
	cmp.l  #Echo_AIDistCartX*subpixels_per_pixel, d1
	bgt    @LostCart

	; Wait until smashed
	tst.b  Cart_Smashed(a2)
	beq    @Riding

	@LostCart:

	; Back to follow state
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	@Riding:

	rts

EchoAI_CheckOuterScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS_VEC2 d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIOuterScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts

EchoAI_CheckSafePosScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	; Get top left
	move.w Echo_AISafePosX(a0), d1
	move.w d1, d2
	swap   d1
	swap   d2
	move.w Echo_AISafePosY(a0), d1
	move.w d1, d2

	; Get bottom right
	swap   d2
	add.w  Entity_Width(a0), d2
	swap   d2
	add.w  Entity_Height(a0), d2

	CAMERA_GETSCREENBOUNDS_VEC2 d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts
	
EchoAI_CheckPotentialSafePosScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	; Get top left
	move.w Echo_AIPotentialSafePosX(a0), d1
	move.w d1, d2
	swap   d1
	swap   d2
	move.w Echo_AIPotentialSafePosY(a0), d1
	move.w d1, d2

	; Get bottom right
	swap   d2
	add.w  Entity_Width(a0), d2
	swap   d2
	add.w  Entity_Height(a0), d2

	CAMERA_GETSCREENBOUNDS_VEC2 d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts

EchoAI_CheckLostPosScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS_VEC2 d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts

EchoAI_FindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (l) X pos
	; d1 (l) Y pos
	; d2 (w) OUT: Found floor

	PUSHL  Entity_WorldPosX(a0)
	PUSHL  Entity_WorldPosY(a0)
	PUSHW  PhysicsObj_LastFloor(a0)
	PUSHL  PhysicsObj_LastPlatform(a0)

	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	move.w #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastPlatform(a0)

	jsr    PhysicsObjSnapToFloor

	move.w PhysicsObj_LastFloor(a0), d2

	POPL   PhysicsObj_LastPlatform(a0)
	POPW   PhysicsObj_LastFloor(a0)
	POPL   Entity_WorldPosY(a0)
	POPL   Entity_WorldPosX(a0)

	rts
	
EchoAI_WatchNymnSafePos:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Nymn addr

	IF ECHO_AI_DEBUG_SAFE_POS
	move.w Echo_AISafePosX(a0), d0
	TOSUBPIXELS d0
	move.l #((8*8)<<16)|(4*8), d1
	jsr    DBG_DrawLong

	move.w Echo_AISafePosY(a0), d0
	TOSUBPIXELS d0
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawLong
	ENDIF
	
	; If current safe pos in view, discard it
	tst.w  Echo_AISafePosX(a0)
	beq    @NoSafePos
	jsr    EchoAI_CheckSafePosScreenBounds
	tst.b  d0
	beq    @SafePosStillSafe
	move.w #0x0, Echo_AISafePosX(a0)
	move.w #0x0, Echo_AISafePosY(a0)
	@NoSafePos:
	@SafePosStillSafe:
	
	; Get Nymn pos
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1
	
	; If watching a potential safe position to go out of view
	move.w Echo_AIPotentialSafePosY(a0), d3
	move.w Echo_AIPotentialSafePosX(a0), d2
	beq    @NoPotentialSafePos
	
	; If pos out of view, use as next safe pos
	PUSHM  d0-d3
	jsr    EchoAI_CheckPotentialSafePosScreenBounds
	move.b d0, d4
	POPM   d0-d3
	tst.b  d4
	bne    @PotentialPosInView
	move.w d2, Echo_AISafePosX(a0)
	move.w d3, Echo_AISafePosY(a0)
	move.w #0x0, Echo_AIPotentialSafePosX(a0)
	move.w #0x0, Echo_AIPotentialSafePosY(a0)
	bra    @EndSafePos
	
	@NoPotentialSafePos:

	; If on floor, store current pos as potential safe pos
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @InAir
	move.w d0, Echo_AIPotentialSafePosX(a0)
	move.w d1, Echo_AIPotentialSafePosY(a0)
	@InAir:
	
	@EndSafePos:
	@PotentialPosInView:

	rts

EchoAI_WatchNymnMovement:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Nymn addr

	; This watches Nymn's movement and actions, building a queue of AI nodes
	; (breadcrumbs) for Echo to follow. All movements are tracked from the
	; previous node (or Echo himself if no nodes available).
	;
	; ** Nothing in here should happen based on Echo's current state, **
	; ** only Nymn's current state.                                   **

	; If Nymn on floor or ladder, store latest floor pos
	tst.b  PhysicsObj_CloseToFloor(a2)
	bne    @OnFloor
	tst.b  Character_Climbing(a2)
	bne    @NymnInAir
	@OnFloor:
	ENTITY_GETCENTREXW d5,a2
	move.w d5, Echo_AILastNymnFloorPosX(a0)
	move.w Entity_WorldPosY(a2), Echo_AILastNymnFloorPosY(a0)
	move.l PhysicsObj_VelX(a2), Echo_AILastNymnFloorVelX(a0)

	@NymnInAir:

	;==============================================================
	; FOLLOW NYMN ENTERING/EXITING A LADDER
	;==============================================================

	; Watch Nymn's current ladder state
	move.b Echo_AINymnClimbing(a0), d2
	move.b Character_Climbing(a2), d3

	; If Nymn got on/off ladder this frame
	cmp.b  d2, d3
	beq    @LadderStateUnchanged

	; Check whether got on/off
	tst.b  d3
	beq    @NymnExitedLadder

	; Add ladder entry node
	ENTITY_GETCENTREXW d0,a2
	ENTITY_GETCENTREYW d1,a2
	jsr    EchoAIPushNode
	move.b #EchoAINode_Action_EnterLadder, EchoAINode_Action(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderEnterX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderEnterY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)

	; Nymn got on ladder
	move.b #0x1, Echo_AINymnClimbing(a0)

	bra    @NodePushed

	@NymnExitedLadder:

	; If we didn't see Nymn get on the ladder, don't add matching exit node
	; (instead we search for our own ladder below)
	tst.b  Echo_AINymnClimbing(a0)
	beq    @NymnOffLadder

	; Add ladder exit node
	ENTITY_GETCENTREXW d0,a2
	ENTITY_GETCENTREYW d1,a2
	jsr    EchoAIPushNode
	move.b #EchoAINode_Action_ExitLadder, EchoAINode_Action(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderExitX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderExitY, EchoAINode_ToleranceY(a3)

	; If exited as a result of jumping, add jump velocity
	tst.b  Character_Jumping(a2)
	beq    @NotJumpedOffLadder
	move.l PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	@NotJumpedOffLadder:
	
	; Nymn got off ladder
	move.b #0x0, Echo_AINymnClimbing(a0)

	; Waiting for landing before adding more jump nodes
	move.b #0x1, Echo_AIWaitingForNymnLanding(a0)

	bra    @NodePushed

	@LadderStateUnchanged:
	@NymnOffLadder:

	;==============================================================
	; FOLLOW NYMN LANDING FROM A JUMP
	;==============================================================

	; Check if Nymn lands from a jump this frame
	tst.b  Echo_AIWaitingForNymnLanding(a0)
	beq    @NotLanded
	move.b Echo_AINymnJumping(a0), d7
	move.b Character_Jumping(a2), d6
	move.b d6, Echo_AINymnJumping(a0)
	cmp.b  d6, d7
	beq    @NotLanded

	; Jump state changed
	tst.b  d6
	bne    @NotLanded

	; Landed from jump
	move.b #0x0, Echo_AIWaitingForNymnLanding(a0)

	; If not landed on ladder
	tst.b  Character_Climbing(a2)
	bne    @NotLanded

	; Create landing node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d5,a2
	move.w d5, EchoAINode_PosX(a3)
	move.w Echo_AILastNymnFloorPosY(a0), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLandX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLandY, EchoAINode_ToleranceY(a3)
	move.l PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.b #EchoAINode_Action_Land, EchoAINode_Action(a3)

	bra    @NodePushed

	@NotLanded:

	;==============================================================
	; FOLLOW NYMN GLIDING
	;==============================================================

	; Check Nymn gliding and cache value
	move.b Echo_AINymnGliding(a0), d1
	move.b #0x0, d0
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	bne    @NotGliding
	move.b #0x1, d0
	@NotGliding:
	move.b d0, Echo_AINymnGliding(a0)
	
	; If Nymn glide state changed
	cmp.b  d0, d1
	beq    @NoGlideChange

	tst.b  d0
	beq    @CancelGlide

	; Started gliding, push node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d5,a2
	ENTITY_GETCENTREYW d6,a2
	move.w d5, EchoAINode_PosX(a3)
	move.w d6, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceGlideX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceGlideY, EchoAINode_ToleranceY(a3)
	move.l PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.b #EchoAINode_Action_StartGlide, EchoAINode_Action(a3)

	bra    @NodePushed

	@CancelGlide:

	; Stopped gliding, push node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d5,a2
	ENTITY_GETCENTREYW d6,a2
	move.w d5, EchoAINode_PosX(a3)
	move.w d6, EchoAINode_PosY(a3)
	move.l PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceGlideX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceGlideY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_StopGlide, EchoAINode_Action(a3)

	bra    @NodePushed

	@NoGlideChange:

	; If Nymn is gliding, don't add other node types
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @End

	;==============================================================
	; IF NYMN IS TOO FAR ABOVE ECHO
	;==============================================================
	
	; Get Nymn Y pos
	ENTITY_GETCENTREYW d2,a2

	; Get last node pos (or last known Echo floor pos if no nodes yet)
	move.w Echo_AINodeConsumer(a0), d4
	cmp.w  Echo_AINodeProducer(a0), d4
	beq    @NoNodes
	jsr    EchoAIPeekNodeBack
	move.w EchoAINode_PosX(a3), d0
	move.w EchoAINode_PosY(a3), d1
	bra    @UsingNodePos
	@NoNodes:
	ENTITY_GETCENTREXW d0,a0
	move.w Echo_AILastFloorPosY(a0), d1
	sub.w  #Player1Height/2, d1
	@UsingNodePos:

	; If above Echo (or last node pos)
	move.w d1, d3					; Echo/node Y pos
	move.w d2, d4					; Nymn Y pos
	sub.w  d4, d3					; Nymn to Echo space
	cmp.w  #Echo_AIJumpDistance, d3	; Check < jump distance
	blt    @WithinYToleranceUp

	; If waiting for landing from jump, bail
	tst.b  Echo_AIWaitingForNymnLanding(a0)
	bne    @End

	;==============================================================
	; FIND A LADDER (if not already found by following entry/exit)
	;==============================================================

	; If node (or last known floor pos) near bottom of ladder
	PUSHMW d0-d4
	jsr    EchoAI_FindLadderBottom
	POPMW  d0-d4
	cmpa   #0x0, a3
	beq    @NoLadderBottom
	move.l a3, a4

	; If Nymn within jump height, don't bother
	ENTITY_GETBOTTOM d4,a4
	TOPIXELS d4
	sub.w  d2, d4
	cmp.w  #Echo_AIMaxJumpHeight, d4
	blt    @NoLadderBottom

	; If ladder node is next, don't bother
	PUSHMW d0-d4
	jsr    EchoAIPeekNodeTypeFront
	move.b d0, d5
	POPMW  d0-d4
	cmp.b  #EchoAINode_Action_EnterLadder, d5
	beq    @End
	cmp.b  #EchoAINode_Action_ExitLadder, d5
	beq    @End
	cmp.b  #EchoAINode_Action_MoveLadder, d5
	beq    @End

	; Add enter ladder node (at bottom)
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d0,a4
	ENTITY_GETBOTTOM d1,a4
	TOPIXELS d1
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderEnterX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderEnterY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_EnterLadder, EchoAINode_Action(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)

	; Use top of ladder, or Nymn Y pos if on ladder and pos is lower
	move.w Entity_WorldPosY(a4), d1
	tst.b  Character_Climbing(a2)
	beq    @UseLadderTop
	cmp.w  d2, d1
	bgt    @UseLadderTop
	
	; Add ladder move node (to Nymn pos)
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d0,a4
	ENTITY_GETCENTREYW d1,a2
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderMoveX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderMoveY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_MoveLadder, EchoAINode_Action(a3)
	
	bra    @NodePushed
	
	@UseLadderTop:

	; Add exit ladder node (at top)
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d0,a4
	move.w Entity_WorldPosY(a4), d1
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderExitX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderExitY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_ExitLadder, EchoAINode_Action(a3)

	bra    @NodePushed

	@NoLadderBottom:
	@EchoOnLadder:

	;==============================================================
	; CLIMB UP LADDER?
	;==============================================================

	; If Nymn climbing, create goto node
	tst.b  Echo_AINymnClimbing(a0)
	beq    @JumpNode

	; Create ladder move node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d0,a2
	ENTITY_GETCENTREYW d1,a2
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderMoveX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderMoveY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_MoveLadder, EchoAINode_Action(a3)

	bra    @NodePushed

	@JumpNode:

	;==============================================================
	; JUMP?
	;==============================================================

	; Create jump node
	jsr    EchoAIPushNode
	move.w Echo_AILastNymnFloorPosX(a0), EchoAINode_PosX(a3)
	move.w d2, EchoAINode_PosY(a3)
	move.l Echo_AILastNymnFloorVelX(a0), EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceJumpX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceJumpY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_Jump, EchoAINode_Action(a3)
	move.b #0x0, EchoAINode_RunActionIfClimbing(a3)	; If climbing, just treat as a goto node

	; If Nymn was in air because of a jump, use floor pos, only jump from floor,
	; set waiting for landing flag
	tst.b  Character_Jumping(a2)
	beq    @NotJumping
	move.w Echo_AILastNymnFloorPosY(a0), EchoAINode_PosY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x1, Echo_AIWaitingForNymnLanding(a0)
	@NotJumping:

	bra    @NodePushed

	@WithinYToleranceUp:

	;==============================================================
	; IF NYMN IS TOO FAR BELOW ECHO
	;==============================================================

	; If below Echo (or last node pos), store pos and create fall node
	move.w d1, d3					; Echo/node Y pos
	move.w d2, d4					; Nymn Y pos
	sub.w  d3, d4					; Echo to Nymn space
	cmp.w  #Echo_AIJumpDistance, d4	; Check < jump distance
	blt    @WithinYToleranceDown

	;==============================================================
	; CLIMB DOWN LADDER?
	;==============================================================

	; If Nymn climbing, create goto node
	tst.b  Echo_AINymnClimbing(a0)
	beq    @FallNode

	; Create ladder move node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d0,a2
	ENTITY_GETCENTREYW d1,a2
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderMoveX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderMoveY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_MoveLadder, EchoAINode_Action(a3)

	bra    @NodePushed

	@FallNode:

	;==============================================================
	; FALL DOWN HOLE?
	;==============================================================

	; Create fall node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREXW d5,a2
	ENTITY_GETCENTREYW d6,a2
	move.w d5, EchoAINode_PosX(a3)
	move.w d6, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceFallX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceFallY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_Fall, EchoAINode_Action(a3)

	bra    @NodePushed

	@WithinYToleranceDown:

	;==============================================================
	; FOLLOW NYMN MOVING LEFT/RIGHT
	;==============================================================

	; If not in standard follow mode, collect left/right goto nodes
	cmp.b  #EchoAIState_Follow, Echo_AIState(a0)
	beq    @NoLeftRight

	; If Nymn on floor
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @NoLeftRight

	; Get Echo X pos, or last node X pos
	move.w Echo_AINodeConsumer(a0), d4
	cmp.w  Echo_AINodeProducer(a0), d4
	beq    @NoNodesX
	jsr    EchoAIPeekNodeBack
	move.w EchoAINode_PosX(a3), d0
	bra    @UsingNodePosX
	@NoNodesX:
	move.w Entity_WorldPosX(a0), d0
	@UsingNodePosX:

	; Check of Nymn outside X follow distance
	ENTITY_GETCENTREXW d1, a2
	ENTITY_GETCENTREYW d2, a2
	sub.w  d1, d0
	cmp.w  #Echo_AIFollowDistance, d0
	bgt    @AddGotoNode
	cmp.w  #-Echo_AIFollowDistance, d0
	bgt    @WithinRangeX
	
	@AddGotoNode:

	jsr    EchoAIPushNode
	move.w d1, EchoAINode_PosX(a3)
	move.w d2, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceGotoX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceGotoY, EchoAINode_ToleranceY(a3)
	move.b #EchoAINode_Action_GoTo, EchoAINode_Action(a3)
	
	bra    @NodePushed

	@WithinRangeX:
	@NoLeftRight:
	@WaitingLandJump:

	;==============================================================

	@NodePushed:
	@End:

	rts

EchoAI_FindInterestingObj:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If in cart (jumped in one naturally)
	cmp.b  #Player_RideState_Cart, Player_RideState(a0)
	bne    @NotInCart
	jsr    EchoAIStart_Cart
	bra    @End
	@NotInCart:

	; Search (emergency) ladders
	jsr    EchoAI_FindEmergencyLadder
	cmpa.w #0x0, a2
	beq    @NoLadder
	jsr    EchoAI_PushInteractionEmergencyLadder
	bra    @End
	@NoLadder:

	; Search carts
	jsr    EchoAI_FindCart
	cmpa.w #0x0, a2
	beq    @NoCart
	jsr    EchoAI_PushInteractionCart
	bra    @End
	@NoCart:

	; Search water
	jsr    EchoAI_FindWater
	cmp.w  #0x0, d0
	beq    @NoWater
	jsr    EchoAIStart_Water
	bra    @End
	@NoWater:

	; Search AI markers
	jsr    EchoAI_FindAIMarker
	cmpa.w #0x0, a2
	bne    @End

	;==============================================================
	
	; If Echo off floor, don't search the rest
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @End

	;==============================================================

	; Search Fuzzls
	jsr    EchoAI_FindFuzzl
	cmpa.w #0x0, a2
	beq    @NoFuzzl
	jsr    EchoAI_PushInteractionFuzzl
	bra    @End
	@NoFuzzl:

	; Search logs
	jsr    EchoAI_FindLog
	cmpa.w #0x0, a2
	beq    @NoLog
	jsr    EchoAI_PushInteractionLog
	bra    @End
	@NoLog:

	; Search buttons
	jsr    EchoAI_FindButton
	cmpa.w #0x0, a2
	beq    @NoButton
	jsr    EchoAI_PushInteractionButton
	bra    @End
	@NoButton:

	; Search rafts
	jsr    EchoAI_FindRaft
	cmpa.w #0x0, a2
	beq    @NoRaft
	jsr    EchoAI_PushInteractionRaft
	bra    @End
	@NoRaft:

	@End:

	rts

EchoAI_FindInterestingObj_InNodeState:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If in cart (jumped in one naturally)
	cmp.b  #Player_RideState_Cart, Player_RideState(a0)
	bne    @NotInCart
	jsr    EchoAIStart_Cart
	bra    @End
	@NotInCart:

	; Search (emergency) ladders
	jsr    EchoAI_FindEmergencyLadder
	cmpa.w #0x0, a2
	beq    @NoLadder
	jsr    EchoAI_PushInteractionEmergencyLadder
	bra    @End
	@NoLadder:

	; Search water
	jsr    EchoAI_FindWater
	cmp.w  #0x0, d0
	beq    @NoWater
	jsr    EchoAIStart_Water
	bra    @End
	@NoWater:

	; Search AI markers
	jsr    EchoAI_FindAIMarker
	cmpa.w #0x0, a2
	bne    @End
	
	@End:

	rts

EchoAI_FindInterestingObj_InWaterState:

	; Search (emergency) ladders
	jsr    EchoAI_FindEmergencyLadder
	cmpa.w #0x0, a2
	beq    @NoLadder
	jsr    EchoAI_PushInteractionEmergencyLadder
	bra    @End
	@NoLadder:

	@End:

	rts

EchoAI_FindAIMarker:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l #0x0, a2

	move.w (EntityCount_AIMarker), d6
	beq    @NoAIMarkers
	move.l (EntityPoolStart_AIMarker), a2
	subq.w  #0x1, d6
	@AIMarkerLoop:

	; Check if active
	tst.b  Entity_Active(a2)
	beq    @NextAIMarker

	; Check touching
	ENTITY_GETBOUNDS d1,d2,d5,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	sub.w  #Echo_AIMarkerSearchHeight, d3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @NextAIMarker

	; Check heading in right direction
	move.b AIMarker_Direction(a2), d0
	cmp.b  #AIMarker_Direction_Any, d0
	beq    @DirectionOk
	tst.l  PhysicsObj_VelX(a0)
	bgt    @HeadingRight
	blt    @HeadingLeft
	bra    @NextAIMarker

	@HeadingRight:
	cmp.b  #AIMarker_Direction_Right, d0
	bne    @NextAIMarker
	bra    @DirectionOk

	@HeadingLeft:
	cmp.b  #AIMarker_Direction_Left, d0
	bne    @NextAIMarker

	@DirectionOk:
	@HeadingNowhere:

	; Check if interesting type
	cmp.b  #AIMarker_Type_Wait, AIMarker_Type(a2)
	beq    @Wait
	cmp.b  #AIMarker_Type_Barrier, AIMarker_Type(a2)
	beq    @Barrier
	cmp.b  #AIMarker_Type_Jump, AIMarker_Type(a2)
	beq    @Jump
	bra    @NextAIMarker

	;==============================================================

	@Wait:

	; Disable marker, stop AI
	move.b #0x0, Entity_Active(a2)
	jsr    EchoAIStop
	bra    @FoundAIMarker

	;==============================================================

	@Barrier:

	; Start wait at barrier state
	jsr    EchoAIStart_WaitBarrier
	bra    @FoundAIMarker

	;==============================================================

	@Jump:

	; Only if following movement nodes
	moveq  #0x0, d0
	moveq  #0x0, d1
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	beq    @NoNodes
	sub.w  d1, d0
	subq.w #0x1, d0
	lea    Echo_AIFollowNodes(a0), a3	; Get node queue head
	andi.w #Echo_NumAINodes-1, d1		; MOD to get consumer position
	mulu   #EchoAINode_Struct_Size, d1	; Index to first node
	add.l  d1, a3						; Add offset

	@GotoCheckLp:
	cmp.b  #EchoAINode_Action_EnterLadder, EchoAINode_Action(a3)
	beq    @FoundAIMarker
	cmp.b  #EchoAINode_Action_Button, EchoAINode_Action(a3)
	beq    @FoundAIMarker
	cmp.b  #EchoAINode_Action_Cart, EchoAINode_Action(a3)
	beq    @FoundAIMarker
	cmp.b  #EchoAINode_Action_Raft, EchoAINode_Action(a3)
	beq    @FoundAIMarker
	cmp.b  #EchoAINode_Action_StartPush, EchoAINode_Action(a3)
	beq    @FoundAIMarker
	lea    EchoAINode_Struct_Size(a3), a3	; Next node
	dbra   d0, @GotoCheckLp
	@NoNodes:

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @FoundAIMarker

	; Jump
	jsr    CharacterStartJump

	; If in follow nodes state
	cmp.b  #EchoAIState_FollowNodes, Echo_AIState(a0)
	bne    @FoundAIMarker

	; Clear remaining nodes and enter basic follow state
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)
	jsr    EchoAIStart_Follow

	bra    @FoundAIMarker

	;==============================================================

	@NextAIMarker:
	lea    AIMarker_Struct_Size(a2), a2
	dbra   d6, @AIMarkerLoop
	
	@NoAIMarkers:
	move.l #0x0, a2

	@FoundAIMarker:

	rts

EchoAI_FindFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Fuzzl addr
	
	move.l #0x0, a2

	move.l (Player1), a3

	move.w (EntityCount_Fuzzl), d6
	beq    @NoFuzzls
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w  #0x1, d6
	@FuzzlLoop:

	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistFuzzlX, d1
	bgt    @NextFuzzl
	cmp.w  #-Echo_AIDistFuzzlX, d1
	blt    @NextFuzzl

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistFuzzlY, d1
	bgt    @NextFuzzl
	cmp.w  #-Echo_AIDistFuzzlY, d1
	blt    @NextFuzzl

	; Check active
	tst.b  Entity_Active(a2)
	beq    @NextFuzzl

	; Check not in nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	; Check not in generator
	btst.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	; Check not in cage
	;btst.b #Fuzzl_State_Caged, Fuzzl_State_Bits(a2)
	;bne    @NextFuzzl

	; Check not hitting wall in push direction
	move.b PhysicsObj_HitWall(a2), d3
	move.l Player1, a4					; Check Fuzzl push direction to Nymn
	ENTITY_GETCENTREX d0,a2
	ENTITY_GETCENTREX d2,a4
	sub.l  d0, d2
	bgt    @FuzzlLeftOfNymn
	andi.b #PhysicsObjHitWallLeft, d3	; Fuzzl right of Nymn, pushing left, check left wall
	bne    @NextFuzzl
	bra    @FuzzlRightOfNymn
	@FuzzlLeftOfNymn:
	andi.b #PhysicsObjHitWallRight, d3	; Fuzzl left of Nymn, pushing right, check right wall
	bne    @NextFuzzl
	@FuzzlRightOfNymn:

	; Check not touching Nymn
	ENTITY_GETBOUNDS d1,d2,d5,a2
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	bne    @NextFuzzl

	; Done
	bra    @FoundFuzzl

	@NextFuzzl:
	lea    Fuzzl_Struct_Size(a2), a2
	dbra   d6, @FuzzlLoop
	
	@NoFuzzls:
	move.l #0x0, a2

	@FoundFuzzl:

	rts

EchoAI_FindLog:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Log addr
	
	move.l #0x0, a2

	move.l (Player1), a3

	move.w (EntityCount_Log), d6
	beq    @NoLogs
	move.l (EntityPoolStart_Log), a2
	subq.w #0x1, d6
	@LogLoop:

	; Check if AI can use
	tst.b  Log_NoAI(a2)
	bne    @NextLog

	; If log's platform is occupied, don't bother
	lea    Log_Platform(a2), a4
	tst.b  Platform_Occupied(a4)
	bne    @NextLog

	;==============================================================

	; Edge case: if Nymn is busy with a button, help out
	tst.l  PhysicsObj_LastPlatform(a3)
	beq    @P1OffPlatform
	
	; Check outside X threshold (of Nymn)
	ENTITY_GETCENTREXW d0,a3
	ENTITY_GETCENTREXW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLogXNymn, d1
	bgt    @OutsideNymnDistX
	cmp.w  #-Echo_AIDistLogXNymn, d1
	blt    @OutsideNymnDistX
	bra    @NextLog
	@OutsideNymnDistX:

	; Don't do Nymn Y check
	bra    @P1OnPlatform
	
	@P1OffPlatform:

	;==============================================================

	; Check outside Nymn Y threshold
	ENTITY_GETCENTREYW d0,a3
	ENTITY_GETCENTREYW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLogY, d1
	bgt    @OutsideNymnDistY
	cmp.w  #-Echo_AIDistLogY, d1
	blt    @OutsideNymnDistY
	bra    @NextLog
	@OutsideNymnDistY:

	@P1OnPlatform:

	; Check within X threshold (of Echo)
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLogX, d1
	bgt    @NextLog
	cmp.w  #-Echo_AIDistLogX, d1
	blt    @NextLog

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLogY, d1
	bgt    @NextLog
	cmp.w  #-Echo_AIDistLogY, d1
	blt    @NextLog

	; Done
	bra    @FoundLog

	@NextLog:
	lea    Log_Struct_Size(a2), a2
	dbra   d6, @LogLoop
	
	@NoLogs:
	move.l #0x0, a2

	@FoundLog:

	rts

EchoAI_FindButton:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Button addr
	
	move.l #0x0, a2

	move.w (EntityCount_Button), d6
	beq    @NoButtons
	move.l (EntityPoolStart_Button), a2
	subq.w  #0x1, d6
	@ButtonLoop:

	; Check active
	tst.b  Button_Active(a2)
	beq    @NextButton

	; Check usable
	tst.b  Button_NoAI(a2)
	bne    @NextButton

	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistButtonX, d1
	bgt    @NextButton
	cmp.w  #-Echo_AIDistButtonX, d1
	blt    @NextButton

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistButtonY, d1
	bgt    @NextButton
	cmp.w  #-Echo_AIDistButtonY, d1
	blt    @NextButton

	; Done
	bra    @FoundButton

	@NextButton:
	lea    Button_Struct_Size(a2), a2
	dbra   d6, @ButtonLoop
	
	@NoButtons:
	move.l #0x0, a2

	@FoundButton:

	rts

EchoAI_FindLadderBottom:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) Search pos X
	; d1 (w) Search pos Y
	; a3 --- OUT: Ladder addr

	move.l #0x0, a3

	move.w (EntityCount_Ladder), d6
	beq    @NoLadders
	move.l (EntityPoolStart_Ladder), a4
	subq.w  #0x1, d6
	@LadderLoop:

	; Check within X threshold
	ENTITY_GETCENTREXW d2, a4
	sub.w  d0, d2
	cmp.w  #Echo_AIDistLadderX, d2
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderX, d2
	blt    @NextLadder

	; Check for bottom of ladder
	ENTITY_GETBOTTOM d2,a4
	TOPIXELS d2
	sub.w  d1, d2
	sub.w  #(Player1Height/2), d2	; Centre of bottom search height
	cmp.w  #Echo_AIDistLadderY, d2
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderY, d2
	blt    @NextLadder

	; Done
	move.l a4, a3
	bra    @FoundLadder

	@NextLadder:
	lea    Ladder_Struct_Size(a4), a4
	dbra   d6, @LadderLoop
	
	@NoLadders:
	@FoundLadder:

	rts

EchoAI_FindEmergencyLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Ladder addr

	move.l #0x0, a2

	; If underwater, need an emergency ladder
	tst.b  PhysicsObj_Underwater(a0)
	beq    @NoLadders

	; If next node already a ladder, don't bother
	jsr    EchoAIPeekNodeTypeFront
	cmp.b  #EchoAINode_Action_EmergencyLadder, d0
	beq    @NoLadders

	move.w (EntityCount_Ladder), d6
	beq    @NoLadders
	move.l (EntityPoolStart_Ladder), a2
	subq.w  #0x1, d6
	@LadderLoop:

	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLadderX, d1
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderX, d1
	blt    @NextLadder

	; Check for bottom of ladder
	ENTITY_GETBOTTOM d0,a0
	ENTITY_GETBOTTOM d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLadderY, d1
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderY, d1
	blt    @NextLadder

	; Done
	bra    @FoundLadder

	@NextLadder:
	lea    Ladder_Struct_Size(a2), a2
	dbra   d6, @LadderLoop
	
	@NoLadders:
	@WithinRange:
	move.l #0x0, a2

	@FoundLadder:

	rts

EchoAI_FindCart:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Cart addr
	
	move.l #0x0, a2

	; TODO: If Nymn is also using a cart

	move.w (EntityCount_Cart), d6
	beq    @NoCarts
	move.l (EntityPoolStart_Cart), a2
	subq.w  #0x1, d6
	@CartLoop:

	; Check not destroyed
	tst.b  Cart_Smashed(a2)
	bne    @NextCart

	; Check not already in use
	tst.l  Cart_Occupant(a2)
	bne    @NextCart

	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistCartX, d1
	bgt    @NextCart
	cmp.w  #-Echo_AIDistCartX, d1
	blt    @NextCart

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a2
	sub.w  d0, d1
	cmp.w  #Echo_AIDistCartY, d1
	bgt    @NextCart
	cmp.w  #-Echo_AIDistCartY, d1
	blt    @NextCart

	; Done
	bra    @FoundCart

	@NextCart:
	lea    Cart_Struct_Size(a2), a2
	dbra   d6, @CartLoop
	
	@NoCarts:
	move.l #0x0, a2

	@FoundCart:

	rts

EchoAI_FindWater:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (w) OUT: Water bounds left
	; d1 (w) OUT: Water bounds right
	; d2 (w) OUT: Water surface
	
	move.w #0x0, d0
	move.w #0x0, d1
	move.w #0x0, d2
	
	; If not already in water or recovery state
	cmp.b  #EchoAIState_Water, Echo_AIState(a0)
	beq    @InWaterState
	cmp.b  #EchoAIState_EmergencyLadder, Echo_AIState(a0)
	beq    @InLadderState

	; If recovery state not next node
	PUSHW  d0
	jsr    EchoAIPeekNodeTypeFront
	move.b d0, d3
	POPW   d0
	cmp.b  #EchoAINode_Action_EmergencyLadder, d3
	beq    @InLadderState

	move.w Player_LastWaterBodyLeft(a0), d0
	move.w Player_LastWaterBodyRight(a0), d1
	move.w Player_LastWaterBodySurface(a0), d2

	@InWaterState:
	@InLadderState:

	rts

EchoAI_FindRaft:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Raft

	move.l #0x0, a2

	move.w (EntityCount_Longboat), d6
	beq    @NoLongboats
	move.l (EntityPoolStart_Longboat), a4
	subq.w #0x1, d6
	@LongboatLoop:

	; Check not hitting a wall
	tst.b  PhysicsObj_HitWall(a4)
	bne    @NextLongboat
	
	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a4
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftX, d1
	bgt    @NextLongboat
	cmp.w  #-Echo_AIDistRaftX, d1
	blt    @NextLongboat

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a4
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftY, d1
	bgt    @NextLongboat
	cmp.w  #-Echo_AIDistRaftY, d1
	blt    @NextLongboat

	; Found Longboat
	move.l a4, a2
	bra    @FoundLongboat

	@NextLongboat:
	lea    Longboat_Struct_Size(a4), a4
	dbra   d6, @LongboatLoop

	@NoLongboats:

	;=================================================

	move.w (EntityCount_Raft), d6
	beq    @NoRafts
	move.l (EntityPoolStart_Raft), a4
	subq.w #0x1, d6
	@RaftLoop:

	; Check not hitting a wall
	tst.b  PhysicsObj_HitWall(a4)
	bne    @NextRaft
	
	; Check within X threshold
	ENTITY_GETCENTREXW d0, a0
	ENTITY_GETCENTREXW d1, a4
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftX, d1
	bgt    @NextRaft
	cmp.w  #-Echo_AIDistRaftX, d1
	blt    @NextRaft

	; Check within Y threshold
	ENTITY_GETCENTREYW d0,a0
	ENTITY_GETCENTREYW d1,a4
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftY, d1
	bgt    @NextRaft
	cmp.w  #-Echo_AIDistRaftY, d1
	blt    @NextRaft

	; Found raft
	move.l a4, a2
	bra    @FoundRaft

	@NextRaft:
	lea    Raft_Struct_Size(a4), a4
	dbra   d6, @RaftLoop

	@NoRafts:

	;=================================================

	@FoundLongboat:
	@FoundRaft:

	rts

EchoAI_PushInteractionFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Fuzzl addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.w #Echo_AINodeTolerancePushFuzzlX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeTolerancePushFuzzlY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)

	; If first use of Fuzzl, lerp camera and announce
	btst.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a2)
	bne    @AlreadyUsed
	move.b #0x1, EchoAINode_LerpCamera(a3)
	jsr    EchoStartTalk
	@AlreadyUsed:

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d2,a4
	sub.l  d0, d2
	blt    @RightSide
	move.w #-Echo_AINodeTolerancePushObjX, EchoAINode_PosXOffset(a3)	; Left side of Fuzzl
	bra    @LeftSide
	@RightSide:
	move.w #Echo_AINodeTolerancePushObjX, EchoAINode_PosXOffset(a3)	; Right side of Fuzzl
	@LeftSide:

	rts

EchoAI_PushInteractionLog:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Log addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Get log pos
	ENTITY_GETCENTREXW d0,a2
	ENTITY_GETCENTREYW d1,a2

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	ENTITY_GETCENTREXW d2,a4
	sub.w  d0, d2
	blt    @RightSide
	subi.w #Echo_AINodeTolerancePushObjX, d0	; Left side of log (log centre - threshold)
	move.w #-Echo_AINodeTolerancePushObjX, d6	; Node pos offset
	bra    @LeftSide
	@RightSide:
	addi.w #Echo_AINodeTolerancePushObjX, d0	; Right side of log (log centre + threshold)
	move.w #Echo_AINodeTolerancePushObjX, d6	; Node pos offset
	@LeftSide:

	; Terrain test
	PUSHM  d0-d6/a2/a4
	ENTITY_GETBOTTOM d1, a2
	TOPIXELS d1
	sub.w  Entity_Height(a0), d1
	subi.w #Echo_AITerrainSearchYOffset, d1
	move.w #Echo_AITerrainSearchDist, d2
	move.b #0x1, d3
	jsr    PhysicsWorldFindTerrain
	move.w d0, d7
	POPM   d0-d6/a2/a4

	; If no terrain, bail
	tst.w  d7
	beq    @NoTerrain

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)
	move.l Log_PushDestMarker(a2), EchoAINode_UserData(a3)
	move.l a2, EchoAINode_Object(a3)
	move.w d6, EchoAINode_PosXOffset(a3)
	move.w #Echo_AINodeTolerancePushObjX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeTolerancePushObjY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)

	; Announce
	jsr    EchoStartTalk

	@NoTerrain:

	rts

EchoAI_PushInteractionButton:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Button addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	ENTITY_GETCENTREXW d0, a2
	ENTITY_GETCENTREYW d1, a2

	; Push button node
	jsr    EchoAIPushNode
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceButtonX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceButtonY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x1, EchoAINode_LerpCamera(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Button, EchoAINode_Action(a3)

	; If not already activated, announce
	tst.b  Button_Pressed(a2)
	bne    @NoAnnounce
	jsr    EchoStartTalk
	@NoAnnounce:

	rts

EchoAI_PushInteractionRaft:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Raft addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Push raft node
	jsr    EchoAIPushNode
	move.w #Echo_AINodeToleranceRaftX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceRaftY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x1, EchoAINode_LerpCamera(a3)
	move.b #0x1, EchoAINode_WaitAtWater(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Raft, EchoAINode_Action(a3)

	; Announce
	jsr    EchoStartTalk

	rts

EchoAI_PushInteractionEmergencyLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Ladder addr

	ENTITY_GETCENTREXW d0, a2
	ENTITY_GETCENTREYW d1, a2

	; Clear nodes, emergency ladder is an emergency
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)

	; Push ladder node
	jsr    EchoAIPushNode
	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLadderEnterX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLadderEnterY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_EmergencyLadder, EchoAINode_Action(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)

	rts

EchoAI_PushInteractionCart:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Cart addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	ENTITY_GETCENTREXW d0, a2

	; Push cart ride node
	jsr    EchoAIPushNode
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceCartX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceCartY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Cart, EchoAINode_Action(a3)

	; If Nymn not in cart, lerp camera and announce
	move.b #0x0, d0
	move.l Player1, a2
	cmp.b  #Player_RideState_Cart, Player_RideState(a2)
	beq    @NymnInCart
	move.b #0x1, d0
	PUSHMW d0-d1
	jsr    EchoStartTalk
	POPMW  d0-d1
	@NymnInCart:

	move.b d0, EchoAINode_LerpCamera(a3)

	rts

EchoAIPushNode:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- OUT: Node

	PUSHL  a0
	PUSHM  d0-d1

	; If first node, set follow nodes state
	tst.b  Echo_AIAutoStartFollowNodes(a0)
	beq    @NoAutoStart
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @NotFirst
	PUSHM  d2-d4
	jsr    EchoAIStart_FollowNodes
	POPM   d2-d4
	@NoAutoStart:
	@NotFirst:

	;==============================================================

	IFND FINAL
	sub.w  d1, d0
	cmp.w  #Echo_NumAINodes-1, d0
	bne    @FreeSpace
	RAISE_EXCEPTION *
	@FreeSpace:
	ENDIF

	;==============================================================

	moveq  #0x0, d7
	move.w Echo_AINodeProducer(a0), d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get producer position

	; Increment (and wrap) producer index
	addq.w #0x1, Echo_AINodeProducer(a0)
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	lea    Echo_AIFollowNodes(a0), a0	; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	;==============================================================

	; Init node
	PUSHL  a3
	move.l a3, a0
	jsr    EchoAINodeInit
	POPL   a3

	POPM   d0-d1
	POPL   a0

	rts

EchoAIPopNode:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	moveq  #0x0, d7
	move.w Echo_AINodeConsumer(a0), d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get consumer position

	; Increment (and wrap) consumer index
	addq.w #0x1, Echo_AINodeConsumer(a0)
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	lea    Echo_AIFollowNodes(a0), a0	; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	POPL  a0

	;==============================================================
	
	IFND FINAL
	; Sanity check node count
	move.w Echo_AINodeConsumer(a0), d6
	move.w Echo_AINodeProducer(a0), d7
	cmp.w  d6, d7
	bge    @CountOk
	RAISE_EXCEPTION *
	@CountOk:
	ENDIF

	;==============================================================

	; Execute action
	jsr    EchoAIRunNodeAction

	rts

EchoAIPeekNodeTypeFront:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Next node type (or 0xFF)

	move.b #0xFF, d0

	move.w Echo_AINodeConsumer(a0), d1
	move.w Echo_AINodeProducer(a0), d2
	cmp.w  d1, d2
	beq    @NoNodes

	jsr    EchoAIPeekNodeFront
	move.b EchoAINode_Action(a3), d0

	@NoNodes:

	rts

EchoAIPeekNodeFront:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	moveq  #0x0, d7
	move.w Echo_AINodeConsumer(a0), d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get consumer position
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	lea    Echo_AIFollowNodes(a0), a0	; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	POPL  a0

	rts

EchoAIPeekNodeBack:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	moveq  #0x0, d7
	move.w Echo_AINodeProducer(a0), d7
	subq.w #0x1, d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get consumer position
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	lea    Echo_AIFollowNodes(a0), a0	; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	POPL  a0

	rts

EchoAIRunNodeAction:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

		;==============================================================

	; Stop X movement if configured to
	tst.b  EchoAINode_StopMovement(a3)
	beq    @NoStopX
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)
	@NoStopX:

	;==============================================================

	; Stop interact mode
	jsr    PlayerCancelInteract

	;==============================================================

	; Lerp camera if configured, on screen, and not already enabled
	tst.b  EchoAINode_LerpCamera(a3)
	beq    @NoCameraLerp
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @OnScreen
	jsr    EchoStartCameraLerp
	@OnScreen:
	@NoCameraLerp:

	; Walk if configured
	tst.b  EchoAINode_Walk(a3)
	beq    @Run
	move.b #Character_WalkAI, d2
	jsr    CharacterPreventRun
	bra    @Walk
	@Run:
	move.b #Character_WalkAI, d2
	jsr    CharacterAllowRun
	@Walk:

	;==============================================================

	; Set object of interest
	move.l EchoAINode_Object(a3), Echo_AIObjectOfInterest(a0)

	;==============================================================

	; If climbing, don't run action if configured
	tst.b  EchoAINode_RunActionIfClimbing(a3)
	bne    @RunAction
	tst.b  Character_Climbing(a0)
	bne    @NoAction

	;==============================================================

	; Set X velocity if configured to
	move.l EchoAINode_VelX(a3), d0
	cmp.l  #Echo_AINoNodeVelocity, d0
	beq    @NoVelX
	move.l d0, PhysicsObj_VelX(a0)
	@NoVelX:

	;==============================================================

	@RunAction:

	; Determine node type and run action
	move.b EchoAINode_Action(a3), d0
	move.l EchoAINode_Object(a3), a2
	move.l EchoAINode_UserData(a3), a3
	cmp.b  #EchoAINode_Action_Fall, d0
	beq    @FallAction
	cmp.b  #EchoAINode_Action_Land, d0
	beq    @LandAction
	cmp.b  #EchoAINode_Action_GoTo, d0
	beq    @GoToAction
	cmp.b  #EchoAINode_Action_Jump, d0
	beq    @JumpAction
	cmp.b  #EchoAINode_Action_StartGlide, d0
	beq    @GlideAction
	cmp.b  #EchoAINode_Action_StopGlide, d0
	beq    @StopGlideAction
	cmp.b  #EchoAINode_Action_StartPush, d0
	beq    @StartPushAction
	cmp.b  #EchoAINode_Action_Button, d0
	beq    @StartButtonAction
	cmp.b  #EchoAINode_Action_Raft, d0
	beq    @StartRaftAction
	cmp.b  #EchoAINode_Action_EnterLadder, d0
	beq    @StartEnterLadderAction
	cmp.b  #EchoAINode_Action_ExitLadder, d0
	beq    @StartExitLadderAction
	cmp.b  #EchoAINode_Action_MoveLadder, d0
	beq    @StartMoveLadderAction
	cmp.b  #EchoAINode_Action_EmergencyLadder, d0
	beq    @StartEmergencyLadderAction
	cmp.b  #EchoAINode_Action_Cart, d0
	beq    @StartCartAction

	;==============================================================

	@GoToAction:
	
	; GoTo (nothing to do)
	bra    @EndAction

	;==============================================================

	@JumpAction:
	
	; Jump
	move.b #0x0, d2
	jsr    CharacterStartJump
	bra    @EndAction

	;==============================================================

	@LandAction:
	
	; Land
	bra    @EndAction

	;==============================================================
	
	@FallAction:
	
	; Stop X movement
	jsr    CharacterCancelXMovement
	bra    @EndAction

	;==============================================================

	@GlideAction:
	
	; Start gliding
	jsr    PlayerStartColourAbility
	bra    @EndAction

	;==============================================================

	@StopGlideAction:
	
	; Stop gliding
	jsr    PlayerStopColourAbility
	bra    @EndAction

	;==============================================================

	@StartPushAction:

	; Start push state
	jsr    EchoAIStart_PushObj
	bra    @EndAction

	;==============================================================

	@StartButtonAction:

	; Start button hold state
	jsr    EchoAIStart_ButtonHold
	bra    @EndAction

	;==============================================================

	@StartRaftAction:

	; Start raft ride state
	jsr    EchoAIStart_Raft
	bra    @EndAction

	;==============================================================

	@StartEnterLadderAction:

	; Start enter ladder state
	jsr    EchoAIStart_EnterLadder
	bra    @EndAction

	;==============================================================

	@StartExitLadderAction:

	; Start exit ladder state
	jsr    EchoAIStart_ExitLadder
	bra    @EndAction

	;==============================================================

	@StartMoveLadderAction:
	
	; Move up/down (nothing to do)
	bra    @EndAction

	;==============================================================

	@StartEmergencyLadderAction:

	; Start exit ladder state
	jsr    EchoAIStart_EmergencyLadder
	bra    @EndAction

	;==============================================================

	@StartCartAction:

	; Start cart ride state
	jsr    EchoAIStart_Cart
	bra    @EndAction

	;==============================================================
	
	@EndAction:

	POPL   a3

	@NoAction:

	rts

EchoAISetState:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 --- State

	cmp.b   #EchoAIState_None, d0
	beq     @None
	cmp.b   #EchoAIState_Follow, d0
	beq     @Follow
	cmp.b   #EchoAIState_FollowNodes, d0
	beq     @FollowNodes
	cmp.b   #EchoAIState_Lost, d0
	beq     @Lost
	cmp.b   #EchoAIState_CatchUp, d0
	beq     @CatchUp
	cmp.b   #EchoAIState_PushObj, d0
	beq     @PushObj

	@None:
	move.b  #EchoAIState_None, Echo_AIState(a0)
	bra     @End

	@Follow:
	move.b #0x1, d0
	jsr     EchoAIStart_Follow
	bra     @End

	@FollowNodes:
	jsr     EchoAIStart_FollowNodes
	bra     @End

	@Lost:
	jsr     EchoAIStart_Lost
	bra     @End

	@CatchUp:
	jsr     EchoAIStart_CatchUp
	bra     @End

	@PushObj:
	jsr     EchoAIStart_PushObj
	bra     @End

	@End:

	rts

EchoAIPanic:
	; a3 --- Optional marker

	PUSHL  a0

	; Get Nymn and Echo
	move.l (Player1), a2
	move.l (Player2), a0

	; If on screen, no problem
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen

	; If marker passed in, use it
	cmpa   #0x0, a3
	beq    @FindMarker

	move.w Entity_WorldPosX(a3), d2
	move.w Entity_WorldPosY(a3), d3

	bra    @FoundAIMarker

	@FindMarker:

	; Working back from Nymn, find last AI marker
	move.w Entity_WorldPosX(a2), d0
	move.w #0x0000, d2
	move.w #0x0000, d3

	move.w (EntityCount_AIMarker), d6
	beq    @NoAIMarkers
	move.l (EntityPoolStart_AIMarker), a3
	subq.w  #0x1, d6
	@AIMarkerLoop:

	; Check correct type
	cmp.b   #AIMarker_Type_SafePos, AIMarker_Type(a3)
	bne     @NextAIMarker

	; Get marker pos
	move.w  Entity_WorldPosX(a3), d1

	; If ahead of nymn, discard
	cmp.w   d1, d0
	blt     @NextAIMarker

	; If ahead of last found marker, set as new
	cmp.w   d1, d2
	bgt     @NextAIMarker
	move.w  d1, d2
	move.w  Entity_WorldPosY(a3), d3

	@NextAIMarker:
	lea    AIMarker_Struct_Size(a3), a3
	dbra   d6, @AIMarkerLoop

	cmpi.w #0x0000, d2
	bne    @FoundAIMarker

	@NoAIMarkers:

	; Shouldn't be here
	RAISE_EXCEPTION *

	@FoundAIMarker:

	; Set position
	move.w d2, Entity_WorldPosX(a0)
	move.w Entity_Height(a0), d4
	sub.w  d4, d3
	move.w d3, Entity_WorldPosY(a0)

	; Back to follow state
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	@OnScreen:

	POPL   a0

	rts
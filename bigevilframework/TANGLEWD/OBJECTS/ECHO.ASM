;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

ECHO_AI_DEBUG_SAFE_POS 		equ 0
ECHO_AI_DEBUG_NODE_POS		equ 0

; Constants
Echo_HowlDelay				equ 0x0030		; Delay between Nymn and Echo howling
Echo_JumpToNymnVel			equ 0x040000	; Jump velocity when mounting Nymn
Echo_DismountNymnVel		equ 0x068000	; Jump velocity when dismounting Nymn
Echo_ProbeWallTop			equ 0x0010		; Slightly lower wall probe (can squeeze through small gaps)
Echo_HowlCameraLerpSpeed	equ 0x0010

; AI
Echo_NumAINodes				equ 0x20			; Num AI follow nodes to store in queue (must be power of two)
Echo_AIOuterScreenBoundsExt	equ 0x0060			; Extension to screen bounds to determine if 'lost'
Echo_AIInnerScreenBoundsExt	equ 0x0030			; Extension to screen bounds to determine if 'found'
Echo_LostTime				equ 0x0078			; Time off screen until considered lost
Echo_NodeLostTime			equ 0x0130			; Time off screen until considered lost if following nodes
Echo_CatchUpTime			equ 0x0300			; Time off screen in catchup mode until considered lost again
Echo_NodeFailTime			equ 0x0100			; Timeout to reach next node before returning to basic follow state
Echo_AIFollowDistance		equ 0x0040			; Max X distance from Nymn when following
Echo_AIJumpDistance			equ 0x0020			; Y distance (upward) from Nymn to add a jump node
Echo_AIFindHoleDistance		equ 0x0030			; Y distance (downward) from Nymn to add a drop down node
Echo_AIDistFuzzlX			equ screen_width	; X distance from Fuzzl to add a push obj node
Echo_AIDistFuzzlY			equ Player1Height	; Y distance from Fuzzl to add a push obj node
Echo_AIDistLogX				equ screen_width	; X distance from log to add a goto node
Echo_AIDistLogY				equ Player1Height	; Y distance from log to add a goto node
Echo_AIDistButtonX			equ screen_width	; X distance from button to add a goto node
Echo_AIDistButtonY			equ Player1Height	; Y distance from button to add a goto node
Echo_AIDistPushObjX			equ 0x0008			; Max distance from pushable object to start pushing
Echo_AINoNodeVelocity		equ 0xFFFF			; Don't copy Nymn's X velocity when running node action
Echo_AICameraLerpTime		equ 0x0020			; Camera lerp time when interesting nodes reached

; AI distance tolerances for node types
Echo_AINodeToleranceJumpX		equ 0x0010
Echo_AINodeToleranceJumpY		equ 0x0080
Echo_AINodeToleranceJumpLostX	equ 0x0010
Echo_AINodeToleranceJumpLostY	equ 0x0200
Echo_AINodeToleranceLandX		equ 0x0020
Echo_AINodeToleranceLandY		equ 0x0060
Echo_AINodeToleranceFallX		equ 0x0020
Echo_AINodeToleranceFallY		equ 0x0100
Echo_AINodeToleranceGlideX		equ 0x0010
Echo_AINodeToleranceGlideY		equ 0x0040
Echo_AINodeToleranceGlideStopX	equ 0x0020
Echo_AINodeToleranceGlideStopY	equ 0x0060
Echo_AINodeTolerancePushX		equ 0x0010
Echo_AINodeTolerancePushY		equ 0x0010

; Animations
EchoAnimIdx_JumpToNymn    	equ 0
EchoAnimIdx_MountNymn    	equ 1
EchoAnimIdx_Hide			equ 2
EchoAnimIdx_Scared			equ 3
EchoAnimIdx_StandFromHiding	equ 4
EchoAnimIdx_PounceNymn		equ 5
EchoAnimIdx_GreetNymn		equ 6
; -------------------------------
EchoAnimIdx_Max       		equ 7

; Mount/ride Nymn state
EchoMountNymn_Inactive		equ 0
EchoMountNymn_Jumping		equ 1
EchoMountNymn_Mounting		equ 2
EchoMountNymn_Riding		equ 3

; AI state
EchoAIState_None			equ 0	; No AI, under player/cutscene control
EchoAIState_Follow			equ 1	; Following Nymn directly
EchoAIState_FollowNodes		equ 3	; Following Nymn using nodes
EchoAIState_Lost			equ 4	; Waiting for safe place to transport to
EchoAIState_CatchUp			equ 5	; Running directly back to Nymn
EchoAIState_PushObj			equ 6	; Pushing an object towards Nymn
EchoAIState_Button			equ 7	; Holding a button until deactivated
EchoAIState_Water			equ 8	; Echo doesn't like water :(
EchoAIState_Platform		equ 9	; Standing on moving platform, waiting for it to stop

; AI node actions
EchoAINode_Action_GoTo			equ 0x0
EchoAINode_Action_Jump			equ 0x1
EchoAINode_Action_Fall			equ 0x2
EchoAINode_Action_Land			equ 0x3
EchoAINode_Action_StartGlide	equ 0x4
EchoAINode_Action_StopGlide		equ 0x5
EchoAINode_Action_StartPush		equ 0x6
EchoAINode_Action_Button		equ 0x7

; AI node userdata
EchoAIPush_Left					equ 0x0
EchoAIPush_Right				equ 0x1

	rsset 0
;---------------------------------
EchoAINode_UserData			rs.l 1	; Node specific user data
EchoAINode_Object			rs.l 1	; Object of interest
EchoAINode_PosX				rs.w 1	; Target pos X
EchoAINode_PosY				rs.w 1	; Target pos Y
EchoAINode_VelX				rs.w 1	; Forced X velocity set when target reached
EchoAINode_ToleranceX		rs.w 1	; Target distance tolerance X
EchoAINode_ToleranceY		rs.w 1	; Target distance tolerance Y
EchoAINode_Action			rs.b 1	; Action to run when target reached
EchoAINode_StopMovement		rs.b 1	; Stop X movement when target reached
EchoAINode_RequireOnFloor	rs.b 1	; Require character to be on floor to reach target
EchoAINode_ForceIfHitWall	rs.b 1	; Force action to run if hit a wall whilst searching for target
EchoAINode_LerpCamera		rs.b 1	; Lerp camera to character when node reached
;---------------------------------
EchoAINode_Struct_Pad		rs.b 1
EchoAINode_Struct_Size		rs.b 0

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Echo_Animations	   			rs.b (Animation_Struct_Size*EchoAnimIdx_Max)
Echo_AIFollowNodes			rs.b (EchoAINode_Struct_Size*Echo_NumAINodes)
Echo_AIObjectOfInterest		rs.l 1	; AI current object of interest
Echo_AINodeProducer			rs.w 1	; AI follow node queue
Echo_AINodeConsumer			rs.w 1
Echo_AILostTimer			rs.w 1	; If depleted, Echo has lost Nymn
Echo_AINodeFailTimer		rs.w 1	; If depleted, Echo failed to reach last node
Echo_AISafePosX				rs.w 1	; Safe position (Nymn was once on the floor here, and is currently out of view)
Echo_AISafePosY				rs.w 1
Echo_AIPotentialSafePosX	rs.w 1	; Nymn's last floor position, will become safe posisiton when out of view
Echo_AIPotentialSafePosY	rs.w 1
Echo_HowlTimer				rs.w 1
Echo_LastNymnFloorPosX		rs.w 1
Echo_LastNymnFloorPosY		rs.w 1
Echo_LastNymnFloorVelX		rs.w 1
Echo_AICameraLerpTimer		rs.w 1
Echo_AILinearFollowOnly		rs.b 1	; In follow state, follow X axis only and don't collect nodes
Echo_AINymnJumping			rs.b 1	; Nymn is currently jumping
Echo_AIWaitingForNymnLanding rs.b 1	; Waiting for Nymn's landing to create a node
Echo_AIWaitingForWaterPath	rs.b 1	; Hit water, not happy about it, waiting for a path to cross
Echo_AINymnGliding			rs.b 1	; Track Nymn currently gliding
Echo_AIWaterDirection		rs.b 1	; Direction to face water waiting for Nymn to help
Echo_AIState				rs.b 1
Echo_MountedState			rs.b 1
Echo_HowlState				rs.b 1
;---------------------------------
Echo_Struct_Pad      		rs.b 1
Echo_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
EchoInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF INCLUDE_CHARACTER_ECHO
	
	; Base functionality
	jsr    PlayerInit

	; Count
	addq.w #0x1, EntityCount_Echo
	
	; Set update and render routines
	move.l #EchoUpdate, Entity_UpdateRoutine(a0)
	move.l #EchoDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
	move.w #Echo_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #Echo_LostTime, Echo_AILostTimer(a0)
	move.w #Echo_NodeFailTime, Echo_AINodeFailTimer(a0)
	move.w #0x0, Echo_HowlTimer(a0)
	move.w #0x0, Echo_AIPotentialSafePosX(a0)
	move.w #0x0, Echo_AIPotentialSafePosY(a0)
	move.w #0x0, Echo_AICameraLerpTimer(a0)
	move.b #EchoAIState_None, Echo_AIState(a0)
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	move.b #0x0, Echo_AINymnGliding(a0)
	move.b #0x0, Echo_AINymnJumping(a0)
	move.b #0x0, Echo_AIWaitingForNymnLanding(a0)
	move.b #0x0, Echo_AILinearFollowOnly(a0)
	move.b #0x0, Echo_HowlState(a0)
	
	; Setup interaction routines
	move.l #PlayerStartColourAbility, Character_InteractStartA(a0)
	move.l #PlayerStopColourAbility, Character_InteractCancelA(a0)
	move.l #PlayerStartInteract, Character_InteractStartB(a0)
	move.l #PlayerCancelInteract, Character_InteractCancelB(a0)
	
	;==============================================================
	
	; Setup default SFX
	IFND DEBUG
	lea    Character_SFX(a0), a2
	
	; Land
	lea    CharacterSFXIdx_Land*size_long(a2), a3
	move.l #SFX_Land, (a3)

	; Water splash
	lea    CharacterSFXIdx_WaterSplash*size_long(a2), a3
	move.l #SFX_Water_Splash1, (a3)

	; Water Jump
	lea    CharacterSFXIdx_WaterJump*size_long(a2), a3
	move.l #SFX_Water_Jump, (a3)
	ENDIF
	
	;==============================================================

	;==============================================================
	; Setup default character animations

	; Idle
	ANIM_LOAD_DEFAULT Echo_idle,Echo_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Dead
	ANIM_LOAD_DEFAULT Echo_death,Echo_death,Character_Animations,CharacterAnimIdx_Dead,0,1,1

	; Run
	ANIM_LOAD_DEFAULT Echo_run,Echo_run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Run
	ANIM_LOAD_DEFAULT Echo_walk,Echo_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Walk to run transition
	ANIM_LOAD_DEFAULT Echo_walktorun,Echo_walktorun,Character_Animations,CharacterAnimIdx_WalkToRun,0,0,0

	; Jump
	ANIM_LOAD_DEFAULT Echo_jump,Echo_jump,Character_Animations,CharacterAnimIdx_Jump,1,0,0

	; Fall
	ANIM_LOAD_DEFAULT Echo_fall,Echo_fall,Character_Animations,CharacterAnimIdx_Fall,1,0,0
	
	; Water wade
	ANIM_LOAD_DEFAULT Echo_wade,Echo_wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0

	; Glide
	ANIM_LOAD_DEFAULT Echo_glide,Echo_glide,Character_Animations,CharacterAnimIdx_Glide,1,0,0

	; Push (light object)
	ANIM_LOAD_DEFAULT Echo_push,Echo_push,Character_Animations,CharacterAnimIdx_Push,1,0,0
	
	; Push (heavy object)
	ANIM_LOAD_DEFAULT Echo_pushheavy,Echo_pushheavy,Character_Animations,CharacterAnimIdx_PushHeavy,1,0,0

	;==============================================================
	; Setup player animations

	; Colour switch
	ANIM_LOAD_DEFAULT Echo_colourswitch,Echo_colourswitch,Player_Animations,PlayerAnimIdx_Switch,0,1,0

	; Howl
	ANIM_LOAD_DEFAULT Echo_calllong,Echo_calllong,Player_Animations,PlayerAnimIdx_Howl,0,1,0
	
	;==============================================================
	; Setup Echo specific animations

	; Jump up to Nymn (same anim as Jump but non-looping)
	ANIM_LOAD_DEFAULT echo_jump,echo_jump,Echo_Animations,EchoAnimIdx_JumpToNymn,0,0,0

	; Mount Nymn
	ANIM_LOAD_DEFAULT echo_mountnymn,echo_mountnymn,Echo_Animations,EchoAnimIdx_MountNymn,0,1,0

	; Hide
	ANIM_LOAD_DEFAULT echo_hide,echo_hide,Echo_Animations,EchoAnimIdx_Hide,0,1,0
	
	; Scared
	ANIM_LOAD_DEFAULT echo_afraid,echo_afraid,Echo_Animations,EchoAnimIdx_Scared,1,1,0
	
	; Stand up from hiding
	ANIM_LOAD_DEFAULT echo_standfromhiding,echo_standfromhiding,Echo_Animations,EchoAnimIdx_StandFromHiding,0,1,0
	
	; Pounce on Nymn
	ANIM_LOAD_DEFAULT echo_pouncenymn,echo_pouncenymn,Echo_Animations,EchoAnimIdx_PounceNymn,0,1,0
	
	; Greet Nymn
	ANIM_LOAD_DEFAULT echo_greetnymn,echo_greetnymn,Echo_Animations,EchoAnimIdx_GreetNymn,0,1,0

	ENDIF
	
	rts

EchoLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF INCLUDE_CHARACTER_ECHO

	SPRITE_LOAD_DEFAULT echo,PaletteId_Player,0x0

	ENDIF

	rts
	
EchoUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If mounting Nymn, update is handled by Nymn to match positions
	move.b Echo_MountedState(a0), d0
	cmp.b  #EchoMountNymn_Inactive, d0
	bne    @Mounting

	; Match Nymn's colour and power ability
	move.l (Player1), a2
	move.b Player_Colour(a2), Player_Colour(a0)
	move.w Player_ColourChangeTimer(a2), Player_ColourChangeTimer(a0)
	
	; AI update
	jsr EchoUpdateAI
	
	; Default update
	jsr PlayerUpdate

	; Update howl timer
	move.w Echo_HowlTimer(a0), d0
	tst.w  d0
	beq    @TimerNotRunning
	subq.w  #0x1, d0
	move.w d0, Echo_HowlTimer(a0)
	tst.w  d0
	bne    @TimerStillRunning
	jsr    EchoHowl
	@TimerStillRunning:
	@TimerNotRunning:
	
	@Carried:

	; Update camera lerp timer
	move.w Echo_AICameraLerpTimer(a0), d0
	tst.w  d0
	beq    @LerpTimerNotRunning
	tst.w  CameraTargetLerpSpeed
	bne    @LerpTimerNotRunning
	subq.w #0x1, d0
	move.w d0, Echo_AICameraLerpTimer(a0)
	tst.w  d0
	bne    @LerpTimerRunning
	move.l a0, CameraTargetLerpSource
	move.l (Player1), CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #Echo_HowlCameraLerpSpeed, CameraTargetLerpSpeed
	@LerpTimerNotRunning:
	@LerpTimerRunning:

	@Mounting:
	
	rts

EchoUpdateRiding:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If jumping up to Nymn
	move.b Echo_MountedState(a0), d0
	cmp.b  #EchoMountNymn_Jumping, d0
	beq    @Jumping
	
	; If landing on Nymn
	cmp.b  #EchoMountNymn_Mounting, d0
	beq    @Landing
	
	; Finished mounting sequence
	bra    @Riding
	
	;==============================================================
	
	@Jumping:
	
	; Wait for anim to finish
	tst.b AnimObj_Playing(a0)
	bne   @InSequence
	
	; Snap to Nymn's position
	move.l (Player1), a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	; Set mounting anim
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_MountNymn*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Set mounting state
	move.b #EchoMountNymn_Mounting, Echo_MountedState(a0)
	
	bra   @InSequence
	
	;==============================================================
	
	@Landing:
	
	; Wait for anim to finish
	tst.b AnimObj_Playing(a0)
	bne   @InSequence
	
	; Set riding state
	move.b #EchoMountNymn_Riding, Echo_MountedState(a0)
	
	;==============================================================
	
	@Riding:
	
	; Lock to Nymn's position
	move.l (Player1), a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	; Sync direction
	move.b SpriteObj_FlippedX(a3), SpriteObj_FlippedX(a0)
	
	;==============================================================
	
	; Set matching animation
	move.b Character_AnimIdx(a3), d0
	move.b Character_AnimIdx(a0), d1
	cmp.b  d0, d1
	beq    @MatchingAnim
	
	move.b d0, Character_AnimIdx(a0)
	
	; Get anim struct address from character
	move.l a1, -(sp)
	lea    Character_Animations(a0), a1
	move.b Character_AnimIdx(a0), d1
	andi.l #0xFF, d0
	andi.l #0xFF, d1
	mulu   #Animation_Struct_Size, d1
	add.l  d1, a1
	
	; Apply animation
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	
	move.l (sp)+, a1
	
	@MatchingAnim:
	
	;==============================================================
	
	; If anim frame changed
	move.l AnimObj_AnimSubFrame(a3), d0
	move.l AnimObj_AnimSubFrame(a0), d1
	cmp.l  d0, d1
	beq    @AnimSynced
	
	; Sync animation frame, mark as dirty
	move.l d0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	
	@AnimSynced:
	
	; Update animation only
	jsr    AnimObjUpdate
	
	bra    @Carried

	@InSequence:

	; Update physics only
	jsr    PhysicsObjUpdate

	@Carried:

	rts

EchoDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If mounting Nymn, drawing is handled by Nymn to match anim frames
	tst.b Echo_MountedState(a0)
	bne   @NoDraw
	jsr   CharacterDraw
	@NoDraw:

	IF ECHO_AI_DEBUG_NODE_POS
	clr.l  d6
	clr.l  d7
	move.w Echo_AINodeConsumer(a0), d6
	move.w Echo_AINodeProducer(a0), d7
	cmp.w  d6, d7
	beq    @DebugNodeEnd
	@DebugNodeLp:
	PUSHM  d6-d7/a0-a1
	andi.w #Echo_NumAINodes-1, d6
	andi.w #Echo_NumAINodes-1, d7
	mulu   #EchoAINode_Struct_Size, d6
	lea    Echo_AIFollowNodes(a0), a2
	add.l  d6, a2
	move.w Entity_Height(a0), d3
	move.l (EntityPoolStart_Fuzzl), a0
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	PUSHM  d0-d1
	move.w EchoAINode_PosX(a2), d0
	move.w EchoAINode_PosY(a2), d1
	add.w  d3, d1
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	jsr    SpriteObjDraw
	POPM   d0-d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	POPM   d6-d7/a0-a1
	addq.w #0x1, d6
	cmp.w  d6, d7
	bne    @DebugNodeLp
	@DebugNodeEnd:
	ENDIF

	rts

EchoStartCameraLerp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.w  Echo_AICameraLerpTimer(a0)
	bne    @NoCameraLerp
	move.l (Player1), CameraTargetLerpSource
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #Echo_HowlCameraLerpSpeed, CameraTargetLerpSpeed
	move.w #Echo_AICameraLerpTime, Echo_AICameraLerpTimer(a0)
	@NoCameraLerp:

	rts
	
EchoBeginCarried:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF INCLUDE_CHARACTER_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Swap out idle, walk and water wade anims for carried versions
	ANIM_LOAD_DEFAULT Echo_carriedidle,Echo_carriedidle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo_carriedwalk,Echo_carriedwalk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Echo_carriedwalk,Echo_carriedwalk,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0
	
	; Snap to Nymn's direction
	move.l (Player1), a3
	move.b SpriteObj_FlippedX(a3), SpriteObj_FlippedX(a0)
	
	; Begin jump
	move.b #0x0, d2
	jsr    CharacterStartJump

	; Fixed velocity
	move.l #Echo_JumpToNymnVel, PhysicsObj_VelY(a0)
	
	; Set jumping-to-Nymn anim
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_JumpToNymn*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Start mounting sequence
	move.b #EchoMountNymn_Jumping, Echo_MountedState(a0)
	
	; Stop AI
	move.b #EchoAIState_None, Echo_AIState(a0)

	ENDIF

	rts
	
EchoEndCarried:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF INCLUDE_CHARACTER_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Restore default idle, walk and water wade anims
	ANIM_LOAD_DEFAULT Echo_idle,Echo_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo_walk,Echo_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Echo_wade,Echo_wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0
	
	; Force character animation update to restore anim state
	jsr    CharacterUpdateAnimState

	; Jump off (forced jump)
	move.b #0x1, d2
	jsr    CharacterStartJump

	; Override jump velocity
	move.l #Echo_DismountNymnVel, PhysicsObj_VelY(a0)
	
	; No longer mounting
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	
	; Start follow AI
	jsr    EchoAIStart_Follow

	ENDIF

	rts

EchoStartHowlTimer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	move.w #Echo_HowlDelay, Echo_HowlTimer(a0)
	rts

EchoHowl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set howling anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	; Start camera lerp
	jsr    EchoStartCameraLerp

	; Set howl state
	move.b #0x1, Echo_HowlState(a0)

	rts
	
EchoUpdateAI:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b Echo_AIState(a0), d0
	
	cmp.b  #EchoAIState_None, d0
	beq    @End
	cmp.b  #EchoAIState_Follow, d0
	beq    @Follow
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
	cmp.b  #EchoAIState_Platform, d0
	beq    @Platform
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

	@Platform:
	jsr    EchoAIUpdate_Platform
	bra    @End
	
	@End:

	rts

EchoAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set follow state
	move.b #EchoAIState_Follow, Echo_AIState(a0)
	
	; Clear node queue
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Reset lost timer
	move.w #Echo_LostTime, Echo_AILostTimer(a0)
	
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
	jsr    EchoAIStart_Lost
	bra    @Lost
	
	@OnScreen:

	; On screen, reset lost timer
	move.w #Echo_LostTime, Echo_AILostTimer(a0)

	@LostTimerRunning:

	; Watch Nymn's actions, create AI follow nodes
	jsr    EchoAI_WatchNymnMovement
	
	; Watch Nymn's potential safe positions
	jsr    EchoAI_WatchNymnSafePos

	@LinearFollow:

	; Follow distance tolerance
	move.w #Echo_AIFollowDistance, d3

	; Check if within X tolerance
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	
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
	
	@End:

	; Search for interesting objects
	jsr    EchoAI_FindInterestingObj
	
	rts

EchoAIStart_LinearFollow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start follow state
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
	
	rts
	
EchoAIUpdate_FollowNodes:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Watch Nymn's actions, create AI follow nodes
	jsr    EchoAI_WatchNymnMovement
	
	; Watch Nymn's potential safe positions
	jsr    EchoAI_WatchNymnSafePos

	; If off screen, count down lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	jsr    EchoAIStart_Lost
	bra    @Lost
	@OnScreen:
	@LostTimerRunning:

	; If node fail timer depleted, return to basic follow state
	move.w Echo_AINodeFailTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AINodeFailTimer(a0)
	bne    @NodeFailTimerRunning
	jsr    EchoAIStart_Follow
	bra    @NodeFailed
	@NodeFailTimerRunning:

	; Peek node queue
	jsr    EchoAIPeekNodeFront

	; Set target
	move.w EchoAINode_PosX(a3), d1
	move.w EchoAINode_PosY(a3), d2

	; Set tolerance
	move.w EchoAINode_ToleranceX(a3), d3
	move.w EchoAINode_ToleranceY(a3), d4

	; If run into a wall, forcefully execute the next node
	tst.b  EchoAINode_ForceIfHitWall(a3)
	beq    @NotHitWall
	PUSHL  d1
	PHYSICS_HITFACINGWALL a0
	POPL   d1
	tst.b  d0
	bne    @HittingWall
	@NotHitWall:

	; Check if within X tolerance
	ENTITY_GETCENTREX d0,a0
	TOPIXELS d0
	
	; Check left bounds
	move.w d1, d5
	sub.w  d3, d5
	cmp.w  d0, d5
	bgt    @TooFarleft
	
	; Check right bounds
	move.w d1, d5
	add.w  d3, d5
	cmp.w  d0, d5
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

	; Check if required to be on floor
	tst.b  EchoAINode_RequireOnFloor(a3)
	beq    @NotRequiredOnFloor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @End
	@NotRequiredOnFloor:

	; If Y target reached
	move.w Entity_WorldPosY(a0), d0
	sub.w  d0, d2
	cmp.w  d4, d2
	bgt    @End
	neg.w  d4
	cmp.w  d4, d2
	blt    @End

	; Pop AI node from queue and run action
	jsr    EchoAIPopNode

	; Reset fail timer
	move.w #Echo_NodeFailTime, Echo_AILostTimer(a0)

	; If last node, return to follow
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @End
	jsr    EchoAIStart_Follow
	
	@Lost:
	@NodeFailed:
	@End:
	
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
	move.w Echo_AISafePosX(a0), d0
	move.w Echo_AISafePosY(a0), d1
	tst.w  d0
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
	move.w #Echo_CatchUpTime, Echo_AILostTimer(a0)
	
	rts
	
EchoAIUpdate_CatchUp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If on screen, back to follow state
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	beq    @OffScreen
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
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	
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
	; a2 --- Object of interest
	
	; Set push state
	move.b #EchoAIState_PushObj, Echo_AIState(a0)

	; Set object
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Begin push interaction
	jsr    PlayerStartInteract
	
	rts
	
EchoAIUpdate_PushObj:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get pushing object and Nymn
	move.l (Player1), a2
	move.l Echo_AIObjectOfInterest(a0), a3

	; If Nymn is still in the push direction (push obj between Nymn and Echo)
	move.w Entity_WorldPosX(a0), d1	; Echo
	move.w Entity_WorldPosX(a2), d2	; Nymn
	move.w Entity_WorldPosX(a3), d3	; Object
	cmp.w  d1, d2					; If Echo X > Nymn X, swap
	bgt    @NoSwap
	move.w d1, d4
	move.w d2, d1
	move.w d4, d2
	@NoSwap:
	cmp.w  d3, d1
	bgt    @OutOfBounds
	cmp.w  d2, d1
	bgt    @OutOfBounds
	bra    @WithinBounds

	@OutOfBounds:
	
	; Object not between Nymn and Echo, abandon it
	jsr    PlayerCancelInteract
	jsr    EchoAIStart_Follow
	bra    @End

	@WithinBounds:

	; If object not touching Nymn
	ENTITY_GETBOUNDS d1,d2,d5,a2
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	bne    @TouchingNymn
	
	; Continue pushing towards Nymn
	jsr    PlayerStartInteract

	move.w #Echo_AIDistPushObjX, d3
	
	; Check if within X tolerance
	move.l (Player1), a2
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d0
	TOPIXELS d1
	
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

	; Within bounds or touching Nymn, back to follow state
	jsr    PlayerCancelInteract
	jsr    EchoAIStart_Follow
	bra    @End
	
	@TooFarleft:
	jsr    CharacterMoveRight
	bra    @End
	
	@TooFarRight:
	jsr    CharacterMoveLeft

	; If lost, back to follow state to re-evaluate

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
	jsr    EchoAIStart_Follow
	@StillActive:

	rts

EchoAIStart_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Water body
	
	; Set water state
	move.b #EchoAIState_Water, Echo_AIState(a0)

	; Set water body
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Set direction
	move.b SpriteObj_FlippedX(a0), Echo_AIWaterDirection(a0)

	; Clear wait state
	move.b #0x0, Echo_AIWaitingForWaterPath(a0)

	; Start running towards closest shore
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	sub.l  d0, d1
	tst.l  d1
	bgt    @MoveLeft
	jsr    CharacterMoveRight
	bra    @MoveRight
	@MoveLeft:
	jsr    CharacterMoveLeft
	@MoveRight:
	
	rts

EchoAIUpdate_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If waiting for a path/Nymn's help
	tst.b  Echo_AIWaitingForWaterPath(a0)
	bne    @OutOfWater

	; If no longer in water
	tst.b  Character_InWater(a0)
	bne    @InWater

	; Stop moving
	jsr    CharacterCancelXMovement

	; Face water
	move.b Echo_AIWaterDirection(a0), SpriteObj_FlippedX(a0)

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

	cmp.b  Echo_AIWaterDirection(a0), d0
	beq    @SameDir
	jsr    EchoAIStart_Follow
	bra    @End
	@SameDir:

	;==============================================================

	; Check ground centre of water body to see if a path has opened up
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	PUSHM  d0-d1

	; Get centre of water body as floor probe
	move.l Echo_AIObjectOfInterest(a0), a2
	ENTITY_GETCENTREX d0,a2
	TOPIXELS d0
	move.w Entity_WorldPosY(a2), d1
	sub.w  Entity_Height(a0), d1
	subq.w #0x08, d1
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

	; Bail if floor is default floo
	lea    PhysicsWorld, a2
	move.w PhysicsWorld_GroundHeight(a2), d4
	cmp.w  d3, d4
	beq    @NoFloor

	; Get water body bounds
	move.l Echo_AIObjectOfInterest(a0), a2
	ENTITY_GETBOUNDS d1,d2,d5,a2

	; Check floor inside water
	jsr    PHYS_TestPointInsideBox
	tst.b  d0
	bne    @FloorInWater

	; Found dry land, back to follow state
	jsr    EchoAIStart_Follow

	; Lerp camera to show Echo is safe
	jsr    EchoStartCameraLerp

	@NoFloor:
	@FloorInWater:

	; Restore original pos
	POPM   d0-d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	;==============================================================

	@InWater:
	@End:

	rts

EchoAIStart_Platform:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- platform
	
	; Set platform state
	move.b #EchoAIState_Platform, Echo_AIState(a0)

	; Set platform
	move.l a2, Echo_AIObjectOfInterest(a0)
	
	rts

EchoAIUpdate_Platform:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get platform
	move.l Echo_AIObjectOfInterest(a0), a2

	; Wait for platform to stop
	tst.l  Platform_VelX(a2)
	bne    @PlatformMoving
	tst.l  Platform_VelY(a2)
	bne    @PlatformMoving

	; Back to follow state
	jsr    EchoAIStart_Follow

	@PlatformMoving:

	rts

EchoAI_CheckOuterScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS d3,d4,d5
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

	CAMERA_GETSCREENBOUNDS d3,d4,d5
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

	CAMERA_GETSCREENBOUNDS d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts

EchoAI_CheckLostPosScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

	rts

EchoAI_FindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (l) X pos
	; d1 (l) Y pos
	; d2 (l) OUT: Found floor

	PUSHL  Entity_WorldPosX(a0)
	PUSHL  Entity_WorldPosY(a0)
	PUSHL  PhysicsObj_LastFloor(a0)
	PUSHL  PhysicsObj_LastPlatform(a0)

	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastPlatform(a0)

	jsr    PhysicsObjSnapToFloor

	move.l PhysicsObj_LastFloor(a0), d2

	POPL   PhysicsObj_LastPlatform(a0)
	POPL   PhysicsObj_LastFloor(a0)
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
	move.w Echo_AIPotentialSafePosX(a0), d2
	move.w Echo_AIPotentialSafePosY(a0), d3
	tst.w  d2
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

	; If Nymn on floor, take floor pos
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @NymnInAir
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, Echo_LastNymnFloorPosX(a0)
	move.w Entity_WorldPosY(a2), Echo_LastNymnFloorPosY(a0)
	move.w PhysicsObj_VelX(a2), Echo_LastNymnFloorVelX(a0)
	@NymnInAir:

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

	; Create landing node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, EchoAINode_PosX(a3)
	move.w Echo_LastNymnFloorPosY(a0), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceLandX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceLandY, EchoAINode_ToleranceY(a3)
	move.w PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x0, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.b #EchoAINode_Action_Land, EchoAINode_Action(a3)
	bra    @End

	@NotLanded:

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
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceGlideX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceGlideY, EchoAINode_ToleranceY(a3)
	move.w PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x0, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.b #EchoAINode_Action_StartGlide, EchoAINode_Action(a3)
	bra    @End

	@CancelGlide:

	; Stopped gliding, push node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w PhysicsObj_VelX(a2), EchoAINode_VelX(a3)
	move.w #Echo_AINodeTolerancePushX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeTolerancePushY, EchoAINode_ToleranceY(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x0, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.b #EchoAINode_Action_StopGlide, EchoAINode_Action(a3)
	bra    @End

	@NoGlideChange:

	; If Nymn is gliding, don't add other node types
	cmp.b  #ColourYellow, Player_ActiveColourAbility(a2)
	beq    @End

	;==============================================================

	; Get Nymn Y pos
	move.w Entity_WorldPosY(a2), d1

	; If not waiting for landing from jump
	tst.b  Echo_AIWaitingForNymnLanding(a0)
	bne    @End

	; Get Echo Y pos, or last node Y pos
	move.w Echo_AINodeConsumer(a0), d4
	cmp.w  Echo_AINodeProducer(a0), d4
	beq    @NoNodes
	jsr    EchoAIPeekNodeBack
	move.w EchoAINode_PosY(a3), d0
	bra    @UsingNodePos
	@NoNodes:
	move.w Entity_WorldPosY(a0), d0
	@UsingNodePos:

	; If above Echo (or last node pos), store pos and create jump node
	move.w d0, d3
	move.w d1, d4
	sub.w  d4, d3
	cmp.w  #Echo_AIJumpDistance, d3
	blt    @WithinYToleranceUp

	; Create jump node
	jsr    EchoAIPushNode
	move.w Echo_LastNymnFloorPosX(a0), EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w Echo_LastNymnFloorVelX(a0), EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceJumpLostX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceJumpLostY, EchoAINode_ToleranceY(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x0, EchoAINode_RequireOnFloor(a3)
	move.b #0x1, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.b #EchoAINode_Action_Jump, EchoAINode_Action(a3)

	; If Nymn was in air because of a jump, set waiting for landing, take floor pos as target Y, and require on floor
	tst.b  Character_Jumping(a2)
	beq    @NotJumping
	move.b #0x1, Echo_AIWaitingForNymnLanding(a0)
	move.w Echo_LastNymnFloorPosY(a0), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceJumpX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceJumpY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	@NotJumping:

	bra    @End

	@WithinYToleranceUp:

	;==============================================================

	; If below Echo (or last node pos), store pos and create fall node
	move.w d0, d3
	move.w d1, d4
	sub.w  d3, d4
	cmp.w  #Echo_AIJumpDistance, d4
	blt    @WithinYToleranceDown

	; Create fall node
	jsr    EchoAIPushNode
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceFallX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceFallY, EchoAINode_ToleranceY(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x0, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.b #EchoAINode_Action_Fall, EchoAINode_Action(a3)

	@WithinYToleranceDown:

	@End:

	rts

EchoAI_FindInterestingObj:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If Echo on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @End

	; Search Fuzzls
	jsr    EchoAI_FindFuzzl
	cmp.l  #0x0, a2
	beq    @NoFuzzl
	jsr    EchoAI_PushInteractionFuzzl
	bra    @End
	@NoFuzzl:

	; Search logs
	jsr    EchoAI_FindLog
	cmp.l  #0x0, a2
	beq    @NoLog
	jsr    EchoAI_PushInteractionLog
	bra    @End
	@NoLog:

	; Search buttons
	jsr    EchoAI_FindButton
	cmp.l  #0x0, a2
	beq    @NoButton
	jsr    EchoAI_PushInteractionButton
	bra    @End
	@NoButton:

	; Check platform
	jsr    EchoAI_FindPlatform
	cmp.l  #0x0, a2
	beq    @NoPlatform
	jsr    EchoAIStart_Platform
	bra    @End
	@NoPlatform:

	; Check water
	jsr    EchoAI_FindWater
	cmp.l  #0x0, a2
	beq    @NoWater
	jsr    EchoAIStart_Water
	bra    @End
	@NoWater:

	@End:

	rts

EchoAI_FindFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Fuzzl addr

	move.l (Player1), a3

	move.w (EntityCount_Fuzzl), d6
	tst.w  d6
	beq    @NoFuzzls
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w  #0x1, d6
	@FuzzlLoop:

	; Check within X threshold
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a2), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistFuzzlX, d1
	bgt    @NextFuzzl
	cmp.w  #-Echo_AIDistFuzzlX, d1
	blt    @NextFuzzl

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
	cmp.w  #Echo_AIDistFuzzlY, d1
	bgt    @NextFuzzl
	cmp.w  #-Echo_AIDistFuzzlY, d1
	blt    @NextFuzzl

	; Check not in nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	; Check not in generator
	btst.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a2)
	bne    @NextFuzzl

	; Check not in cage
	;btst.b #Fuzzl_State_Caged, Fuzzl_State_Bits(a2)
	;bne    @NextFuzzl

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
	; a2 --- OUT: Button addr

	move.w (EntityCount_Log), d6
	tst.w  d6
	beq    @NoLogs
	move.l (EntityPoolStart_Log), a2
	subq.w  #0x1, d6
	@LogLoop:

	; Check within X threshold
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a2), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLogX, d1
	bgt    @NextLog
	cmp.w  #-Echo_AIDistLogX, d1
	blt    @NextLog

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
	cmp.w  #Echo_AIDistLogY, d1
	bgt    @NextLog
	cmp.w  #-Echo_AIDistLogY, d1
	blt    @NextLog

	; Check not touching Nymn
	ENTITY_GETBOUNDS d1,d2,d5,a2
	ENTITY_GETBOUNDS d3,d4,d5,a3
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	bne    @NextLog

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

	move.w (EntityCount_Button), d6
	tst.w  d6
	beq    @NoButtons
	move.l (EntityPoolStart_Button), a2
	subq.w  #0x1, d6
	@ButtonLoop:

	; Check within X threshold
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a2), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistButtonX, d1
	bgt    @NextButton
	cmp.w  #-Echo_AIDistButtonX, d1
	blt    @NextButton

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
	cmp.w  #Echo_AIDistButtonY, d1
	bgt    @NextButton
	cmp.w  #-Echo_AIDistButtonY, d1
	blt    @NextButton

	; Check active
	tst.b  Button_Active(a2)
	beq    @NextButton

	; Done
	bra    @FoundButton

	@NextButton:
	lea    Button_Struct_Size(a2), a2
	dbra   d6, @ButtonLoop
	
	@NoButtons:
	move.l #0x0, a2

	@FoundButton:

	rts

EchoAI_FindWater:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Water body

	move.l Player_LastWaterBody(a0), a2

	rts

EchoAI_FindPlatform:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Platform

	move.l #0x0, a2

	; If on a platform
	move.l PhysicsObj_LastPlatform(a0), a3
	cmp.l  #0x0, a3
	beq    @NoPlatform

	; If platform moving
	tst.l  Platform_VelX(a3)
	bne    @PlatformMoving
	tst.l  Platform_VelY(a3)
	bne    @PlatformMoving
	bra    @NoPlatform

	@PlatformMoving:

	; Check if platform is a raft
	move.l Platform_Owner(a3), a4

	move.w (EntityCount_Raft), d6
	tst.w  d6
	beq    @NoRafts
	move.l (EntityPoolStart_Raft), a5
	subq.w #0x1, d6
	@RaftLoop:

	cmp.l  a4, a5
	bne    @NextRaft

	; Found raft
	move.l a3, a2
	bra    @FoundRaft

	@NextRaft:
	lea    Raft_Struct_Size(a2), a2
	dbra   d6, @RaftLoop

	@NoPlatform:
	@NoRafts:
	@FoundRaft:

	rts

EchoAI_PushInteractionFuzzl:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Fuzzl addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Get Fuzzl pos
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AIDistPushObjX, EchoAINode_ToleranceX(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)

	; If first use of Fuzzl, lerp camera
	btst.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a2)
	bne    @AlreadyUsed
	move.b #0x1, EchoAINode_LerpCamera(a3)
	@AlreadyUsed:

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	move.w Entity_WorldPosX(a4), d2
	sub.w  d0, d2
	blt    @RightSide
	subi.w #Echo_AIDistPushObjX, d0		; Left side of Fuzzl (Fuzzl pos - threshold)
	bra    @LeftSide
	@RightSide:
	add.w  Entity_Width(a2), d0			; Right side of Fuzzl (Fuzzl pos + Fuzzl width + threshold)
	addi.w #Echo_AIDistPushObjX, d0
	@LeftSide:

	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)

	rts

EchoAI_PushInteractionLog:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Log addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	; Get log pos
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AIDistPushObjX, EchoAINode_ToleranceX(a3)
	move.b #0x0, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x0, EchoAINode_LerpCamera(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	move.w Entity_WorldPosX(a4), d2
	sub.w  d0, d2
	blt    @RightSide
	subi.w #Echo_AIDistPushObjX, d0		; Left side of log (log pos - threshold)
	bra    @LeftSide
	@RightSide:
	add.w  Entity_Width(a2), d0			; Right side of log (log pos + log width + threshold)
	addi.w #Echo_AIDistPushObjX, d0
	@LeftSide:

	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)

	rts

EchoAI_PushInteractionButton:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Button addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	ENTITY_GETCENTREX d0, a2
	TOPIXELS d0

	; Push button node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AIDistPushObjX, EchoAINode_ToleranceX(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.b #0x0, EchoAINode_ForceIfHitWall(a3)
	move.b #0x1, EchoAINode_LerpCamera(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Button, EchoAINode_Action(a3)

	rts

EchoAIPushNode:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	PUSHM  d0-d1

	; If first node, set follow nodes state
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @NotFirst
	jsr    EchoAIStart_FollowNodes
	@NotFirst:

	IFND FINAL
	sub.w  d1, d0
	cmp.w  #Echo_NumAINodes-1, d0
	bne    @FreeSpace
	RAISE_EXCEPTION *
	@FreeSpace:
	ENDIF

	POPM   d0-d1

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

	POPL  a0

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

	; Stop X movement if configured to
	tst.b  EchoAINode_StopMovement(a3)
	beq    @NoStopX
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)
	@NoStopX:

	;==============================================================

	; Set X velocity if configured to
	move.w EchoAINode_VelX(a3), d0
	cmp.w  #Echo_AINoNodeVelocity, d0
	beq    @NoVelX
	TOSUBPIXELS d0
	move.l d0, PhysicsObj_VelX(a0)
	@NoVelX:

	;==============================================================

	; Lerp camera if configured and not already enabled
	tst.b  EchoAINode_LerpCamera(a3)
	beq    @NoCameraLerp
	jsr    EchoStartCameraLerp
	@NoCameraLerp:

	;==============================================================

	; Set object of interest
	move.l EchoAINode_Object(a3), Echo_AIObjectOfInterest(a0)

	;==============================================================

	PUSHL  a3

	; Determine node type and run action
	move.b EchoAINode_Action(a3), d0
	move.l EchoAINode_UserData(a3), a2
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
	
	@EndAction:

	POPL   a3

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

	PUSHL  a0

	; Get Nymn and Echo
	move.l (Player1), a2
	move.l (Player2), a0

	; If on screen, no problem
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen

	; Working back from Nymn, find last AI marker
	move.w Entity_WorldPosX(a2), d0
	move.w #0x0000, d2
	move.w #0x0000, d3

	move.w (EntityCount_AIMarker), d6
	tst.w  d6
	beq    @NoAIMarkers
	move.l (EntityPoolStart_AIMarker), a3
	subq.w  #0x1, d6
	@AIMarkerLoop:

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
	jsr    EchoAIStart_Follow

	@OnScreen:

	POPL   a0

	rts
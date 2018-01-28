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
Echo_TalkDelayMin			equ 0x0020		; Min delay between Nymn and Echo talking
Echo_TalkDelayMax			equ 0x0060		; Rand delay between Nymn and Echo talking
Echo_HowlDelayMin			equ 0x0050		; Min delay between Nymn and Echo howling
Echo_HowlDelayMax			equ 0x0080		; Rand delay between Nymn and Echo howling
Echo_JumpToNymnVel			equ 0x040000	; Jump velocity when mounting Nymn
Echo_DismountNymnVel		equ 0x068000	; Jump velocity when dismounting Nymn
Echo_ProbeWallTop			equ 0x0018		; Slightly lower wall probe (can squeeze through small gaps)
Echo_HowlCameraLerpSpeed	equ 0x0010

; AI
Echo_NumAINodes				equ 0x20			; Num AI follow nodes to store in queue (must be power of two)
Echo_AIOuterScreenBoundsExt	equ 0x0060			; Extension to screen bounds to determine if 'lost'
Echo_AIInnerScreenBoundsExt	equ 0x0030			; Extension to screen bounds to determine if 'found'
Echo_LostTime				equ 0x0078			; Time off screen until considered lost
Echo_NodeLostTime			equ 0x0130			; Time off screen until considered lost if following nodes
Echo_SkivvLostTime			equ 0x0400			; Time off screen until considered lost if a Skivv is prowling
Echo_CatchUpTime			equ 0x0300			; Time off screen in catchup mode until considered lost again
Echo_NodeFailTime			equ 0x0100			; Timeout to reach next node before returning to basic follow state
Echo_AINoNodeVelocity		equ 0xFFFF			; Don't copy Nymn's X velocity when running node action
Echo_AICameraLerpTime		equ 0x0020			; Camera lerp time when interesting nodes reached
Echo_AIMarkerSearchHeight	equ 0x0040			; Search height for checking AI markers
Echo_AIWaterSafePosOffsetX	equ 0x0010			; Out of water distance to run to
Echo_AITerrainSearchYOffset	equ 0x0018			; Y offset for terrain searches
Echo_AITerrainSearchDist	equ 0x0030			; Max distance for terrain searches
Echo_AIWaterSearchOffsetX	equ 0x0008			; Offset to check for water
Echo_AIWaterSearchOffsetY	equ 0x0010			; Offset to check for water

; AI distances to add action nodes
Echo_AIFollowDistance		equ 0x0040			; Max X distance from Nymn when following
Echo_AIJumpDistance			equ 0x0020			; Y distance (upward) from Nymn to add a jump node
Echo_AIFindHoleDistance		equ 0x0030			; Y distance (downward) from Nymn to add a drop down node
Echo_AIDistFuzzlX			equ screen_width	; X distance from Fuzzl to add a push obj node
Echo_AIDistFuzzlY			equ Player1Height	; Y distance from Fuzzl to add a push obj node
Echo_AIDistLogX				equ screen_width	; X distance from log to add a goto node
Echo_AIDistLogY				equ Player1Height	; Y distance from log to add a goto node
Echo_AIDistButtonX			equ screen_width	; X distance from button to add a goto node
Echo_AIDistButtonY			equ Player1Height	; Y distance from button to add a goto node
Echo_AIDistRaftX			equ screen_width/2	; X distance from raft to add a raft ride node
Echo_AIDistRaftY			equ Player1Height	; Y distance from raft to add a raft ride node
Echo_AIDistLadderX			equ screen_width/4	; X distance from ladder to add a ladder climb node
Echo_AIDistLadderY			equ 0x0008			; Y distance from top or bottom of ladder to add a ladder climb node
Echo_AIDistCartX			equ screen_width/4	; X distance from cart to add a cart ride node
Echo_AIDistCartY			equ Cart_Height+Player1Height	; Y distance from cart to add a cart ride node

; AI distance tolerances for reaching nodes
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
Echo_AINodeTolerancePushObjX	equ 0x0010
Echo_AINodeTolerancePushObjY	equ Player1Height+0x0010
Echo_AINodeToleranceRaftX		equ 0x0008
Echo_AINodeToleranceRaftY		equ Player1Height+0x0008
Echo_AINodeToleranceButtonX		equ 0x0008
Echo_AINodeToleranceButtonY		equ Player1Height+0x0008
Echo_AINodeToleranceLadderX		equ 0x0008
Echo_AINodeToleranceLadderY		equ (Ladder_Height/2)+Player1Height
Echo_AINodeToleranceCartX		equ 0x0008
Echo_AINodeToleranceCartY		equ Cart_Height+Player1Height

; Animations
EchoAnimIdx_JumpToNymn    	equ 0
EchoAnimIdx_MountNymn    	equ 1
EchoAnimIdx_Hide			equ 2
EchoAnimIdx_Scared			equ 3
EchoAnimIdx_StandFromHiding	equ 4
EchoAnimIdx_PounceNymn		equ 5
EchoAnimIdx_GreetNymn		equ 6
EchoAnimIdx_CircleNymn		equ 7
EchoAnimIdx_AllFours		equ 8
EchoAnimIdx_Sit				equ 9
EchoAnimIdx_Howl			equ 10
EchoAnimIdx_Nudge			equ 11
EchoAnimIdx_Stand			equ 12
; -------------------------------
EchoAnimIdx_Max       		equ 13

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
EchoAIState_Raft			equ 9	; Standing on moving raft, waiting for it to stop
EchoAIState_Ladder			equ 10	; Climbing a ladder
EchoAIState_Cart			equ 11	; Riding a cart
EchoAIState_Barrier			equ 12	; Waiting at an AI marker (barrier type)
EchoAIState_Skivv			equ 13	; Being taken by a Skivv
EchoAIState_Carried			equ 14	; Being carried by Nymn

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
EchoAINode_Action_Ladder		equ 0x9
EchoAINode_Action_Cart			equ 0x10

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
EchoAINode_LerpCamera		rs.b 1	; Lerp camera to character when node reached
EchoAINode_Walk				rs.b 1	; Walk, don't run, towards node
EchoAINode_WaitAtWater		rs.b 1	; Check for water, wait for terrain before enter
;---------------------------------
	RS_ALIGN
EchoAINode_Struct_Size		rs.b 0

EchoAINodeInit:
	; a0 --- Node

	move.l #0x0, EchoAINode_UserData(a0)
	move.l #0x0, EchoAINode_Object(a0)
	move.w #0x0, EchoAINode_PosX(a0)
	move.w #0x0, EchoAINode_PosY(a0)
	move.w #0x0, EchoAINode_VelX(a0)
	move.w #0x0, EchoAINode_ToleranceX(a0)
	move.w #0x0, EchoAINode_ToleranceY(a0)
	move.b #0x0, EchoAINode_Action(a0)
	move.b #0x0, EchoAINode_StopMovement(a0)
	move.b #0x0, EchoAINode_RequireOnFloor(a0)
	move.b #0x0, EchoAINode_LerpCamera(a0)
	move.b #0x0, EchoAINode_Walk(a0)
	move.b #0x0, EchoAINode_WaitAtWater(a0)

	rts

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Echo_Animations	   			rs.b (Animation_Struct_Size*EchoAnimIdx_Max)
Echo_AIFollowNodes			rs.b (EchoAINode_Struct_Size*Echo_NumAINodes)
Echo_Skivv					rs.l 1	; Skivv, takes Echo if he gets lost
Echo_AIObjectOfInterest		rs.l 1	; AI current object of interest
Echo_AINodeProducer			rs.w 1	; AI follow node queue
Echo_AINodeConsumer			rs.w 1
Echo_AILostTimer			rs.w 1	; If depleted, Echo has lost Nymn
Echo_AINodeFailTimer		rs.w 1	; If depleted, Echo failed to reach last node
Echo_AISafePosX				rs.w 1	; Safe position (Nymn was once on the floor here, and is currently out of view)
Echo_AISafePosY				rs.w 1
Echo_AIPotentialSafePosX	rs.w 1	; Nymn's last floor position, will become safe posisiton when out of view
Echo_AIPotentialSafePosY	rs.w 1
Echo_AILastDryLandY			rs.w 1	; Last known dry land pos
Echo_AILastWaterEdge		rs.w 1	; Last known water edge
Echo_AIWaterBodyLeft		rs.w 1	; Last known water bounds left
Echo_AIWaterBodyRight		rs.w 1	; Last known water bounds right
Echo_AIWaterBodySurface		rs.w 1	; Last known water surface
Echo_TalkTimer				rs.w 1
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
Echo_AIObstacleDirection	rs.b 1	; Direction to face water waiting for Nymn to help
Echo_AIWaitAtWater			rs.b 1	; Wait if water detected ahead
Echo_AIState				rs.b 1
Echo_MountedState			rs.b 1
Echo_EnteringLadder			rs.b 1
;---------------------------------
	RS_ALIGN
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
	
	; Set update, render, and serialise routines
	move.l #EchoUpdate, Entity_UpdateRoutine(a0)
	move.l #EchoDraw, Entity_RenderRoutine(a0)
	move.l #EchoSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update, render and serialise lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList
	
	;==============================================================
	
	; Setup default state
	move.w #Echo_ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.l #0x0, Echo_Skivv(a0)
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	MOVE_NTSC_W Echo_NodeFailTime, Echo_AINodeFailTimer(a0), d0
	move.w #0x0, Echo_TalkTimer(a0)
	move.w #0x0, Echo_HowlTimer(a0)
	move.w #0x0, Echo_AIPotentialSafePosX(a0)
	move.w #0x0, Echo_AIPotentialSafePosY(a0)
	move.w #0x0, Echo_AICameraLerpTimer(a0)
	move.w #0x0, Echo_AILastWaterEdge(a0)
	move.b #EchoAIState_None, Echo_AIState(a0)
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	move.b #0x0, Echo_AINymnGliding(a0)
	move.b #0x0, Echo_AINymnJumping(a0)
	move.b #0x0, Echo_AIWaitingForNymnLanding(a0)
	move.b #0x0, Echo_AILinearFollowOnly(a0)
	move.b #0x0, Echo_AIWaitAtWater(a0)
	
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
	ANIM_LOAD_DEFAULT Echo,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Dead
	ANIM_LOAD_DEFAULT Echo,death,death,Character_Animations,CharacterAnimIdx_Dead,0,1,1

	; Run
	ANIM_LOAD_DEFAULT Echo,run,run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Run
	ANIM_LOAD_DEFAULT Echo,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Walk to run transition
	ANIM_LOAD_DEFAULT Echo,walktorun,walktorun,Character_Animations,CharacterAnimIdx_WalkToRun,0,0,0

	; Jump
	ANIM_LOAD_DEFAULT Echo,jump,jump,Character_Animations,CharacterAnimIdx_Jump,1,0,0

	; Fall
	ANIM_LOAD_DEFAULT Echo,fall,fall,Character_Animations,CharacterAnimIdx_Fall,1,0,0

	; Climb
	ANIM_LOAD_DEFAULT Echo,climb,climb,Character_Animations,CharacterAnimIdx_Climb,1,0,0
	
	; Water wade
	ANIM_LOAD_DEFAULT Echo,wade,wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0

	; Glide
	ANIM_LOAD_DEFAULT Echo,glide,glide,Character_Animations,CharacterAnimIdx_Glide,1,0,0

	; Push (light object)
	ANIM_LOAD_DEFAULT Echo,push,push,Character_Animations,CharacterAnimIdx_Push,1,0,0
	
	; Push (heavy object)
	ANIM_LOAD_DEFAULT Echo,pushheavy,pushheavy,Character_Animations,CharacterAnimIdx_PushHeavy,1,0,0

	;==============================================================
	; Setup player animations

	; Colour switch
	ANIM_LOAD_DEFAULT Echo,colourswitch,colourswitch,Player_Animations,PlayerAnimIdx_Switch,0,1,0

	; Sleep
	ANIM_LOAD_DEFAULT Echo,sleep,sleep,Player_Animations,PlayerAnimIdx_Sleep,1,1,0
	
	; Lay down
	ANIM_LOAD_DEFAULT Echo,laydown,laydown,Player_Animations,PlayerAnimIdx_LieDown,0,1,0

	; Howl
	ANIM_LOAD_DEFAULT Echo,calllong,calllong,Player_Animations,PlayerAnimIdx_Howl,0,1,0

	; Talk
	ANIM_LOAD_DEFAULT Echo,callshort,callshort,Player_Animations,PlayerAnimIdx_Talk,0,1,0
	
	;==============================================================
	; Setup Echo specific animations

	; Jump up to Nymn (same anim as Jump but non-looping)
	ANIM_LOAD_DEFAULT Echo,jump,jump,Echo_Animations,EchoAnimIdx_JumpToNymn,0,0,0

	; Mount Nymn
	ANIM_LOAD_DEFAULT Echo,mountnymn,mountnymn,Echo_Animations,EchoAnimIdx_MountNymn,0,1,0

	; Hide
	ANIM_LOAD_DEFAULT Echo,hide,hide,Echo_Animations,EchoAnimIdx_Hide,0,1,0
	
	; Scared
	ANIM_LOAD_DEFAULT Echo,afraid,afraid,Echo_Animations,EchoAnimIdx_Scared,1,1,0
	
	; Stand up from hiding
	ANIM_LOAD_DEFAULT Echo,standfromhiding,standfromhiding,Echo_Animations,EchoAnimIdx_StandFromHiding,0,1,0
	
	; Pounce on Nymn
	ANIM_LOAD_DEFAULT Echo,pouncenymn,pouncenymn,Echo_Animations,EchoAnimIdx_PounceNymn,0,1,0
	
	; Greet Nymn
	ANIM_LOAD_DEFAULT Echo,greetnymn,greetnymn,Echo_Animations,EchoAnimIdx_GreetNymn,0,1,0

	; Circle Nymn
	ANIM_LOAD_DEFAULT Echo,circle,circle,Echo_Animations,EchoAnimIdx_CircleNymn,0,1,0

	; Stand on all fours
	ANIM_LOAD_DEFAULT Echo,allfours,allfours,Echo_Animations,EchoAnimIdx_AllFours,0,1,0

	; Sit
	ANIM_LOAD_DEFAULT Echo,sit,sit,Echo_Animations,EchoAnimIdx_Sit,0,1,0

	; Howl (sitting)
	ANIM_LOAD_DEFAULT Echo,howl,howl,Echo_Animations,EchoAnimIdx_Howl,0,1,0

	; Nudge Nymn
	ANIM_LOAD_DEFAULT Echo,nudge,nudge,Echo_Animations,EchoAnimIdx_Nudge,0,1,0

	; Stand
	ANIM_LOAD_DEFAULT Echo,stand,stand,Echo_Animations,EchoAnimIdx_Stand,0,1,0

	ENDIF
	
	rts

EchoLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IF INCLUDE_CHARACTER_ECHO

	SPRITE_LOAD_DEFAULT echo,idle,0,PaletteId_Player,0x0

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

	; Update talk/howl timers
	jsr EchoUpdateTalk
	jsr EchoUpdateHowl
	
	@Carried:

	; Update camera lerp timer
	move.w Echo_AICameraLerpTimer(a0), d0
	beq    @LerpTimerNotRunning
	tst.w  CameraLerpSpeed
	bne    @LerpTimerNotRunning
	subq.w #0x1, d0
	move.w d0, Echo_AICameraLerpTimer(a0)
	tst.w  d0
	bne    @LerpTimerRunning
	move.l a0, CameraLerpFromObj
	move.l (Player1), CameraTargetGameObj
	move.w #0x0, CameraLerpTime
	move.w #Echo_HowlCameraLerpSpeed, CameraLerpSpeed
	@LerpTimerNotRunning:
	@LerpTimerRunning:

	@Mounting:
	
	rts

EchoUpdateTalk:

	move.w Echo_TalkTimer(a0), d0
	beq    @TimerNotRunning
	subq.w  #0x1, d0
	move.w d0, Echo_TalkTimer(a0)
	tst.w  d0
	bne    @TimerStillRunning

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor

	; In air, try again next frame
	move.w #0x1, Echo_TalkTimer(a0)
	bra    @TimerStillRunning
	@OnFloor:

	jsr    EchoTalk

	@TimerStillRunning:
	@TimerNotRunning:

	rts

EchoUpdateHowl:

	move.w Echo_HowlTimer(a0), d0
	beq    @TimerNotRunning
	subq.w  #0x1, d0
	move.w d0, Echo_HowlTimer(a0)
	tst.w  d0
	bne    @TimerStillRunning

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor

	; In air, try again next frame
	move.w #0x1, Echo_HowlTimer(a0)
	bra    @TimerStillRunning
	@OnFloor:

	jsr    EchoHowl

	@TimerStillRunning:
	@TimerNotRunning:

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
	move.l #0x0, a2
	move.l #0x0, a3
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

	; Set AI state
	jsr    EchoAIStart_Carried
	
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
	move.l #0x0, a2
	move.l #0x0, a3
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
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	; If mounting Nymn, drawing is handled by Nymn to match anim frames
	tst.b Echo_MountedState(a0)
	bne   @NoDraw
	jsr   AnimObjDraw
	@NoDraw:

	IF ECHO_AI_DEBUG_NODE_POS
	moveq #0x0, d6
	moveq #0x0, d7
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

	IF ECHO_AI_DEBUG_STATE
	clr.w  d0
	move.b Echo_AIState(a0), d0
	move.l #((8*8)<<16)|(4*8), d1
	jsr    DBG_DrawWord

	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	beq    @DebugNoNodes
	jsr    EchoAIPeekNodeFront
	move.b EchoAINode_Action(a3), d0
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawWord
	@DebugNoNodes:
	ENDIF

	rts

EchoSerialise:
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
	SAVEB Entity_Active(a0)
	SAVEB Echo_AIState(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB Entity_Active(a0)
	LOADB Echo_AIState(a0)
	
	;==============================================================
	
	@End:
	
	rts

EchoSetSkivv:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Skivv obj

	; Set Skivv
	move.l a2, Echo_Skivv(a0)

	; Set Skivv's target
	move.l a0, Skivv_Target(a2)

	; Disable and remove from world grid for now
	PUSHL  a0
	move.l a2, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	jsr    PhysicsWorldRemoveObject
	POPL   a0

	rts

EchoStartCameraLerp:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.w  Echo_AICameraLerpTimer(a0)
	bne    @NoCameraLerp
	move.l (Player1), CameraLerpFromObj
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraLerpTime
	MOVE_NTSC_W Echo_HowlCameraLerpSpeed, CameraLerpSpeed, d0
	MOVE_NTSC_W Echo_AICameraLerpTime, Echo_AICameraLerpTimer(a0), d0
	@NoCameraLerp:

	rts

EchoStartHiding:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Stop moving
	jsr    CharacterCancelXMovement

	; Start hide anim
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_Hide*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	IF INCLUDE_CHARACTER_ECHO

	; Set hide loop as idle anim
	ANIM_LOAD_DEFAULT echo,afraid,afraid,Character_Animations,CharacterAnimIdx_Idle,1,1,0
	
	ENDIF

	rts

EchoStopHiding:

	IF INCLUDE_CHARACTER_ECHO

	; Get up
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_StandFromHiding*Animation_Struct_Size)(a0), a1
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Restore idle anim
	ANIM_LOAD_DEFAULT Echo,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	ENDIF

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
	ANIM_LOAD_DEFAULT Echo,carriedidle,carriedidle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo,carriedwalk,carriedwalk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Echo,carriedwalk,carriedwalk,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0
	
	; Snap to Nymn's direction
	move.l (Player1), a3
	move.b SpriteObj_FlippedX(a3), SpriteObj_FlippedX(a0)
	
	; Begin jump
	move.b #0x0, d2
	jsr    CharacterStartJump

	; Fixed velocity
	MOVE_NTSC_L Echo_JumpToNymnVel, PhysicsObj_VelY(a0), d0
	
	; Set jumping-to-Nymn anim
	PUSHL  a1
	lea    Echo_Animations+(EchoAnimIdx_JumpToNymn*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
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
	ANIM_LOAD_DEFAULT Echo,idle,idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo,walk,walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT Echo,wade,wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0
	
	; Force character animation update to restore anim state
	jsr    CharacterUpdateAnimState

	; Jump off (forced jump)
	move.b #0x1, d2
	jsr    CharacterStartJump

	; Override jump velocity
	MOVE_NTSC_L Echo_DismountNymnVel, PhysicsObj_VelY(a0), d0
	
	; No longer mounting
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	
	; Start follow AI
	move.b #0x1, d0
	jsr    EchoAIStart_Follow

	ENDIF

	rts

EchoStartTalk:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; 1 frame timer, evaluates floor
	move.w #0x1, Echo_TalkTimer(a0)

	rts

EchoStartTalkTimer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	MOVE_NTSC_W Echo_TalkDelayMin, d1, d0
	MOVE_NTSC_W Echo_TalkDelayMax, d2, d0
	jsr    RND_GenerateWordClamped
	move.w d0, Echo_TalkTimer(a0)

	rts

EchoStartHowlTimer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	MOVE_NTSC_W Echo_HowlDelayMin, d1, d0
	MOVE_NTSC_W Echo_HowlDelayMax, d2, d0
	jsr    RND_GenerateWordClamped
	move.w d0, Echo_HowlTimer(a0)
	
	rts

EchoTalk:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set talking anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Talk*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

EchoHowl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set howling anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; If off screen, start camera lerp
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @OnScreen
	jsr    EchoStartCameraLerp
	@OnScreen:

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

	; Record last dry land pos
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @InAir
	tst.b  PhysicsObj_Underwater(a0)
	bne    @InWater
	move.w Entity_WorldPosX(a0), Echo_AILastDryLandY(a0)
	@InAir:
	@InWater:
	
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
	cmp.b  #EchoAIState_Raft, d0
	beq    @Raft
	cmp.b  #EchoAIState_Ladder, d0
	beq    @Ladder
	cmp.b  #EchoAIState_Cart, d0
	beq    @Cart
	cmp.b  #EchoAIState_Barrier, d0
	beq    @Barrier
	cmp.b  #EchoAIState_Skivv, d0
	beq    @Skivv
	cmp.b  #EchoAIState_Carried, d0
	beq    @Carried
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

	@Ladder:
	jsr    EchoAIUpdate_Ladder
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

	move.b #EchoAIState_None, Echo_AIState(a0)
	jsr    CharacterCancelXMovement
	move.l #0x0, PhysicsObj_VelX(a0)

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
	
	@WaterAhead:
	@End:

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
	
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	jsr    EchoAIStart_Skivv
	bra    @Lost
	@NoSkivv:
	jsr    EchoAIStart_Lost

	bra    @Lost
	@OnScreen:
	@LostTimerRunning:

	; If node fail timer depleted, return to basic follow state (without resetting lost timer)
	move.w Echo_AINodeFailTimer(a0), d0
	subq.w  #0x1, d0
	move.w d0, Echo_AINodeFailTimer(a0)
	bne    @NodeFailTimerRunning
	move.b #0x0, d0
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

	; If run into a wall and next node above Echo, jump
	PUSHL  d1
	PHYSICS_HITFACINGWALL a0
	POPL   d1
	tst.b  d0
	beq    @NotHitWall
	ENTITY_GETCENTREY d0,a0
	TOPIXELS d0
	cmp.w  d0, d2
	bgt    @NotHitWall
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir
	move.b #0x0, d2
	jsr    CharacterStartJump
	@NotHitWall:
	@InAir:

	; Check for water
	jsr     EchoAILookAheadWater
	tst.b   d0
	bne     @WaterAhead

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
	bra    @Moving
	
	@TooFarRight:
	jsr    CharacterMoveLeft
	bra    @Moving
	
	@WithinBounds:

	;==============================================================

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
	MOVE_NTSC_W Echo_NodeFailTime, Echo_AINodeFailTimer(a0), d0

	; If last node, and last pop didn't change state, return to follow
	cmp.b  #EchoAIState_FollowNodes, Echo_AIState(a0)
	bne    @End
	move.w Echo_AINodeProducer(a0), d0
	move.w Echo_AINodeConsumer(a0), d1
	cmp.w  d0, d1
	bne    @End
	move.b #0x1, d0
	jsr    EchoAIStart_Follow
	bra    @End
	
	@Moving:
	@WaterAhead:
	
	; Find interesting objects (applicable to node follow state)
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

	; If off floor, abandon
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @OutOfBounds

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
	move.b #0x1, d0
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

	move.w #Echo_AINodeTolerancePushObjX, d3
	
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
	move.b #0x1, d0
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

	; Start running towards closest shore
	ENTITY_GETCENTREX d2, a0
	TOPIXELS d2
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
	ENTITY_GETCENTREX d0,a0
	TOPIXELS d0
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

	; Howl
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	rts

EchoAIUpdate_Skivv:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If Echo not already dead
	tst.b  Character_Dead(a0)
	bne    @EchoDead

	; If camera lerp finished
	tst.w  CameraLerpSpeed
	bne    @Lerping

	; Get Skivv
	move.l Echo_Skivv(a0), a2

	; If skivv not alread in attack state
	cmp.b  #SkivvState_Attacking, Skivv_State(a2)
	beq    @AlreadyAttacking

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

EchoAIStart_Ladder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Ladder
	
	; Set ladder state
	move.b #EchoAIState_Ladder, Echo_AIState(a0)

	; Set ladder
	move.l a2, Echo_AIObjectOfInterest(a0)

	; Reset lost timer
	tst.l  Echo_Skivv(a0)
	beq    @NoSkivv
	MOVE_NTSC_W Echo_SkivvLostTime, Echo_AILostTimer(a0), d0
	bra    @EndSkivv
	@NoSkivv:
	MOVE_NTSC_W Echo_LostTime, Echo_AILostTimer(a0), d0
	@EndSkivv:

	; Waiting to enter ladder
	move.b Character_Climbing(a0), d0
	eor.b  #0x1, d0
	move.b d0, Echo_EnteringLadder(a0)
	
	rts

EchoAIUpdate_Ladder:
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

	; Get ladder
	move.l Echo_AIObjectOfInterest(a0), a2

	; If waiting to enter ladder, wait until in climbing state
	tst.b  Echo_EnteringLadder(a0)
	beq    @EnteredLadder
	move.b Character_Climbing(a0), d0
	eor.b  #0x1, d0
	move.b d0, Echo_EnteringLadder(a0)
	bra    @NotEnteredLadder
	@EnteredLadder:

	; If stopped climbing, end of state
	tst.b  Character_Climbing(a0)
	beq    @OffLadder

	@NotEnteredLadder:

	; Get Y dist from P1
	move.l Player1, a3
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a3
	sub.l  d0, d1

	; If P1 on floor, head there anyway
	tst.b  PhysicsObj_CloseToFloor(a3)
	bne    @P1OnFloor

	; Check within height threshold
	move.l d1, d2
	ABS    d2
	cmp.l  #Player1Height*subpixels_per_pixel, d2
	blt    @WithinYDist

	@P1OnFloor:
	
	; Determine direction to climb
	tst.l  d1
	blt    @AboveNymn

	; Climb down
	jsr    CharacterMoveDown
	bra    @Climbing

	@AboveNymn:

	; Climb up
	jsr    CharacterMoveUp
	bra    @Climbing

	@OffLadder:

	; Wait until next on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @End

	; Back to follow state
	jsr    EchoAIStart_Follow
	bra    @End

	@WithinYDist:

	; Within Y dist, stop climbing
	move.l #0x0, PhysicsObj_VelY(a0)

	; If outside X dist, back to follow state
	move.l Player1, a3
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a3
	sub.l  d0, d1
	ABS    d1
	cmp.l  #Player1Width*subpixels_per_pixel, d1
	blt    @Climbing

	; If not on floor, jump off
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @Onfloor
	move.b #0x0, d2
	jsr    CharacterStartJump
	@Onfloor:

	move.b #0x0, Character_Climbing(a0)

	@Climbing:
	@End:
	@Lost:

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

	; If Nymn on floor or ladder, take floor pos
	tst.b  PhysicsObj_CloseToFloor(a2)
	bne    @OnFloor
	tst.b  Character_Climbing(a2)
	bne    @NymnInAir
	@OnFloor:
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
	move.w #Echo_AINodeToleranceGlideX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceGlideY, EchoAINode_ToleranceY(a3)
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
	move.b #EchoAINode_Action_Jump, EchoAINode_Action(a3)

	; If Nymn was in air because of a jump, set waiting for landing, take floor pos as target Y, and require on floor
	tst.b  Character_Jumping(a2)
	beq    @NotJumping
	move.b #0x1, Echo_AIWaitingForNymnLanding(a0)
	move.w Echo_LastNymnFloorPosY(a0), EchoAINode_PosY(a3)
	move.w #Echo_AINodeToleranceJumpX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceJumpY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
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
	move.b #EchoAINode_Action_Fall, EchoAINode_Action(a3)

	@WithinYToleranceDown:

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

	; Search ladders
	jsr    EchoAI_FindLadder
	cmpa.w #0x0, a2
	beq    @NoLadder
	jsr    EchoAI_PushInteractionLadder
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

	; Search ladders
	jsr    EchoAI_FindLadder
	cmpa.w #0x0, a2
	beq    @NoLadder
	jsr    EchoAI_PushInteractionLadder
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

EchoAI_FindAIMarker:
	; a0 --- GameObj addr
	; a1 --- Level addr

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

	; Check if interesting type
	cmp.b  #AIMarker_Type_Wait, AIMarker_Type(a2)
	beq    @Wait
	cmp.b  #AIMarker_Type_Barrier, AIMarker_Type(a2)
	beq    @Barrier
	bra    @NextAIMarker

	@Wait:

	; Disable marker, stop AI
	move.b #0x0, Entity_Active(a2)
	jsr    EchoAIStop
	bra    @FoundAIMarker

	@Barrier:

	; Start wait at barrier state
	jsr    EchoAIStart_WaitBarrier
	bra    @FoundAIMarker

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

	move.l (Player1), a3

	move.w (EntityCount_Fuzzl), d6
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

	move.l (Player1), a3

	move.w (EntityCount_Log), d6
	beq    @NoLogs
	move.l (EntityPoolStart_Log), a2
	subq.w #0x1, d6
	@LogLoop:

	; Check if AI can use
	tst.b  Log_NoAI(a2)
	bne    @NextLog
	
	; If log on a platform, it's probably supposed to be there, leave it alone
	;tst.l  PhysicsObj_LastPlatform(a2)
	;bne    @NextLog

	; Edge case: if Nymn is busy with a button, help out
	tst.l  PhysicsObj_LastPlatform(a3)
	bne    @P1OnPlatform

	; Check outside Nymn Y threshold
	ENTITY_GETCENTREY d0,a3
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
	cmp.w  #Echo_AIDistLogY, d1
	bgt    @OutsideNymnDist
	cmp.w  #-Echo_AIDistLogY, d1
	blt    @OutsideNymnDist
	bra    @NextLog

	@P1OnPlatform:
	
	@OutsideNymnDist:

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

	; Done
	bra    @FoundButton

	@NextButton:
	lea    Button_Struct_Size(a2), a2
	dbra   d6, @ButtonLoop
	
	@NoButtons:
	move.l #0x0, a2

	@FoundButton:

	rts

EchoAI_FindLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- OUT: Ladder addr

	; If already on a ladder and not on floor, find out which one
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor
	tst.b  Character_Climbing(a0)
	bne    @OnLadder
	@OnFloor:

	; If within jump distance of Nymn, no need for a ladder
	move.l (Player1), a3
	move.w Entity_WorldPosY(a0), d3
	move.w Entity_WorldPosY(a3), d4
	sub.w  d3, d4
	move.w d4, d5
	ABSW   d5
	cmp.w  #Echo_AIJumpDistance, d5
	blt    @WithinRange

	@OnLadder:

	move.w (EntityCount_Ladder), d6
	beq    @NoLadders
	move.l (EntityPoolStart_Ladder), a2
	subq.w  #0x1, d6
	@LadderLoop:

	; Check within X threshold
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a2), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistLadderX, d1
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderX, d1
	blt    @NextLadder
	
	; Check if can start climbing immediately
	PUSHM  a0-a3/d0-d6
	jsr    PlayerInteractTest_Ladder
	POPM   a0-a3/d0-d6

	; If already climbing, push state directly
	tst.b  Character_Climbing(a0)
	beq    @CheckTop
	jsr    EchoAIStart_Ladder
	move.l #0x0, a2				; Suppress node being pushed
	bra    @FoundLadder			; Done
	
	@CheckTop:

	; If Nymn below Echo, check for top of ladder
	cmp.w  #Echo_AIJumpDistance, d4
	blt    @CheckBottom
	ENTITY_GETBOTTOM d0,a0
	ENTITY_GETTOP d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
	cmp.w  #Echo_AIDistLadderY, d1
	bgt    @NextLadder
	cmp.w  #-Echo_AIDistLadderY, d1
	blt    @NextLadder
	
	; Done
	bra    @FoundLadder

	@CheckBottom:

	; If Nymn above echo, check for bottom of ladder
	ENTITY_GETBOTTOM d0,a0
	ENTITY_GETBOTTOM d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
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
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a2), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistCartX, d1
	bgt    @NextCart
	cmp.w  #-Echo_AIDistCartX, d1
	blt    @NextCart

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a2
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
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

	move.w Player_LastWaterBodyLeft(a0), d0
	move.w Player_LastWaterBodyRight(a0), d1
	move.w Player_LastWaterBodySurface(a0), d2

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
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a4), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftX, d1
	bgt    @NextLongboat
	cmp.w  #-Echo_AIDistRaftX, d1
	blt    @NextLongboat

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a4
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
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
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosX(a4), d1
	sub.w  d0, d1
	cmp.w  #Echo_AIDistRaftX, d1
	bgt    @NextRaft
	cmp.w  #-Echo_AIDistRaftX, d1
	blt    @NextRaft

	; Check within Y threshold
	ENTITY_GETCENTREY d0,a0
	ENTITY_GETCENTREY d1,a4
	TOPIXELS d0
	TOPIXELS d1
	sub.w    d0, d1
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

	; Get Fuzzl pos
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_WorldPosY(a2), d1

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AINodeTolerancePushObjX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeTolerancePushObjY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)

	; If first use of Fuzzl, lerp camera and announce
	btst.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a2)
	bne    @AlreadyUsed
	move.b #0x1, EchoAINode_LerpCamera(a3)
	PUSHMW d0-d1
	jsr    EchoStartTalk
	POPMW  d0-d1
	@AlreadyUsed:

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	move.w Entity_WorldPosX(a4), d2
	sub.w  d0, d2
	blt    @RightSide
	subi.w #Echo_AINodeTolerancePushObjX, d0		; Left side of Fuzzl (Fuzzl pos - threshold)
	bra    @LeftSide
	@RightSide:
	add.w  Entity_Width(a2), d0			; Right side of Fuzzl (Fuzzl pos + Fuzzl width + threshold)
	addi.w #Echo_AINodeTolerancePushObjX, d0
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
	;move.w d0, d6

	; Determine direction to roll in (towards Nymn)
	move.l (Player1), a4
	move.w Entity_WorldPosX(a4), d2
	sub.w  d0, d2
	blt    @RightSide
	subi.w #Echo_AINodeTolerancePushObjX, d0		; Left side of log (log pos - threshold)
	;subi.w #0x1, d6									; Min tolerance if no terrain
	bra    @LeftSide
	@RightSide:
	add.w  Entity_Width(a2), d0						; Right side of log (log pos + log width + threshold)
	;addi.w #0x1, d6									; Min tolerance if no terrain
	addi.w #Echo_AINodeTolerancePushObjX, d0
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

	move.w #Echo_AINodeTolerancePushObjX, d3	; Default distance tolerance
	move.w #0x0, d5	; Default stop movement
	move.b #0x0, d2	; Default walk state

	; If no terrain, bail
	tst.w  d7
	beq    @NoTerrain

	;; If no terrain: try from centre, use small tolerance, snap to pos, and walk to target
	;tst.b  d7
	;bne    @TerranFound
	;move.w d6, d0		; Closer target pos
	;move.w #0x1, d3		; Closer X tolerance
	;move.w #0x1, d5		; Snap to position
	;move.b #0x1, d2		; Walk towards node
	;@TerranFound:

	; Push begin PushObj state node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w d3, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeTolerancePushObjY, EchoAINode_ToleranceY(a3)
	move.b d5, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_StartPush, EchoAINode_Action(a3)
	move.b d2, EchoAINode_Walk(a3)

	move.w d0, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)

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

	ENTITY_GETCENTREX d0, a2
	TOPIXELS d0

	; Push button node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
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

	ENTITY_GETCENTREX d0, a2
	TOPIXELS d0

	; Push raft node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
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

EchoAI_PushInteractionLadder:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Ladder addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	ENTITY_GETCENTREX d0, a2
	TOPIXELS d0

	; Push ladder node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceLadderX, EchoAINode_ToleranceX(a3)
	move.w Entity_Height(a2), EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Ladder, EchoAINode_Action(a3)

	rts

EchoAI_PushInteractionCart:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Cart addr

	; Clear all nodes (interaction is a priority)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #0x0, Echo_AINodeProducer(a0)

	ENTITY_GETCENTREX d0, a2
	TOPIXELS d0

	; Push cart ride node
	jsr    EchoAIPushNode
	move.l a2, EchoAINode_UserData(a3)
	move.w d0, EchoAINode_PosX(a3)
	move.w Entity_WorldPosY(a2), EchoAINode_PosY(a3)
	move.w #Echo_AINoNodeVelocity, EchoAINode_VelX(a3)
	move.w #Echo_AINodeToleranceCartX, EchoAINode_ToleranceX(a3)
	move.w #Echo_AINodeToleranceCartY, EchoAINode_ToleranceY(a3)
	move.b #0x1, EchoAINode_StopMovement(a3)
	move.b #0x1, EchoAINode_RequireOnFloor(a3)
	move.l a2, EchoAINode_Object(a3)
	move.b #EchoAINode_Action_Cart, EchoAINode_Action(a3)

	; If Nymn not in cart lerp camera and announce
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

	; Init node
	PUSHL  a3
	move.l a3, a0
	jsr    EchoAINodeInit
	POPL   a3

	POPM   d0-d1

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
	cmp.b  #EchoAINode_Action_Raft, d0
	beq    @StartRaftAction
	cmp.b  #EchoAINode_Action_Ladder, d0
	beq    @StartLadderAction
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

	@StartLadderAction:

	; Start ladder climb state
	jsr    EchoAIStart_Ladder
	bra    @EndAction

	;==============================================================

	@StartCartAction:

	; Start cart ride state
	jsr    EchoAIStart_Cart
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
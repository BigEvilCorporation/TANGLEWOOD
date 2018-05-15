;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

; Constants
Echo_TalkDelayMin			equ 0x0020		; Min delay between Nymn and Echo talking
Echo_TalkDelayMax			equ 0x0060		; Rand delay between Nymn and Echo talking
Echo_HowlDelayMin			equ 0x0050		; Min delay between Nymn and Echo howling
Echo_HowlDelayMax			equ 0x0080		; Rand delay between Nymn and Echo howling
Echo_JumpToNymnVel			equ 0x040000	; Jump velocity when mounting Nymn
Echo_DismountNymnVel		equ 0x068000	; Jump velocity when dismounting Nymn
Echo_ProbeWallTop			equ 0x0018		; Slightly lower wall probe (can squeeze through small gaps)
Echo_HowlCameraLerpSpeed	equ 0x0010

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
EchoAnimIdx_HowlLow			equ 11
EchoAnimIdx_Nudge			equ 12
EchoAnimIdx_Stand			equ 13
; -------------------------------
EchoAnimIdx_Max       		equ 14

; Mount/ride Nymn state
EchoMountNymn_Inactive		equ 0
EchoMountNymn_Jumping		equ 1
EchoMountNymn_Mounting		equ 2
EchoMountNymn_Riding		equ 3

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Echo_Animations	   			rs.b (Animation_Struct_Size*EchoAnimIdx_Max)
Echo_AIFollowNodes			rs.b (EchoAINode_Struct_Size*Echo_NumAINodes)
Echo_Skivv					rs.l 1	; Skivv, takes Echo if he gets lost
Echo_AIObjectOfInterest		rs.l 1	; AI current object of interest
Echo_AIPushObjMarker		rs.l 1	; AI current object push destination
Echo_AILastNymnFloorVelX	rs.l 1
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
Echo_AILastFloorPosY		rs.w 1
Echo_AILastNymnFloorPosX	rs.w 1
Echo_AILastNymnFloorPosY	rs.w 1
Echo_AICameraLerpTimer		rs.w 1
Echo_AICollectNodes			rs.b 1	; Watch Nymn and collect "breadcrumb" nodes
Echo_AIOutOfNodes			rs.b 1	; Run out of nodes
Echo_AIAutoStartFollowNodes	rs.b 1	; Auto-start following nodes if first node added to queue
Echo_AILinearFollowOnly		rs.b 1	; In follow state, follow X axis only and don't collect nodes
Echo_AINymnJumping			rs.b 1	; Nymn is currently jumping
Echo_AIWaitingForNymnLanding rs.b 1	; Waiting for Nymn's landing to create a node
Echo_AIWaitingForWaterPath	rs.b 1	; Hit water, not happy about it, waiting for a path to cross
Echo_AINymnGliding			rs.b 1	; Track Nymn currently gliding
Echo_AINymnClimbing			rs.b 1	; Track Nymn currently climbing
Echo_AIObstacleDirection	rs.b 1	; Direction to face water waiting for Nymn to help
Echo_AIWaitAtWater			rs.b 1	; Wait if water detected ahead
Echo_AIWaterEscapeDirection	rs.b 1	; Direction to escape from water (0 if autodetect)
Echo_AIState				rs.b 1
Echo_MountedState			rs.b 1
Echo_EnteringLadder			rs.b 1
Echo_CanBeCarried			rs.b 1
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
	move.b #0x0, Player_UseIdleAnim(a0)
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
	move.w #0x0, Echo_AILastFloorPosY(a0)
	move.b #EchoAIState_None, Echo_AIState(a0)
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	move.b #0x0, Echo_AINymnGliding(a0)
	move.b #0x0, Echo_AINymnClimbing(a0)
	move.b #0x0, Echo_AINymnJumping(a0)
	move.b #0x0, Echo_AIWaitingForNymnLanding(a0)
	move.b #0x0, Echo_AILinearFollowOnly(a0)
	move.b #0x0, Echo_AIWaitAtWater(a0)
	move.b #0x1, Echo_CanBeCarried(a0)
	move.b #0x0, Echo_AIWaterEscapeDirection(a0)
	move.b #0x1, Echo_AIAutoStartFollowNodes(a0)
	move.b #0x1, Echo_AICollectNodes(a0)
	move.b #0x0, Echo_AIOutOfNodes(a0)
	
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
	ANIM_LOAD_DEFAULT Echo,death,death,Character_Animations,CharacterAnimIdx_Dead,0,0,1

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
	ANIM_LOAD_DEFAULT Echo,laydown,laydown,Player_Animations,PlayerAnimIdx_LieDown,0,0,0

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

	; Howl (sitting, low pitch)
	ANIM_LOAD_DEFAULT Echo,howl,howl_low,Echo_Animations,EchoAnimIdx_HowlLow,0,1,0

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
	rts

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

	PUSHM a0-a2
	move.l Player1, a1
	MOVE_NTSC_W Echo_HowlCameraLerpSpeed, d0, d1
	jsr   CAM_LerpToEntity
	POPM  a0-a2

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

EchoIsHowling:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Howling

	move.b #0x1, d0
	tst.w  Echo_HowlTimer(a0)
	bne    @Howling

	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	beq    @Howling

	move.b #0x0, d0

	@Howling:

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
	bgt    @ok
	nop
	@ok:
	@DebugNodeLp:
	PUSHM  d6-d7/a0-a1
	andi.w #Echo_NumAINodes-1, d6
	andi.w #Echo_NumAINodes-1, d7
	mulu   #EchoAINode_Struct_Size, d6
	lea    Echo_AIFollowNodes(a0), a2
	add.l  d6, a2
	;move.w Entity_Height(a0), d3
	move.l (EntityPoolStart_Fuzzl), a0
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	move.b SpriteObj_Visible(a0), d2
	PUSHM  d0-d2
	move.w EchoAINode_PosX(a2), d0
	move.w EchoAINode_PosY(a2), d1
	subi.w #Fuzzl_Width/2, d0
	subi.w #Fuzzl_Height/2, d1
	;add.w  d3, d1
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	CAMERA_GETSCREENBOUNDS d2,d3,d4,d5
	move.b #0x1, SpriteObj_Visible(a0)
	jsr    SpriteObjDraw
	POPM   d0-d2
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	move.b d2, SpriteObj_Visible(a0)
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

	clr.w  d0
	move.w Echo_AINodeProducer(a0), d2
	move.w Echo_AINodeConsumer(a0), d3
	cmp.w  d2, d3
	beq    @DebugNoNodes
	jsr    EchoAIPeekNodeFront
	move.b EchoAINode_Action(a3), d0
	@DebugNoNodes:
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawWord
	ENDIF

	rts

EchoSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	jsr   EntitySerialise

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB Entity_Active(a0)
	SAVEB Echo_AIState(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Entity_Active(a0)
	LOADB Echo_AIState(a0)

	; Only allow None or Follow AI states on load
	cmp.b  #EchoAIState_None, Echo_AIState(a0)
	beq    @End
	cmp.b  #EchoAIState_Follow, Echo_AIState(a0)
	beq    @End
	move.b #EchoAIState_Follow, Echo_AIState(a0)
	
	;==============================================================
	
	@End:
	
	rts

EchoSetCheckpointPos:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (l) Checkpoint pos X
	; d1 (l) Checkpoint pos Y

	; Only if in a follow state
	move.b Echo_AIState(a0), d2
	cmp.b  #EchoAIState_Follow, d2
	beq    @SetP2Position
	cmp.b  #EchoAIState_FollowNodes, d2
	bne    @NoSetP2Position
	@SetP2Position:
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)
	@NoSetP2Position:

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

	MOVE_NTSC_W Echo_AICameraLerpTime, Echo_AICameraLerpTimer(a0), d0

	PUSHM a0-a2
	move.l a0, a1
	MOVE_NTSC_W Echo_HowlCameraLerpSpeed, d0, d1
	jsr   CAM_LerpToEntity
	POPM  a0-a2

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

	; Can't fall
	move.b #0x0, Character_CanFall(a0)

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

	; Restore fall
	move.b #0x1, Character_CanFall(a0)
	
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

EchoEnableFootstepSFX:
	lea    Character_Animations+(CharacterAnimIdx_Run*Animation_Struct_Size)(a0), a2
	move.b #0x1, Animation_PlaySFX(a2)
	rts

EchoDisableFootstepSFX:
	lea    Character_Animations+(CharacterAnimIdx_Run*Animation_Struct_Size)(a0), a2
	move.b #0x0, Animation_PlaySFX(a2)
	rts
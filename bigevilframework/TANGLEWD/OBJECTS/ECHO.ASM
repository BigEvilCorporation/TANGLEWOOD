;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

; Constants
Echo_MaxEntities			equ 1
Echo_HowlDelay				equ 0x0030		; Delay between Nymn and Echo howling
Echo_JumpToNymnVel			equ 0x040000	; Jum velocity when mounting Nymn

; AI
Echo_NumAINodes				equ 0x10			; Num AI follow nodes to store in queue (must be power of two)
Echo_LostTime				equ 0x78			; Time off screen until considered 'lost'
Echo_AIFollowDistance		equ 0x40			; X distance from Nymn to start following
Echo_AIFollowDistanceLost	equ 0x20			; X distance from Nymn to start following if Nymn is above/below Echo
Echo_AIJumpDistance			equ Player1Height	; Upward distance from Nymn to start jumping
Echo_AIFindHoleDistance		equ Player1Height	; Downward distance from Nymn to find a place to drop down
Echo_AIInnerScreenBoundsExt	equ Player1Height
Echo_AIOuterScreenBoundsExt	equ Player1Height*2

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

; AI state
EchoAIState_None			equ 0	; No AI, under player/cutscene control
EchoAIState_Follow			equ 1
EchoAIState_Lost			equ 2

; Mount/ride Nymn state
EchoMountNymn_Inactive		equ 0
EchoMountNymn_Jumping		equ 1
EchoMountNymn_Mounting		equ 2
EchoMountNymn_Riding		equ 3

; AI follow node
EchoAINode_Action_Jump		equ 0x0
EchoAINode_Action_Fall		equ 0x1

	rsset 0
;---------------------------------
EchoAINode_PosX				rs.w 1
EchoAINode_PosY				rs.w 1
EchoAINode_Tolerance		rs.w 1
EchoAINode_Action			rs.b 1
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
Echo_AINodeProducer			rs.w 1
Echo_AINodeConsumer			rs.w 1
Echo_AILostTimer			rs.w 1
Echo_AILostPosX				rs.w 1
Echo_AILostPosY				rs.w 1
Echo_HowlTimer				rs.w 1
Echo_AIState				rs.b 1
Echo_MountedState			rs.b 1
;---------------------------------
Echo_Struct_Pad      		rs.b 2
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
	addi.w #0x1, EntityCount_Echo
	
	; Set update and render routines
	move.l #EchoUpdate, Entity_UpdateRoutine(a0)
	move.l #EchoDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)
	move.w #Echo_LostTime, Echo_AILostTimer(a0)
	move.w #0x0, Echo_HowlTimer(a0)
	move.b #EchoAIState_None, Echo_AIState(a0)
	move.b #EchoMountNymn_Inactive, Echo_MountedState(a0)
	
	; Setup interaction routines
	move.l #PlayerStartColourAbility, Character_InteractStartA(a0)
	move.l #PlayerStopColourAbility, Character_InteractCancelA(a0)
	move.l #PlayerStartInteract, Character_InteractStartB(a0)
	move.l #PlayerCancelInteract, Character_InteractCancelB(a0)
	
	;==============================================================
	
	; Setup default SFX
	IFND DEBUG
	move.l a0, a2
	add.l  #Character_SFX, a2
	
	; Land
	move.l a2, a3
	add.l  #CharacterSFXIdx_Land*size_long, a3
	move.l #SFX_Land, (a3)

	; Water splash
	move.l a2, a3
	add.l  #CharacterSFXIdx_WaterSplash*size_long, a3
	move.l #SFX_Water_Splash1, (a3)

	; Water Jump
	move.l a2, a3
	add.l  #CharacterSFXIdx_WaterJump*size_long, a3
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

	; If mounting Nymn
	move.b Echo_MountedState(a0), d0
	cmp.b #EchoMountNymn_Inactive, d0
	beq   @NotMounted
	
	; If jumping up to Nymn
	cmp.b #EchoMountNymn_Jumping, d0
	beq   @Jumping
	
	; If landing on Nymn
	cmp.b #EchoMountNymn_Mounting, d0
	beq   @Landing
	
	; Finished mounting sequence
	bra   @Riding
	
	;==============================================================
	
	@Jumping:
	
	; Wait for anim to finish
	cmp.b #0x0, AnimObj_Playing(a0)
	bne   @InSequence
	
	; Snap to Nymn's position
	move.l (Player1), a3
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a3), Entity_WorldPosY(a0)
	
	; Set mounting anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_MountNymn*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Set mounting state
	move.b #EchoMountNymn_Mounting, Echo_MountedState(a0)
	
	bra   @InSequence
	
	;==============================================================
	
	@Landing:
	
	; Wait for anim to finish
	cmp.b #0x0, AnimObj_Playing(a0)
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
	move.l a0, a1
	add.l  #Character_Animations, a1
	move.b Character_AnimIdx(a0), d1
	andi.l #0xFF, d0
	mulu   #Animation_Struct_Size, d1
	add.l  d1, a1
	
	; Apply animation
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

	bra    @Carried
	
	;==============================================================
	
	@NotMounted:
	
	; AI update
	jsr EchoUpdateAI
	
	; Default update
	jsr PlayerUpdate

	; Update howl timer
	move.w Echo_HowlTimer(a0), d0
	cmp.w  #0x0, d0
	beq    @TimerNotRunning
	sub.w  #0x1, d0
	move.w d0, Echo_HowlTimer(a0)
	cmp.w  #0x0, d0
	bne    @TimerStillRunning
	jsr    EchoHowl
	@TimerStillRunning:
	@TimerNotRunning:
	
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

	; Swap out idle and walk anims for carried versions
	ANIM_LOAD_DEFAULT Echo_carriedidle,Echo_carriedidle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo_carriedwalk,Echo_carriedwalk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	
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
	move.l a0, a1
	add.l  #Echo_Animations, a1
	move.l #(EchoAnimIdx_JumpToNymn*Animation_Struct_Size), d1
	add.l  d1, a1
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

	; Restore default idle and walk anims
	ANIM_LOAD_DEFAULT Echo_idle,Echo_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT Echo_walk,Echo_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	
	; Force character animation update to restore anim state
	jsr    CharacterUpdateAnimState

	; Jump off (forced jump)
	move.b #0x1, d2
	jsr    CharacterStartJump
	
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
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Howl*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1

	rts
	
EchoUpdateAI:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b Echo_AIState(a0), d0
	
	cmp.b  #EchoAIState_None, d0
	beq    @End
	cmp.b  #EchoAIState_Follow, d0
	beq    @Follow
	cmp.b  #EchoAIState_Lost, d0
	beq    @Lost
	bra    @End
	
	@Follow:
	jsr    EchoAIUpdate_Follow
	bra    @End

	@Lost:
	jsr    EchoAIUpdate_Lost
	bra    @End
	
	@End:

	rts

EchoAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set follow state
	move.b #EchoAIState_Follow, Echo_AIState(a0)

	; Reset lost timer and pos
	move.w #Echo_LostTime, Echo_AILostTimer(a0)
	move.w #0x0, Echo_AILostPosX(a0)
	move.w #0x0, Echo_AILostPosY(a0)
	
	rts
	
EchoAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get Nymn
	move.l (Player1), a2
	
	; If Echo touching Nymn, clear all follow nodes and do nothing
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	bne    @CancelFollow

	; If off screen, count down lost timer
	jsr    EchoAI_CheckOuterScreenBounds
	tst.b  d0
	bne    @OnScreen
	move.w Echo_AILostTimer(a0), d0
	sub.w  #0x1, d0
	move.w d0, Echo_AILostTimer(a0)
	bne    @LostTimerRunning
	jsr    EchoAIStart_Lost
	bra    @Lost
	
	@OnScreen:

	; On screen, reset lost timer
	move.w #Echo_LostTime, Echo_AILostTimer(a0)

	@LostTimerRunning:

	; Watch Nymn's actions, create AI follow nodes
	jsr    EchoAIUpdate_WatchNymn

	; Clear current AI node
	move.l #0x0, a3

	; Use Nymn X pos as target by default
	ENTITY_GETCENTREX d1,a2
	TOPIXELS d1

	; Default tolerance
	move.w #Echo_AIFollowDistance, d3

	; If node queue empty, just follow Nymn within X threshold
	move.w Echo_AINodeConsumer(a0), d4
	cmp.w  Echo_AINodeProducer(a0), d4
	beq    @NoNodes

	; Peek node queue
	jsr    EchoAIPeekNode

	; Set target X
	move.w EchoAINode_PosX(a3), d1

	; Set tolerance
	move.w EchoAINode_Tolerance(a3), d3

	; If run into a wall, forcefully execute the next node
	PUSHL  d1
	PHYSICS_HITFACINGWALL a0
	POPL   d1
	tst.b  d0
	bne    @HittingWall
	
	@NoNodes:

	; Check if within X tolerance
	ENTITY_GETCENTREX d0,a0
	TOPIXELS d0
	
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

	; Target reached or hit wall, if using AI node then pop from queue and run action
	cmp.l  #0x0, a3
	beq    @NoNode
	jsr    EchoAIPopNode
	bra    @End
	@NoNode:

	; No node, just cancel X movement
	jsr    CharacterCancelXMovement
	bra    @End

	@CancelFollow:
	@Lost:

	; Cancel X movement and clear all follow nodes
	jsr    CharacterCancelXMovement
	move.w #0x0, Echo_AINodeProducer(a0)
	move.w #0x0, Echo_AINodeConsumer(a0)
	
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

	; Set lost position
	move.w Entity_WorldPosX(a0), Echo_AILostPosX(a0)
	move.w Entity_WorldPosY(a0), Echo_AILostPosY(a0)

	@InAir:
	
	rts
	
EchoAIUpdate_Lost:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If back in view, back to follow state
	jsr    EchoAI_CheckInnerScreenBounds
	tst.b  d0
	beq    @StillLost
	jsr    EchoAIStart_Follow
	bra    @End
	@StillLost:

	; If not yet taken lost pos
	tst.w  Echo_AILostPosX(a0)
	bne    @TakenLostPos

	; Wait until on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir

	; Set lost position
	move.w Entity_WorldPosX(a0), Echo_AILostPosX(a0)
	move.w Entity_WorldPosY(a0), Echo_AILostPosY(a0)

	@TakenLostPos:

	; Get Nymn
	move.l (Player1), a2

	; Get lost pos and camera pos
	move.w Echo_AILostPosX(a0), d0
	move.w Echo_AILostPosY(a0), d1
	move.w CameraWorldPosX, d2
	move.w CameraWorldPosY, d3

	; Get edge of screen between lost X and camera X, at lost pos Y
	move.w d2, d6	; Backup camera X
	move.w d2, d5
	sub.w  d0, d5	; Cam X - Echo X
	blt    @RightEdge
	subi.w #screen_width/2, d6	; Left edge
	bra    @EndEdge
	@RightEdge:
	addi.w #screen_width/2, d6	; Right edge
	@EndEdge:

	; Find floor
	PUSHM d0-d6
	move.w d6, d0
	TOSUBPIXELS d0
	TOSUBPIXELS d1
	jsr   EchoAI_FindFloor
	move.l d2, d7
	POPM  d0-d6

	tst.l d6
	beq    @FloorNotFound

	; Floor found, set new pos and return to follow state
	move.w Entity_Height(a0), d2
	TOSUBPIXELS d6
	TOSUBPIXELS d2
	sub.l  d2, d7
	move.l d6, Entity_WorldPosX(a0)
	move.l d7, Entity_WorldPosY(a0)
	jsr    EchoAIStart_Follow
	bra    @End

	@FloorNotFound:

	; Get edge of screen between lost X and camera X, at Nymn's Y

	; Find floor

	; If found, set new pos and back to follow state

	@InAir:
	@End:

	rts

EchoAI_CheckInnerScreenBounds:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) OUT: On screen

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS d3,d4,d5
	PHYSICS_GROWBOUNDS d3,d4,#Echo_AIInnerScreenBoundsExt
	jsr    PHYS_TestBoxIntersectBox

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

EchoAIUpdate_WatchNymn:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a2 --- Nymn addr

	; Get Nymn Y pos
	move.w Entity_WorldPosY(a2), d1

	; Get Echo Y pos, or last node Y pos
	move.w Echo_AINodeConsumer(a0), d4
	cmp.w  Echo_AINodeProducer(a0), d4
	beq    @NoNodes
	jsr    EchoAIPeekNode
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
	ENTITY_GETCENTREX d5,a2
	TOPIXELS d5
	move.w d5, EchoAINode_PosX(a3)
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AIFollowDistanceLost, EchoAINode_Tolerance(a3)
	move.b #EchoAINode_Action_Jump, EchoAINode_Action(a3)

	bra    @End

	@WithinYToleranceUp:

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
	move.w d1, EchoAINode_PosY(a3)
	move.w #Echo_AIFollowDistanceLost, EchoAINode_Tolerance(a3)
	move.b #EchoAINode_Action_Fall, EchoAINode_Action(a3)

	@WithinYToleranceDown:

	@End:

	rts

EchoAIPushNode:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	moveq  #0x0, d7
	move.w Echo_AINodeProducer(a0), d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get producer position

	; Increment (and wrap) producer index
	addi.w #0x1, Echo_AINodeProducer(a0)
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	add.l  #Echo_AIFollowNodes, a0		; Get array
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
	addi.w #0x1, Echo_AINodeConsumer(a0)
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	add.l  #Echo_AIFollowNodes, a0		; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	POPL  a0

	; Determine node type and run action
	move.b EchoAINode_Action(a3), d0
	cmp.b  #EchoAINode_Action_Fall, d0
	beq    @FallAction
	cmp.b  #EchoAINode_Action_Jump, d0
	beq    @JumpAction

	@JumpAction:
	
	; Jump
	move.b #0x0, d2
	jsr    CharacterStartJump
	bra    @EndAction
	
	@FallAction:
	
	; Stop X movement
	jsr    CharacterCancelXMovement
	bra    @EndAction
	
	@EndAction:

	rts

EchoAIPeekNode:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Node

	PUSHL a0

	moveq  #0x0, d7
	move.w Echo_AINodeConsumer(a0), d7
	andi.w #Echo_NumAINodes-1, d7		; MOD to get consumer position
	
	; Get address into array of nodes
	mulu   #EchoAINode_Struct_Size, d7	; Index to node offset
	add.l  #Echo_AIFollowNodes, a0		; Get array
	add.l  d7, a0						; Add offset
	move.l a0, a3

	POPL  a0

	rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   echo.asm - Nymn's little brother
;==============================================================

; Constants
Echo_MaxEntities			equ 1
EchoHowlDelay				equ 0x0030	; Delay between Nymn and Echo howling

; AI
Echo_AIFollowDistance		equ 0x40

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
Echo_HowlTimer				rs.w 1
Echo_AIState				rs.b 1
Echo_MountedState			rs.b 1
;---------------------------------
Echo_Struct_Pad      		rs.b 0
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
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
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
	;ANIM_LOAD_DEFAULT Echo_death,Echo_death,Character_Animations,CharacterAnimIdx_Dead,0,1,1

	; Run
	ANIM_LOAD_DEFAULT Echo_run,Echo_run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Run
	ANIM_LOAD_DEFAULT Echo_walk,Echo_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Walk to run transition
	ANIM_LOAD_DEFAULT Echo_walktorun,Echo_walktorun,Character_Animations,CharacterAnimIdx_WalkToRun,0,0,0

	; Jump
	ANIM_LOAD_DEFAULT Echo_jump,Echo_jump,Character_Animations,CharacterAnimIdx_Jump,1,0,0

	; Fall
	;ANIM_LOAD_DEFAULT Echo_fall,Echo_fall,Character_Animations,CharacterAnimIdx_Fall,1,0,0
	
	; Water wade
	;ANIM_LOAD_DEFAULT Echo_wade,Echo_wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0

	; Glide
	;ANIM_LOAD_DEFAULT Echo_glide,Echo_glide,Character_Animations,CharacterAnimIdx_Glide,1,0,0

	; Ride (trot)
	;ANIM_LOAD_DEFAULT Echo_ridedjakk,Echo_ridedjakk,Character_Animations,CharacterAnimIdx_RideTrot,1,0,0

	; Ride (gallop)
	;ANIM_LOAD_DEFAULT Echo_ridedjakkrun,Echo_ridedjakkrun,Character_Animations,CharacterAnimIdx_RideGallop,1,0,0

	; Ride (jump)
	;ANIM_LOAD_DEFAULT Echo_ridedjakkjump,Echo_ridedjakkjump,Character_Animations,CharacterAnimIdx_RideJump,1,0,0

	; Push (light object)
	;ANIM_LOAD_DEFAULT Echo_push,Echo_push,Character_Animations,CharacterAnimIdx_Push,1,0,0
	
	; Push (heavy object)
	;ANIM_LOAD_DEFAULT Echo_pushheavy,Echo_pushheavy,Character_Animations,CharacterAnimIdx_PushHeavy,1,0,0

	;==============================================================
	; Setup player animations

	; Colour switch
	ANIM_LOAD_DEFAULT Echo_colourswitch,Echo_colourswitch,Player_Animations,PlayerAnimIdx_Switch,0,1,0
	
	; Sleep
	;ANIM_LOAD_DEFAULT Echo_sleep,Echo_sleep,Player_Animations,PlayerAnimIdx_Sleep,1,1,0
	
	; Lay down
	;ANIM_LOAD_DEFAULT Echo_laydown,Echo_laydown,Player_Animations,PlayerAnimIdx_LieDown,0,1,0

	; Wake up
	;ANIM_LOAD_DEFAULT Echo_laydown,Echo_wake,Player_Animations,PlayerAnimIdx_Wake,0,1,0
	
	; Raise head then back to sleep
	;ANIM_LOAD_DEFAULT Echo_laydown,Echo_wakesleep,Player_Animations,PlayerAnimIdx_WakeSleep,0,1,0
	
	; Nervous look back
	;ANIM_LOAD_DEFAULT Echo_lookback,Echo_lookback,Player_Animations,PlayerAnimIdx_IdleLookBack,0,1,0
	
	; Mount a Djakk
	;ANIM_LOAD_DEFAULT Echo_mountdjakk,Echo_mountdjakk,Player_Animations,PlayerAnimIdx_Mount,0,1,0

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
	
	@InSequence:
	@AnimSynced:
	
	; Update animation only
	jsr    AnimObjUpdate
	
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
	jsr    CharacterStartJump
	
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
	
	; Jump off
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
	move.w #EchoHowlDelay, Echo_HowlTimer(a0)	
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
	bra    @End
	
	@Follow:
	jsr    EchoAIUpdate_Follow
	bra    @End
	
	@End:

	rts

EchoAIStart_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b #EchoAIState_Follow, Echo_AIState(a0)
	
	rts
	
EchoAIUpdate_Follow:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get Nymn
	move.l (Player1), a2
	
	; TODO: Check if within Y tolerance, move to object search state
	
	; TODO: Check if hitting a wall, start lost timer
	
	; Check if within X tolerance
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	
	; Check left bounds
	move.l d1, d2
	sub.l  #(Echo_AIFollowDistance*subpixels_per_pixel), d2
	cmp.l  d0, d2
	bgt    @TooFarleft
	
	; Check right bounds
	move.l d1, d2
	add.l  #(Echo_AIFollowDistance*subpixels_per_pixel), d2
	cmp.l  d0, d2
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
	jsr    CharacterCancelXMovement
	
	@End:
	
	rts
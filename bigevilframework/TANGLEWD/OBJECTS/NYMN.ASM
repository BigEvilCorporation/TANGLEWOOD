;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   nymn.asm - The star of the show
;==============================================================

; Animations
NymnAnimIdx_GreetEcho    	equ 0
NymnAnimIdx_PickupEcho    	equ 1
; -------------------------------
NymnAnimIdx_Max       		equ 2

; Carry Echo state
NymnCarryEcho_Inactive		equ 0
NymnCarryEcho_Catching		equ 1
NymnCarryEcho_Carrying		equ 2

; ************************************
; Struct
; ************************************
	rsset (Player_Struct_Size)
;---------------------------------
Nymn_Animations	   			rs.b (Animation_Struct_Size*NymnAnimIdx_Max)
Nymn_CarryEchoState			rs.b 1
;---------------------------------
Nymn_Struct_Pad      		rs.b 3
Nymn_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
NymnInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    PlayerInit

	; Count
	addq.w #0x1, EntityCount_Nymn
	
	; Set update and render routines
	move.l #NymnUpdate, Entity_UpdateRoutine(a0)
	move.l #NymnDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	;==============================================================
	
	; Setup default state
	move.b #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	
	; Setup interaction routines
	move.l #PlayerStartColourAbility, Character_InteractStartA(a0)
	move.l #PlayerStopColourAbility, Character_InteractCancelA(a0)
	move.l #NymnStartInteract, Character_InteractStartB(a0)
	move.l #NymnCancelInteract, Character_InteractCancelB(a0)
	
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
	; Setup default character animations

	; Idle
	ANIM_LOAD_DEFAULT nymn_idle,nymn_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	; Dead
	ANIM_LOAD_DEFAULT nymn_death,nymn_death,Character_Animations,CharacterAnimIdx_Dead,0,1,1

	; Run
	ANIM_LOAD_DEFAULT nymn_run,nymn_run,Character_Animations,CharacterAnimIdx_Run,1,0,0

	; Run
	ANIM_LOAD_DEFAULT nymn_walk,nymn_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0

	; Walk to run transition
	ANIM_LOAD_DEFAULT nymn_walktorun,nymn_walktorun,Character_Animations,CharacterAnimIdx_WalkToRun,0,0,0

	; Jump
	ANIM_LOAD_DEFAULT nymn_jump,nymn_jump,Character_Animations,CharacterAnimIdx_Jump,1,0,0

	; Fall
	ANIM_LOAD_DEFAULT nymn_fall,nymn_fall,Character_Animations,CharacterAnimIdx_Fall,1,0,0
	
	; Water wade
	ANIM_LOAD_DEFAULT nymn_wade,nymn_wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0

	; Glide
	ANIM_LOAD_DEFAULT nymn_glide,nymn_glide,Character_Animations,CharacterAnimIdx_Glide,1,0,0

	; Ride (trot)
	ANIM_LOAD_DEFAULT nymn_ridedjakk,nymn_ridedjakk,Character_Animations,CharacterAnimIdx_RideTrot,1,0,0

	; Ride (gallop)
	ANIM_LOAD_DEFAULT nymn_ridedjakkrun,nymn_ridedjakkrun,Character_Animations,CharacterAnimIdx_RideGallop,1,0,0

	; Ride (jump)
	ANIM_LOAD_DEFAULT nymn_ridedjakkjump,nymn_ridedjakkjump,Character_Animations,CharacterAnimIdx_RideJump,1,0,0

	; Push (light object)
	ANIM_LOAD_DEFAULT nymn_push,nymn_push,Character_Animations,CharacterAnimIdx_Push,1,0,0
	
	; Push (heavy object)
	ANIM_LOAD_DEFAULT nymn_pushheavy,nymn_pushheavy,Character_Animations,CharacterAnimIdx_PushHeavy,1,0,0

	;==============================================================
	; Setup player animations

	; Colour switch
	ANIM_LOAD_DEFAULT nymn_colourswitch,nymn_colourswitch,Player_Animations,PlayerAnimIdx_Switch,0,1,0
	
	; Sleep
	ANIM_LOAD_DEFAULT nymn_sleep,nymn_sleep,Player_Animations,PlayerAnimIdx_Sleep,1,1,0
	
	; Lay down
	ANIM_LOAD_DEFAULT nymn_laydown,nymn_laydown,Player_Animations,PlayerAnimIdx_LieDown,0,1,0

	; Wake up
	ANIM_LOAD_DEFAULT nymn_laydown,nymn_wake,Player_Animations,PlayerAnimIdx_Wake,0,1,0
	
	; Raise head then back to sleep
	ANIM_LOAD_DEFAULT nymn_laydown,nymn_wakesleep,Player_Animations,PlayerAnimIdx_WakeSleep,0,1,0
	
	; Nervous look back
	ANIM_LOAD_DEFAULT nymn_lookback,nymn_lookback,Player_Animations,PlayerAnimIdx_IdleLookBack,0,1,0
	
	; Mount a Djakk
	ANIM_LOAD_DEFAULT nymn_mountdjakk,nymn_mountdjakk,Player_Animations,PlayerAnimIdx_Mount,0,1,0

	; Howl
	ANIM_LOAD_DEFAULT nymn_calllong,nymn_calllong,Player_Animations,PlayerAnimIdx_Howl,0,1,0
	
	;==============================================================
	; Setup Nymn specific animations

	; Greet up Echo
	ANIM_LOAD_DEFAULT nymn_greetecho,nymn_greetecho,Nymn_Animations,NymnAnimIdx_GreetEcho,0,1,0
	
	; Pick up Echo
	ANIM_LOAD_DEFAULT nymn_pickupecho,nymn_pickupecho,Nymn_Animations,NymnAnimIdx_PickupEcho,0,1,0
	
	rts

NymnLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT nymn,PaletteId_Player,0x0

	rts
	
NymnUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Determine if carrying Echo
	move.b Nymn_CarryEchoState(a0), d0
	cmp.b  #NymnCarryEcho_Inactive, d0
	beq    @NotCarrying
	
	; If carrying echo
	cmp.b  #NymnCarryEcho_Carrying, d0
	beq    @Carrying
	
	;==============================================================
	
	; Wait for Echo to begin landing
	move.l (Player2), a2
	cmp.b  #EchoMountNymn_Mounting, Echo_MountedState(a2)
	bne    @NotCatching
	
	; Echo has landed, play catch animation
	PUSHL  a1
	lea    Nymn_Animations+(NymnAnimIdx_PickupEcho*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	;==============================================================
	
	@NotCatching:

	; Wait for Echo to end mount anim
	move.l (Player2), a2
	cmp.b  #EchoMountNymn_Riding, Echo_MountedState(a2)
	bne    @NotCarrying
	
	; Set carrying state
	move.b #NymnCarryEcho_Carrying, Nymn_CarryEchoState(a0)

	; Restore controls
	move.b #0x1, Player_ControlEnabled(a0)
	
	;==============================================================

	@NotCarrying:
	@Carrying:
	
	; Base functionality
	jsr PlayerUpdate

	; Update Echo manually
	move.b Nymn_CarryEchoState(a0), d0
	cmp.b  #NymnCarryEcho_Inactive, d0
	beq    @NotUpdatingEcho
	PUSHL  a0
	move.l (Player2), a0
	jsr    EchoUpdateRiding
	POPL   a0
	@NotUpdatingEcho:
	
	rts

NymnDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	jsr    CharacterDraw

	; If carrying Echo, manually draw Echo so anim frames match up
	tst.b  Nymn_CarryEchoState(a0)
	beq    @NotCarryingEcho
	PUSHL  a0
	move.l (Player2), a0
	jsr    CharacterDraw
	POPL   a0
	@NotCarryingEcho:

	rts
	
NymnStartInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)

	IF !INCLUDE_CHARACTER_ECHO

	; Base functionality
	jsr    PlayerStartInteract

	ELSE ; TANGLWD_INCLUDE_ECHO
	
	; Check if already interacting
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting
	
	; Check if player dead
	tst.b  Character_Dead(a0)
	bne    @Dead

	; Check if player on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @InAir
	
	; Bounds test with Echo
	move.l (Player2), a2
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @EchoNotFound
	
	; Near Echo, begin carry sequence
	jsr    NymnBeginCarryEcho
	
	PUSHL  a0
	move.l (Player2), a0
	jsr    EchoBeginCarried
	POPL   a0
	
	bra    @EchoFound
	
	@EchoNotFound:
	
	; Base functionality
	jsr    PlayerStartInteract

	; If no interaction started
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting

	; If at zero velocity
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bne    @Moving
	cmp.l  #0x0, PhysicsObj_VelY(a0)
	bne    @Moving

	; If in idle state and not waiting on another anim
	cmp.b  #CharacterAnimIdx_Idle, Character_AnimIdx(a0)
	bne    @NotIdle
	move.l AnimObj_CurrentAnim(a0), a2
	tst.b  Animation_Looping(a2)
	beq    @NotIdle

	; Howl
	jsr    NymnHowl

	@Moving:
	@NotIdle:

	@AlreadyInteracting:
	@Dead:
	@InAir:
	@EchoFound:

	ENDIF ; INCLUDE_CHARACTER_ECHO
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts
	
NymnCancelInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)

	IFND INCLUDE_CHARACTER_ECHO

	; Base functionality
	jsr    PlayerCancelInteract

	ELSE ; TANGLWD_INCLUDE_ECHO
	
	; If carrying Echo
	cmp.b  #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	beq    @NotCarryingEcho
	
	; Put him down
	jsr    NymnEndCarryEcho
	
	PUSHL  a0
	move.l (Player2), a0
	jsr    EchoEndCarried
	POPL   a0
	
	bra    @CarryingEcho
	
	@NotCarryingEcho:
	
	; Base functionality
	jsr    PlayerCancelInteract
	
	@CarryingEcho:

	ENDIF ; INCLUDE_CHARACTER_ECHO
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts
	
NymnBeginCarryEcho:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IFD INCLUDE_CHARACTER_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Swap out idle, walk and water wade anims for carry versions
	ANIM_LOAD_DEFAULT nymn_carryechoidle,nymn_carryechoidle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT nymn_carryechowalk,nymn_carryechowalk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT nymn_carryechowalk,nymn_carryechowalk,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0
	
	; Begin catching/carrying sequence
	move.b #NymnCarryEcho_Catching, Nymn_CarryEchoState(a0)
	
	; Set interaction type
	move.b #Player_Interaction_Custom, Player_InteractionType(a0)
	
	; Can't run
	move.b #Character_WalkInteract, d2
	jsr    CharacterPreventRun
	move.l #Player1MaxVelXWalk, Character_MaxVelXRun(a0)

	; Interacting
	move.b #0x1, Character_Interacting(a0)

	; Cannot control until Echo has landed
	move.b #0x0, Player_ControlEnabled(a0)

	; Use toggle interact mode
	move.b #0x1, Player_InteractionToggle(a0)

	ENDIF ; INCLUDE_CHARACTER_ECHO

	rts
	
NymnEndCarryEcho:
	; a0 --- GameObj addr
	; a1 --- Level addr

	IFD INCLUDE_CHARACTER_ECHO
	
	; Cancel velocity and acceleration
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Restore default idle, walk and water wade anims
	ANIM_LOAD_DEFAULT nymn_idle,nymn_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT nymn_walk,nymn_walk,Character_Animations,CharacterAnimIdx_Walk,1,0,0
	ANIM_LOAD_DEFAULT nymn_wade,nymn_wade,Character_Animations,CharacterAnimIdx_WaterWade,1,0,0

	; Force back to idle anim
	PUSHL  a1
	lea    Character_Animations+(CharacterAnimIdx_Idle*Animation_Struct_Size)(a0), a1
	move.b #0x1, d0
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; No longer carrying
	move.b #NymnCarryEcho_Inactive, Nymn_CarryEchoState(a0)
	
	; No longer interacting
	move.b #Player_Interaction_None, Player_InteractionType(a0)
	move.b #0x0, Character_Interacting(a0)
	
	; Restore run
	move.b #Character_WalkInteract, d2
	jsr    CharacterAllowRun
	move.l #Player1MaxVelXRun, Character_MaxVelXRun(a0)

	ENDIF ; INCLUDE_CHARACTER_ECHO

	rts

NymnHowl:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Start howling anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Howl*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	POPL   a1

	IFD INCLUDE_CHARACTER_ECHO

	; Start Echo's howl timer
	PUSHL  a0
	move.l (Player2), a0
	jsr    EchoStartHowlTimer
	POPL   a0

	ENDIF ; INCLUDE_CHARACTER_ECHO

	rts
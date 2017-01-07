;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   player.asm - Player specific movement and mechanics
;==============================================================

; ************************************
; Constants
; ************************************
Player_MaxEntities equ 0x2

; Player dimensions
Player1Width	  equ 0x0038
Player1Height	  equ 0x0030

; Player collision bounds
Player1BoundsWidth		equ 0x0010
Player1BoundsHeight		equ 0x0030
Player1BoundsOffsetX	equ (Player1Width/2)-(Player1BoundsWidth/2)
Player1BoundsOffsetY	equ (Player1Height/2)-(Player1BoundsHeight/2)
Player1PushBoundsOuterDist	equ 0x4

; Player starting positions - TODO: From spawn point
Player1StartPosScreenX equ (screen_width/2)-(Player1Width/2)+100
Player1StartPosScreenY equ GroundHeightScreen-Player1Height-0x80
Player1StartPosWorldX  equ Player1StartPosScreenX*SubpixelsPerPixel
Player1StartPosWorldY  equ Player1StartPosScreenY*SubpixelsPerPixel

; Player acceleration/deceleration
Player1AccelWalk   equ 0x0006 ; Player 1 walking acceleration
Player1AccelRun    equ 0x0014 ; Player 1 running acceleration
Player1DecelIdle   equ 0x0016 ; Player 1 deceleration if left alone
Player1DecelForced equ 0x0030 ; Player 1 deceleration if input opposite direction

; Player max velocities (all values must be divisors of SubpixelsPerPixel)
Player1MaxVelXWalk equ 0x0120  ; Player 1 max X walking velocity
Player1MaxVelXRun  equ 0x0380  ; Player 1 max X running velocity
Player1MaxVelYUp   equ 0x0600  ; Player 1 max Y velocity up
Player1MaxVelYDown equ (0x8*SubpixelsPerPixel)  ; Player 1 max Y velocity down (tile height)

Player1JumpVel	     equ 0x0600 ; Player 1 jump velocity impulse
Player1JumpVelWater	 equ 0x0200 ; Player 1 jump velocity impulse from water
Player1JumpCancelVelLo equ 0x0100 ; Player 1 velocity to cancel jump min
Player1JumpCancelVelHi equ Player1MaxVelYUp ; Player 1 velocity to cancel jump max
Player1MaxGrabUpVel  equ 0x0300 ; Max up velocity player can grab a ledge (no limit on down vel)

; Player collision probes
Player1StepHeight	 equ 0x3
Player1ProbeFloorX   equ (Player1Width/2)   ; Floor detection probe position X
Player1ProbeFloorY   equ (Player1Height-8)  ; Floor detection probe position Y
Player1ProbeLedgeX   equ 0x1F			    ; Ledge detection probe position X
Player1ProbeLedgeY   equ 0x02			    ; Ledge detection probe position Y

; Walk to run transition velocity
Player1WalkToRunVel  equ 0x0200

; Player colour change
Player1ColourChangeSpeed 	equ (0x2<<fade_frame_shift)
Player1ColourChangeTimeout	equ 0x0600

; Glide ability
Player1MaxGlideVelocityX	equ Player1MaxVelXRun
Player1MaxGlideVelocityY	equ 0x01*SubpixelsPerPixel

; Time ability
Player1SlowTimeDiv			equ 0x10

; Max object height to consider it 'heavy' (changes push anim)
Player1MaxLightPushObjHeight	equ 0x10

; Num frames to wait before idle anim
Player1IdleAnimWaitFrames	equ 0x0300

; Max monster taming distance
Player1DjakkTamingDistance  equ	0x0100

; Djakk saddle position
Player1DjakkSaddleOffsetX	equ 0x0000
Player1DjakkSaddleOffsetY	equ 0x0000

; TEMP
Player1PushBoundsWidthInner	equ 0x10
Player1PushBoundsWidthOuter equ 0x20
Player1PushBoundsMinXInner	equ ((Player1Width/2)-(Player1PushBoundsWidthInner/2))
Player1PushBoundsMaxXInner	equ ((Player1Width/2)+(Player1PushBoundsWidthInner/2))
Player1PushBoundsMinXOuter	equ ((Player1Width/2)-(Player1PushBoundsWidthOuter/2))
Player1PushBoundsMaxXOuter	equ ((Player1Width/2)+(Player1PushBoundsWidthOuter/2))

Player1PushAnimSpeedVelocityDivLight equ 0x0004
Player1PushAnimSpeedVelocityDivHeavy equ 0x0008

; Interaction types
Player_Interaction_None		equ 0x0
Player_Interaction_Fuzzl	equ 0x1
Player_Interaction_Boulder	equ 0x2
Player_Interaction_Ability	equ 0x3
Player_Interaction_Lift 	equ 0x4
Player_Interaction_Push		equ 0x5
Player_Interaction_Ride		equ 0x6
Player_Interaction_Custom	equ 0x7

; Animations
PlayerAnimIdx_Switch    	equ 0
PlayerAnimIdx_LieDown   	equ 1
PlayerAnimIdx_Sleep     	equ 2	; Sleep loop
PlayerAnimIdx_Wake      	equ 3	; Wakes up fully and stands up
PlayerAnimIdx_WakeSleep 	equ 4	; Raises head, pauses, then goes back to sleep
PlayerAnimIdx_IdleLookBack 	equ 5	; Looks back fast, pauses, looks forward
PlayerAnimIdx_Ride		 	equ 6	; Ride a Djakk
; -------------------------------
PlayerAnimIdx_Max       	equ 7

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;---------------------------------
Player_Animations	   		rs.b (Animation_Struct_Size*PlayerAnimIdx_Max)
Player_InteractObject  		rs.l 1	; Object player is interacting with
Player_ColourChangeTimer	rs.w 1
Player_IdleFrameCount		rs.w 1
Player_IdleTimeoutCount		rs.w 1
Player_InteractionType 		rs.b 1	; Current interaction type
Player_Colour          		rs.b 1
Player_ActiveColourAbility	rs.b 1
Player_Sleeping         	rs.b 1	; Uninterruptible sleep (end of level behaviour)
Player_Snoozing         	rs.b 1	; Interruptible sleep (idle behaviour)
;---------------------------------
Player_Struct_Pad      		rs.b 1
Player_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
PlayerInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    CharacterInit
	
	; Set type
	ori.l  #entity_type_player, Entity_TypeBits(a0)
	
	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)
	
	;==============================================================

	; Setup default state
	move.l  #Player1StartPosWorldX, Entity_WorldPosX(a0)
	move.l  #Player1StartPosWorldY, Entity_WorldPosY(a0)
	move.w  #Player1Width, Entity_Width(a0)
	move.w  #Player1Height, Entity_Height(a0)
	move.w  #Player1MaxVelXWalk, PhysicsObj_MaxVelX(a0)
	move.w  #Player1MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.w  #Player1MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Player1DecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Player1ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Player1ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Player1StepHeight, PhysicsObj_StepHeight(a0)
	move.b  #0x0, PhysicsObj_Pushable(a0)
	
	move.w  #Player1MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.w  #Player1MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Player1AccelWalk, Character_AccelWalk(a0)
	move.w  #Player1AccelRun, Character_AccelRun(a0)
	move.w  #Player1DecelIdle, Character_DecelIdle(a0)
	move.w  #Player1DecelForced, Character_DecelForced(a0)
	move.w  #Player1JumpVel, Character_JumpVel(a0)
	move.w  #Player1JumpVelWater, Character_JumpVelWater(a0)
	move.w  #Player1JumpCancelVelLo, Character_JumpCancelVelLo(a0)
	move.w  #Player1JumpCancelVelHi, Character_JumpCancelVelHi(a0)
	move.w  #Player1MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Player1ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Player1ProbeLedgeY, Character_ProbeLedgeY(a0)
	move.w  #Player1WalkToRunVel, Character_WalkToRunVel(a0)

	move.b  #ColourRed, Player_Colour(a0)
	move.b  #0x0, Player_ActiveColourAbility(a0)
	move.l  #0x0, Player_InteractObject(a0)
	move.w  #0x0, Player_ColourChangeTimer(a0)
	move.w  #0x0, Player_IdleFrameCount(a0)
	move.b  #0x0, Player_IdleTimeoutCount(a0)
	move.b  #Player_Interaction_None, Player_InteractionType(a0)
	move.b  #0x0, Player_Sleeping(a0)
	move.b  #0x0, Player_Snoozing(a0)
	
	; Setup collision bounds
	move.w  #Player1BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Player1BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Player1BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Player1BoundsHeight, PhysicsObj_BoundsHeight(a0)
	move.w  #Player1PushBoundsOuterDist, PhysicsObj_PushDetectOuter(a0)
	
	;==============================================================
	
	; Register as pushing object
	LIST_APPEND_TAIL PushingObjs, a0, a3
	
	; Running by default
	jsr    CharacterStartRun
	
	rts

PlayerUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Test for pickups
	jsr    PlayerInteractTest_Fireflies
	
	; Test for water
	jsr    PlayerInteractTest_Water

	; Test for bounce plants
	jsr    PlayerInteractTest_BouncePlants
	
	; Process sleep/snooze states
	cmp.b  #0x0, Player_Sleeping(a0)
	beq    @NotSleeping
	jsr    PlayerUpdateSleep
	@NotSleeping:
	
	cmp.b  #0x0, Player_Snoozing(a0)
	beq    @NotSnoozing
	jsr    PlayerUpdateIdleSnooze
	@NotSnoozing:
	
	; Process push interaction
	cmp.b  #Player_Interaction_Push, Player_InteractionType(a0)
	beq    @Pushing
	
	; Not pushing, process special colour ability
	jsr    PlayerUpdateColourAbility
	bra    @NotInteracting
	
	@Pushing:
	
	; Scale push anim speed based on velocity
	clr.l  d0
	move.w PhysicsObj_VelX(a0), d0
	cmp.w  #0x0, d0
	bgt    @Fwd
	neg.w  d0
	@Fwd:
	move.w d0, d1
	
	; Apply to light push anim
	divs.w #Player1PushAnimSpeedVelocityDivLight, d0
	move.l a0, a2
	add.l  #Character_Animations, a2
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Push), a2
	move.b d0, Animation_Speed(a2)
	
	; Apply to heavy push anim
	divs.w #Player1PushAnimSpeedVelocityDivHeavy, d1
	move.l a0, a2
	add.l  #Character_Animations, a2
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_PushHeavy), a2
	move.b d1, Animation_Speed(a2)
	
	; If no push object, or no longer pushable, stop pushing
	move.l PhysicsObj_LastPushingObj(a0), a2
	cmp.l  #0x0, PhysicsObj_LastPushingObj(a0)
	beq    @StopPushing
	cmp.b  #0x0, PhysicsObj_Pushable(a2)
	beq    @StopPushing
	cmp.b  #0x0, PhysicsObj_CanPush(a0)
	beq    @StopPushing
	
	; Still pushing
	bra    @Interacting
	
	@StopPushing:
	jsr    PlayerCancelInteract
	
	@Interacting:
	@NotInteracting:
	
	; If landing a jump, allow falling down holes
	move.b Character_Jumping(a0), PhysicsObj_FallThroughHoles(a0)
	
	; If dead and not red, switch back
	cmp.b  #0x0, Character_Dead(a0)
	beq    @NotDead
	cmp.b  #ColourRed, Player_Colour(a0)
	beq    @Red
	jsr    PlayerStopColourAbility
	move.b #ColourRed, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	@NotDead:
	@Red:
	
	; Process idle anim
	jsr    PlayerUpdateIdleAnim
	
	; Base functionality
	jsr    CharacterUpdate
	
	rts
	
PlayerBeginSleep:
	; a0 --- Character address
	
	; Cancel all actions
	jsr    CharacterCancelXMovement
	jsr    CharacterCancelRun
	jsr    CharacterCancelJump
	move.b #0x0, Character_Interacting(a0)
	
	; Start animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_LieDown*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Start sleep state
	move.b #0x1, Player_Sleeping(a0)
	
	rts
	
PlayerUpdateSleep:
	; a0 --- Character address
	
	; If animation finished, run looping sleep anim
	cmp.b  #0x0, AnimObj_Playing(a0)
	bne    @LyingDown
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@LyingDown:
	
	rts
	
PlayerBeginIdleSnooze:
	; a0 --- Character address
	
	; Cancel all actions
	jsr    CharacterCancelXMovement
	jsr    CharacterCancelRun
	jsr    CharacterCancelJump
	move.b #0x0, Character_Interacting(a0)
	
	; Start sleep anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Sleep*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Start snooze state
	move.b #0x1, Player_Snoozing(a0)
	
	rts
	
PlayerUpdateIdleSnooze:
	; a0 --- Character address
	
	; If any button pressed
	cmp.w  #0x0, Gamepad1State
	bgt    @EndSnooze
	
	bra    @StillSnoozing
	
	@EndSnooze:
	
	; Release looping anim control, stop snoozing
	move.b #0x1, Character_UpdateAnim(a0)
	move.b #0x0, Player_Snoozing(a0)
	move.b #0x0, Player_Sleeping(a0)
	
	; Cancel out the velocity used to wake up
	move.w #0x0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	
	; Start wake anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Wake*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@StillSnoozing:
	
	rts
	
PlayerUpdateIdleAnim:
	
	; If in idle anim, check if one-shot idle anim should start
	move.l a0, a2
	add.l  #Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Idle), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	bne    @NotIdle
	
	add.w  #0x1, Player_IdleFrameCount(a0)							; Increment idle frame count
	cmp.w  #Player1IdleAnimWaitFrames, Player_IdleFrameCount(a0)	; Check if hit threshold
	bne    @EndIdle
	
	cmp.b  #0x1, Player_IdleTimeoutCount(a0)						; Check if second idle sequence
	bne    @FirstTimeIdle
	jsr    PlayerBeginSleep											; Start idle snooze instead
	move.b #0x1, Player_Snoozing(a0)
	move.b #0x0, Player_IdleTimeoutCount(a0)
	bra    @End
	@FirstTimeIdle:
	
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations+(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack), a1
	jsr    AnimObjSetAnimation										; Start next one-shot idle anim
	add.b  #0x1, Player_IdleTimeoutCount(a0)
	POPL   a1
	
	@NotIdle:
	move.w #0x0, Player_IdleFrameCount(a0)							; Not idling, reset counter
	@EndIdle:
	
	; If in one-shot idle anim, any button press interrupts
	move.l a0, a2
	add.l  #Player_Animations+(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	bne    @NotOneShotIdle
	cmp.w  #0x0, Gamepad1State
	beq    @NotInterrupted
	PUSHL  a1
	move.l a0, a1
	add.l  #Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Idle), a1
	jsr    AnimObjSetAnimation										; Start next one-shot idle anim
	POPL   a1
	@NotInterrupted:
	@NotOneShotIdle:
	
	@End:
	
	rts

PlayerBeginColourSwitch:
	; a0 --- Character address
	
	PUSHL  d0/d3
	PUSHL  a0/a1

	lea    SwitchingPalettesP1, a1	; Get palette array	
	clr.l  d0
	move.b Player_Colour(a0), d0	; Get colour type
	lsl.l  #0x2, d0					; To address offset
	add.l  d0, a1					
	move.l (a1), a0					; Get new palette address
	move.l #PaletteId_Player, d0	; Get destination palette ID - TODO: From PhysicsObj
	move.l #Player1ColourChangeSpeed, d1	; Get switch speed - TODO: From Character
	move.b #0x1, d2					; Ticks per update
	move.b #0x0, d3					; Range min
	move.b #0xE, d4					; Range max
	jsr    PAL_LerpStart			; Begin palette lerp
	
	POPL   a0/a1
	POPL   d0/d3
	
	; If not switching to red
	cmp.b  #ColourRed, Player_Colour(a0)
	beq    @Red
	
	; Start animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Switch*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Play SFX
	PLAYSFX_HIGHPRIO #SFX_NymnColourSwitch
	
	; Start countdown timer
	move.w #Player1ColourChangeTimeout, Player_ColourChangeTimer(a0)
	
	@Red:
	
	rts
	
PlayerStartColourAbility:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	PUSHL  a0
	PUSHL  a1
	PUSHL  d0
	PUSHL  d1
	
	; Get colour
	move.b Player_Colour(a0), d0
	
	cmp.b  #ColourRed, d0
	beq    @Red
	cmp.b  #ColourYellow, d0
	beq    @Yellow
	cmp.b  #ColourGreen, d0
	beq    @Green
	cmp.b  #ColourBlue, d0
	beq    @Blue
	bra    @NoColour
	
	; ************************************
	; Red
	; ************************************
	@Red:
	bra    @End
	
	; ************************************
	; Yellow - glide
	; ************************************
	@Yellow:

	; If in air
	move.b PhysicsObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	bne    @End
	
	; If -ve Y velocity
	move.w PhysicsObj_VelY(a0), d0
	cmp.w  #0x0, d0
	bgt    @End
	
	; Gliding
	move.b #0x1, Character_Gliding(a0)							; Set gliding
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)	; Set ability active
	move.w #Player1MaxGlideVelocityX, PhysicsObj_MaxVelX(a0)		; Set max glide velocity
	move.w #Player1MaxGlideVelocityY, PhysicsObj_MaxVelYDown(a0)
	
	; Set ability active
	move.b #Player_Interaction_Ability, Player_InteractionType(a0)
	
	bra    @End
	
	; ************************************
	; Green - time slow
	; ************************************
	@Green:
	
	PUSHL  a0
	
	; Backup palettes
	lea    TimeSlowPaletteBackup+(size_palette_b*PaletteId_World0), a0
	move.l #PaletteId_World0, d0
	jsr    PAL_Read
	
	lea    TimeSlowPaletteBackup+(size_palette_b*PaletteId_Monster), a0
	move.l #PaletteId_Monster, d0
	jsr    PAL_Read
	
	lea    TimeSlowPaletteBackup+(size_palette_b*PaletteId_Fuzzl), a0
	move.l #PaletteId_Fuzzl, d0
	jsr    PAL_Read
	
	; Greyscale palettes
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Monster, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Fuzzl, d0
	move.b #VFXGreyscaleLerp, d1
	jsr    VFX_StartScreenEffectGreyscale
	
	POPL a0
	
	; Disable time of day (else world palette may reset)
	move.b #0x0, (TimeOfDayEnabled)
	
	; Set ability active
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)
	move.b #Player_Interaction_Ability, Player_InteractionType(a0)
	
	; Player can't run
	move.w #Player1MaxVelXWalk, Character_MaxVelXRun(a0)

	bra    @End
	
	; ************************************
	; Blue - beast taming / ride Djakk
	; ************************************
	@Blue:
	
	; If not already riding a Djakk
	cmp.b  #Player_Interaction_Ride, Player_InteractionType(a0)
	beq    @Riding
	
	; Find a Djakk in range
	PUSHL  a1
	move.l #EntityArray_Monsters, a1
	move.w (EntityCount_Monsters), d6
	cmp.w  #0x0, d6
	beq    @NoMonsters
	sub.w  #0x1, d6
	@MonsterLoop:
	
	; Check monster active
	cmp.b  #0x0, Entity_Active(a1)
	beq    @NextMonster
	
	; Check monster alive
	cmp.b  #0x0, Character_Dead(a1)
	bne    @NextMonster
	
	; Check monster within taming range
	jsr    PHYS_EntityDistSq
	cmp.l  #(Player1DjakkTamingDistance*Player1DjakkTamingDistance), d0
	bgt    @NextMonster
	
	; Check monster tamed
	cmp.b  #MonsterState_Tamed, Monster_State(a1)
	beq    @Tamed
	
	; Tame it
	PUSHL  a0
	PUSHL  d6
	move.l a1, a0
	jsr    MonsterStartTamed
	POPL   d6
	POPL   a0
	
	; Riding needs a second Action button press, bail out
	bra    @EndMonsterLoop
		
	@Tamed:

	; Bounds check
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @NextMonster
	
	; Ride it - set interacting obj + type
	move.l a1, Player_InteractObject(a0)
	move.b #Player_Interaction_Ride, Player_InteractionType(a0)
		
	; Begin ride animation
	PUSHL  a1
	move.l a0, a1
	add.l  #Player_Animations, a1
	move.l #(PlayerAnimIdx_Ride*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Take control of anim updates
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Done
	bra    @EndMonsterLoop
		
	@NextMonster:
	add.l #Monster_Struct_Size, a1
	dbra  d6, @MonsterLoop
	
	@NoMonsters:
	@EndMonsterLoop:
	POPL  a1
	
	@Riding:
	
	bra    @End
	
	@NoColour:
	@End:
	
	POPL d1
	POPL d0
	POPL a1
	POPL a0
	
	rts
	
PlayerStopColourAbility:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	; Get colour
	move.b Player_Colour(a0), d0
	
	cmp.b  #ColourRed, d0
	beq    @Red
	cmp.b  #ColourYellow, d0
	beq    @Yellow
	cmp.b  #ColourGreen, d0
	beq    @Green
	cmp.b  #ColourBlue, d0
	beq    @Blue
	bra    @NoColour
	
	; ************************************
	; Red
	; ************************************
	@Red:
	bra    @End
	
	; ************************************
	; Yellow - glide
	; ************************************
	@Yellow:
	
	; Reset gliding
	move.b #0x0, Character_Gliding(a0)
	move.w #Player1MaxVelXWalk, PhysicsObj_MaxVelX(a0)			; Reset max velocity
	move.w #Player1MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	
	bra    @End
	
	; ************************************
	; Green - time slow
	; ************************************
	@Green:
	
	; Reset palette
	PUSHL  a0
	move.w #TimeOfDayCycleSpeed, d1		; Speed
	move.b #0x1, d2						; Ticks per update
	move.b #0x0, d3						; First colour
	move.b #0xF, d4						; Last colour
	
	move.l Level_PalettesAddr(a1), a3
	add.l  #(size_long*PaletteId_World0), a3
	move.l (a3), a0
	move.l #PaletteId_World0, d0		; Palette idx
	jsr    PAL_LerpStart
	
	move.l Level_PalettesAddr(a1), a3
	add.l  #(size_long*PaletteId_Monster), a3
	move.l (a3), a0
	move.l #PaletteId_Monster, d0		; Palette idx
	jsr    PAL_LerpStart
	
	move.l Level_PalettesAddr(a1), a3
	add.l  #(size_long*PaletteId_Fuzzl), a3
	move.l (a3), a0
	move.l #PaletteId_Fuzzl, d0			; Palette idx
	jsr    PAL_LerpStart
	POPL   a0
	
	; Re-enable time of day
	move.b #0x1, (TimeOfDayEnabled)
	
	; Re-enable run
	move.w #Player1MaxVelXRun, Character_MaxVelXRun(a0)
	
	LIST_GET_SIZE EntityUpdate, d1	 	 ; Get entity list size
	subi.l #0x1, d1						 ; -1 for loop
	LIST_GET_HEAD EntityUpdate, a2		 ; Get list head
	@EntityLp:							 ; For all entities in list
	
	; Check type
	move.l Entity_TypeBits(a2), d2
	
	; Check if animobj
	move.l d2, d3
	andi.l #entity_type_animobj, d3
	cmp.l  #0x0, d3
	beq    @NotAnimObj
	
	; Entity is an anim obj
	move.b #0x1, AnimObj_SpeedDiv(a2)
	
	@NotAnimObj:
	LIST_GET_NEXT EntityUpdate,a2,a2	 ; Get next ptr
	dbra   d1, @EntityLp				 ; Loop
	
	bra    @End
	
	; ************************************
	; Blue - beast taming / ride Djakk
	; ************************************
	@Blue:
	
	; Release control of anim updates
	move.b #0x1, Character_UpdateAnim(a0)
	
	bra    @End
	
	@NoColour:
	@End:
	
	move.b #0x0, Player_ActiveColourAbility(a0)
	
	rts
	
PlayerUpdateColourAbility:

	; Get colour
	move.b Player_Colour(a0), d0
	
	cmp.b  #ColourRed, d0
	beq    @Red
	cmp.b  #ColourYellow, d0
	beq    @Yellow
	cmp.b  #ColourGreen, d0
	beq    @Green
	cmp.b  #ColourBlue, d0
	beq    @Blue
	bra    @NoColour
	
	; ************************************
	; Red
	; ************************************
	@Red:
	bra    @End
	
	; ************************************
	; Yellow - glide
	; ************************************
	@Yellow:
	
	; If active colour ability
	cmp.b  #0x0, Player_ActiveColourAbility(a0)
	beq    @End
	
	; If in air
	move.b PhysicsObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	bne    @EndGlide
	
	; If -ve Y velocity
	move.w PhysicsObj_VelY(a0), d0
	cmp.w  #0x0, d0
	bgt    @EndGlide
	
	bra    @End
	
	@EndGlide:
	jsr    PlayerStopColourAbility
	bra    @End
	
	; ************************************
	; Green - time slow
	; ************************************
	@Green:
	
	; If active colour ability
	cmp.b  #0x0, Player_ActiveColourAbility(a0)
	beq    @SpeedUp
	
	; Slow down global time
	cmp.b  #Player1SlowTimeDiv, GlobalTimeDiv
	beq    @End
	addi.b #0x1, GlobalTimeDiv
	bra    @ApplyTime
	
	@SpeedUp:
	
	; Speed up
	cmp.b  #0x1, GlobalTimeDiv
	beq    @End
	subi.b #0x1, GlobalTimeDiv
	
	@ApplyTime:
	
	; Apply to all AnimObjs (except players)
	
	; TODO: Pointer array per entity type
	LIST_GET_SIZE EntityUpdate, d1	 	 ; Get entity list size
	subi.l #0x1, d1						 ; -1 for loop
	LIST_GET_HEAD EntityUpdate, a2		 ; Get list head
	@EntityLp:							 ; For all entities in list
	
	; Check type
	move.l Entity_TypeBits(a2), d2
	
	; Check if player obj
	move.l d2, d3
	andi.l #entity_type_player, d3
	cmp.l  #0x0, d3
	bne    @PlayerObj
	
	; Check if animobj
	move.l d2, d3
	andi.l #entity_type_animobj, d3
	cmp.l  #0x0, d3
	beq    @NotAnimObj
	
	; Entity is an anim obj
	move.b d0, AnimObj_SpeedDiv(a2)
	
	@PlayerObj:
	@NotPhysicsObj:
	@NotAnimObj:
	LIST_GET_NEXT EntityUpdate,a2,a2	 ; Get next ptr
	dbra   d1, @EntityLp				 ; Loop
	
	bra    @End
	
	; ************************************
	; Blue
	; ************************************
	@Blue:
	
	; If riding a Djakk
	cmp.b #Player_Interaction_Ride, Player_InteractionType(a0)
	bne   @NotRiding
	
	; Get Djakk
	move.l Player_InteractObject(a0), a2
	
	; Snap to saddle position
	move.l Entity_WorldPosX(a2), Entity_WorldPosX(a0)
	move.l Entity_WorldPosY(a2), Entity_WorldPosY(a0)
	
	; Forward acceleration onto Djakk
	move.w PhysicsObj_AccelX(a0), PhysicsObj_AccelX(a2)
	
	; Scale ride anim speed to velocity
	
	@NotRiding:
	
	bra    @End
	
	@NoColour:
	@NotInteracting:
	@End:
	
	; If not red, countdown
	cmp.b #ColourRed, Player_Colour(a0)
	beq   @NoTimeout
	sub.w #0x1, Player_ColourChangeTimer(a0)
	bne   @TimerRunning
	
	; Timer elapsed, switch back to red
	jsr    PlayerStopColourAbility
	move.b #ColourRed, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	
	@NoTimeout:
	@TimerRunning:

	rts

;==============================================================
; Player interaction routines
;==============================================================

PlayerStartInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)
	
	; Check if already interacting
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting
	
	; Check if player dead
	cmp.b  #0x1, Character_Dead(a0)
	beq    @Dead
	
	;==============================================================
	
	; If near a pushable object
	move.l PhysicsObj_LastPushingObj(a0), a2
	cmp.l  #0x0, a2
	beq    @NoPushablesNear
	cmp.b  #0x0, PhysicsObj_Pushable(a2)
	beq    @NoPushablesNear
	
	; If facing in the right direction
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a2
	cmp.l  d0, d1
	blt    @RightOfObj
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	bne    @NoPushablesNear
	bra    @Pushing
	@RightOfObj:
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @NoPushablesNear
	
	@Pushing:
	
	; Start pushing
	move.b #Player_Interaction_Push, Player_InteractionType(a0)
	move.b #0x1, PhysicsObj_CanPush(a0)
	
	; Determine if light or heavy object
	cmp.w  #Player1MaxLightPushObjHeight, Entity_Height(a2)
	bgt    @HeavyObj
	move.b #0x1, Character_Pushing(a0)
	bra    @EndPush
	@HeavyObj:
	move.b #0x1, Character_PushingHeavy(a0)
	@EndPush:
	
	; Player can't run
	move.w #Player1MaxVelXWalk, Character_MaxVelXRun(a0)
	
	; Clamp to max velocity
	move.b #0x1, PhysicsObj_MaxVelClamp(a0)
	
	bra    @FoundInteraction
	
	@NoPushablesNear:
	
	; Check continuously interactible objects
	jsr    PlayerInteractTest_Fuzzls
	cmp.b  #0x1, Character_Interacting(a0)
	beq    @FoundInteraction
	
	;==============================================================
	
	; Test for special colour abilities
	cmp.b  #ColourRed, Player_Colour(a0)
	beq    @NoColourAbility
	
	; Performing colour ability
	cmp.b  #0x0, Player_ActiveColourAbility(a0)
	bne    @ColourAbilityActive
	jsr    PlayerStartColourAbility
	bra    @End
	
	;==============================================================

	@Dead:
	@AlreadyInteracting:
	@FoundInteraction:
	@NoColourAbility:
	@ColourAbilityActive:
	@End:
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts
	
PlayerCancelInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	cmp.b  #Player_Interaction_Push, Player_InteractionType(a0)
	bne    @NotPushing
	
	; Stop pushing
	move.b #0x0, PhysicsObj_CanPush(a0)
	move.b #0x0, Character_Pushing(a0)
	move.b #0x0, Character_PushingHeavy(a0)
	
	; Restore walk speed
	move.w #Player1MaxVelXRun, Character_MaxVelXRun(a0)
	
	; Restore max velocity clamp to use deceleration
	move.b #0x0, PhysicsObj_MaxVelClamp(a0)
	
	@NotPushing:
	
	; Stop interacting
	move.b #Player_Interaction_None, Player_InteractionType(a0)
	move.l #0x0, Player_InteractObject(a0)
	move.b #0x0, Character_Interacting(a0)
	
	; Stop colour ability
	cmp.b  #0x0, Player_ActiveColourAbility(a0)
	beq    @NoColourAbility
	jsr    PlayerStopColourAbility
	@NoColourAbility:
	
	rts
	
PlayerInteractTest_Fuzzls:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Character must be close to floor
	move.b PhysicsObj_CloseToFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @PlayerOffFloor
	
	; Check if near a pushable object
	move.l PhysicsObj_LastPushingObj(a0), a3
	cmp.l  #0x0, a2
	beq    @NotNearPushableObj
	
	; Check if that pushable object is a Fuzzl
	move.l Entity_TypeBits(a3), d0
	andi.l #entity_type_fuzzl, d0
	beq    @NotNearFuzzl

	; Check if fuzzl is in its nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a3)
	bne    @FuzzlHome
	
	; In range and not in a nest, begin interaction with Fuzzl
	move.b #0x1, Character_Interacting(a0)
	move.b #Player_Interaction_Fuzzl, Player_InteractionType(a0)
	move.l a3, Player_InteractObject(a0)
	
	; Cancel run/jump movement
	jsr    CharacterCancelRun
	jsr    CharacterCancelJump
	
	bra    @End
	
	@FuzzlHome:
	
	; Check if fuzzl still has its colour
	move.b Fuzzl_Colour(a3), d0
	cmp.b  #ColourDrained, d0
	beq    @NoColour
	
	; Check if Fuzzl's colour matches player
	move.b Player_Colour(a0), d1
	cmp.b  d0, d1
	beq    @NoColourMatch
	
	; Fuzzl is home, is in range, and has its colour - take its colour
	PUSHL  d0
	jsr    PlayerStopColourAbility
	POPL   d0
	move.b d0, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	
	; Interacting until button depressed (to filter ability being triggered immediately)
	move.b #0x1, Character_Interacting(a0)
	move.b #Player_Interaction_Fuzzl, Player_InteractionType(a0)
	move.l a3, Player_InteractObject(a0)
	
	bra    @End
	
	@PlayerOffFloor:
	@NotNearPushableObj:
	@NotNearFuzzl:
	@NotInRange:
	@NotPushingFuzzl:
	@NoColour:
	@NoColourMatch:
	@End:
	
	rts

PlayerInteractTest_Fireflies:

	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IFND DEBUG

	PUSHL  a0
	PUSHL  a1
	
	move.w (EntityCount_Fireflies), d0
	cmp.w  #0x0, d0
	beq    @NoFireflies

	; Check player against all Fireflies in level
	move.l a0, a1						; Player in a1
	move.l #EntityArray_Fireflies, a0	; Firefly in a0
	sub.w  #0x1, d0
	@FireflyLoop:
	cmp.b  #0x0, SpriteObj_SpriteLinked(a0)
	beq    @NextFirefly
	movem.l d0-d1/a0-a1, -(sp)
	jsr FireflyTestObj
	movem.l (sp)+, d0-d1/a0-a1
	@NextFirefly:
	add.l  #Firefly_Struct_Size, a0
	dbra   d0, @FireflyLoop
	
	@NoFireflies:

	POPL   a1
	POPL   a0
	
	ENDIF

	rts

		
PlayerInteractTest_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	PUSHL  a1
	
	; Reset in water
	move.b #0x0, Character_InWater(a0)
	
	; Check all water bodies
	move.l #EntityArray_WaterBodies, a1
	move.w (EntityCount_WaterBodies), d6
	cmp.w  #0x0, d6
	beq    @NoWaterBodies
	subi.w #0x1, d6
	@BodyLoop:
	
	; Check player vs. box
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @NoIntersect
	
	; Player inside
	move.b #0x1, Character_InWater(a0)
	bra    @Found
	
	@NoIntersect:
	
	; Next body
	add.l #WaterBody_Struct_Size, a1
	dbra d6, @BodyLoop
	
	@NoWaterBodies:
	@Found:
	
	POPL  a1
	
	rts
	
PlayerInteractTest_BouncePlants:

	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IFND DEBUG

	; If player off floor
	cmp.b  #0x0, PhysicsObj_CloseToFloor(a0)
	bne    @End
	
	move.w (EntityCount_Plants), d6
	cmp.w  #0x0, d6
	beq    @NoPlants
	
	; Get player collision bounds
	PHYSICS_GETBOUNDS d1,d2,d5,a0

	; Check player against all plants in level
	move.l #EntityArray_Plants, a2		; Plant in a2
	sub.w  #0x1, d6
	@PlantLoop:
	cmp.b  #0x0, SpriteObj_SpriteLinked(a2)
	beq    @NextPlant
	
	; Get plant entity bounds
	ENTITY_GETBOUNDS d3,d4,d5,a2
	
	; Check collision
	jsr    PHYS_TestBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @NextPlant
	
	; Collision with plant, check if heading towards bounce surface
	; TODO: Variable plant orientations
	move.w PhysicsObj_VelY(a0), d0
	cmp.w  #0x0, d0
	bgt    @End

	; Heading towards plant, calculate reflection vector
	; TODO: Proper reflection vector
	neg.w  d0

	; Clamp to min launch velocity
	; TODO: Use vector length
	cmp.w  #BouncePlant_MinLaunchVelocity, d0
	bgt    @NoClamp
	move.w #BouncePlant_MinLaunchVelocity, d0
	@NoClamp:

	; Launch player
	move.w d0, PhysicsObj_VelY(a0)
	
	; Set jumping and falling
	move.b #0x1, Character_Jumping(a0)
	move.b #0x0, Character_Falling(a0)

	; Activate plant
	PUSHL  a0
	move.l a2, a0
	jsr    BouncePlant_Activate
	POPL   a0
	
	; Finished
	bra    @End
	
	@NextPlant:
	add.l  #Firefly_Struct_Size, a2
	dbra   d6, @PlantLoop
	
	@NoPlants:
	@End:
	
	ENDIF

	rts
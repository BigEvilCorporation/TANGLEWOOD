;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   player.asm - Player specific movement and mechanics
;==============================================================

PLAYER_DEBUG	equ 0

; ************************************
; Constants
; ************************************

; Player dimensions
Player1Width	  equ 0x0038
Player1Height	  equ 0x0030

; Mass
Player1Mass		  equ 0x8

; Player collision bounds
Player1BoundsWidth		equ 0x0010
Player1BoundsHeight		equ 0x0030
Player1BoundsOffsetX	equ (Player1Width/2)-(Player1BoundsWidth/2)
Player1BoundsOffsetY	equ (Player1Height/2)-(Player1BoundsHeight/2)
Player1PushBoundsOuterDist	equ 0x4

; Player collision bounds (in jump state)
Player1BoundsJumpWidth		equ Player1Width-0x10
Player1BoundsJumpHeight		equ Player1Height-0x08
Player1BoundsJumpOffsetX	equ 0x08
Player1BoundsJumpOffsetY	equ 0x08

; Player acceleration/deceleration
Player1AccelWalk   equ 0x000600 ; Player 1 walking acceleration
Player1AccelRun    equ 0x001400 ; Player 1 running acceleration
Player1DecelIdle   equ 0x001600 ; Player 1 deceleration if left alone
Player1DecelForced equ 0x003000 ; Player 1 deceleration if input opposite direction

; Player max velocities (all values must be divisors of subpixels_per_pixel)
Player1MaxVelXWalk equ 0x010000  ; Player 1 max X walking velocity
Player1MaxVelXRun  equ 0x040000  ; Player 1 max X running velocity
Player1MaxVelXWater equ 0x030000  ; Player 1 max X velocity in water
Player1MaxVelXAir  equ 0x040000  ; Player 1 max X velocity in air
Player1MaxVelYUp   equ 0x100000  ; Player 1 max Y velocity up
Player1MaxVelYDown equ 0x080000  ; Player 1 max Y velocity down (tile height)

Player1JumpVelX      equ 0x000000 ; Player 1 jump velocity impulse X
Player1JumpVelY      equ 0x060000 ; Player 1 jump velocity impulse Y
Player1JumpVelWater	 equ 0x040000 ; Player 1 jump velocity impulse from water
Player1JumpCancelVelLo equ 0x010000 ; Player 1 velocity to cancel jump min
Player1JumpCancelVelHi equ Player1MaxVelYUp ; Player 1 velocity to cancel jump max
Player1MaxGrabUpVel  equ 0x030000 ; Max up velocity player can grab a ledge (no limit on down vel)
Player1ClimbVel      equ 0x010000 ; Climbing velocity
Player1LadderGrabVel equ 0x018000 ; Min downward velocity to grab ladder
Player1LadderExitVel equ 0x040000 ; Jump velocity when exiting ladder at top
Player1LadderMaxXDist equ 0x0010   ; Max X dist from centre of ladder to use
Player1LadderMaxYDist equ Player1Height/2   ; Max Y dist from top of ladder to jump off
Player1WindResistanceFloor equ 0x0280 ; Wind resistance (on floor)
Player1WindResistanceAir equ 0x0080 ; Wind resistance (in air)
Player1WaterWaistHeight	equ (Player1Height/4) ; Depth to be considered in water

; Player collision probes
Player1StepHeight	 	equ 0x3
Player1MinWallHeight 	equ 0x11				; High enough to avoid stones
Player1ProbeWallTop	 	equ 0x10				; Wall probe top
Player1ProbeWallBottom	equ Player1Height		; Wall probe bottom
Player1ProbeWallLeft	equ (Player1Width/2)-0x10
Player1ProbeWallRight	equ (Player1Width/2)+0x10
Player1ProbeFloorX   	equ (Player1Width/2)	; Floor detection probe position X
Player1ProbeFloorY   	equ (Player1Height-8)	; Floor detection probe position Y
Player1ProbeCeilingX 	equ (Player1Width/2)	; Ceiling detection probe position X
Player1ProbeCeilingY 	equ (0x0008)			; Ceiling detection probe position Y
Player1ProbeLedgeX   	equ 0x1F				; Ledge detection probe position X
Player1ProbeLedgeY   	equ 0x02				; Ledge detection probe position Y

; Walk to run transition velocity
Player1WalkToRunVel  equ 0x020000

; Player colour change
Player1ColourChangeSpeed 	equ (0x2<<fade_frame_shift)
Player1ColourChangeTimeout	equ 0x0600

; Glide ability
Player1MaxGlideVelocityX	equ Player1MaxVelXRun
Player1MaxGlideVelocityY	equ 0x01*subpixels_per_pixel

; Time ability
Player1SlowTimeDiv			equ 0x10
Player1SlowTimeLerpSpeed	equ (0x4<<fade_frame_shift) ; Subframes (1 frame per tick)

; Lightning ability
Player1LightningCooldown		equ 0x0200
Player1LightningAttackDamage	equ 0xFF

; Anything taller than a Fuzzl is considered 'heavy' (changes push anim)
Player1MaxLightPushObjHeight	equ Fuzzl_Height

; Num frames to wait before idle anim
Player1IdleAnimWaitFrames	equ 0x0600

; Max monster taming distance
Player1DjakkTamingDistance  equ	0x0100

; Djakk saddle position
Player1DjakkSaddleOffsetX	equ 0x0028*subpixels_per_pixel
Player1DjakkSaddleOffsetY	equ -0x0008*subpixels_per_pixel

; Mount camera lerp speed
Player1MountCameraLerpSpeed	equ 0x10

; Djakk buck player velocity
Player1DjakkBuckVelocityX	equ 0x040000
Player1DjakkBuckVelocityY	equ 0x010000

; TEMP
Player1PushBoundsWidthInner	equ 0x10
Player1PushBoundsWidthOuter equ 0x20
Player1PushBoundsMinXInner	equ ((Player1Width/2)-(Player1PushBoundsWidthInner/2))
Player1PushBoundsMaxXInner	equ ((Player1Width/2)+(Player1PushBoundsWidthInner/2))
Player1PushBoundsMinXOuter	equ ((Player1Width/2)-(Player1PushBoundsWidthOuter/2))
Player1PushBoundsMaxXOuter	equ ((Player1Width/2)+(Player1PushBoundsWidthOuter/2))

Player1PushAnimSpeedVelocityDivLight equ 0x0400
Player1PushAnimSpeedVelocityDivHeavy equ 0x0800

; Mounting/riding state
Player_RideState_None		equ 0x0
Player_RideState_Mounting	equ 0x1
Player_RideState_Riding		equ 0x2
Player_RideState_Jumping	equ 0x3
Player_RideState_Cart		equ 0x4

; Dismount type
Player_Dismount_Voluntary	equ 0x0
Player_Dismount_Timeout		equ 0x1
Player_Dismount_PetDead		equ 0x2

; Interaction types
Player_Interaction_None		equ 0x0
Player_Interaction_Fuzzl	equ 0x1
Player_Interaction_Boulder	equ 0x2
Player_Interaction_Lift 	equ 0x3
Player_Interaction_Push		equ 0x4
Player_Interaction_Ride		equ 0x5
Player_Interaction_Djakk	equ 0x6
Player_Interaction_Custom	equ 0x7

; Animations
PlayerAnimIdx_Switch    	equ 0
PlayerAnimIdx_LieDown   	equ 1
PlayerAnimIdx_Sleep     	equ 2	; Sleep loop
PlayerAnimIdx_Wake      	equ 3	; Wakes up fully and stands up
PlayerAnimIdx_WakeSleep 	equ 4	; Raises head, pauses, then goes back to sleep
PlayerAnimIdx_IdleLookBack 	equ 5	; Looks back fast, pauses, looks forward
PlayerAnimIdx_Mount		 	equ 6	; Mount a Djakk
PlayerAnimIdx_Howl		 	equ 7	; Long howl
PlayerAnimIdx_Talk		 	equ 8	; Short talk
; --------------------------------
PlayerAnimIdx_Max       	equ 9

; ************************************
; Macros
; ************************************
PLAYER_GETJUMPBOUNDS: macro minreg,maxreg,tmpreg,addrreg
	move.w Entity_WorldPosX(\addrreg), \minreg			; Get X world position (top word = integer part)
	addi.w #Player1BoundsJumpOffsetX, \minreg			; Add bounding box X offset
	move.w \minreg, \maxreg								; Copy to right reg
	addi.w #Player1BoundsJumpWidth, \maxreg				; Add bounding box right
	
	swap   \minreg
	swap   \maxreg
	
	move.w Entity_WorldPosY(\addrreg), \tmpreg			; Get Y world position (top word = integer part)
	addi.w #Player1BoundsJumpOffsetY, \tmpreg			; Add bounding box Y offset
	move.w \tmpreg, \minreg								; To Y
	move.w \minreg, \maxreg								; Copy to bottom reg
	addi.w #Player1BoundsJumpHeight, \maxreg			; Add bounding box bottom
	endm

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;---------------------------------
Player_Animations	   		rs.b (Animation_Struct_Size*PlayerAnimIdx_Max)
Player_InteractObject  		rs.l 1	; Object player is interacting with
Player_ColourPowerHost		rs.l 1	; Object player has stolen colour power from
Player_Pet					rs.l 1	; Current tamed creature
Player_LastBouncePlant		rs.l 1	; Last touched bounce plant
Player_LastWaterBodyLeft	rs.w 1	; Last entered water body left bounds
Player_LastWaterBodyRight	rs.w 1	; Last entered water body right bounds
Player_LastWaterBodySurface	rs.w 1	; Last entered water body surface
Player_ColourChangeTimer	rs.w 1
Player_IdleFrameCount		rs.w 1
Player_IdleTimeoutCount		rs.w 1
Player_LightningCooldown	rs.w 1
Player_ControlEnabled		rs.b 1
Player_InteractionType 		rs.b 1	; Current interaction type
Player_InteractionToggle	rs.b 1	; If current interaction needs a button tap to disable
Player_Colour          		rs.b 1
Player_ActiveColourAbility	rs.b 1
Player_Sleeping         	rs.b 1	; Uninterruptible sleep (end of level behaviour)
Player_Snoozing         	rs.b 1	; Interruptible sleep (idle behaviour)
Player_RideState			rs.b 1
Player_PetWorldGridFlags	rs.b 1
;---------------------------------
	RS_ALIGN
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
	MOVE_NTSC_L Player1MaxVelXWalk, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Player1MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	MOVE_NTSC_L Player1MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Player1MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	MOVE_NTSC_ACCEL_W Player1DecelIdle, PhysicsObj_DecelX(a0), d0

	MOVE_NTSC_L Player1MaxVelXWalk, Character_MaxVelXWalk(a0), d0
	MOVE_NTSC_L Player1MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_ACCEL_W Player1AccelWalk, Character_AccelWalk(a0), d0
	MOVE_NTSC_ACCEL_W Player1AccelRun, Character_AccelRun(a0), d0
	MOVE_NTSC_ACCEL_W Player1DecelIdle, Character_DecelIdle(a0), d0
	MOVE_NTSC_ACCEL_W Player1DecelForced, Character_DecelForced(a0), d0
	MOVE_NTSC_L Player1JumpVelX, Character_JumpVelX(a0), d0
	MOVE_NTSC_L Player1JumpVelY, Character_JumpVelY(a0), d0
	MOVE_NTSC_L Player1JumpCancelVelLo, Character_JumpCancelVelLo(a0), d0
	MOVE_NTSC_L Player1JumpCancelVelHi, Character_JumpCancelVelHi(a0), d0
	MOVE_NTSC_L Player1MaxGrabUpVel, Character_MaxGrabUpVel(a0), d0

	MOVE_NTSC_L Player1WalkToRunVel, Character_WalkToRunVel(a0), d0
	MOVE_NTSC_L Player1ClimbVel, Character_ClimbVel(a0), d0

	move.w  #Player1Width, Entity_Width(a0)
	move.w  #Player1Height, Entity_Height(a0)
	move.l  #Player1WindResistanceFloor, PhysicsObj_WindResistanceFloor(a0)
	move.l  #Player1WindResistanceAir, PhysicsObj_WindResistanceAir(a0)
	move.w  #Player1ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Player1ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Player1ProbeWallTop, PhysicsObj_WallProbeTop(a0)
	move.w  #Player1ProbeWallBottom, PhysicsObj_WallProbeBottom(a0)
	move.w  #Player1ProbeWallLeft, PhysicsObj_WallProbeLeft(a0)
	move.w  #Player1ProbeWallRight, PhysicsObj_WallProbeRight(a0)
	move.w  #Player1ProbeCeilingX, PhysicsObj_CeilingProbeX(a0)
	move.w  #Player1ProbeCeilingY, PhysicsObj_CeilingProbeY(a0)
	move.w  #Player1StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Player1MinWallHeight, PhysicsObj_MinWallHeight(a0)
	move.b  #Player1Mass, PhysicsObj_Mass(a0)
	move.b  #0x1, PhysicsObj_CollideWallsTop(a0)
	move.b  #0x1, PhysicsObj_SnapToMovingPlatform(a0)

	move.w  #Player1ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Player1ProbeLedgeY, Character_ProbeLedgeY(a0)

	move.b  #ColourRed, Player_Colour(a0)
	move.b  #0x1, Player_ControlEnabled(a0)
	move.b  #0x0, Player_ActiveColourAbility(a0)
	move.l  #0x0, Player_InteractObject(a0)
	move.l  #0x0, Player_LastBouncePlant(a0)
	move.w  #0x0, Player_LastWaterBodyLeft(a0)
	move.w  #0x0, Player_LastWaterBodyRight(a0)
	move.w  #0x0, Player_LastWaterBodySurface(a0)
	move.l  #0x0, Player_Pet(a0)
	move.w  #0x0, Player_ColourChangeTimer(a0)
	move.w  #0x0, Player_IdleFrameCount(a0)
	move.b  #0x0, Player_IdleTimeoutCount(a0)
	move.b  #Player_Interaction_None, Player_InteractionType(a0)
	move.b  #0x0, Player_InteractionToggle(a0)
	move.b  #0x0, Player_Sleeping(a0)
	move.b  #0x0, Player_Snoozing(a0)
	
	; Setup collision bounds
	move.w  #Player1BoundsOffsetX, PhysicsObj_BoundsLeft(a0)
	move.w  #Player1BoundsOffsetY, PhysicsObj_BoundsTop(a0)
	move.w  #Player1BoundsWidth, PhysicsObj_BoundsWidth(a0)
	move.w  #Player1BoundsHeight, PhysicsObj_BoundsHeight(a0)
	move.w  #Player1PushBoundsOuterDist, PhysicsObj_PushDetectOuter(a0)
	
	;==============================================================

	; Add as potential flue occupant
	jsr    FlueAddPotentialOccupant

	; Allow running by default
	move.b #0x0, d2
	jsr    CharacterAllowRun
	
	rts

PlayerUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Test for ladders
	jsr    PlayerInteractTest_Ladder
	
	; Process sleep/snooze states
	tst.b  Player_Sleeping(a0)
	beq    @NotSleeping
	jsr    PlayerUpdateSleep
	@NotSleeping:
	
	tst.b  Player_Snoozing(a0)
	beq    @NotSnoozing
	jsr    PlayerUpdateIdleSnooze
	@NotSnoozing:

	; Process special colour ability
	jsr    PlayerUpdateColourAbility
	
	; If landing a jump, allow falling down holes
	move.b Character_Jumping(a0), PhysicsObj_FallThroughHoles(a0)
	
	; If dead and not red, switch back
	tst.b  Character_Dead(a0)
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

	; Process pushing objects after physics update
	jsr    PlayerUpdatePushInteract

	; Test for pickups
	jsr    PlayerInteractTest_Fireflies
	
	; Test for water
	jsr    PlayerInteractTest_Water

	; Test for bounce plants
	jsr    PlayerInteractTest_BouncePlants

	; Test for carts
	jsr    PlayerInteractTest_Carts

	IF PLAYER_DEBUG

	move.l Entity_WorldPosX(a0), d0
	move.l #((8*8)<<16)|(4*8), d1
	jsr    DBG_DrawLong

	move.l Entity_WorldPosY(a0), d0
	move.l #((8*8)<<16)|(5*8), d1
	jsr    DBG_DrawLong

	ENDIF
	
	rts
	
PlayerBeginSleep:
	; a0 --- Character address
	
	; Cancel all actions
	jsr    CharacterCancelXMovement
	jsr    CharacterCancelJump
	move.b #0x0, Character_Interacting(a0)
	
	; Start animation
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_LieDown*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
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
	tst.b  AnimObj_Playing(a0)
	bne    @LyingDown
	
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@LyingDown:
	
	rts
	
PlayerBeginIdleSnooze:
	; a0 --- Character address
	
	; Cancel all actions
	jsr    CharacterCancelXMovement
	jsr    CharacterCancelJump
	move.b #0x0, Character_Interacting(a0)
	
	; Start sleep anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Sleep*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
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
	tst.w  Gamepad1State
	bgt    @EndSnooze
	
	bra    @StillSnoozing
	
	@EndSnooze:
	
	; Release looping anim control, stop snoozing
	move.b #0x1, Character_UpdateAnim(a0)
	move.b #0x0, Player_Snoozing(a0)
	move.b #0x0, Player_Sleeping(a0)
	
	; Cancel out the velocity used to wake up
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	
	; Start wake anim
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Wake*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@StillSnoozing:
	
	rts
	
PlayerUpdateIdleAnim:
	
	; If in idle anim, check if one-shot idle anim should start
	lea    Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Idle)(a0), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	bne    @NotIdle
	
	addi.w #0x1, Player_IdleFrameCount(a0)							; Increment idle frame count
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
	lea    Player_Animations+(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation										; Start next one-shot idle anim
	addq.b #0x1, Player_IdleTimeoutCount(a0)
	POPL   a1
	
	@NotIdle:
	move.w #0x0, Player_IdleFrameCount(a0)							; Not idling, reset counter
	@EndIdle:
	
	; If in one-shot idle anim, any button press interrupts
	lea    Player_Animations+(Animation_Struct_Size*PlayerAnimIdx_IdleLookBack)(a0), a2
	cmp.l  AnimObj_CurrentAnim(a0), a2
	bne    @NotOneShotIdle
	tst.w  Gamepad1State
	beq    @NotInterrupted
	PUSHL  a1
	lea    Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Idle)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation										; Start next one-shot idle anim
	POPL   a1
	@NotInterrupted:
	@NotOneShotIdle:
	
	@End:
	
	rts

PlayerBeginColourSwitch:
	; a0 --- Character address
	
	PUSHM  d0/d3
	PUSHM  a0/a1

	lea    SwitchingPalettesP1, a1	; Get palette array	
	moveq #0x0, d0
	move.b Player_Colour(a0), d0	; Get colour type
	lsl.l  #0x2, d0					; To address offset
	add.l  d0, a1					
	move.l (a1), a0					; Get new palette address
	move.l #PaletteId_Player, d0	; Get destination palette ID - TODO: From PhysicsObj
	move.l #Player1ColourChangeSpeed, d1	; Get switch speed - TODO: From Character
	move.b #0x1, d2					; Ticks per update
	move.b #0x0, d3					; Range min
	move.b #0xE, d4					; Range max
	jsr    GameScenePaletteFadeTo		; Begin palette lerp
	
	POPM   a0/a1
	POPM   d0/d3
	
	; If not switching to red
	cmp.b  #ColourRed, Player_Colour(a0)
	beq    @Red
	
	; Start animation
	PUSHL  a1
	lea    Player_Animations+(PlayerAnimIdx_Switch*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	; Play SFX
	PLAYSFX #SFX_NymnColourSwitch
	
	; Start countdown timer
	MOVE_NTSC_W Player1ColourChangeTimeout, Player_ColourChangeTimer(a0), d0

	; If switching to blue (beast taming), auto-activate
	cmp.b  #ColourBlue, Player_Colour(a0)
	bne    @NoActivate
	jsr    PlayerStartColourAbility
	@NoActivate:
	
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
	cmp.b  #ColourWhite, d0
	beq    @White
	bra    @NoColour
	
	;==============================================================
	; Red - nowt special
	;==============================================================
	@Red:
	bra    @End
	
	;==============================================================
	; Yellow - glide
	;==============================================================
	@Yellow:

	; Set ability active
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)
	bra    @End
	
	;==============================================================
	; Green - time slow
	;==============================================================
	@Green:
	
	PUSHL  a0
	
	; Greyscale palettes
	move.l #PaletteId_World0, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #Player1SlowTimeLerpSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Monster, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #Player1SlowTimeLerpSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	
	move.l #PaletteId_Fuzzl, d0
	move.b #VFXGreyscaleLerp, d1
	move.w #Player1SlowTimeLerpSpeed, d2
	jsr    VFX_StartScreenEffectGreyscale
	
	POPL a0
	
	; Disable time of day (else world palette may reset)
	move.b #0x0, (TimeOfDayEnabled)
	
	; Set ability active
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)

	bra    @End
	
	;==============================================================
	; Blue - beast taming / ride Djakk
	;==============================================================
	@Blue:

	PUSHL  a1

	; Find a Djakk
	move.l (EntityPoolStart_Monster), a1
	move.w (EntityCount_Monster), d6
	beq    @NoMonsters
	subq.w  #0x1, d6
	@MonsterLoop:
	
	; Check monster active
	tst.b  Entity_Active(a1)
	beq    @NextMonster
	
	; Check monster alive
	tst.b  Character_Dead(a1)
	bne    @NextMonster
	
	; Tame it
	PUSHL  a0
	PUSHL  d6
	move.l a1, a0
	jsr    MonsterStartTamed
	POPL   d6
	POPL   a0

	; Now a pet
	move.l a1, Player_Pet(a0)
	
	; Done
	bra    @EndMonsterLoop
		
	@NextMonster:
	lea   Monster_Struct_Size(a1), a1
	dbra  d6, @MonsterLoop
	
	@NoMonsters:
	@EndMonsterLoop:

	POPL  a1
	
	; Set ability active
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)
	bra    @End

	;==============================================================
	; Red - Summon lightning
	;==============================================================
	@White:

	; If cooled down
	tst.w  Player_LightningCooldown(a0)
	bne    @NotCooledDown

	; Back to red
	PUSHM  a0-a1
	lea    Pal_Nymn_Red, a0
	move.b #PaletteId_Player, d0
	jsr    GameScenePaletteFadeTo
	POPM   a0-a1

	; Lightning shot
	jsr    PlayerLightningAttack

	; Start cooldown
	move.w #Player1LightningCooldown, Player_LightningCooldown(a0)

	@NotCooledDown:

	bra    @End

	;==============================================================
	
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
	cmp.b  #ColourWhite, d0
	beq    @White
	bra    @NoColour
	
	;==============================================================
	; Red - nowt special
	;==============================================================
	@Red:
	bra    @End
	
	;==============================================================
	; Yellow - glide
	;==============================================================
	@Yellow:
	
	; If inactive, don't bother
	tst.b  Player_ActiveColourAbility(a0)
	beq    @ReturnColour

	; Reset gliding
	move.b #0x0, Character_Gliding(a0)
	MOVE_NTSC_L Player1MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	tst.b  Character_Walking(a0)
	bne    @Walking
	MOVE_NTSC_L Player1MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	bra    @ReturnColour
	@Walking:
	MOVE_NTSC_L Player1MaxVelXWalk, PhysicsObj_MaxVelFloorX(a0), d0
	
	bra    @ReturnColour
	
	;==============================================================
	; Green - time slow
	;==============================================================
	@Green:
	
	; If inactive, don't bother
	tst.b  Player_ActiveColourAbility(a0)
	beq    @ReturnColour
	
	; Reset palette
	PUSHL  a0
	move.w #TimeOfDayCycleSpeed, d1		; Speed
	move.b #0x1, d2						; Ticks per update
	move.b #0x0, d3						; First colour
	move.b #0xF, d4						; Last colour
	
	; Restore scene palettes
	lea    ScenePalettes+(size_palette_b*PaletteId_World0), a0
	move.l #PaletteId_World0, d0		; Palette idx
	jsr    GameScenePaletteFadeTo
	
	lea    ScenePalettes+(size_palette_b*PaletteId_Monster), a0
	move.l #PaletteId_Monster, d0		; Palette idx
	jsr    GameScenePaletteFadeTo
	
	lea    ScenePalettes+(size_palette_b*PaletteId_Fuzzl), a0
	move.l #PaletteId_Fuzzl, d0			; Palette idx
	jsr    GameScenePaletteFadeTo
	POPL   a0
	
	; Re-enable time of day
	move.b #0x1, (TimeOfDayEnabled)

	; Reset global time div
	move.b #0x1, GlobalTimeDiv
	
	; Re-enable run
	MOVE_NTSC_L Player1MaxVelXRun, Character_MaxVelXRun(a0), d0
	MOVE_NTSC_L Player1MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	
	LIST_GET_SIZE EntityUpdate, d1	 	 ; Get entity list size
	subq.l #0x1, d1						 ; -1 for loop
	LIST_GET_HEAD EntityUpdate, a2		 ; Get list head
	@EntityLp:							 ; For all entities in list
	
	; Check type
	move.l Entity_TypeBits(a2), d2
	
	; Check if animobj
	move.l d2, d3
	andi.l #entity_type_animobj, d3
	beq    @NotAnimObj
	
	; Entity is an anim obj
	move.b #0x1, AnimObj_SpeedDiv(a2)
	
	@NotAnimObj:
	LIST_GET_NEXT EntityUpdate,a2,a2	 ; Get next ptr
	dbra   d1, @EntityLp				 ; Loop
	
	bra    @ReturnColour
	
	;==============================================================
	; Blue - beast taming / ride Djakk
	;==============================================================
	@Blue:

	; If riding
	tst.b  Character_Riding(a0)
	beq    @NotRiding

	; Dismount
	move.b #Player_Dismount_Voluntary, d0
	tst.w  Player_ColourChangeTimer(a0)
	bne    @VoluntaryDismount
	move.b #Player_Dismount_Timeout, d0
	@VoluntaryDismount:
	jsr    PlayerDismountPet
	bra    @Dismounted

	@NotRiding:

	; If timer elapsed
	tst.w  Player_ColourChangeTimer(a0)
	bne    @PetStillTamed

	move.l Player_Pet(a0), a2
	cmp.l  #0x0, a2
	beq    @NoPet

	; If pet still alive
	tst.b  Character_Dead(a2)
	bne    @PetDead

	; Pet no longer tamed
	PUSHM  a0-a2
	move.l a2, a0
	jsr    MonsterStartRoaring
	POPM   a0-a2

	; and it's no longer our friend
	move.l #0x0, Player_Pet(a0)

	@PetDead:
	@NoPet:
	@PetStillTamed:
	@Dismounted:

	; Release interaction obj
	move.l #0x0, Player_InteractObject(a0)
	
	bra    @ReturnColour

	;==============================================================
	; White - summon lightning
	;==============================================================
	@White:
	bra    @ReturnColour

	;==============================================================
	
	@ReturnColour:

	; Give colour back to host
	; TODO: Something better than this
	move.l Player_ColourPowerHost(a0), a2
	cmp.l  #0x0, a2
	beq    @NoHost

	move.l Entity_TypeBits(a2), d1
	andi.l #entity_type_monster, d1
	bne    @Djakk

	bra    @NoHost

	@Djakk:
	PUSHL  a0
	move.l a2, a0
	jsr    MonsterRestoreColourPower
	POPL   a0
	bra    @End

	@NoHost:

	@NoColour:
	@End:
	
	move.l #0x0, Player_ColourPowerHost(a0)
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
	cmp.b  #ColourWhite, d0
	beq    @White
	bra    @NoColour
	
	;==============================================================
	; Red - nowt special
	;==============================================================
	@Red:
	bra    @End
	
	;==============================================================
	; Yellow - glide
	;==============================================================
	@Yellow:
	
	; If active colour ability
	tst.b  Player_ActiveColourAbility(a0)
	beq    @End
	
	; If in air
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @EndGlide
	
	; If -ve Y velocity or in falling state
	tst.b  Character_Falling(a0)
	bne    @CanGlide
	tst.l  PhysicsObj_VelY(a0)
	blt    @CanGlide
	bra    @EndGlide

	@CanGlide:

	; Can glide
	move.b #0x1, Character_Gliding(a0)
	MOVE_NTSC_L Player1MaxGlideVelocityX, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Player1MaxGlideVelocityY, PhysicsObj_MaxVelYDown(a0), d0
	bra    @End
	
	@EndGlide:

	; Can't glide
	move.b #0x0, Character_Gliding(a0)
	MOVE_NTSC_L Player1MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	tst.b  Character_Walking(a0)
	bne    @Walking
	MOVE_NTSC_L Player1MaxVelXRun, PhysicsObj_MaxVelFloorX(a0), d0
	bra    @End
	@Walking:
	MOVE_NTSC_L Player1MaxVelXWalk, PhysicsObj_MaxVelFloorX(a0), d0
	bra    @End
	
	;==============================================================
	; Green - time slow
	;==============================================================
	@Green:

	; Get global time div
	move.b (GlobalTimeDiv), d0

	; If approaching end of timer, start speeding up
	cmp.b #Player1SlowTimeDiv, Player_ColourChangeTimer(a0)
	bgt   @SpeedUp
	
	; If colour ability inactive, start speeding up
	tst.b  Player_ActiveColourAbility(a0)
	beq    @SpeedUp
	
	; Slow down global time
	cmp.b  #Player1SlowTimeDiv, d0
	beq    @EndTimeDiv
	addq.b #0x1, d0

	bra    @ApplyTime
	
	@SpeedUp:
	
	; Speed up
	cmp.b  #0x1, d0
	beq    @EndTimeDiv
	subq.b #0x1, d0
	
	@ApplyTime:
	
	; Apply to all AnimObjs (except players)
	
	; TODO: Pointer array per entity type
	LIST_GET_SIZE EntityUpdate, d1	 	 ; Get entity list size
	subq.l #0x1, d1						 ; -1 for loop
	LIST_GET_HEAD EntityUpdate, a2		 ; Get list head
	@EntityLp:							 ; For all entities in list
	
	; Check type
	move.l Entity_TypeBits(a2), d2
	
	; Check if player obj
	move.l d2, d3
	andi.l #entity_type_player, d3
	bne    @PlayerObj
	
	; Check if animobj
	move.l d2, d3
	andi.l #entity_type_animobj, d3
	beq    @NotAnimObj
	
	; Entity is an anim obj
	move.b d0, AnimObj_SpeedDiv(a2)
	
	@PlayerObj:
	@NotPhysicsObj:
	@NotAnimObj:
	LIST_GET_NEXT EntityUpdate,a2,a2	 ; Get next ptr
	dbra   d1, @EntityLp				 ; Loop

	@EndTimeDiv:

	; Back to RAM
	move.b d0, (GlobalTimeDiv)
	
	bra    @End
	
	;==============================================================
	; Blue
	;==============================================================
	@Blue:
	
	; If riding a pet
	cmp.b  #Player_Interaction_Ride, Player_InteractionType(a0)
	bne    @NotRiding

	; Update mount
	jsr    PlayerUpdateMount

	@NotRiding:
	
	bra    @End

	;==============================================================
	; White - Summon lightning
	;==============================================================
	@White:

	; Cooldown
	move.w Player_LightningCooldown(a0), d0
	beq    @NoCooldown
	subq.w #0x1, d0
	move.w d0, Player_LightningCooldown(a0)

	; If elapsed, back to white
	tst.w  d0
	bne    @NoCooldown

	PUSHM  a0-a1
	lea    Pal_Nymn_White, a0
	move.l #PaletteId_Player, d0
	move.l #Player1ColourChangeSpeed, d1
	move.b #0x1, d2					; Ticks per update
	move.b #0x0, d3					; Range min
	move.b #0xE, d4					; Range max
	jsr    GameScenePaletteFadeTo	; Begin palette lerp
	POPM   a0-a1

	; Play SFX
	PLAYSFX #SFX_NymnColourSwitch

	@NoCooldown:

	bra   @End
	
	@NoColour:
	@NotInteracting:
	@End:

	; If not white
	cmp.b #ColourWhite, Player_Colour(a0)
	beq   @NoTimeout
	
	; If power elapsed, switch back to red
	jsr   PlayerColourAbilityElapsed
	tst.b d0
	beq   @PowerStillActive

	jsr    PlayerStopColourAbility
	move.b #ColourRed, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch

	; Play SFX
	PLAYSFX #SFX_NymnColourFade
	
	@NoTimeout:
	@PowerStillActive:

	rts

PlayerColourAbilityElapsed:

	; Init return val
	move.b #0x0, d0

	; Get colour
	move.b Player_Colour(a0), d1

	; If not red
	cmp.b  #ColourRed, d1
	beq    @NoPower

	; If timer running
	tst.w  Player_ColourChangeTimer(a0)
	beq    @TimerElapsed

	; Advance countdown
	subq.w  #0x1, Player_ColourChangeTimer(a0)
	bne    @TimerRunning

	@TimerElapsed:

	; Timer elapsed
	move.b #0x1, d0

	; If blue, check if player can dismount pet
	cmp.b  #ColourBlue, d1
	bne    @NotBlue
	
	jsr    PlayerCanDismountPet

	@NotBlue:
	@NoPet:
	@PetOnFloor:

	@TimerRunning:
	@NoPower:

	rts

;==============================================================
; Player mounting/riding routines
;==============================================================

PlayerMountPet:
	; a0 --- Player address
	; a2 --- Pet (character) address

	; Ride it - set interacting obj + type
	move.l a1, Player_InteractObject(a0)
	move.b Player_Colour(a0), Player_ActiveColourAbility(a0)
	move.b #Player_Interaction_Ride, Player_InteractionType(a0)

	; Zero accel/velocity
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)

	; Clear jump flag
	move.b #0x0, Character_Jumping(a0)

	; Snap to mount start pos
	; TODO: Invert for flipping
	move.l Entity_WorldPosX(a2), d0
	addi.l #Player1DjakkSaddleOffsetX, d0
	move.l d0, Entity_WorldPosX(a0)

	; Match flipping
	move.b SpriteObj_FlippedX(a2), SpriteObj_FlippedX(a0)

	; Start mount animation
	PUSHM  a0-a2
	lea    Player_Animations+(PlayerAnimIdx_Mount*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPM   a0-a2
		
	; Set riding
	move.b #0x1, Character_Riding(a0)

	; Stop processing physics, inheriting pos/vel from monster
	move.b #0x0, PhysicsObj_HasCollision(a0)

	; Disable controls
	move.b #0x0, Player_ControlEnabled(a0)

	;==============================================================

	; Player updates pet, remove from world grid
	move.b Entity_WorldGridFlags(a0), d0
	andi.b #(1<<EntityWorldGridFlag_GridUpdates), d0
	move.b d0, Player_PetWorldGridFlags(a0)

	PUSHL  a0
	move.l a2, a0
	jsr    EntityRemoveFromWorldGrid
	jsr    EntityRemoveFromUpdateList
	POPL   a0

	; Prepare for camera lerp
	ENTITY_GETCENTREX d2, a0
	ENTITY_GETCENTREY d3, a0
	move.l d2, CameraLerpFromX
	move.l d3, CameraLerpFromY

	; Set initial state
	move.b #Player_RideState_Mounting, Player_RideState(a0)

	rts

PlayerDismountPet:
	; a0 --- Character address
	; d0 (b) 0 = Voluntary, 1 = Forced

	; Get pet
	move.l Player_Pet(a0), a2
	cmp.l  #0x0, a2
	beq    @NotRiding

	; Check riding
	tst.b  Character_Riding(a0)
	beq    @NotRiding

	; Zero player acceleration
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)

	; Zero pet acceleration
	move.w #0x0, PhysicsObj_AccelX(a2)
	move.w #0x0, PhysicsObj_AccelY(a2)

	; Inherit pet X velocity
	move.l PhysicsObj_VelX(a2), PhysicsObj_VelX(a0)

	; Clear last floor
	move.b #0x0, PhysicsObj_CloseToFloor(a0)
	move.b #0x0, PhysicsObj_OnFloor(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)

	; Jump off (forced jump)
	PUSHM  d0/a0-a2
	move.b #0x1, d2
	jsr    CharacterStartJump
	POPM   d0/a0-a2

	;==============================================================

	; Restore pet update routine, re-add to world grid
	move.b Player_PetWorldGridFlags(a0), d7
	PUSHM  d0/a0-a2
	move.l a2, a0
	jsr    EntityAddToUpdateList
	tst.b  d7
	beq    @NoPetWorldGrid
	move.b Entity_WorldGridFlags(a0), d0
	jsr    EntityAddToWorldGrid
	@NoPetWorldGrid:
	POPM   d0/a0-a2

	;==============================================================

	; If involuntary dismount, monster bucks and throws player off
	cmp.b  #Player_Dismount_Voluntary, d0
	beq    @VoluntaryDismount
	cmp.b  #Player_Dismount_PetDead, d0
	beq    @PetDeadDismount

	; Start monster buck state
	PUSHM  a0-a2
	move.l a2, a0
	jsr    MonsterStartBucking
	POPM   a0-a2

	; Override player jump velocity
	MOVE_NTSC_L Player1DjakkBuckVelocityY, PhysicsObj_VelY(a0), d0
	tst.b  SpriteObj_FlippedX(a0)
	beq    @BuckRight
	MOVE_NTSC_L Player1DjakkBuckVelocityY, d0, d1
	neg.l  d0
	move.l d0, PhysicsObj_VelX(a0)
	bra    @EndBuck
	@BuckRight:
	MOVE_NTSC_L Player1DjakkBuckVelocityX, PhysicsObj_VelX(a0), d0
	@EndBuck:

	@NotRiding:
	@VoluntaryDismount:
	@PetDeadDismount:
	@PetStillTamed:
	@NoPet:

	; Stop ride animation
	move.b #0x0, AnimObj_Playing(a0)

	; Restore physics
	move.b #0x1, PhysicsObj_HasCollision(a0)

	; Stop riding
	move.b #0x0, Character_Riding(a0)

	; Restore controls
	move.b #0x1, Player_ControlEnabled(a0)

	; Set mount state
	move.b #Player_RideState_None, Player_RideState(a0)

	rts

PlayerUpdateMount:
	; a0 --- Character address

	; Get pet
	move.l Player_Pet(a0), a2
	cmp.l  #0x0, a2
	beq    @NoPet

	; Check in one of the beast riding states
	move.b Player_RideState(a0), d0
	cmp.b  #Player_RideState_None, d0
	beq    @StateNone
	cmp.b  #Player_RideState_Cart, d0
	beq    @StateNone

	; If pet dead, dismount immediately
	tst.b  Character_Dead(a2)
	bne    @PetDead

	; Check other states
	cmp.b  #Player_RideState_Mounting, d0
	beq    @StateMounting
	cmp.b  #Player_RideState_Riding, d0
	beq    @StateRiding
	cmp.b  #Player_RideState_Jumping, d0
	beq    @StateJumping

	;==============================================================

	@StateMounting:

	; Wait for mount anim to finish
	lea    Player_Animations+(PlayerAnimIdx_Mount*Animation_Struct_Size)(a0), a3
	cmp.l  AnimObj_CurrentAnim(a0), a3
	beq    @EndState

	; Done, start ride anim
	PUSHM  a0-a2
	lea    Character_Animations+(CharacterAnimIdx_RideTrot*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPM   a0-a2
	
	; Snap player pos to saddle pos
	jsr    PlayerSyncWithPet
	
	; Start camera lerp
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraLerpTime
	move.w #Player1MountCameraLerpSpeed, CameraLerpSpeed

	; Done, start riding
	move.b #Player_RideState_Riding, Player_RideState(a0)

	; Enable controls
	move.b #0x1, Player_ControlEnabled(a0)

	bra    @EndState

	;==============================================================

	@StateRiding:

	; Forward controls onto pet
	jsr    PlayerForwardPetControls

	; Update pet
	PUSHALL
	move.l a2, a0
	jsr    MonsterUpdate
	POPALL
	
	; Sync state with pet
	jsr    PlayerSyncWithPet

	bra    @EndState

	;==============================================================

	@StateJumping:

	; Update pet
	PUSHALL
	move.l a2, a0
	jsr    MonsterUpdate
	POPALL
	
	; Sync state with pet
	jsr    PlayerSyncWithPet

	; Cancel additional jump attempts
	move.b #0x0, Character_Jumping(a0)

	; If pet finished jumping, reset jump anim (non-looping anim, won't reset
	; back to walk/run when finished because anim is updated manually)
	tst.b  Character_Jumping(a2)
	bne    @PetJumping

	; Pet finished jumping, end anim
	move.b #0x0, AnimObj_Playing(a0)

	; Back to riding state
	move.b #Player_RideState_Riding, Player_RideState(a0)

	@PetJumping:

	bra    @EndState

	;==============================================================

	@PetDead:

	; Pet dead, dismount
	move.b #Player_Dismount_PetDead, d0
	jsr    PlayerDismountPet

	;==============================================================

	@NoPet:
	@StateNone:
	@EndState:

	rts

PlayerForwardPetControls:
	; a0 --- Character address
	; a2 --- Pet address

	; Forward acceleration onto pet
	move.w PhysicsObj_AccelX(a0), PhysicsObj_AccelX(a2)

	; Forward jump state onto pet
	tst.b  Character_Jumping(a0)
	beq    @NotJumping

	; If not already jumping
	cmp.b  #Player_RideState_Jumping, Player_RideState(a0)
	beq    @AlreadyJumping

	; Djakk jump
	PUSHM  a0-a2
	move.l a2, a0
	move.b #0x0, d2
	jsr    CharacterStartJump
	POPM   a0-a2

	; Reset anim frame, in case jumps overlapped
	move.l #0x0, AnimObj_AnimSubFrame(a2)

	; Player jump anim
	PUSHM  a0-a2
	lea    Character_Animations+(CharacterAnimIdx_RideJump*Animation_Struct_Size)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPM   a0-a2

	; Enter jump state
	move.b #Player_RideState_Jumping, Player_RideState(a0)
	
	@AlreadyJumping:

	; Reset jump flag
	move.b #0x0, Character_Jumping(a0)

	@NotJumping:

	rts

PlayerSyncWithPet:
	; a0 --- Character address
	; a2 --- Pet address

	; Snap to saddle position
	move.l Entity_WorldPosX(a2), d0
	move.l Entity_WorldPosY(a2), d1
	addi.l #Player1DjakkSaddleOffsetX, d0
	addi.l #Player1DjakkSaddleOffsetY, d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	; Zero velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	
	; Match anim frame
	move.l AnimObj_AnimSubFrame(a2), AnimObj_AnimSubFrame(a0)

	; Match speed
	cmp.b  #CharacterAnimIdx_Walk, Character_AnimIdx(a2)
	bne    @Galloping
	move.b #0x1, Character_Riding(a0)
	bra    @Trotting
	@Galloping:
	move.b #0x2, Character_Riding(a0)
	@Trotting:

	; Force dirty
	move.b #0x1, AnimObj_Dirty(a0)

	; Match flipping
	move.b SpriteObj_FlippedX(a2), SpriteObj_FlippedX(a0)

	rts

PlayerCanDismountPet:
	; a0 --- Character address
	; d0 (b) Return val

	; Can dismount if in riding state, and pet is on floor
	move.b #0x1, d0

	; Get pet
	move.l Player_Pet(a0), a2
	cmp.l  #0x0, a2
	beq    @NoPet

	; Check if riding pet
	cmp.b  #Player_RideState_None, Player_RideState(a0)
	beq    @NotRiding
	cmp.b  #Player_RideState_Riding, Player_RideState(a0)
	beq    @InRidingState

	; In mounting or jumping state, cannot dismount
	move.b #0x0, d0
	bra    @End

	@InRidingState:

	; Check if pet is on floor
	tst.b  PhysicsObj_CloseToFloor(a2)
	bne    @PetOnFloor

	; Pet in air, cannot dismount
	move.b #0x0, d0

	@NoPet:
	@NotRiding:
	@PetOnFloor:
	@End:

	rts

;==============================================================
; Player interaction routines
;==============================================================

PlayerStartInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone
	
	move.l d0, -(sp)
	move.l d1, -(sp)

	; If toggle state, this is actually an end request
	tst.b  Player_InteractionToggle(a0)
	beq    @NoToggle
	move.b #0x0, Player_InteractionToggle(a0)
	jsr    CharacterCancelInteractA
	bra    @End
	@NoToggle:
	
	; Check if already interacting
	cmp.b  #Player_Interaction_None, Player_InteractionType(a0)
	bne    @AlreadyInteracting
	
	; Check if player dead
	cmp.b  #0x1, Character_Dead(a0)
	beq    @Dead
	
	;==============================================================
	
	; Check if near a pushable object
	jsr    PhysicsObjFindPushable
	cmp.l  #0x0, a2
	beq    @NoPushablesNear
	
	; If facing in the right direction
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a2
	cmp.l  d0, d1
	blt    @RightOfObj
	tst.b  SpriteObj_FlippedX(a0)
	bne    @NoPushablesNear
	bra    @Pushing
	@RightOfObj:
	tst.b  SpriteObj_FlippedX(a0)
	beq    @NoPushablesNear
	
	@Pushing:

	; Start pushing
	move.b #Player_Interaction_Push, Player_InteractionType(a0)
	move.l a2, Player_InteractObject(a0)

	; If under time slow ability
	cmp.b  #ColourGreen, Player_Colour(a0)
	bne    @NoTimeSlow

	; Touched objects are no longer affected by time slow
	move.b #0x1, AnimObj_SpeedDiv(a2)

	@NoTimeSlow:

	; Lock orientation
	move.b #0x1, Character_LockSpriteFlip(a0)
	
	; Determine if light or heavy object
	cmp.w  #Player1MaxLightPushObjHeight, Entity_Height(a2)
	bgt    @HeavyObj
	move.b #Character_PushLight, Character_Pushing(a0)
	bra    @EndPush
	@HeavyObj:
	move.b #Character_PushHeavy, Character_Pushing(a0)
	@EndPush:
	
	; Player can't run
	move.b  #Character_WalkInteract, d2
	jsr    CharacterPreventRun

	; Player can't jump
	move.b #0x0, Character_CanJump(a0)
	
	; Clamp to max velocity
	move.b #0x1, PhysicsObj_MaxVelClamp(a0)
	
	bra    @FoundInteraction
	
	@NoPushablesNear:

	;==============================================================
	
	; Check for Fuzzls
	jsr    PlayerInteractTest_Fuzzls
	cmp.b  #0x1, Character_Interacting(a0)
	beq    @FoundInteraction

	;==============================================================
	
	; Check for Pet
	jsr    PlayerInteractTest_Pet
	cmp.b  #0x1, Character_Interacting(a0)
	beq    @FoundInteraction
	
	;==============================================================

	@Dead:
	@AlreadyInteracting:
	@FoundInteraction:
	@End:
	
	move.l (sp)+, d1
	move.l (sp)+, d0
	
	rts

PlayerUpdatePushInteract:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Process push interaction
	cmp.b  #Player_Interaction_Push, Player_InteractionType(a0)
	bne    @NotInteracting
	
	@Pushing:

	; Push/pull the object
	move.l Player_InteractObject(a0), a2
	jsr    PhysicsObjPushPullObj

	; Hit wall flag in d1
	tst.b  d1
	beq    @HitWall

	; Outer bounds penetration flag in d0
	tst.b  d0
	bne    @StillPushing

	; Cannot be pushed/no longer in range - unlock sprite flip
	move.b #0x0, Character_LockSpriteFlip(a0)

	@HitWall:

	; Clear pushing flags (but keep interaction flag until button depressed)
	move.b #0x0, Character_Pushing(a0)
	bra    @NotPushing

	@StillPushing:

	; Player can't run
	move.b  #Character_WalkInteract, d2
	jsr    CharacterPreventRun

	; Determine if light or heavy object
	move.l Player_InteractObject(a0), a2
	cmp.w  #Player1MaxLightPushObjHeight, Entity_Height(a2)
	bgt    @HeavyObj
	move.b #Character_PushLight, Character_Pushing(a0)
	bra    @LightObj
	@HeavyObj:
	move.b #Character_PushHeavy, Character_Pushing(a0)
	@LightObj:
	
	; Scale push anim speed based on velocity
	moveq #0x0, d0
	move.l PhysicsObj_VelX(a0), d0
	tst.l  d0
	bgt    @Fwd
	neg.l  d0
	@Fwd:
	move.l d0, d1
	
	; Apply to light push anim
	divs.w #Player1PushAnimSpeedVelocityDivLight, d0
	lea    Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Push)(a0), a2
	move.w d0, Animation_Speed(a2)
	
	; Apply to heavy push anim
	divs.w #Player1PushAnimSpeedVelocityDivHeavy, d1
	lea    Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_PushHeavy)(a0), a2
	move.w d1, Animation_Speed(a2)

	@NotPushing:
	@NotInteracting:

	rts
	
PlayerCancelInteract:
	; a0 --- GameObj addr
	; NB: Gamepad state in d0-d1, leave alone

	; If toggle state, need another PlayerStartInteract to end
	tst.b  Player_InteractionToggle(a0)
	bne    @ButtonToggle

	;==============================================================
	
	; If pushing
	cmp.b  #Player_Interaction_Push, Player_InteractionType(a0)
	bne    @NotPushing

	; Stop pushing
	move.b #0x0, Character_Pushing(a0)
	
	; Restore sprite flip lock
	move.b #0x0, Character_LockSpriteFlip(a0)
	
	; Restore run
	move.b #Character_WalkInteract, d2
	jsr    CharacterAllowRun

	; Restore jump
	move.b #0x1, Character_CanJump(a0)
	
	; Restore max velocity clamp to use deceleration
	move.b #0x0, PhysicsObj_MaxVelClamp(a0)
	
	@NotPushing:

	;==============================================================

	; If riding
	tst.b  Character_Riding(a0)
	beq    @NotRiding

	; Dismount (voluntarily)
	move.b #Player_Dismount_Voluntary, d0
	jsr    PlayerDismountPet

	@NotRiding:

	;==============================================================

	; Stop interacting
	move.b #Player_Interaction_None, Player_InteractionType(a0)
	move.l #0x0, Player_InteractObject(a0)
	move.b #0x0, Character_Interacting(a0)

	@ButtonToggle:
	
	rts

PlayerBeginPermadeath:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL   a1
	lea     Character_Animations+(Animation_Struct_Size*CharacterAnimIdx_Dead)(a0), a1
	move.b  #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr     AnimObjSetAnimation
	POPL    a1

	move.b  #0x0, Character_UpdateAnim(a0)

	rts

PlayerLightningAttack:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Lightning flash
	PUSHM  a0-a1
	lea    Thunder, a2
	move.w #0xFFFF, d0	; Interval (disabled)
	move.w #0x0, d1		; Distance (close)
	jsr    ThunderSetParams
	jsr    ThunderFlash
	PLAYSFX #SFX_Thunder_Near
	POPM   a0-a1

	; Find enemies on screen

	;==============================================================
	; Djakks

	move.l (EntityPoolStart_Monster), a2
	move.w (EntityCount_Monster), d6
	beq    @NoMonsters
	subq.w #0x1, d6
	@MonsterLoop:
	
	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextMonster

	; Kill
	PUSHM  d6/a0
	move.l a2, a0
	move.b #Player1LightningAttackDamage, d0
	jsr    CharacterDealDamage
	POPM   d6/a0
	
	@NextMonster:
	
	; Next monster
	lea  Monster_Struct_Size(a2), a2
	dbra d6, @MonsterLoop
	
	@NoMonsters:

	;==============================================================
	; Wyrms

	move.l (EntityPoolStart_Wyrm), a2
	move.w (EntityCount_Wyrm), d6

	beq    @NoWyrms
	subq.w #0x1, d6
	@WyrmLoop:
	
	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextWyrm

	; Check not burrowed
	cmp.b  #WyrmState_Idle, Wyrm_State(a2)
	beq    @NextWyrm

	; Kill
	PUSHM  d6/a0
	move.l a2, a0
	move.b #Player1LightningAttackDamage, d0
	jsr    CharacterDealDamage
	POPM   d6/a0
	
	@NextWyrm:
	
	; Next Wyrm
	lea  Wyrm_Struct_Size(a2), a2
	dbra d6, @WyrmLoop
	
	@NoWyrms:

	;==============================================================
	; Fish

	move.l (EntityPoolStart_Djubb), a2
	move.w (EntityCount_Djubb), d6
	beq    @NoDjubbs
	subq.w #0x1, d6
	@DjubbLoop:
	
	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextDjubb

	; Kill
	PUSHM  d6/a0
	move.l a2, a0
	move.b #Player1LightningAttackDamage, d0
	jsr    CharacterDealDamage
	POPM   d6/a0
	
	@NextDjubb:
	
	; Next Djubb
	lea  Djubb_Struct_Size(a2), a2
	dbra d6, @DjubbLoop
	
	@NoDjubbs:

	;==============================================================
	; Demons

	move.l (EntityPoolStart_Demon), a2
	move.w (EntityCount_Demon), d6
	beq    @NoDemons
	subq.w #0x1, d6
	@DemonLoop:
	
	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextDemon

	; Check vulnerable to attacks
	tst.b  Demon_Vulnerable(a2)
	beq    @NextDemon

	; Kill
	PUSHM  d6/a0
	move.l a2, a0
	jsr    DemonReceiveDamage
	POPM   d6/a0
	
	@NextDemon:
	
	; Next Demon
	lea  Demon_Struct_Size(a2), a2
	dbra d6, @DemonLoop
	
	@NoDemons:

	rts
	
PlayerInteractTest_Fuzzls:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Character must be close to floor
	move.b PhysicsObj_CloseToFloor(a0), d0
	beq    @PlayerOffFloor
	
	move.w (EntityCount_Fuzzl), d6
	beq    @NoFuzzls
	
	; Get player collision bounds
	PHYSICS_GETBOUNDS d1,d2,d5,a0

	; Check player against all Fuzzls in level
	move.l (EntityPoolStart_Fuzzl), a2
	subq.w  #0x1, d6
	@FuzzlLoop:

	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextFuzzl

	; Check if fuzzl is in its nest
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a2)
	beq    @NextFuzzl

	; Get collision bounds
	PHYSICS_GETBOUNDS d3,d4,d5,a2

	; Check collision
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	tst.b  d0
	beq    @NextFuzzl
	
	; Check if fuzzl still has its colour
	move.b Fuzzl_Colour(a2), d0
	cmp.b  #ColourDrained, d0
	beq    @NextFuzzl
	
	; Fuzzl is home, is in range, and has its colour - take its colour
	PUSHL  d0
	PUSHL  a2
	move.w #0x0, Player_ColourChangeTimer(a0)	; Force old colour to lapse
	jsr    PlayerStopColourAbility				; Stop ability
	POPL   a2
	POPL   d0
	
	PUSHL  a2
	move.b d0, Player_Colour(a0)
	jsr    PlayerBeginColourSwitch
	POPL   a2

	move.l a2, Player_ColourPowerHost(a0)
	
	; Interacting until button depressed (to filter ability being triggered immediately)
	move.b #0x1, Character_Interacting(a0)
	move.b #Player_Interaction_Fuzzl, Player_InteractionType(a0)
	move.l a2, Player_InteractObject(a0)
	
	bra    @End

	@NextFuzzl:
	lea    Fuzzl_Struct_Size(a2), a2
	dbra   d6, @FuzzlLoop
	
	@NoFuzzls:
	@PlayerOffFloor:
	@NotPushingFuzzl:
	@End:
	
	rts

PlayerInteractTest_Pet:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Player must have beast taming ability
	cmp.b  #ColourBlue, Player_Colour(a0)
	bne    @CannotRide

	; Player must have a pet
	move.l Player_Pet(a0), a2
	cmp.l  #0x0, a2
	beq    @CannotRide

	; Player must not already be riding
	tst.b  Character_Riding(a0)
	bne    @CannotRide
	
	; Player must be close to floor
	move.b PhysicsObj_CloseToFloor(a0), d0
	beq    @CannotRide

	; Pet must be on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @CannotRide

	; Pet must be alive
	tst.b  Character_Dead(a2)
	bne    @CannotRide

	; Pet must be on floor
	tst.b  PhysicsObj_CloseToFloor(a2)
	beq    @CannotRide

	; Pet must be tamed
	cmp.b  #MonsterState_Tamed, Monster_State(a2)
	bne    @CannotRide

	; Bounds check
	ENTITY_GETBOUNDS d1,d2,d5,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @CannotRide

	; Ride ze Shoopuf
	jsr    PlayerMountPet

	; Use button toggle type interaction
	move.b #0x1, Player_InteractionToggle(a0)
	
	@CannotRide:
	
	rts

PlayerInteractTest_Fireflies:

	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IFND DEBUG

	PUSHL  a0
	PUSHL  a1
	
	move.w (EntityCount_Firefly), d0
	beq    @NoFireflies

	; Check player against all Fireflies in level
	move.l a0, a1							; Player in a1
	move.l (EntityPoolStart_Firefly), a0	; Firefly in a0
	subq.w  #0x1, d0
	@FireflyLoop:

	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a0)
	beq    @NextFirefly

	; Test collision
	movem.l d0-d1/a0-a1, -(sp)
	jsr FireflyTestObj
	movem.l (sp)+, d0-d1/a0-a1

	@NextFirefly:
	lea    Firefly_Struct_Size(a0), a0
	dbra   d0, @FireflyLoop
	
	@NoFireflies:

	POPL   a1
	POPL   a0
	
	ENDIF

	rts

PlayerInteractTest_Carts:

	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IFND DEBUG

	PUSHL  a0
	PUSHL  a1

	move.l a0, a2
	
	move.w (EntityCount_Cart), d0
	beq    @NoCarts

	; Check player against all carts in level
	move.l a0, a1							; Player in a1
	move.l (EntityPoolStart_Cart), a0		; Cart in a0
	subq.w  #0x1, d0
	@CartLoop:

	; Check not smashed
	tst.b  Cart_Smashed(a0)
	bne    @NextCart

	; Check not already occupied
	tst.l  Cart_Occupant(a0)
	bne    @NextCart

	; Check platform occupied
	lea    Cart_Platform(a0), a3
	tst.b  Platform_Occupied(a3)
	beq    @NextCart

	; Check it's the current player
	move.l Platform_LastOccupant(a3), a4
	cmp.l  a2, a4
	bne    @NextCart

	; Found
	jsr    CartSetOccupant

	@NextCart:
	lea    Cart_Struct_Size(a0), a0
	dbra   d0, @CartLoop
	
	@NoCarts:

	POPL   a1
	POPL   a0
	
	ENDIF

	rts

	; TODO: Move to Character
PlayerInteractTest_Water:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; If not riding something
	cmp.b  #Player_RideState_None, Player_RideState(a0)
	bne    @Riding
	
	; Backup current water state
	move.b PhysicsObj_Underwater(a0), d7
	PUSHW  d7
	
	; Reset in water
	move.b #0x0, PhysicsObj_Underwater(a0)
	move.w #0x0, Player_LastWaterBodyLeft(a0)
	move.w #0x0, Player_LastWaterBodyRight(a0)
	move.w #0x0, Player_LastWaterBodySurface(a0)

	; Reset water level
	move.b #0xFF, raster_water_level

	;==============================================================
	
	; Check all water bodies
	move.l (EntityPoolStart_WaterBody), a2
	move.w (EntityCount_WaterBody), d6
	beq    @NoWaterBodies
	subq.w #0x1, d6
	@BodyLoop:
	
	; Check player vs. box
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	subi.w #Player1WaterWaistHeight, d1
	subi.w #Player1WaterWaistHeight, d2
	PUSHM  d2-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d2-d4
	tst.b  d0
	beq    @NoIntersect
	
	; Set in water
	swap   d3						; Left bounds
	swap   d4						; Right bounds
	move.b d7, d1					; Previously in water
	move.w Entity_WorldPosY(a2), d2	; Water level
	jsr    PlayerEnteredWater

	bra    @Found
	
	@NoIntersect:
	
	; Next body
	lea  WaterBody_Struct_Size(a2), a2
	dbra d6, @BodyLoop
	
	@NoWaterBodies:

	;==============================================================

	; Check all water pools
	move.l (EntityPoolStart_Pool), a2
	move.w (EntityCount_Pool), d6
	beq    @NoPools
	subq.w #0x1, d6
	@PoolLoop:
	
	; Check player vs. box
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	subi.w #Player1WaterWaistHeight, d1
	subi.w #Player1WaterWaistHeight, d2
	lea    Pool_Platform(a2), a3	; Use pool platform Y as bounds top
	move.w Platform_PosY(a3), d3
	PUSHM  d3-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d3-d4
	tst.b  d0
	beq    @NoIntersectPool
	
	; Set in water
	move.w d3, d2					; Water level
	swap   d3						; Left bounds
	swap   d4						; Right bounds
	move.b d7, d1					; Previously in water
	jsr    PlayerEnteredWater

	bra    @Found
	
	@NoIntersectPool:
	
	; Next body
	lea  Pool_Struct_Size(a2), a2
	dbra d6, @PoolLoop
	
	@NoPools:

	;==============================================================

	; Check all water terrain
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d4
	subi.w #Player1WaterWaistHeight, d4
	move.w Entity_Width(a0), d5
	lsr.w  #0x1, d5
	add.w  d5, d0
	add.w  Entity_Height(a0), d4
	subi.w #vdp_sprite_border_x, d0
	subi.w #vdp_sprite_border_y, d4

	move.w Level_NumTerrainDescs(a1), d6	; Get 'special' terrain count
	beq    @NoWaterTerrain
	subq.w  #0x1, d6						; -1 for loop counter
	move.l Level_TerrainDescAddr(a1), a2	; Get 'special' terrain desc table

	@TerrainLp:
	
	; Get terrain spline start/end/flags
	move.l (a2)+, d1
	move.l (a2)+, d2
	move.w (a2)+, d3

	; Check water type
	andi.w #col_tile_flag_water, d3
	beq    @NextTerrain

	; Get X
	swap   d1
	swap   d2

	; Check if within X bounds
	cmp.w  d0, d1
	bge    @NextTerrain
	cmp.w  d0, d2
	ble    @NextTerrain

	; Check under surface
	swap   d1
	cmp.w  d1, d4
	blt    @NextTerrain

	; Set in water
	swap   d1
	move.w d2, d4					; Left bounds
	move.w d1, d3					; Right bounds
	move.w d1, d2					; Water level
	addi.w #vdp_sprite_border_y, d2
	move.b d7, d1					; Previously in water
	PUSHL  d6
	jsr    PlayerEnteredWater
	POPL   d6

	bra    @Found
	
	@NextTerrain:
	dbra   d6, @TerrainLp
	bra    @NoWaterTerrain

	@NoWaterTerrain:

	;==============================================================

	@Found:

	POPW   d7

	; If left water
	tst.b  d7
	beq    @NotPrevInWater
	tst.b  PhysicsObj_Underwater(a0)
	bne    @StillInWater
	jsr    PlayerExitedWater
	@NotPrevInWater:
	@StillInWater:

	@Riding:
	
	rts

PlayerEnteredWater:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d1 (b) Previously in water
	; d2 (w) Water level Y coord
	; d3 (w) Water body left bounds
	; d4 (w) Water body right bounds

	; Set water bounds
	move.w d3, Player_LastWaterBodyLeft(a0)
	move.w d4, Player_LastWaterBodyRight(a0)
	move.w d2, Player_LastWaterBodySurface(a0)

	; Set water level (screen space)
	move.w d2, d3
	move.w (WorldScrollY), d4
	sub.w  d4, d3
	subi.w #vdp_sprite_border_y, d3
	move.b d3, raster_water_level

	; Set in water
	move.b #0x1, PhysicsObj_Underwater(a0)

	tst.b  d1
	bne    @NoSFXVFX
	
	; If hit water (or terrain under water) at landing velocity
	move.l PhysicsObj_VelY(a0), d1
	cmp.l  #-Character_WaterSplashVel, PhysicsObj_VelY(a0)
	ble    @PlaySFXVFX
	cmp.l  #-Character_WaterSplashVel, PhysicsObj_FloorImpactVelY(a0)
	bge    @NoSFXVFX
	
	@PlaySFXVFX:
	
	; Play splash SFX
	lea    Character_SFX+(CharacterSFXIdx_WaterSplash*size_long)(a0), a2
	tst.l  (a2)
	beq    @NoSplashSFX
	PUSHL  d2
	PLAYSFX (a2)
	POPL   d2
	@NoSplashSFX:

	; Play splash VFX
	PUSHM  a0-a1
	move.l Entity_WorldPosX(a0), d0	; Player X
	move.w d2, d1					; Water Y
	lea    EntityArray_VFX+(VfxId_WaterSplashLarge*VfxObj_Struct_Size), a0
	sub.w  Entity_Height(a0), d1
	TOSUBPIXELS d1
	jsr    VfxPlay
	POPM   a0-a1
	
	@NoSFXVFX:
	@LowSplashVel:

	rts

PlayerExitedWater:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set water scaled vel as new vel
	lea    PhysicsWorld, a2

	move.l PhysicsObj_VelX(a0), d0
	move.l PhysicsWorld_UnderwaterVelXScale(a2), d1
	jsr    Muls1616
	move.l d0, PhysicsObj_VelX(a0)

	move.l PhysicsObj_VelY(a0), d0
	move.l PhysicsWorld_UnderwaterVelYScale(a2), d1
	jsr    Muls1616
	move.l d0, PhysicsObj_VelY(a0)

	rts

	; TODO: Move to Character
PlayerInteractTest_Ladder:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Backup prev climb state
	move.b Character_Climbing(a0), d7
	
	; Reset climb state
	move.b #0x0, Character_Climbing(a0)
	move.b #0x0, Character_CanClimb(a0)

	; Reset gravity effect
	move.b #0x1, PhysicsObj_AffectedByGravity(a0)

	; If jumping and +ve velocity, don't bother
	tst.b  Character_Jumping(a0)
	beq    @NotJumping

	; Check velocity
	MOVE_NTSC_L Player1MaxVelXWalk, d0, d1
	cmp.l  PhysicsObj_VelY(a0), d0
	ble    @CantUseLadder

	@NotJumping:

	;==============================================================
	
	; Check all ladders
	move.l (EntityPoolStart_Ladder), a2
	move.w (EntityCount_Ladder), d6
	beq    @NoLadders
	subq.w #0x1, d6
	@LadderLoop:
	
	; Check max X dist
	ENTITY_GETCENTREX d0,a0
	ENTITY_GETCENTREX d1,a2
	sub.l  d0, d1
	cmp.l  #Player1LadderMaxXDist*subpixels_per_pixel, d1
	bgt    @NoIntersect
	cmp.l  #-Player1LadderMaxXDist*subpixels_per_pixel, d1
	blt    @NoIntersect

	; Check player vs. outer box
	PUSHL  d5
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	jsr    PHYS_TestBoxIntersectBox
	POPL   d5
	tst.b  d0
	beq    @NoIntersect

	; Touching ladder's outer bounds
	move.b #0x1, Character_CanClimb(a0)

	;==============================================================

	; If on floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @OffFloor

	; If on top platform
	move.l PhysicsObj_LastPlatform(a0), a3
	lea    Ladder_Platform(a2), a4
	cmp.l  a3, a4
	bne    @OnBaseFloor

	; If controlling down, set minimum impulse to start climbing down
	tst.b   Character_ControlY(a0)
	bge     @OnTopPlatform
	move.w  Entity_Height(a0), d2
	lsr.w   #0x1, d2
	addq.w  #0x1, d2
	;neg.w   d2
	TOSUBPIXELS d2
	;move.l  d2, PhysicsObj_ImpulseY(a0)
	add.l  d2, Entity_WorldPosY(a0)
	bra    @OnTopPlatform

	; else must be at base of ladder
	@OnBaseFloor:

	; If controlling up, set minimum impulse to start climbing up
	tst.b   Character_ControlY(a0)
	ble     @AtBase
	move.w  PhysicsObj_StepHeight(a0), d2
	;addq.w  #0x1, d2
	lsl.w   #0x1, d2
	TOSUBPIXELS d2
	move.l  d2, PhysicsObj_ImpulseY(a0)

	@OffFloor:
	@OnTopPlatform:
	@AtBase:

	;==============================================================

	; Check player vs. inner box
	PUSHL  d5
	PHYSICS_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a2
	PHYSICS_SHRINKBOUNDS d3,d4,#Player1StepHeight
	jsr    PHYS_TestBoxIntersectBox
	POPL   d5
	tst.b  d0
	beq    @NoIntersect

	; If on floor, waiting for impulse to get on
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @CantUseLadder

	; If heading upwards and at top, jump off
	tst.l  PhysicsObj_VelY(a0)
	ble    @NotJumpingOff
	ENTITY_GETCENTREY d0,a0
	move.l Entity_WorldPosY(a2), d1
	sub.l  d0, d1
	blt    @NotJumpingOff
	move.b #0x1, d2
	jsr    CharacterStartJump
	MOVE_NTSC_L Player1LadderExitVel, PhysicsObj_VelY(a0), d0
	move.b #0x0, Character_CanClimb(a0)
	move.b #0x0, Character_Climbing(a0)
	bra    @Found
	@NotJumpingOff:

	; If heading downwards and at top, snap to position
	tst.l  PhysicsObj_VelY(a0)
	bge    @NotGettingOn
	ENTITY_GETCENTREY d0,a0
	move.l Entity_WorldPosY(a2), d1
	sub.l  d0, d1
	blt    @NotGettingOn
	move.l Entity_WorldPosY(a2), Entity_WorldPosY(a0)
	bra    @Found
	@NotGettingOn:

	; Set climbing
	move.b #0x1, Character_Climbing(a0)

	; Not affected by gravity
	move.b #0x0, PhysicsObj_AffectedByGravity(a0)

	; Set anim speed depending on vel
	lea    Character_Animations+(CharacterAnimIdx_Climb*Animation_Struct_Size)(a0), a3
	move.w #0x0, Animation_Speed(a3)
	tst.l  PhysicsObj_VelY(a0)
	beq    @Stopped
	bgt    @Down
	move.w #actor_nymn_sheet_climb_anim_climb_speed, Animation_Speed(a3)
	bra    @Up
	@Down:
	move.w #-actor_nymn_sheet_climb_anim_climb_speed, Animation_Speed(a3)
	@Up:
	@Stopped:

	; If moving up/down, set climbing velocity
	move.b  Character_ControlY(a0), d0
	tst.b   d0
	beq     @NoControl
	blt     @ClimbingUp

	move.l  Character_ClimbVel(a0), PhysicsObj_VelY(a0)
	bra     @ClimbingDown

	@ClimbingUp:

	move.l  Character_ClimbVel(a0), d1
	neg.l   d1
	move.l  d1, PhysicsObj_VelY(a0)

	@ClimbingDown:
	@NoControl:

	; If not previously climbing
	tst.b  d7
	bne    @Found

	; Zero Y accel and velocity
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.l #0x0, PhysicsObj_VelX(a0)

	; Not jumping or falling
	move.b #0x0, Character_Jumping(a0)
	move.b #0x0, Character_Falling(a0)

	; Snap to centre X
	move.w Entity_WorldPosX(a2), d0
	move.w Entity_Width(a0), d1
	move.w Entity_Width(a2), d2
	lsr.w  #0x1, d1
	lsr.w  #0x1, d2
	add.w  d2, d0
	sub.w  d1, d0
	move.w d0, Entity_WorldPosX(a0)

	bra    @Found
	
	@NoIntersect:
	
	; Next ladder
	lea  Ladder_Struct_Size(a2), a2
	dbra d6, @LadderLoop
	
	@CantUseLadder:
	@NoLadders:
	@Found:

	rts
	
PlayerInteractTest_BouncePlants:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	IFND DEBUG

	; Check if player off floor
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @End

	; Check player travelling towards plant platform
	; TODO: Get bounce vector, dot test
	tst.l  PhysicsObj_VelY(a0)
	bge    @End
	
	move.w (EntityCount_BouncePlant), d6
	beq    @NoPlants
	
	; Get player collision bounds (assume jumping)
	PLAYER_GETJUMPBOUNDS d1,d2,d5,a0

	; Check player against all plants in level
	move.l (EntityPoolStart_BouncePlant), a2		; Plant in a2
	subq.w  #0x1, d6
	@PlantLoop:

	; Check on screen
	tst.b  SpriteObj_SpriteLinked(a2)
	beq    @NextPlant
	
	; Get plant collision bounds
	BOUNCEPLANT_GETBOUNDS d3,d4,d5,a2
	
	; Check collision
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	tst.b  d0
	beq    @NextPlant
	
	; Calculate bounce vector
	move.l PhysicsObj_VelX(a0), d0
	move.l PhysicsObj_VelY(a0), d1

	PUSHL  a0
	move.l a2, a0
	jsr    BouncePlant_GetBounceVector
	POPL   a0

	; Collision with plant, only test interaction conditions if it was hit this frame
	move.l Player_LastBouncePlant(a0), a3
	cmp.l  a2, a3
	beq    @AlreadyInteracting

	; Set current plant
	move.l a2, Player_LastBouncePlant(a0)

	; Launch player
	move.l d0, PhysicsObj_VelX(a0)
	move.l d1, PhysicsObj_VelY(a0)
	
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
	lea    BouncePlant_Struct_Size(a2), a2
	dbra   d6, @PlantLoop
	
	@NoPlants:

	; No plants touched, or interaction was successful - clear last used
	move.l #0x0, Player_LastBouncePlant(a0)

	@AlreadyInteracting:
	@End:

	ENDIF

	rts
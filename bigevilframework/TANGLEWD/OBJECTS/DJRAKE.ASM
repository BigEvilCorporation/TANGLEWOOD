;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   djrake.asm - Djrake specific movement and mechanics
;==============================================================

; ************************************
; Constants
; ************************************
Djrake_MaxEntities   equ 0x1

Djrake_Width	      equ 0x0080
Djrake_Height	      equ 0x0050

Djrake_MaxVelXWalk   equ 0x010000   ; Max X walking velocity
Djrake_MaxVelXRun    equ 0x033000   ; Max X running velocity
Djrake_MaxVelYUp	  equ 0x060000   ; Max Y velocity up
Djrake_MaxVelYDown	  equ 0x080000   ; Max Y velocity down
Djrake_AccelWalk     equ 0x000200   ; Walking acceleration
Djrake_AccelRun      equ 0x000700   ; Running acceleration
Djrake_DecelIdle     equ 0x002000   ; Deceleration if left alone
Djrake_DecelForced   equ 0x004000   ; Deceleration if input opposite direction
Djrake_JumpVel	      equ 0x060000   ; Jump velocity impulse
Djrake_JumpCancelVelLo equ 0x010000   ; Velocity to cancel jump min
Djrake_JumpCancelVelHi equ Djrake_MaxVelYUp   ; Velocity to cancel jump max
Djrake_MaxGrabUpVel  equ 0x030000   ; Max up velocity character can grab a ledge (no limit on down vel)

Djrake_StepHeight	  equ 0x3
Djrake_ProbeFloorX	  equ (Djrake_Width/2)  ; Floor detection probe position X
Djrake_ProbeFloorY   equ (Djrake_Height-8) ; Floor detection probe position Y
Djrake_ProbeLedgeX	  equ 0x1F	   ; Ledge detection probe position X
Djrake_ProbeLedgeY	  equ 0x02	   ; Ledge detection probe position Y

Djrake_PlayerVisibilityBoxX	equ 0x2000
Djrake_PlayerVisibilityBoxY	equ 0x0080
Djrake_PlayerLostSightTime		equ 0x0180

Djrake_RumbleSoundDist  	equ 0x020000
Djrake_RumbleSoundDistSq	equ (Djrake_RumbleSoundDist*Djrake_RumbleSoundDist)

Djrake_AlertDistance		equ 0x009000
Djrake_AlertDistanceSq		equ (Djrake_AlertDistance*Djrake_AlertDistance)

Djrake_MinChaseDistance	equ ((Djrake_Width/2)*subpixels_per_pixel)
Djrake_MaxChaseDistance	equ (screen_width*subpixels_per_pixel)
Djrake_OutOfDistSpeedMul	equ 0x8

Djrake_AttackMaxPlayerVel	equ 0x090000	; Don't attack if player is being flung using a flue/bounce pad, etc

; Search state
Djrake_SearchRandDistMax	equ 0x00FF	; Max distance for random X search pos (pixels)
Djrake_SearchRandDelayMask	equ 0x007F	; Mask for random delay between walks
Djrake_SearchRandDelayMin	equ 0x0018	; Min rand delay between walks
Djrake_SearchRandDelayInit equ 0x0040  ; Initial delay for first walk
Djrake_NearTargetDistance	equ (0x04*subpixels_per_pixel)

; Emerge palette lerp speed
Djrake_EmergePalLerpSpeed  equ (0x1<<0x8)

; Attack damages
Djrake_BiteDamage		equ 0xFF
Djrake_SwipeDamage		equ 0xFF

; Event keyframes
Djrake_AnimFrame_Bite	equ 0x2

; ************************************
; States
; ************************************
DjrakeState_InCave		equ 0x1
DjrakeState_Emerging	equ 0x2
DjrakeState_Roaring		equ 0x3
DjrakeState_Chasing		equ 0x4
DjrakeState_Attacking	equ 0x5
DjrakeState_Wandering	equ 0x6

; ************************************
; Animations
; ************************************
DjrakeAnimIdx_Eyes		equ 0
DjrakeAnimIdx_Bite		equ 1
DjrakeAnimIdx_Roar		equ 2
; -------------------------------
Djrake_NumAnims		equ 3

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;---------------------------
Djrake_Animations	   	rs.b (Animation_Struct_Size*Djrake_NumAnims)
Djrake_SearchTargetX	rs.l 1
Djrake_SearchDelay	   	rs.w 1
Djrake_LoseSightTimer 	rs.w 1
Djrake_CatchUpSpeedMul 	rs.w 1
Djrake_Colour         	rs.b 1
Djrake_State          	rs.b 1
Djrake_DoIntro		   	rs.b 1
Djrake_BlockingCtrl   	rs.b 1
Djrake_CatchingUp     	rs.b 1
Djrake_RumblePlayed   	rs.b 1
;-----------------------------
Djrake_Struct_Pad     	rs.b 0
Djrake_Struct_Size    	rs.b 0

; ************************************
; Subroutines
; ************************************
DjrakeInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Set type
	;ori.l  #entity_type_Djrake, Entity_TypeBits(a0)
	ori.l  #entity_type_monster, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Djrake
	
	; Set update and render routines
	move.l #DjrakeUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	move.l #DjrakeSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList
	
	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	; Default properties
	move.w  #Djrake_Width, Entity_Width(a0)
	move.w  #Djrake_Height, Entity_Height(a0)
	move.l  #Djrake_MaxVelXRun, PhysicsObj_MaxVelFloorX(a0)
	move.l  #Djrake_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #Djrake_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #Djrake_DecelIdle, PhysicsObj_DecelX(a0)
	move.w  #Djrake_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Djrake_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Djrake_Height, PhysicsObj_WallProbeBottom(a0)
	move.w  #Djrake_StepHeight, PhysicsObj_StepHeight(a0)
	
	move.l  #Djrake_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #Djrake_MaxVelXRun, Character_MaxVelXRun(a0)
	move.l  #Djrake_MaxVelXWalk, Character_WalkToRunVel(a0)
	move.w  #Djrake_AccelWalk, Character_AccelWalk(a0)
	move.w  #Djrake_AccelRun, Character_AccelRun(a0)
	move.w  #Djrake_DecelIdle, Character_DecelIdle(a0)
	move.w  #Djrake_DecelForced, Character_DecelForced(a0)
	move.l  #Djrake_JumpVel, Character_JumpVelY(a0)
	move.l  #Djrake_JumpCancelVelLo, Character_JumpCancelVelLo(a0)
	move.l  #Djrake_JumpCancelVelHi, Character_JumpCancelVelHi(a0)
	move.l  #Djrake_MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Djrake_ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Djrake_ProbeLedgeY, Character_ProbeLedgeY(a0)

	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.b  #ColourRed, Djrake_Colour(a0)
	move.l  #0x0, Djrake_SearchTargetX(a0)
	move.w  #0x0, Djrake_SearchDelay(a0)
	move.w  #0x0, Djrake_LoseSightTimer(a0)
	move.w  #Djrake_OutOfDistSpeedMul, Djrake_CatchUpSpeedMul(a0)
	move.b  #0x0, Djrake_BlockingCtrl(a0)
	move.b  #0x0, Djrake_CatchingUp(a0)
	move.b  #0x0, Djrake_RumblePlayed(a0)
	move.b  #0x0, Djrake_DoIntro(a0)
	
	move.b #0x0, PhysicsObj_HasPhysics(a0)

	; Setup default character animations

	; Idle
	ANIM_LOAD_DEFAULT djrake_idle,djrake_idle,Character_Animations,CharacterAnimIdx_Idle,1,0,0

	;; Begin initial state
	;jsr    DjrakeStartWaitForPlayer

	rts

DjrakeLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_DEFAULT djrake,PaletteId_Monster,0x0

	rts

DjrakeUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If dead, do nothing
	;tst.b  Character_Dead(a0)
	;bne    @Dead
    ;
	;; Determine state
	;move.b Djrake_State(a0), d0
    ;
	;cmp.b #DjrakeState_InCave, d0
	;beq   @InCave
	;cmp.b #DjrakeState_Emerging, d0
	;beq   @Emerging
	;cmp.b #DjrakeState_Roaring, d0
	;beq   @Roaring
	;cmp.b #DjrakeState_Chasing, d0
	;beq   @Chasing
	;cmp.b #DjrakeState_Attacking, d0
	;beq   @Attacking
	;cmp.b #DjrakeState_Wandering, d0
	;beq   @Wandering
    ;
	;; ************************************
	;; In cave
	;; ************************************
	;@InCave:
    ;
	;; Wait for player
	;jsr DjrakeUpdateWaitForPlayer
	;bra @EndStateMachine
	;
	;; ************************************
	;; Emerging from cave
	;; ************************************
	;@Emerging:
    ;
	;; Update palette lerp
	;jsr DjrakeUpdateEmergeFromCave
	;bra @EndStateMachine
	;
	;; ************************************
	;; Roaring at player
	;; ************************************
	;@Roaring:
    ;
	;; Update roar state
	;jsr DjrakeUpdateRoaring
	;bra @EndStateMachine
    ;
	;; ************************************
	;; Tracking player
	;; ************************************
	;@Chasing:
    ;
	;; Track player
	;jsr DjrakeUpdateTrackPlayer
	;bra @EndStateMachine
    ;
	;; ************************************
	;; Attacking
	;; ************************************
	;@Attacking:
    ;
	;; Attack
	;jsr DjrakeUpdateBite
	;bra @EndStateMachine
	;
	;; ************************************
	;; Searching
	;; ************************************
	;@Wandering:
    ;
	;; Wander around
	;jsr DjrakeUpdateSearchForPlayer
	;bra @EndStateMachine
    ;
	;; ************************************
	;; Dead
	;; ************************************
	;@Dead:
	;
	;; Make sure animation control is returned to the character
	;move.b #0x1, Character_UpdateAnim(a0)
	;
	;@EndStateMachine:
	
	; Base functionality
	jsr CharacterUpdate
	
	rts
	
DjrakeSerialise:
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
	SAVEB Djrake_State(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB Djrake_State(a0)
	
	;==============================================================
	
	@End:
	
	rts
	
DjrakeCheckPlayerVisible:
	; d0 --- Return value
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1
	move.l (Player1), a2
	
	; Check not cloaked
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked
	
	; Get Djrake visibility bounds X
	move.w Entity_WorldPosX(a0), d1	;  (top word = integer part)
	move.w d1, d2
	addi.w #(Djrake_Width/2)-(Djrake_PlayerVisibilityBoxX/2), d1
	addi.w #(Djrake_Width/2)+(Djrake_PlayerVisibilityBoxX/2), d2
	
	swap   d1
	swap   d2
	
	; Get Djrake visibility bounds Y
	move.w Entity_WorldPosY(a0), d3	;  (top word = integer part)
	move.w d3, d1
	move.w d3, d2
	addi.w #(Djrake_Height/2)-(Djrake_PlayerVisibilityBoxY/2), d1
	addi.w #(Djrake_Height/2)+(Djrake_PlayerVisibilityBoxY/2), d2
	
	; Get player centre X
	ENTITY_GETCENTREX d3, a2
	TOPIXELS d3
	swap   d3
	
	; Get player centre Y
	ENTITY_GETCENTREY d4, a2
	TOPIXELS d4
	move.w d4, d3
	
	jsr    PHYS_TestPointInsideBox
	
	tst.b  d0
	beq    @NotSeen
	
	; Set as last found player pos
	ENTITY_GETCENTREX d0, a2
	move.l d0, Djrake_SearchTargetX(a0)
	
	; Clear lost sight timer
	cmp.w  #-1, Djrake_LoseSightTimer(a0)
	beq    @NoTimer
	move.w #0x0, Djrake_LoseSightTimer(a0)
	
	bra    @End
	
	@PlayerCloaked:
	@NotSeen:
	
	; Increment lost timer
	cmp.w  #-1, Djrake_LoseSightTimer(a0)
	beq    @NoTimer
	addi.w #0x1, Djrake_LoseSightTimer(a0)
	
	@NoTimer:
	@End:
	
	rts
	
DjrakeStartWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set in cave state
	move.b  #DjrakeState_InCave, Djrake_State(a0)

	; Start eye tracking animation
	move.l a1, -(sp)
	move.l a0, a1
	addi.l #Djrake_Animations, a1
	move.l #(DjrakeAnimIdx_Eyes*Animation_Struct_Size), d1
	add.l  d1, a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	rts
	
DjrakeUpdateWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get player 1
	move.l (Player1), a2
	
	; If player dead, don't bother
	tst.b  Character_Health(a2)
	beq    @PlayerDead
	
	; If player cloaked, don't bother
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked

	; Get distance to player
	move.l a1, -(sp)
	move.l (Player1), a1
	jsr    PHYS_EntityDistSq
	move.l (sp)+, a1
	
	; Check if within rumble sound dist
	cmp.l  #Djrake_RumbleSoundDistSq, d0
	bgt    @OutOfRumbleSoundRange
	
	; If not already playing, begin playback
	tst.b  Djrake_RumblePlayed(a0)
	bne    @Playing
	
	;PUSHM  a0/d0-d1
	;lea    track_bgm_Djrakebass, a0
	;jsr    SND_PlayTrack
	;POPM   a0/d0-d1
	
	; Set played
	move.b #0x1, Djrake_RumblePlayed(a0)
	
	@Playing:
	
	; Adjust volume based on distance
	
	@OutOfRumbleSoundRange:

	; Check if within alert dist
	cmp.l #Djrake_AlertDistanceSq, d0
	bgt   @OutOfPlayerRange

	; Within range
	tst.b Djrake_DoIntro(a0)
	beq   @RoarState
	jsr   DjrakeStartEmergeFromCave	; Start emerge sequence
	bra   @EndEmergeState
	@RoarState:
	jsr   DjrakeStartRoaring			; Skip straight to roar state
	@EndEmergeState:

	@PlayerDead:
	@PlayerCloaked:
	@OutOfPlayerRange:

	rts
	
DjrakeStartEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set emerge state
	move.b #DjrakeState_Emerging, Djrake_State(a0)
	
	; Block player control and set as camera target
	; TODO: Use cutscene code
	move.l (Player1), a2
	move.b #0x0, Player_ControlEnabled(a2)
	move.b #0x1, Djrake_BlockingCtrl(a0)
	move.l (Player1), CameraTargetLerpSource
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x10, CameraTargetLerpSpeed
	
	; Cut player X velocity
	move.l (Player1), a2
	move.l #0x0, PhysicsObj_VelX(a2)
	move.w #0x0, PhysicsObj_AccelX(a2)
	
	; Start palette lerp
	move.l a0, -(sp)
	lea    palette_Djrake, a0
	;move.l #PaletteId_Djrake, d0
	lea    palette_djakk, a0
	move.l #PaletteId_Monster, d0
	move.w #Djrake_EmergePalLerpSpeed, d1
	move.b #0x1, d2
	move.b #0x0, d3
	move.b #0xF, d4
	jsr    PAL_LerpStart
	move.l (sp)+, a0

	rts
	
DjrakeUpdateEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Wait for palette lerp finish
	lea    PaletteLerp_Array, a2
	;addi.l #(PaletteId_Djrake*PaletteLerp_Struct_Size), a2
	addi.l #(PaletteId_Monster*PaletteLerp_Struct_Size), a2
	tst.w  PaletteLerp_UpdateSpeed(a2)
	bne    @Lerping
	
	; Start roaring at player
	jsr    DjrakeStartRoaring
	
	@Lerping:

	rts
	
DjrakeStartRoaring:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set roaring state
	move.b #DjrakeState_Roaring, Djrake_State(a0)
	
	; Turn to face player
	move.l (Player1), a2
	ENTITY_GETCENTREX d0, a0
	ENTITY_GETCENTREX d1, a2
	cmp.l  d0, d1
	bgt    @RightOfPlayer
	move.b #0x1, SpriteObj_FlippedX(a0)
	bra    @EndFlip
	@RightOfPlayer:
	move.b #0x0, SpriteObj_FlippedX(a0)
	@EndFlip:
	
	; Start roar animation
	move.l a1, -(sp)
	move.l a0, a1
	addi.l #Djrake_Animations, a1
	move.l #(DjrakeAnimIdx_Roar*Animation_Struct_Size), d1
	add.l  d1, a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	move.l #0x0, AnimObj_AnimSubFrame(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Dirty(a0)
	move.l (sp)+, a1
	
	; Start roar SFX
	;PLAYSFX #SFX_djrake_Roar

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	rts
	
DjrakeUpdateRoaring:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if anim finished
	tst.b  AnimObj_Playing(a0)
	bne    @AnimPlaying
	
	; Finish mini-cutscene if playing (release player control and camera)
	tst.b  Djrake_BlockingCtrl(a0)
	beq    @NotBlockingPlayerCtrl
	
	move.l (Player1), a2
	move.b #0x1, Player_ControlEnabled(a2)
	move.l a0, CameraTargetLerpSource
	move.l (Player1), CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x10, CameraTargetLerpSpeed
	
	move.b #0x0, Djrake_BlockingCtrl(a0)
	
	@NotBlockingPlayerCtrl:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    DjrakeStartTrackPlayer
	
	@AnimPlaying:
	
	rts
	
DjrakeStartSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set wandering state
	move.b  #DjrakeState_Wandering, Djrake_State(a0)
	
	; Start walking
	move.b  #Character_WalkGeneral, d2
	jsr     CharacterPreventRun
	
	; Give anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Set initial delay before first walk
	move.w #Djrake_SearchRandDelayInit, Djrake_SearchDelay(a0)
	
	rts

DjrakeUpdateSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l (Player1), a2
	
	; If player dead, search around
	tst.b  Character_Health(a2)
	beq    @Searching
	
	; If player inactive, search around
	tst.b  Entity_Active(a2)
	beq    @Searching
	
	; If player is cloaked, search around
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @Searching
	
	; Check if player is within tracking window
	jsr    DjrakeCheckPlayerVisible
	tst.b  d0
	beq    @Searching
	
	; Player visible, roar and chase
	jsr    DjrakeStartRoaring
	bra    @End
	
	@Searching:
	
	; If we have a target X
	move.l Djrake_SearchTargetX(a0), d0
	tst.l  d0
	bne    @HasTargetX
	
	; Get a random target X (-255 - 255)
	jsr    RND_GenerateLong								; Rand long
	andi.l #0xFFFF, d0							; Avoid overflow
	divu   #(Djrake_SearchRandDistMax*2), d0	; Div / max*2
	clr.w  d0									; Clear exponent
	swap   d0									; Remainder to lower word (0 - 512)
	subi.w #Djrake_SearchRandDistMax, d0		; Shift down to -255 - 255
	TOSUBPIXELS d0								; To subpixels
	
	; Add min dist
	move.l  #Djrake_NearTargetDistance, d1
	tst.l  d0								; If rand target negative
	bgt    @PosTarget
	neg.l  d1									; Make min dist negative
	@PosTarget:
	add.l  d1, d0
	
	; Add current X pos
	add.l  Entity_WorldPosX(a0), d0
	
	; Clamp to screen bounds
	tst.l  d0								; Clamp screen left
	bgt    @NoClampLeft
	move.l #0x0, d0
	@NoClampLeft:
	clr.l  d1
	move.w Level_MapWidth(a1), d1				; Clamp screen right
	TILES2PIXELS d1								; Tiles to pixels
	TOSUBPIXELS  d1								; Pixels to subpixels
	cmp.l  d1, d0
	blt    @NoClampRight
	move.l d1, d0
	@NoClampRight:
	
	; Set new target X
	move.l d0, Djrake_SearchTargetX(a0)
	
	@HasTargetX:
	
	; Check if in delay state
	move.w Djrake_SearchDelay(a0), d1
	tst.w  d1
	beq    @Move
	
	; Count down delay
	subq.w  #0x1, d1
	move.w d1, Djrake_SearchDelay(a0)
	bra    @End
	
	@Move:
	
	; Check if hit a wall
	tst.b  PhysicsObj_HitWall(a0)
	bne    @HitWall
	
	; Check if near target
	ENTITY_GETCENTREX d1, a0
	sub.l  d1, d0							; Get distance to target
	move.l d0, d3
	tst.l  d0							; If negative
	bgt    @Pos
	neg.l  d0								; Make positive
	@Pos:
	cmp.l  #Djrake_NearTargetDistance, d0	; Test distance
	blt    @ReachedTarget
	
	; Move towards target X
	tst.l  d3
	bgt    @MoveRight
	
	@MoveLeft:
	jsr    CharacterMoveLeft
	bra    @End
	
	@MoveRight:
	jsr    CharacterMoveRight
	bra    @End
	
	@HitWall:
	@ReachedTarget:
	
	; Target reached or wall hit, stop moving
	jsr    CharacterCancelXMovement
	
	; Randomise delay timer
	jsr    RND_GenerateLong
	andi.l #Djrake_SearchRandDelayMask, d0
	addi.w #Djrake_SearchRandDelayMin, d0
	move.w d0, Djrake_SearchDelay(a0)
	
	; Reset target pos
	move.l #0x0, Djrake_SearchTargetX(a0)
	
	@End:
	
	rts
	
DjrakeStartTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set chase state
	move.b #DjrakeState_Chasing, Djrake_State(a0)
	
	; Start running
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)

	rts

DjrakeUpdateTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l (Player1), a2
	
	; If player dead, don't bother
	tst.b  Character_Health(a2)
	beq    @PlayerDead
	
	; If player inactive, don't bother
	tst.b  Entity_Active(a2)
	beq    @PlayerInactive
	
	; If player is cloaked, don't bother
	cmp.b  #ColourGreen, Player_ActiveColourAbility(a2)
	beq    @PlayerCloaked
	
	; If player is being flung using a flue/bounce pad, don't bother
	cmp.l  #Djrake_AttackMaxPlayerVel, PhysicsObj_VelY(a2)
	bge    @PlayerBeingFlung

	; Check if player is within tracking window
	jsr    DjrakeCheckPlayerVisible
	
	; Check if lost player timeout reached
	cmp.w  #-1, Djrake_LoseSightTimer(a0)
	beq    @NoTimer
	cmp.w  #Djrake_PlayerLostSightTime, Djrake_LoseSightTimer(a0)
	bge    @LostPlayer
	@NoTimer:
	
	; Check if hit a wall
	tst.b  PhysicsObj_HitWall(a0)
	bne    @HitWall
	
	;==============================================================
	
	; Get player + Djrake pos
	ENTITY_GETCENTREX d0, a0				; Get Djrake centre
	ENTITY_GETCENTREX d1, a2				; Get player centre
	
	; Speed up if out of min chase dist
	sub.l  d0, d1							; Calc distance
	
	; If out of view, check max chase dist
	tst.b  SpriteObj_SpriteLinked(a0)
	bne    @InView
	
	; Check if outside max chase distance
	cmp.l  #Djrake_MaxChaseDistance, d1
	bgt    @OutsideMaxChaseDistL
	cmp.l  #-Djrake_MaxChaseDistance, d1
	blt    @OutsideMaxChaseDistR
	
	; Within max chase dist
	tst.b  Djrake_CatchingUp(a0)
	beq    @WithinMaxChaseDist
	move.l #Djrake_MaxVelXRun, Character_MaxVelXRun(a0) ; Reset max run velocity
	move.l #Djrake_MaxVelXRun, PhysicsObj_VelX(a0)
	move.b #0x0, Djrake_CatchingUp(a0)
	bra    @WithinMaxChaseDist
	
	@OutsideMaxChaseDistL:
	@OutsideMaxChaseDistR:
	
	; Outside max chase dist, multiply speed to catch up
	tst.b  Djrake_CatchingUp(a0)
	bne    @SpeedBoostApplied
	move.l Character_MaxVelXRun(a0), d0
	mulu   Djrake_CatchUpSpeedMul(a0), d0	; Mul max run velocity
	move.l d0, Character_MaxVelXRun(a0)		; Set new max velocity
	move.b #0x1, Djrake_CatchingUp(a0)		; Set catching up
	bra    @EndMaxDistCheck
	
	@InView:
	@WithinMaxChaseDist:
	@EndMaxDistCheck:
	@SpeedBoostApplied:
	
	;==============================================================
	
	; Check if within min chase distance
	cmp.l  #Djrake_MinChaseDistance, d1
	bgt    @OutsideMinChaseDist
	cmp.l  #-Djrake_MinChaseDistance, d1
	blt    @OutsideMinChaseDist
	
	; Within min chase range, stop chasing
	move.b #Character_WalkGeneral, d2
	jsr    CharacterPreventRun
	jsr    CharacterCancelXMovement

	; Attack if bounds intersect
	PUSHL  a1
	move.l a2, a1
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	tst.b  d0
	beq    @End
	
	; Attack
	jsr    DjrakeStartBite
	bra    @End
	
	@OutsideMinChaseDist:
	
	; Outside min chase distance, continue chasing
	tst.l  d1
	blt    @RightOfPlayer
	
	@LeftOfPlayer:

	; Run towards player
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterMoveRight
	bra    @End

	@RightOfPlayer:

	; Run towards player
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterMoveLeft
	bra    @End
	
	;==============================================================

	@PlayerDead:
	@LostPlayer:
	
	; Lost player, or player dead, back to search state
	jsr    DjrakeStartSearchForPlayer
	bra    @End
	
	@PlayerInactive:
	@PlayerBeingFlung:
	@HitWall:
	@PlayerCloaked:
	
	move.b #Character_WalkGeneral, d2
	jsr    CharacterAllowRun
	jsr    CharacterCancelXMovement

	@End:

	rts

DjrakeStartBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set attack state
	move.b #DjrakeState_Attacking, Djrake_State(a0)

	; Start bite animation
	move.l a1, -(sp)
	move.l a0, a1
	addi.l #Djrake_Animations, a1
	move.l #(DjrakeAnimIdx_Bite*Animation_Struct_Size), d1
	add.l  d1, a1
	move.b #0x0, d0
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	; Start bite SFX
	;PLAYSFX #SFX_djrake_Bite

	rts

DjrakeUpdateBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if end frame reached
	;move.l AnimObj_AnimSubframe(a0), d0; Get anim subframe
	;lsr.l  #0x8, d0 					; Subframes to frames
	;cmp.b  #spriteanim_djrake_bite_numframes, d0
	;beq    @AnimFinished
	
	; Check if attack frame reached
	;cmp.b  #Djrake_AnimFrame_Bite, d0
	;bne    @End
	
	; On attack frame, check if player still in range on attack frame
	PUSHL  a1
	move.l (Player1), a1
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr    PHYS_TestBoxIntersectBox
	POPL   a1
	
	tst.b  d0
	beq    @OutOfHitBox
	
	; Deal damage to player
	move.l a0, -(sp)
	move.l (Player1), a0
	move.b #Djrake_BiteDamage, d0
	jsr    CharacterDealDamage
	move.l (sp)+, a0
	
	bra    @End

	@AnimFinished:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    DjrakeStartTrackPlayer
	
	@OutOfHitBox:
	@End:

	rts

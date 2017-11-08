;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   fuzzl.asm - Fuzzl creature
;==============================================================

; Constants
Fuzzl_Width					equ 0x10
Fuzzl_Height				equ 0x10
Fuzzl_MaxVelXFloor			equ 0x012000
Fuzzl_MaxVelXAir			equ 0x012000
Fuzzl_MaxVelYUp				equ 0x100000
Fuzzl_MaxVelYDown			equ 0x080000
Fuzzl_StepHeight			equ 0x3
Fuzzl_ProbeFloorX			equ (Fuzzl_Width/2)  ; Floor detection probe position X
Fuzzl_ProbeFloorY   		equ (Fuzzl_Height-8) ; Floor detection probe position Y
Fuzzl_Decel					equ 0x0200
Fuzzl_BounceX				equ 0x2
Fuzzl_BounceY				equ 0x2
Fuzzl_BounceDelay			equ 0x40
Fuzzl_BounceVelHappy		equ 0x018000
Fuzzl_BounceVelStartled		equ 0x010000
Fuzzl_AnimSpeedVelocityDiv	equ 0x0400
Fuzzl_AnimSpeedBounce       equ	0x40
Fuzzl_EyeWatchDistanceStart equ	0x0050	; Distance from player to start watching
Fuzzl_EyeWatchDistanceStop  equ	0x0080	; Distance from player to stop watching
Fuzzl_EyeWatchQuadSize      equ	0x0010	; Player vs. Fuzzl rotation check quadrant size (checks a 9x9 grid around the Fuzzl)
Fuzzl_FlingRollSpeed        equ 0x80
Fuzzl_HitGroundSFXVel		equ 0x020000	; Min downward velocity to play thud SFX
Fuzzl_WindResistanceFloor   equ 0x0080 ; Wind resistance (on floor)
Fuzzl_WindResistanceAir     equ 0x0020 ; Wind resistance (in air)
Fuzzl_Mass					equ 0x0001

; State bits
Fuzzl_State_Initial   equ 0x00 ; Initial state (in initial position, not seen player)
Fuzzl_State_Asleep    equ 0x01 ; Initial state (night time, sleeping)
Fuzzl_State_Watching  equ 0x02 ; Seen player, eyes following
Fuzzl_State_Rolling   equ 0x03 ; Being rolled by player
Fuzzl_State_Home      equ 0x04 ; In a nest
Fuzzl_State_Bouncing  equ 0x05 ; Bouncing to alert player to take colour
Fuzzl_State_Fling	  equ 0x06 ; Being flung up in the air
Fuzzl_State_Generator equ 0x07 ; Inside a generator
Fuzzl_State_Caged     equ 0x08 ; Inside a cage

; Eye anim subframes
Fuzzl_Eye_Frame_TopMiddle    equ (0x0<<0x8)
Fuzzl_Eye_Frame_TopRight     equ (0x1<<0x8)
Fuzzl_Eye_Frame_MidRight     equ (0x2<<0x8)
Fuzzl_Eye_Frame_BottomRight  equ (0x3<<0x8)
Fuzzl_Eye_Frame_BottomMiddle equ (0x4<<0x8)
Fuzzl_Eye_Frame_BottomLeft   equ (0x5<<0x8)
Fuzzl_Eye_Frame_MidLeft      equ (0x6<<0x8)
Fuzzl_Eye_Frame_TopLeft      equ (0x7<<0x8)
Fuzzl_Eye_Frame_Crossed      equ (0x8<<0x8)

; 3x3 table
Fuzzl_Eye_Frame_Table:
	dc.l Fuzzl_Eye_Frame_TopLeft
	dc.l Fuzzl_Eye_Frame_TopMiddle
	dc.l Fuzzl_Eye_Frame_TopRight
	dc.l Fuzzl_Eye_Frame_MidLeft
	dc.l Fuzzl_Eye_Frame_Crossed
	dc.l Fuzzl_Eye_Frame_MidRight
	dc.l Fuzzl_Eye_Frame_BottomLeft
	dc.l Fuzzl_Eye_Frame_BottomMiddle
	dc.l Fuzzl_Eye_Frame_BottomRight

; Animations
FuzzlAnimIdx_Idle		equ 0
FuzzlAnimIdx_Watch		equ 1
FuzzlAnimIdx_Roll		equ 2
FuzzlAnimIdx_Bounce		equ 3
FuzzlAnimIdx_Sleep		equ 4
; -------------------------------
Fuzzl_NumAnims		    equ 5

;==============================================================

; Struct
	rsset (PhysicsObj_Struct_Size)
;--------------------------
Fuzzl_Animations	rs.b (Animation_Struct_Size*Fuzzl_NumAnims)
Fuzzl_Colour	    rs.b 1	; Fuzzl colour type idx
Fuzzl_State_Bits    rs.b 1	; Fuzzl states
Fuzzl_BounceTimer   rs.b 1	; Bounce timer, for happy Fuzzls
Fuzzl_FlueOccupant  rs.b 1	; Registered as potential flue occupant
Fuzzl_InCage		rs.b 1	; TEMP - out of state bits
;--------------------------
Fuzzl_Struct_Pad    rs.b 3  ; Alignment padding
Fuzzl_Struct_Size   rs.b 0

;==============================================================

FuzzlInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	ori.l  #entity_type_fuzzl, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Fuzzl
	
	; Set update and render routines
	move.l #FuzzlUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	move.l #FuzzlSerialise, Entity_SerialiseRoutine(a0)

	; Add to update, render and serialise lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	jsr EntityAddToSerialiseList
	
	; Default state
	move.w  #Fuzzl_Width, Entity_Width(a0)
	move.w  #Fuzzl_Height, Entity_Height(a0)
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.b  #0x1, PhysicsObj_MaxVelClamp(a0)
	move.w  #Fuzzl_BounceX, PhysicsObj_BounceX(a0)
	move.w  #Fuzzl_BounceY, PhysicsObj_BounceY(a0)
	move.b  #Fuzzl_Mass, PhysicsObj_Mass(a0)
	MOVE_NTSC_L Fuzzl_MaxVelXFloor, PhysicsObj_MaxVelFloorX(a0), d0
	MOVE_NTSC_L Fuzzl_MaxVelXAir, PhysicsObj_MaxVelAirX(a0), d0
	move.l  #Fuzzl_WindResistanceFloor, PhysicsObj_WindResistanceFloor(a0)
	move.l  #Fuzzl_WindResistanceAir, PhysicsObj_WindResistanceAir(a0)
	MOVE_NTSC_ACCEL_W Fuzzl_Decel, PhysicsObj_DecelX(a0), d0
	move.w  #Fuzzl_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Fuzzl_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Fuzzl_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Fuzzl_Height-1, PhysicsObj_WallProbeBottom(a0)
	move.w  #0x0, PhysicsObj_WallProbeLeft(a0)
	move.w  #Fuzzl_Width, PhysicsObj_WallProbeRight(a0)
	MOVE_NTSC_L Fuzzl_MaxVelYUp, PhysicsObj_MaxVelYUp(a0), d0
	MOVE_NTSC_L Fuzzl_MaxVelYDown, PhysicsObj_MaxVelYDown(a0), d0
	move.b  #0x1, PhysicsObj_CanBePushed(a0)
	move.b  #0x1, PhysicsObj_CanBePulled(a0)
	move.b  #0x0, PhysicsObj_AffectedByWind(a0)
	move.b  #0x0, Fuzzl_State_Bits(a0)
	bset.b  #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	move.b  #ColourRed, Fuzzl_Colour(a0)
	move.b  #0x0, Fuzzl_FlueOccupant(a0)

	move.b  #0x0, Fuzzl_InCage(a0)	; TEMP - out of state bits
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)
	
	; Don't update when out of view until used
	move.b  #0x0, AnimObj_UpdateOutOfView(a0)
	
	; Always fall down holes
	move.b  #0x1, PhysicsObj_FallThroughHoles(a0)

	; Register as pushable object
	LIST_APPEND_TAIL PushableObjs, a0, a3

	rts

FuzzlLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set initial colour anim offset
	move.b Fuzzl_Colour(a0), d0
	jsr    FuzzlSetColour

	; Snap to floor
	jsr    PhysicsObjSnapToFloor

	rts
	
FuzzlSetColour:
	; a0 --- GameObj addr
	; d0 (b) Colour
	
	cmp.b #ColourRed, d0
	beq   @Red
	cmp.b #ColourYellow, d0
	beq   @Yellow
	cmp.b #ColourGreen, d0
	beq   @Green
	cmp.b #ColourBlue, d0
	beq   @Blue
	cmp.b #ColourWhite, d0
	beq   @White

	@Red:
	SPRITE_LOAD_DEFAULT fuzzl,red_idle,PaletteId_Fuzzl,0x0
	ANIM_LOAD_DEFAULT fuzzl,red_idle,red_idle,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,red_eyes,red_eyes,Fuzzl_Animations,FuzzlAnimIdx_Watch,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,red_roll,red_roll,Fuzzl_Animations,FuzzlAnimIdx_Roll,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,red_roll,red_roll,Fuzzl_Animations,FuzzlAnimIdx_Bounce,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,red_sleep,red_sleep,Fuzzl_Animations,FuzzlAnimIdx_Sleep,1,0,0
	bra   @End

	@Yellow:
	SPRITE_LOAD_DEFAULT fuzzl,yellow_idle,PaletteId_Fuzzl,0x0
	ANIM_LOAD_DEFAULT fuzzl,yellow_idle,yellow_idle,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,yellow_eyes,yellow_eyes,Fuzzl_Animations,FuzzlAnimIdx_Watch,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,yellow_roll,yellow_roll,Fuzzl_Animations,FuzzlAnimIdx_Roll,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,yellow_roll,yellow_roll,Fuzzl_Animations,FuzzlAnimIdx_Bounce,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,yellow_sleep,yellow_sleep,Fuzzl_Animations,FuzzlAnimIdx_Sleep,1,0,0
	bra   @End

	@Green:
	SPRITE_LOAD_DEFAULT fuzzl,green_idle,PaletteId_Fuzzl,0x0
	ANIM_LOAD_DEFAULT fuzzl,green_idle,green_idle,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,green_eyes,green_eyes,Fuzzl_Animations,FuzzlAnimIdx_Watch,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,green_roll,green_roll,Fuzzl_Animations,FuzzlAnimIdx_Roll,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,green_roll,green_roll,Fuzzl_Animations,FuzzlAnimIdx_Bounce,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,green_sleep,green_sleep,Fuzzl_Animations,FuzzlAnimIdx_Sleep,1,0,0
	bra   @End

	@Blue:
	SPRITE_LOAD_DEFAULT fuzzl,blue_idle,PaletteId_Fuzzl,0x0
	ANIM_LOAD_DEFAULT fuzzl,blue_idle,blue_idle,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,blue_eyes,blue_eyes,Fuzzl_Animations,FuzzlAnimIdx_Watch,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,blue_roll,blue_roll,Fuzzl_Animations,FuzzlAnimIdx_Roll,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,blue_roll,blue_roll,Fuzzl_Animations,FuzzlAnimIdx_Bounce,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,blue_sleep,blue_sleep,Fuzzl_Animations,FuzzlAnimIdx_Sleep,1,0,0
	bra   @End

	@White:
	SPRITE_LOAD_DEFAULT fuzzl,white_idle,PaletteId_Fuzzl,0x0
	ANIM_LOAD_DEFAULT fuzzl,white_idle,white_idle,Fuzzl_Animations,FuzzlAnimIdx_Idle,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,white_eyes,white_eyes,Fuzzl_Animations,FuzzlAnimIdx_Watch,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,white_roll,white_roll,Fuzzl_Animations,FuzzlAnimIdx_Roll,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,white_roll,white_roll,Fuzzl_Animations,FuzzlAnimIdx_Bounce,1,0,0
	ANIM_LOAD_DEFAULT fuzzl,white_sleep,white_sleep,Fuzzl_Animations,FuzzlAnimIdx_Sleep,1,0,0
	bra   @End

	@End:
	
	; Mark anim dirty
	move.b #0x1, AnimObj_Dirty(a0)
	
	rts

FuzzlSetInCage:
	; a0 --- GameObj addr
	; a1 --- Level addr

	;bset.b #Fuzzl_State_Caged, Fuzzl_State_Bits(a0)
	move.b #0x1, Fuzzl_InCage(a0)

	rts

FuzzlRemoveFromCage:
	; a0 --- GameObj addr
	; a1 --- Level addr

	;bclr.b #Fuzzl_State_Caged, Fuzzl_State_Bits(a0)
	move.b #0x0, Fuzzl_InCage(a0)

	; Re-find floor
	move.b #0x0, PhysicsObj_OnFloor(a0)
	move.b #0x0, PhysicsObj_CloseToFloor(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)
	
	; Set rolling state
	bclr.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	rts
	
FuzzlUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If sprite linked or configured to update out of view
	move.b AnimObj_UpdateOutOfView(a0), d0
	or.b   SpriteObj_SpriteLinked(a0), d0
	beq    @OutOfView

	; Check if Fuzzl is disabled
	tst.b  Entity_Active(a0)
	beq    @Inactive
	
	; Check if Fuzzl is asleep
	btst.b #Fuzzl_State_Asleep, Fuzzl_State_Bits(a0)
	bne    @Asleep
	
	; Check if Fuzzl is home
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)
	bne    @Home

	; Check if Fuzzl is in a generator
	btst.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a0)
	bne    @InGenerator

	; Check if Fuzzl has moved from initial position
	btst.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	beq    @MovedFromInitialPos

	; TODO: Check for Player2 ineraction
	tst.l  PhysicsObj_VelX(a0)
	bne    @BeginRollingState

	; Check if Fuzzl is far from player
	PUSHL  a1
	move.l (Player1), a1
	jsr    PHYS_EntityDistSq
	POPL   a1
	
	btst.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)	; If already watching player, check outer distance
	bne    @CheckOuterDist
	cmp.l  #Fuzzl_EyeWatchDistanceStart*Fuzzl_EyeWatchDistanceStart, d0	; check inner distance
	bgt    @OutOfPlayerRange
	bra    @EndDistCheck
	@CheckOuterDist:
	cmp.l  #Fuzzl_EyeWatchDistanceStop*Fuzzl_EyeWatchDistanceStop, d0	; else check outer distance
	bgt    @OutOfPlayerRange
	@EndDistCheck:

	; Check if already watching player
	btst.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)
	bne    @Watching

	; Player within range and Fuzzl in initial state, watch player
	bset.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	; Do a little startled bounce
	MOVE_NTSC_L Fuzzl_BounceVelStartled, PhysicsObj_VelY(a0), d0
	
	; Play alert SFX
	PLAYSFX #SFX_FuzzlAlert

	; Affected by wind
	move.b  #0x1, PhysicsObj_AffectedByWind(a0)

	bra @InitialState
	
	@Watching:
	
	; Check if being pushed
	tst.l  PhysicsObj_VelX(a0)
	beq    @InitialState

	@BeginRollingState:
	
	; Set rolling state
	bclr.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)

	; Update if out of view
	move.b #0x1, AnimObj_UpdateOutOfView(a0)

	; If not already registered as potential flue occupant, do it now
	tst.b  Fuzzl_FlueOccupant(a0)
	bne    @Registered
	jsr    FlueAddPotentialOccupant
	move.b #0x1, Fuzzl_FlueOccupant(a0)
	@Registered:

	@MovedFromInitialPos:

	; Stop watching player
	bclr.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	; Roll anim speed based on velocity
	moveq #0x0, d0
	move.l PhysicsObj_VelX(a0), d0
	beq    @ZeroVel
	divs.w #Fuzzl_AnimSpeedVelocityDiv, d0
	@ZeroVel:
	lea    Fuzzl_Animations+(Animation_Struct_Size*FuzzlAnimIdx_Roll)(a0), a2
	move.w d0, Animation_Speed(a2)

	; Check if entering a nest
	jsr    FuzzlFindNest
	tst.b  d0
	bne    @InNest

	; Check if entering a generator
	jsr    FuzzlFindGenerator
	tst.b  d0
	bne    @InGenerator
	
	; Not home
	bra @NotHome

	@Home:
	
	; Happy Fuzzls bounce
	jsr FuzzlUpdateBounce
	bra @Bouncing

	@OutOfPlayerRange:

	; Player out of range, Fuzzl not watching player
	bclr.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	@NotHome:
	
	; If being flung, check if on floor
	btst  #Fuzzl_State_Fling, Fuzzl_State_bits(a0)
	beq   @NotBeingFlung
	
	tst.b PhysicsObj_OnFloor(a0)
	beq   @InAir
	
	; On floor, finished flinging
	bclr.b #Fuzzl_State_Fling, Fuzzl_State_bits(a0)
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	@Asleep:
	@NotBeingFlung:
	@InitialState:
	@InNest:
	@InGenerator:
	@Bouncing:
	@InAir:
	
	; Update animation
	jsr FuzzlUpdateAnimation

	; If in cage, don't do physics update or check for pushing
	; TODO: Out of state bits
	;btst.b #Fuzzl_State_Caged, Fuzzl_State_bits(a0)
	;bne    @InCage
	tst.b  Fuzzl_InCage(a0)
	bne    @InCage

	; Can only push if awake and not in nest/generator
	move.b #0x1, d0
	move.b Fuzzl_State_Bits(a0), d1
	andi.b #(1<<Fuzzl_State_Home)|(1<<Fuzzl_State_Generator)|(1<<Fuzzl_State_Asleep), d1
	beq    @CanPush
	move.b #0x0, d0
	@CanPush:
	move.b d0, PhysicsObj_CanBePushed(a0)
	
	; Store current floor flag and Y velocity to check landing
	move.b PhysicsObj_OnFloor(a0), d0
	move.l PhysicsObj_VelY(a0), d1
	PUSHL  d0
	PUSHL  d1

	; Base functionality
	jsr PhysicsObjUpdate
	
	; Retrieve floor flag and Y velocity
	POPL   d1
	POPL   d0
	
	; Check if on floor
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @SFXInAir
	
	; Check if previously on floor
	tst.b  d0
	bne    @SFXPrevOnFloor
	
	; If hit floor at landing velocity
	cmp.l  #-Fuzzl_HitGroundSFXVel, d1
	bge    @SFXLowVel
	
	; Play land SFX
	PLAYSFX #SFX_FuzzlDrop
	
	@SFXEnd:
	@SFXInAir:
	@SFXPrevOnFloor:
	@SFXLowVel:
	
	@OutOfView:
	bra    @End

	@InCage:

	; In cage, only do anim update
	jsr    AnimObjUpdate

	@Inactive:
	@End:

	rts
	
FuzzlSerialise:
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
	SAVEB Fuzzl_State_Bits(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	LOADB Fuzzl_State_Bits(a0)
	
	;==============================================================
	
	@End:
	
	rts

FuzzlFindNest:

	; Return val
	move.b  #0x0, d7

	; Cannot be red
	cmp.b  #ColourRed, Fuzzl_Colour(a0)
	beq    @Red

	; Check all nests
	move.l (EntityPoolStart_Nest), a3
	move.w (EntityCount_Nest), d6
	beq    @NoNests
	subq.w  #0x1, d6
	@NestLoop:
	
	; Check if nest is occupied
	move.b Nest_Occupied(a3), d0
	cmp.b  #0x1, d0
	beq    @NestOccupied
	
	; Check if touching a nest
	PUSHL a1
	PUSHL d6
	move.l a3, a1
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr   PHYS_TestBoxIntersectBox
	POPL  d6
	POPL  a1
	
	; Result in d0
	tst.b d0
	beq   @NestNotInRange
	
	; Touching nest, snap to into position
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	
	; Zero X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	
	; Fuzzl is home
	bset.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)

	; No longer being rolled
	bclr.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	; Can no longer be pushed/pulled
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.b #0x0, PhysicsObj_CanBePulled(a0)

	; No longer affected by wind
	move.b #0x0, PhysicsObj_AffectedByWind(a0)

	; Zero velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	
	; Nest is occupied
	move.b #0x1, Nest_Occupied(a3)
	
	; Don't update when out of view
	move.b  #0x0, AnimObj_UpdateOutOfView(a0)
	
	; Play enter nest SFX
	PLAYSFX #SFX_FuzzlInNest
	
	; Found nest, finish
	move.b  #0x1, d7
	bra @End

	@NestNotInRange:
	@NestOccupied:
	
	; Next nest
	lea  Nest_Struct_Size(a3), a3
	dbra d6, @NestLoop

	@NoNests:
	@End:

	@Red:

	move.b d7, d0

	rts

FuzzlFindGenerator:

	; Return val
	move.b  #0x0, d7

	; Must be red
	cmp.b  #ColourRed, Fuzzl_Colour(a0)
	bne    @NotRed

	; Check all generators
	move.l (EntityPoolStart_Generator), a3
	move.w (EntityCount_Generator), d6
	beq    @NoGenerators
	subq.w  #0x1, d6
	@GeneratorLoop:
	
	; Check if generator is occupied
	cmp.l  #0x0, Generator_Fuzzl(a3)
	bne    @NextGenerator
	
	; Check if touching a generator
	PUSHL a1
	PUSHL d6
	move.l a3, a1
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	jsr   PHYS_TestBoxIntersectBox
	POPL  d6
	POPL  a1
	
	; Result in d0
	tst.b d0
	beq   @NextGenerator
	
	; Touching generator, snap to into position
	move.l Entity_WorldPosX(a3), d0
	move.l Entity_WorldPosY(a3), d1
	addi.l #((Generator_Width/2)-(Fuzzl_Width/2))*subpixels_per_pixel, d0
	addi.l #((Generator_Height/2)-(Fuzzl_Height/2))*subpixels_per_pixel, d1
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	; De-physicalise
	move.b #0x0, PhysicsObj_HasPhysics(a0)
	
	; Zero X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	
	; Set in generator state
	bset.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a0)

	; No longer being rolled
	bclr.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	; Can no longer be pushed/pulled
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.b #0x0, PhysicsObj_CanBePulled(a0)

	; No longer affected by wind
	move.b #0x0, PhysicsObj_AffectedByWind(a0)

	; Zero velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	
	; Activate generator
	PUSHM  a0-a3
	move.l a0, a2	; Fuzzl to a2
	move.l a3, a0	; Generator to a0
	jsr    Generator_Activate
	POPM   a0-a3
	
	; Don't update when out of view
	move.b  #0x0, AnimObj_UpdateOutOfView(a0)
	
	; Found generator, finish
	move.b  #0x1, d7
	bra @End

	@NextGenerator:
	
	; Next generator
	lea  Generator_Struct_Size(a3), a3
	dbra d6, @GeneratorLoop

	@End:
	@NoGenerators:

	@NotRed:
	
	move.b d7, d0

	rts

FuzzlRemoveFromGenerator:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Physicalise
	move.b #0x1, PhysicsObj_HasPhysics(a0)
	
	; Zero X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	
	; Clear in generator state
	bclr.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a0)

	; Set being rolled
	bset.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	; Can be pushed/pulled
	move.b #0x1, PhysicsObj_CanBePushed(a0)
	move.b #0x1, PhysicsObj_CanBePulled(a0)

	; Affected by wind
	move.b #0x1, PhysicsObj_AffectedByWind(a0)

	; Reset roll anim
	lea    Fuzzl_Animations+(Animation_Struct_Size*FuzzlAnimIdx_Roll)(a0), a2
	move.w #0x0, Animation_Speed(a2)

	rts
	
FuzzlUpdateBounce:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if Fuzzl is home
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)
	beq    @NotHome
	
	; Check if Fuzzl still has a colour to give
	move.b Fuzzl_Colour(a0), d0
	cmp.b  #ColourDrained, d0
	beq    @NoColour
	
	; Check if Fuzzl's colour matches player
	lea    Player1, a2
	move.b Player_Colour(a2), d1
	cmp.b  d0, d1
	beq    @NoColourMatch

	; Bouncing
	bset.b #Fuzzl_State_Bouncing, Fuzzl_State_Bits(a0)
	
	; Increment bounce time
	addq.b #0x1, Fuzzl_BounceTimer(a0)
	
	; Check if bounce timer has elapsed
	move.b Fuzzl_BounceTimer(a0), d0
	cmp.b  #Fuzzl_BounceDelay, d0
	bne    @NoBounceThisFrame
	
	; Bounce!
	MOVE_NTSC_L Fuzzl_BounceVelHappy, PhysicsObj_VelY(a0), d0
	
	; Play jump SFX
	PLAYSFX #SFX_FuzzlJump
	
	; Restart timer
	move.b #0x0, Fuzzl_BounceTimer(a0)
	
	@NoBounceThisFrame:
	
	; Set anim speed if off ground
	lea    Fuzzl_Animations+(Animation_Struct_Size*FuzzlAnimIdx_Bounce)(a0), a2

	move.b PhysicsObj_OnFloor(a0), d0
	cmp.b  #0x1, d0
	beq    @OnFloor
	move.w #Fuzzl_AnimSpeedBounce, Animation_Speed(a2)
	bra    @End
	@OnFloor:
	move.w #0x0, Animation_Speed(a2)
	bra    @End

	@NoColour:
	@NoColourMatch:
	
	; Home and no colour/no matching colour, not bouncing
	bclr.b #Fuzzl_State_Bouncing, Fuzzl_State_Bits(a0)
	
	@NotHome:
	@End:
	
	rts
	
FuzzlUpdateEyes:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l Player1, a2
	
	; Get Fuzzl centre
	ENTITY_GETCENTREVEC2 d1, d2, a0
	
	; Get player centre
	ENTITY_GETCENTREVEC2 d0, d2, a2

	; Translate player to Fuzzl space
	VEC2_SUB d1, d0

	; Backup for divs
	move.l d0, d4

	; Get place in 9x9 grid around Fuzzl
	
	and.l  #0x0000FFFF, d0	; Get Y
	ext.l  d0				; Sign extend
	divs.w #Fuzzl_EyeWatchQuadSize, d0	; Y to grid size
	and.l  #0x0000FFFF, d0				; Discard remainder
	ext.l  d0			; Sign extend
	move.l #-1, d1		; -1, 0 or 1
	move.l #1, d2
	CLAMP  d0, d1, d2
	addi.l #0x1, d0		; 0, 1 or 2
	mulu   #0x3, d0		; Y offset into table
	move.l d0, d3

	move.l d4, d0		; Get X
	clr.w  d0
	swap   d0
	ext.l  d0			; Sign extend
	divs.w #Fuzzl_EyeWatchQuadSize, d0	; X to grid size
	and.l  #0x0000FFFF, d0				; Discard remainder
	ext.l  d0			; Sign extend
	move.l #-1, d1		; -1, 0 or 1
	move.l #1, d2
	CLAMP  d0, d1, d2
	addi.l #0x1, d0		; 0, 1 or 2

	add.l  d3, d0		; Add X offset into table
	andi.l #0x0000FFFF, d0
	lsl.l  #0x2, d0		; To longwords

	; Get anim frame
	lea    Fuzzl_Eye_Frame_Table, a2
	add.l  d0, a2

	; Set anim frame
	move.l (a2), AnimObj_AnimSubFrame(a0)

	; Mark as dirty
	move.b #0x1, AnimObj_Dirty(a0)
	
	rts

FuzzlUpdateAnimation:
	; a0-- - GameObj addr
	; a1-- - Level addr

	btst.b #Fuzzl_State_Asleep, Fuzzl_State_Bits(a0)	; If asleep, set sleeping anim
	bne    @AnimSleep
	
	btst.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)	; If being rolled, set rolling anim
	bne    @AnimRoll

	btst.b #Fuzzl_State_Generator, Fuzzl_State_Bits(a0)	; If in a generator, set rolling anim
	bne    @AnimRoll

	btst.b #Fuzzl_State_Bouncing, Fuzzl_State_Bits(a0)	; If bouncing, set bounce anim
	bne    @AnimBounce
	
	btst.b #Fuzzl_State_Fling, Fuzzl_State_Bits(a0)		; If being flung, set roll anim
	bne    @AnimFling
	
	btst.b #Fuzzl_State_Watching, Fuzzl_State_Bits(a0)	; If watching player, handle eye behaviour
	bne    @AnimWatch

	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)		; If home (and not bouncing), set idle anim (or go to sleep)
	move.b (TimeOfDay), d0
	cmp.b  #TimeOfDay_Night, d0
	bne    @AnimIdle	; Day time, Fuzzl is awake
	bra    @EndTODCheck1
	bne    @AnimSleep	; Night time, Fuzzl is asleep
	@EndTODCheck1:

	btst.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)	; If in initial state (and not watching player), set idle anim (or go to sleep)
	move.b (TimeOfDay), d0
	cmp.b  #TimeOfDay_Night, d0
	bne    @AnimIdle	; Day time, Fuzzl is awake
	bra    @EndTODCheck2
	bne    @AnimSleep	; Night time, Fuzzl is asleep
	@EndTODCheck2:

	@AnimSleep:
	move.l #FuzzlAnimIdx_Sleep, d0
	bra    @EndAnim

	@AnimIdle:
	move.l #FuzzlAnimIdx_Idle, d0
	bra    @EndAnim

	@AnimWatch:
	jsr    FuzzlUpdateEyes
	move.l #FuzzlAnimIdx_Watch, d0
	bra    @EndAnim

	@AnimRoll:
	move.l #FuzzlAnimIdx_Roll, d0
	bra    @EndAnim
	
	@AnimFling:
	move.l #FuzzlAnimIdx_Roll, d0
	lea    Fuzzl_Animations+(Animation_Struct_Size*FuzzlAnimIdx_Roll)(a0), a2
	move.w #Fuzzl_FlingRollSpeed, Animation_Speed(a2)
	bra    @EndAnim

	@AnimBounce:
	move.l #FuzzlAnimIdx_Bounce, d0
	bra    @EndAnim
	
	@EndAnim:
	
	; Set anim
	PUSHL  a1
	lea    Fuzzl_Animations(a0), a1
	mulu   #Animation_Struct_Size, d0
	add.l  d0, a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@NoChange:
	
	rts

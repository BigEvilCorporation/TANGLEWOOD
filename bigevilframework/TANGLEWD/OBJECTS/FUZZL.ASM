;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   fuzzl.asm - Fuzzl creature
;==============================================================

; Constants
Fuzzl_MaxEntities			equ 0x3
Fuzzl_Width					equ 0x10
Fuzzl_Height				equ 0x10
Fuzzl_MaxVelYUp				equ 0x0600
Fuzzl_MaxVelYDown			equ 0x0600
Fuzzl_StepHeight			equ 0x3
Fuzzl_ProbeFloorX			equ (Fuzzl_Width/2)  ; Floor detection probe position X
Fuzzl_ProbeFloorY   		equ (Fuzzl_Height-8) ; Floor detection probe position Y
Fuzzl_MaxVelX				equ 0x0100
Fuzzl_Decel					equ 0x02
Fuzzl_BounceDelay			equ 0x40
Fuzzl_BounceVelHappy		equ 0x0180
Fuzzl_BounceVelStartled		equ 0x0100
Fuzzl_AnimSpeedVelocityDiv	equ 0x0004
Fuzzl_AnimSpeedBounce       equ	0x40
Fuzzl_EyeWatchDistanceStart equ	0x0050	; Distance from player to start watching
Fuzzl_EyeWatchDistanceStop  equ	0x0080	; Distance from player to stop watching
Fuzzl_EyeWatchQuadSize      equ	0x0010	; Player vs. Fuzzl rotation check quadrant size (checks a 9x9 grid around the Fuzzl)
Fuzzl_FlingVelocity			equ 0x0004	; Upward velocity to determine if being flung (by a Flue or otherwise)
Fuzzl_FlingRollSpeed        equ 0x80
Fuzzl_HitGroundSFXVel		equ 0x0200	; Min downward velocity to play thud SFX

; State bits
Fuzzl_State_Initial  equ 0x00 ; Initial state (in initial position, not seen player)
Fuzzl_State_Asleep   equ 0x01 ; Initial state (night time, sleeping)
Fuzzl_State_Watching equ 0x02 ; Seen player, eyes following
Fuzzl_State_Rolling  equ 0x03 ; Being rolled by player
Fuzzl_State_Home     equ 0x04 ; In a nest
Fuzzl_State_Bouncing equ 0x05 ; Bouncing to alert player to take colour
Fuzzl_State_Fling	 equ 0x06 ; Being flung up in the air

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
;--------------------------
Fuzzl_Struct_Pad    rs.b 1  ; Alignment padding
Fuzzl_Struct_Size   rs.b 0

;==============================================================

FuzzlInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    PhysicsObjInit
	
	; Set type
	addi.l #entity_type_fuzzl, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Fuzzls
	
	; Set update and render routines
	move.l #FuzzlUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	; Default state
	move.b  #0x0, Fuzzl_State_Bits(a0)
	bset.b  #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Fuzzl_Width, Entity_Width(a0)
	move.w  #Fuzzl_Height, Entity_Height(a0)
	move.w  #Fuzzl_MaxVelX, PhysicsObj_MaxVelX(a0)
	move.w  #Fuzzl_Decel, PhysicsObj_DecelX(a0)
	move.w  #Fuzzl_StepHeight, PhysicsObj_StepHeight(a0)
	move.w  #Fuzzl_ProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #Fuzzl_ProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #Fuzzl_MaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.w  #Fuzzl_MaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.b  #ColourRed, Fuzzl_Colour(a0)
	
	; Setup animations
	move.l a0, a2
	add.l  #Fuzzl_Animations, a2
	
	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Idle), a3
	move.l #Anim_FuzzlIdle, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_FuzzlIdle_Speed, Animation_Speed(a3)
	move.b #Anim_FuzzlIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Watch
	move.l a2, a3
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Watch), a3
	move.l #Anim_FuzzlEyes, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_FuzzlEyes_Speed, Animation_Speed(a3)
	move.b #Anim_FuzzlEyes_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Roll
	move.l a2, a3
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Roll), a3
	move.l #Anim_FuzzlRoll, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_FuzzlRoll_Speed, Animation_Speed(a3)
	move.b #Anim_FuzzlRoll_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Bounce
	move.l a2, a3
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Bounce), a3
	move.l #Anim_FuzzlRoll, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_FuzzlRoll_Speed, Animation_Speed(a3)
	move.b #Anim_FuzzlRoll_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Sleep
	move.l a2, a3
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Sleep), a3
	move.l #Anim_FuzzlSleep, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_FuzzlSleep_Speed, Animation_Speed(a3)
	move.b #Anim_FuzzlSleep_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	rts
	
FuzzlUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Don't update if out of view
	cmp.b  #0x0, SpriteObj_SpriteLinked(a0)
	beq    @OutOfView
	
	; Fuzzls sleep at night
	move.b (TimeOfDay), d0
	cmp.b  #TimeOfDay_Night, d0
	beq    @Asleep
	
	; Check if Fuzzl is home
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)
	bne    @Home

	; Check if Fuzzl has moved from initial position
	btst.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	beq    @MovedFromInitialPos

	; Check if Fuzzl is far from player
	PUSHL  a1
	move.l #Player1, a1
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
	bne    @InitialState

	; Player within range and Fuzzl in initial state, watch player
	bset.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	; Do a little startled bounce
	move.w #Fuzzl_BounceVelStartled, PhysicsObj_VelY(a0)
	
	; Play alert SFX
	PLAYSFX_HIGHPRIO #SFX_FuzzlAlert

	bra @InitialState

	@MovedFromInitialPos:

	; Stop watching player
	bclr.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	; Roll anim speed based on velocity
	clr.l  d0
	move.w PhysicsObj_VelX(a0), d0
	divs.w #Fuzzl_AnimSpeedVelocityDiv, d0
	move.l a0, a2
	add.l  #Fuzzl_Animations, a2
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Roll), a2
	move.b d0, Animation_Speed(a2)

	; Check all nests
	move.l #EntityArray_Nests, a3
	move.l #Nest_MaxEntities-1, d6
	@NestLoop:
	
	; Check if nest is occupied
	move.b Nest_Occupied(a3), d0
	cmp.b  #0x1, d0
	beq    @NestOccupied
	
	; Check if touching a nest
	PUSHL a1
	PUSHL d6
	move.l a3, a1
	jsr PHYS_TestEntityBoxIntersectBox
	POPL  d6
	POPL  a1
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NestNotInRange
	
	; Touching nest, snap to into position
	move.l Entity_WorldPosX(a3), Entity_WorldPosX(a0)
	
	; Zero X velocity
	move.w #0x0, PhysicsObj_VelX(a0)
	
	; Fuzzl is home
	bset.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)

	; No longer being rolled
	bclr.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	; Nest is occupied
	move.b #0x1, Nest_Occupied(a3)
	
	; Play enter nest SFX
	PLAYSFX_HIGHPRIO #SFX_FuzzlInNest
	
	; Finish
	bra @End

	@NestNotInRange:
	@NestOccupied:
	
	; Next nest
	add.l #Nest_Struct_Size, a3
	dbra d6, @NestLoop
	
	; Not home
	bra @NotHome

	@Home:
	
	; Happy Fuzzls bounce
	jsr FuzzlUpdateBounce
	bra @End

	@OutOfPlayerRange:

	; Player out of range, Fuzzl not watching player
	bclr.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	@NotHome:
	
	; If being flung, check if on floor
	btst  #Fuzzl_State_Fling, Fuzzl_State_bits(a0)
	beq   @NotBeingFlung
	
	cmp.b #0x0, PhysicsObj_OnFloor(a0)
	beq   @End
	
	; On floor, finished flinging
	bclr  #Fuzzl_State_Fling, Fuzzl_State_bits(a0)
	
	@Asleep:
	@NotBeingFlung:
	@InitialState:
	@End:
	
	; Update animation
	jsr FuzzlUpdateAnimation
	
	; Store current floor flag and Y velocity to check landing
	move.b PhysicsObj_OnFloor(a0), d0
	move.w PhysicsObj_VelY(a0), d1
	PUSHL  d0
	PUSHL  d1

	; Base functionality
	jsr PhysicsObjUpdate
	
	; Retrieve floor flag and Y velocity
	POPL   d1
	POPL   d0
	
	; Check if on floor
	cmp.b  #0x0, PhysicsObj_OnFloor(a0)
	beq    @SFXInAir
	
	; Check if previously on floor
	cmp.b  #0x0, d0
	bne    @SFXPrevOnFloor
	
	; If hit floor at landing velocity
	cmp.w  #-Fuzzl_HitGroundSFXVel, d1
	bge    @SFXLowVel
	
	; Play land SFX
	PLAYSFX_LOWPRIO #SFX_FuzzlDrop
	
	@SFXEnd:
	@SFXInAir:
	@SFXPrevOnFloor:
	@SFXLowVel:
	
	@OutOfView:

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
	add.b  #0x1, Fuzzl_BounceTimer(a0)
	
	; Check if bounce timer has elapsed
	move.b Fuzzl_BounceTimer(a0), d0
	cmp.b  #Fuzzl_BounceDelay, d0
	bne    @NoBounceThisFrame
	
	; Bounce!
	move.w #Fuzzl_BounceVelHappy, PhysicsObj_VelY(a0)
	
	; Play jump SFX
	PLAYSFX_HIGHPRIO #SFX_FuzzlJump
	
	; Restart timer
	move.b #0x0, Fuzzl_BounceTimer(a0)
	
	@NoBounceThisFrame:
	
	; Set anim speed if off ground
	move.l a0, a2
	add.l  #Fuzzl_Animations, a2
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Bounce), a2

	move.b PhysicsObj_OnFloor(a0), d0
	cmp.b  #0x1, d0
	beq    @OnFloor
	move.b #Fuzzl_AnimSpeedBounce, Animation_Speed(a2)
	bra    @End
	@OnFloor:
	move.b #0x0, Animation_Speed(a2)
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

	lea Player1, a2
	
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
	jsr    Clamp
	add.l  #0x1, d0		; 0, 1 or 2
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
	jsr    Clamp
	add.l  #0x1, d0		; 0, 1 or 2

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
	jmp    @EndAnim

	@AnimIdle:
	move.l #FuzzlAnimIdx_Idle, d0
	jmp    @EndAnim

	@AnimWatch:
	jsr    FuzzlUpdateEyes
	move.l #FuzzlAnimIdx_Watch, d0
	jmp    @EndAnim

	@AnimRoll:
	move.l #FuzzlAnimIdx_Roll, d0
	jmp    @EndAnim
	
	@AnimFling:
	move.l #FuzzlAnimIdx_Roll, d0
	move.l a0, a2
	add.l  #Fuzzl_Animations, a2
	add.l  #(Animation_Struct_Size*FuzzlAnimIdx_Roll), a2
	move.b #Fuzzl_FlingRollSpeed, Animation_Speed(a2)
	jmp    @EndAnim

	@AnimBounce:
	move.l #FuzzlAnimIdx_Bounce, d0
	jmp    @EndAnim
	
	@EndAnim:
	
	; Set anim
	PUSHL  a1
	move.l a0, a1
	add.l  #Fuzzl_Animations, a1
	mulu   #Animation_Struct_Size, d0
	add.l  d0, a1
	jsr    AnimObjSetAnimation
	POPL   a1
	
	@NoChange:
	
	rts

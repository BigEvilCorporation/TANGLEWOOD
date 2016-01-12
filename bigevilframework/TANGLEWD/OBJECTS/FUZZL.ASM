;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   fuzzl.asm - Fuzzl creature
;==============================================================

; Constants
Fuzzl_MaxEntities			equ 0x8
Fuzzl_Width					equ 0x10
Fuzzl_Height				equ 0x10
Fuzzl_MaxVelYUp				equ 0x0600
Fuzzl_MaxVelYDown			equ 0x0600
Fuzzl_StepHeight			equ 0x6
Fuzzl_ProbeFloorX			equ (Fuzzl_Width/2)  ; Floor detection probe position X
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

; State bits
Fuzzl_State_Initial  equ 0x00 ; Initial state (in initial position, not seen player)
Fuzzl_State_Asleep   equ 0x01 ; Initial state (night time, sleeping)
Fuzzl_State_Watching equ 0x02 ; Seen player, eyes following
Fuzzl_State_Rolling  equ 0x03 ; Being rolled by player
Fuzzl_State_Home     equ 0x04 ; In a nest
Fuzzl_State_Bouncing equ 0x05 ; Bouncing to alert player to take colour

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

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;--------------------------
Fuzzl_Colour	    rs.b 1	; Fuzzl colour type idx
Fuzzl_State_Bits    rs.b 1	; Fuzzl states
Fuzzl_BounceTimer   rs.b 1	; Bounce timer, for happy Fuzzls
;--------------------------
Fuzzl_Struct_Pad   rs.b 1   ; Alignment padding
Fuzzl_Struct_Size  rs.b 0

;==============================================================

FuzzlInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set update and render routines
	move.l #FuzzlUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	; Default state
	move.b  #0x0, Fuzzl_State_Bits(a0)
	bset.b  #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	move.b  #0x1, GameObj_Active(a0)
	move.b  #0x1, GameObj_Visible(a0)
	move.w  #Fuzzl_Width, Entity_Width(a0)
	move.w  #Fuzzl_Height, Entity_Height(a0)
	move.w  #Fuzzl_MaxVelX, GameObj_MaxVelX(a0)
	move.w  #Fuzzl_Decel, GameObj_DecelX(a0)
	move.w  #Fuzzl_StepHeight, GameObj_StepHeight(a0)
	move.w  #Fuzzl_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Fuzzl_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Fuzzl_MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.b  #ColourYellow, Fuzzl_Colour(a0)

	rts
	
FuzzlUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l a1, -(sp)
	
	; Check if Fuzzl is home
	btst.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)
	bne    @Home

	; Check if Fuzzl has moved from initial position
	btst.b #Fuzzl_State_Initial, Fuzzl_State_Bits(a0)
	beq    @MovedFromInitialPos

	; Check if Fuzzl is far from player
	move.l Entity_WorldPosX(a0), d2	; Fuzzl X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	swap d0
	move.l Entity_WorldPosY(a0), d2	; Fuzzl Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	
	lea Player1, a2
	move.l Entity_WorldPosX(a2), d2	; Player X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	swap d1
	move.l Entity_WorldPosY(a2), d2	; Player Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	
	jsr VectorDistSq					; Calc distance (result sq'd in d0)
	
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
	move.w #Fuzzl_BounceVelStartled, GameObj_VelY(a0)

	bra @InitialState

	@MovedFromInitialPos:

	; Stop watching player
	bclr.b #Fuzzl_State_Watching, Fuzzl_State_bits(a0)

	; Roll anim speed based on velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0
	divs.w #Fuzzl_AnimSpeedVelocityDiv, d0
	move.b d0, AnimObj_AnimSpeed(a0)

	; Check all nests
	move.l #EntityArray_Nests, a1
	move.l #Nest_MaxEntities-1, d6
	@NestLoop:
	
	; Check if nest is occupied
	move.b Nest_Occupied(a1), d0
	cmp.b  #0x1, d0
	beq    @NestOccupied
	
	; Check if touching a nest
	move.l d6, -(sp)
	jsr TestGameObjBoxIntersectBox
	move.l (sp)+, d6
	
	; Result in d0
	cmp.b #0x0, d0
	beq   @NestNotInRange
	
	; Touching nest, snap to into position
	move.l Entity_WorldPosX(a1), Entity_WorldPosX(a0)
	
	; Zero X velocity
	move.w #0x0, GameObj_VelX(a0)
	
	; Fuzzl is home
	bset.b #Fuzzl_State_Home, Fuzzl_State_Bits(a0)

	; No longer being rolled
	bclr.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)
	
	; Nest is occupied
	move.b #0x1, Nest_Occupied(a1)
	
	; Finish
	bra @End

	@NestNotInRange:
	@NestOccupied:
	
	; Next nest
	add.l #Nest_Struct_Size, a1
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
	@InitialState:
	@End:
	
	; Update animation
	jsr FuzzlUpdateAnimation
	
	move.l (sp)+, a1

	; Base functionality
	jsr AnimObjUpdate

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
	move.w #Fuzzl_BounceVelHappy, GameObj_VelY(a0)
	
	; Restart timer
	move.b #0x0, Fuzzl_BounceTimer(a0)
	
	@NoBounceThisFrame:
	
	; Set anim speed if off ground
	move.b GameObj_OnFloor(a0), d0
	cmp.b  #0x1, d0
	beq    @OnFloor
	move.b #Fuzzl_AnimSpeedBounce, AnimObj_AnimSpeed(a0)
	bra    @End
	@OnFloor:
	move.b #0x0, AnimObj_AnimSpeed(a0)
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

	; Translate player to Fuzzl space
	lea Player1, a2
	move.l Entity_WorldPosX(a2), d2	; Player X
	lsr.l  #0x8, d2						; Screen space
	add.l  #(Player1Width/2), d2		; Centre
	move.w d2, d0
	swap d0
	move.l Entity_WorldPosY(a2), d2	; Player Y
	lsr.l  #0x8, d2						; Screen space
	add.l  #(Player1Height/2), d2		; Centre
	move.w d2, d0

	move.l Entity_WorldPosX(a0), d2	; Fuzzl X
	lsr.l  #0x8, d2						; Screen space
	add.l  #(Fuzzl_Width/2), d2			; Centre
	move.w d2, d1
	swap d1
	move.l Entity_WorldPosY(a0), d2	; Fuzzl Y
	lsr.l  #0x8, d2						; Screen space
	add.l  #(Fuzzl_Height/2), d2			; Centre
	move.w d2, d1

	jsr VectorSub

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
	
	; Get original anim
	move.l AnimObj_KeyframesAddr(a0), a2

	btst.b #Fuzzl_State_Asleep, Fuzzl_State_Bits(a0)	; If asleep, set sleeping anim
	bne    @AnimSleep

	btst.b #Fuzzl_State_Watching, Fuzzl_State_Bits(a0)	; If watching player, handle eye behaviour
	bne    @AnimWatch

	btst.b #Fuzzl_State_Rolling, Fuzzl_State_Bits(a0)	; If being rolled, set rolling anim
	bne    @AnimRoll

	btst.b #Fuzzl_State_Bouncing, Fuzzl_State_Bits(a0)	; If bouncing, set bounce anim
	bne    @AnimBounce

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

	move.l #Anim_FuzzlSleep, AnimObj_KeyframesAddr(a0)
	move.b #Anim_FuzzlSleep_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_FuzzlSleep_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)
	jmp    @EndAnim

	@AnimIdle:

	move.l #Anim_FuzzlIdle, AnimObj_KeyframesAddr(a0)
	move.b #Anim_FuzzlIdle_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_FuzzlIdle_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)
	jmp    @EndAnim

	@AnimWatch:

	move.l #Anim_FuzzlEyes, AnimObj_KeyframesAddr(a0)
	move.b #Anim_FuzzlEyes_Speed, AnimObj_AnimSpeed(a0)
	move.b #Anim_FuzzlEyes_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)
	jsr    FuzzlUpdateEyes
	jmp    @EndAnim

	@AnimRoll:

	move.l #Anim_FuzzlRoll, AnimObj_KeyframesAddr(a0)
	; Anim speed handled in FuzzlUpdate
	move.b #Anim_FuzzlRoll_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)
	jmp    @EndAnim

	@AnimBounce:

	move.l #Anim_FuzzlBounce, AnimObj_KeyframesAddr(a0)
	; Anim speed handled in FuzzlUpdateBounce
	move.b #Anim_FuzzlBounce_SizeB, AnimObj_AnimLength(a0)
	move.b #0x1, AnimObj_Playing(a0)
	move.b #0x1, AnimObj_Looping(a0)
	jmp    @EndAnim
	
	@EndAnim:
	
	; If anim changed, mark as dirty
	move.l AnimObj_KeyframesAddr(a0), a3
	cmp.l  a2, a3
	beq    @NoChange
	move.b #0x1, AnimObj_Dirty(a0)
	@NoChange:
	
	rts

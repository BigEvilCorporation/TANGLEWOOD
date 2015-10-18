;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   monster.asm - Monster specific movement and mechanics
;==============================================================

; ************************************
; Constants
; ************************************
Monster_MaxGameObjs equ 0x1

Monster_Width	equ 0x0080
Monster_Height	equ 0x0050

Monster_MaxVelXWalk equ 0x0100   ; Max X walking velocity
Monster_MaxVelXRun  equ 0x0300   ; Max X running velocity
Monster_MaxVelYUp	equ 0x0600   ; Max Y velocity up
Monster_MaxVelYDown	equ 0x0600   ; Max Y velocity down
Monster_AccelWalk   equ 0x0002   ; Walking acceleration
Monster_AccelRun    equ 0x0003   ; Running acceleration
Monster_DecelIdle   equ 0x0020   ; Deceleration if left alone
Monster_DecelForced equ 0x0040   ; Deceleration if input opposite direction
Monster_JumpVel	    equ 0x0600   ; Jump velocity impulse
Monster_JumpCancelVel equ 0x0100 ; Velocity to cancel jump
Monster_MaxGrabUpVel  equ 0x0300 ; Max up velocity character can grab a ledge (no limit on down vel)

Monster_StepHeight		equ 0x3
Monster_ProbeFloorX		equ (Monster_Width/2)  ; Floor detection probe position X
Monster_ProbeFloorY		equ (Monster_Height-Monster_StepHeight)   ; Floor detection probe position Y
Monster_ProbeFloorLen	equ Monster_StepHeight*2  ; Floor probe length (multiplied by Y velocity)
Monster_ProbeLedgeX		equ 0x1F	; Ledge detection probe position X
Monster_ProbeLedgeY		equ 0x02	; Ledge detection probe position Y

Monster_PlayerTrackYWindow	equ Monster_Height
;Monster_AlertDistance		equ (0x0050*SubPixelsPerPixel)
Monster_AlertDistance		equ 0x0080
Monster_AlertDistanceSq		equ (Monster_AlertDistance*Monster_AlertDistance)
Monster_SwipeDistance		equ (0x10*SubPixelsPerPixel)

; ************************************
; States
; ************************************
MonsterState_InCave		equ 0x1
MonsterState_Emerging	equ 0x2
MonsterState_Roaring	equ 0x3
MonsterState_Chasing	equ 0x4
MonsterState_Attacking	equ 0x5
MonsterState_Wandering	equ 0x6

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;--------------------------
Monster_Colour        rs.b 1
Monster_State         rs.b 1
;--------------------------
Monster_Struct_Pad    rs.b 2
Monster_Struct_Size   rs.b 0

; ************************************
; Subroutines
; ************************************
MonsterInit:
	; Base functionality
	jsr CharacterInit

	; Default properties
	move.w  #Monster_Width, GameObj_Width(a0)
	move.w  #Monster_Height, GameObj_Height(a0)
	move.w  #Monster_MaxVelXRun, GameObj_MaxVelX(a0)
	move.w  #Monster_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Monster_MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.w  #Monster_DecelIdle, GameObj_DecelX(a0)
	move.w  #Monster_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Monster_ProbeFloorY, GameObj_FloorProbeY(a0)
	move.w  #Monster_ProbeFloorLen, GameObj_FloorProbeLen(a0)

	move.w  #Monster_StepHeight, Character_StepHeight(a0)
	move.w  #Monster_MaxVelXWalk, Character_MaxVelXWalk(a0)
	move.w  #Monster_MaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #Monster_AccelWalk, Character_AccelWalk(a0)
	move.w  #Monster_AccelRun, Character_AccelRun(a0)
	move.w  #Monster_DecelIdle, Character_DecelIdle(a0)
	move.w  #Monster_DecelForced, Character_DecelForced(a0)
	move.w  #Monster_JumpVel, Character_JumpVel(a0)
	move.w  #Monster_JumpCancelVel, Character_JumpCancelVel(a0)
	move.w  #Monster_MaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #Monster_ProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #Monster_ProbeLedgeY, Character_ProbeLedgeY(a0)

	; Default state
	move.b  #0x1, GameObj_Active(a0)
	move.b  #0x1, GameObj_Visible(a0)
	move.b  #ColourRed, Monster_Colour(a0)
	move.b  #MonsterState_InCave, Monster_State(a0)

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Idle), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Run), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Walk), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Jump), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Hang
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Hang), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	; Push
	move.l a2, a3
	add.l  #(CharacterAnim_Struct_Size*CharacterAnimIdx_Push), a3
	move.l #Anim_MonsterIdle, CharacterAnim_Addr(a3)
	move.b #Anim_MonsterIdle_Speed, CharacterAnim_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, CharacterAnim_Length(a3)
	move.b #0x1, CharacterAnim_Looping(a3)

	rts

MonsterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Determine state
	move.b Monster_State(a0), d0

	cmp.b #MonsterState_InCave, d0
	beq   @InCave
	cmp.b #MonsterState_Chasing, d0
	beq   @Chasing

	; ************************************
	; In cave
	; ************************************
	@InCave:

	; Wait for player
	jsr MonsterWaitForPlayer
	bra @EndStateMachine

	; ************************************
	; Tracking player
	; ************************************
	@Chasing:

	; Track player
	jsr MonsterTrackPlayer
	bra @EndStateMachine

	@EndStateMachine:
	
	; Base functionality
	jsr CharacterUpdate

	; TEMP: Disable animation, too large to fit into a VINT!
	move.b #0x0, AnimObj_Playing(a0)
	
	rts

MonsterDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterDraw
	
	rts

MonsterWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get distance to player
	;move.l a1, -(sp)
	move.l #Player1, a2
	;jsr    GameObjectDistSq

	move.l GameObj_WorldPosX(a0), d2	; Fuzzl X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	swap d0
	move.l GameObj_WorldPosY(a0), d2	; Fuzzl Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	
	lea Player1, a2
	move.l GameObj_WorldPosX(a2), d2	; Player X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	swap d1
	move.l GameObj_WorldPosY(a2), d2	; Player Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	
	jsr VectorDistSq					; Calc distance
	;cmp.l #Fuzzl_EyeWatchDistance*Fuzzl_EyeWatchDistance, d0	; Result sq'd in d0
	;bgt   @OutOfPlayerRange

	;move.l (sp)+, a1

	cmp.l #Monster_AlertDistanceSq, d0
	bgt   @OutOfPlayerRange

	; Within range, emerge from cave
	; TODO: Emerge state
	move.b #MonsterState_Chasing, Monster_State(a0)

	@OutOfPlayerRange:

	rts

MonsterTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l #Player1, a2

	; Check if within Y tolerance of player

	; Get left positions
	move.l GameObj_WorldPosX(a0), d0	; Left of monster
	move.l GameObj_WorldPosX(a2), d1	; Left of player

	; Get widths
	clr.l  d4
	clr.l  d5
	move.w GameObj_Width(a0), d4
	move.w GameObj_Width(a2), d5
	mulu   #SubPixelsPerPixel, d4
	mulu   #SubPixelsPerPixel, d5

	; Get right positions
	move.l d0, d2
	move.l d1, d3
	add.l  d4, d2						; Right of monster
	add.l  d5, d3						; Right of player

	; Expand player bounds by swipe distance
	sub.l  #Monster_SwipeDistance, d1	; Left of player - swipe distance
	add.l  #Monster_SwipeDistance, d3	; Right of player + swipe distance
	
	cmp.l  d2, d1		; Right of monster vs. left of player (- swipe distance)
	bgt    @LeftOfPlayer

	cmp.l  d0, d3		; Left of monster vs. right of player (+ swipe distance)
	blt    @RightOfPlayer

	; Within swipe distance, set attacking state
	move.b #0x0, Character_Running(a0)
	jsr CharacterCancelXMovement
	;move.b MonsterState_Attacking, Monster_State(a0)
	bra @End

	@LeftOfPlayer:

	; Run towards player
	move.b #0x1, Character_Running(a0)
	jsr CharacterMoveRight
	bra @End

	@RightOfPlayer:

	; Run towards player
	move.b #0x1, Character_Running(a0)
	jsr CharacterMoveLeft
	bra @End

	@LostPlayer:

	; Lost player, back to search state
	move.b #0x0, Character_Running(a0)
	jsr CharacterCancelXMovement
	move.b MonsterState_Wandering, Monster_State(a0)

	@End:

	rts

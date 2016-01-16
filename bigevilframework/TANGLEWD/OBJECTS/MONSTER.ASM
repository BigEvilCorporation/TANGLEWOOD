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
Monster_MaxEntities   equ 0x1

Monster_Width	      equ 0x0080
Monster_Height	      equ 0x0050

Monster_MaxVelXWalk   equ 0x0100   ; Max X walking velocity
Monster_MaxVelXRun    equ 0x0300   ; Max X running velocity
Monster_MaxVelYUp	  equ 0x0600   ; Max Y velocity up
Monster_MaxVelYDown	  equ 0x0600   ; Max Y velocity down
Monster_AccelWalk     equ 0x0002   ; Walking acceleration
Monster_AccelRun      equ 0x0003   ; Running acceleration
Monster_DecelIdle     equ 0x0020   ; Deceleration if left alone
Monster_DecelForced   equ 0x0040   ; Deceleration if input opposite direction
Monster_JumpVel	      equ 0x0600   ; Jump velocity impulse
Monster_JumpCancelVel equ 0x0100   ; Velocity to cancel jump
Monster_MaxGrabUpVel  equ 0x0300   ; Max up velocity character can grab a ledge (no limit on down vel)

Monster_StepHeight	  equ 0x4
Monster_ProbeFloorX	  equ (Monster_Width/2)  ; Floor detection probe position X
Monster_ProbeLedgeX	  equ 0x1F	   ; Ledge detection probe position X
Monster_ProbeLedgeY	  equ 0x02	   ; Ledge detection probe position Y

Monster_PlayerTrackYWindow	equ Monster_Height
;Monster_AlertDistance		equ (0x0050*SubPixelsPerPixel)
Monster_AlertDistance		equ 0x0030
Monster_AlertDistanceSq		equ (Monster_AlertDistance*Monster_AlertDistance)
Monster_AttackDistance		equ (0x10*SubPixelsPerPixel)
Monster_AttackMaxPlayerVel	equ 0x0900	; Don't attack if player is being flung using a flue/bounce pad, etc

; Emerge palette lerp speed
Monster_EmergePalLerpSpeed  equ (0x1<<0x8)

; Attack damages
Monster_BiteDamage		equ 0xFF
Monster_SwipeDamage		equ 0xFF

; Event keyframes
Monster_AnimFrame_Bite	equ 0x2

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
; Animations
; ************************************
MonsterAnimIdx_Eyes		equ 0
MonsterAnimIdx_Bite		equ 1
; -------------------------------
Monster_NumAnims		equ 2

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;--------------------------
Monster_Animations	  rs.b (Animation_Struct_Size*Monster_NumAnims)
Monster_Colour        rs.b 1
Monster_State         rs.b 1
;--------------------------
Monster_Struct_Pad    rs.b 2
Monster_Struct_Size   rs.b 0

; ************************************
; Subroutines
; ************************************
MonsterInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Set update and render routines
	move.l #MonsterUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	; Default properties
	move.w  #Monster_Width, Entity_Width(a0)
	move.w  #Monster_Height, Entity_Height(a0)
	move.w  #Monster_MaxVelXRun, GameObj_MaxVelX(a0)
	move.w  #Monster_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Monster_MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.w  #Monster_DecelIdle, GameObj_DecelX(a0)
	move.w  #Monster_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Monster_StepHeight, GameObj_StepHeight(a0)
	
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

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.l #Anim_MonsterIdle, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterIdle_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Dead
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Dead), a3
	move.l #Anim_MonsterDead, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterDead_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterDead_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.l #Anim_MonsterRun, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterRun_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterRun_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.l #Anim_MonsterWalk, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterWalk_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterWalk_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Jump
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Jump), a3
	move.l #Anim_MonsterIdle, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterIdle_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Hang
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Hang), a3
	move.l #Anim_MonsterIdle, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterIdle_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Push
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Push), a3
	move.l #Anim_MonsterIdle, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterIdle_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterIdle_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Setup bespoke character animations
	move.l a0, a2
	add.l  #Monster_Animations, a2
	
	; In cave
	move.l a2, a3
	add.l  #(Animation_Struct_Size*MonsterAnimIdx_Eyes), a3
	move.l #Anim_MonsterEyes, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterEyes_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterEyes_SizeB, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Bite
	move.l a2, a3
	add.l  #(Animation_Struct_Size*MonsterAnimIdx_Bite), a3
	move.l #Anim_MonsterBite, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #Anim_MonsterBite_Speed, Animation_Speed(a3)
	move.b #Anim_MonsterBite_SizeB, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Begin initial state
	jsr    MonsterStartWaitForPlayer

	rts

MonsterUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If dead, do nothing
	cmp.b  #0x0, Character_Dead(a0)
	bne    @Dead

	; Determine state
	move.b Monster_State(a0), d0

	cmp.b #MonsterState_InCave, d0
	beq   @InCave
	cmp.b #MonsterState_Emerging, d0
	beq   @Emerging
	cmp.b #MonsterState_Chasing, d0
	beq   @Chasing
	cmp.b #MonsterState_Attacking, d0
	beq   @Attacking

	; ************************************
	; In cave
	; ************************************
	@InCave:

	; Wait for player
	jsr MonsterUpdateWaitForPlayer
	bra @EndStateMachine
	
	; ************************************
	; Emerging from cave
	; ************************************
	@Emerging:

	; Update palette lerp
	jsr MonsterUpdateEmergeFromCave
	bra @EndStateMachine

	; ************************************
	; Tracking player
	; ************************************
	@Chasing:

	; Track player
	jsr MonsterUpdateTrackPlayer
	bra @EndStateMachine

	; ************************************
	; Attacking
	; ************************************
	@Attacking:

	; Attack
	jsr MonsterUpdateBite
	bra @EndStateMachine

	; ************************************
	; Dead
	; ************************************
	@Dead:
	
	; Make sure animation control is returned to the character
	move.b #0x1, Character_UpdateAnim(a0)
	
	@EndStateMachine:
	
	; Base functionality
	jsr CharacterUpdate
	
	rts
	
MonsterStartWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set in cave state
	move.b  #MonsterState_InCave, Monster_State(a0)

	; Start eye tracking animation
	move.l a1, -(sp)
	move.l a0, a1
	add.l  #Monster_Animations, a1
	move.l #(MonsterAnimIdx_Eyes*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)
	
	rts
	
MonsterUpdateWaitForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get player 1
	move.l #Player1, a2
	
	; If player dead, don't bother
	cmp.b  #0x0, Character_Health(a2)
	beq    @PlayerDead

	; Get distance to player
	;move.l a1, -(sp)
	;jsr    GameObjectDistSq

	move.l Entity_WorldPosX(a0), d2	; Fuzzl X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	swap   d0
	move.l Entity_WorldPosY(a0), d2	; Fuzzl Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d0
	
	lea    Player1, a2
	move.l Entity_WorldPosX(a2), d2	; Player X
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	swap   d1
	move.l Entity_WorldPosY(a2), d2	; Player Y
	lsr.l  #0x8, d2						; Screen space
	move.w d2, d1
	
	jsr   VectorDistSq					; Calc distance

	cmp.l #Monster_AlertDistanceSq, d0
	bgt   @OutOfPlayerRange

	; Within range, emerge from cave
	jsr   MonsterStartEmergeFromCave

	@PlayerDead:
	@OutOfPlayerRange:

	rts
	
MonsterStartEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set emerge state
	move.b #MonsterState_Emerging, Monster_State(a0)
	
	; Start palette lerp
	move.l a0, -(sp)
	lea    palette_monster, a0
	move.l #PaletteId_Monster, d0
	move.w #Monster_EmergePalLerpSpeed, d1
	move.b #0x0, d2
	move.b #0xF, d3
	jsr    PaletteLerpStart
	move.l (sp)+, a0

	rts
	
MonsterUpdateEmergeFromCave:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Wait for palette lerp finish
	lea    PaletteLerp_Array, a2
	add.l  #(PaletteId_Monster*PaletteLerp_Struct_Size), a2
	cmp.w  #0x0, PaletteLerp_Speed(a2)
	bne    @Lerping
	
	; Start chasing player
	jsr    MonsterStartTrackPlayer
	
	@Lerping:

	rts

MonsterStartTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set chase state
	move.b #MonsterState_Chasing, Monster_State(a0)
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)

	rts

MonsterUpdateTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l #Player1, a2
	
	; If player dead, don't bother
	cmp.b  #0x0, Character_Health(a2)
	beq    @PlayerDead
	
	; If player inactive, don't bother
	cmp.b  #0x0, GameObj_Active(a2)
	beq    @PlayerInactive
	
	; If player is being flung using a flue/bounce pad, don't bother
	cmp.w  #Monster_AttackMaxPlayerVel, GameObj_VelY(a2)
	bge    @PlayerBeingFlung

	; Check if within Y tolerance of player

	; Get left positions
	move.l Entity_WorldPosX(a0), d0	; Left of monster
	move.l Entity_WorldPosX(a2), d1	; Left of player

	; Get widths
	clr.l  d4
	clr.l  d5
	move.w Entity_Width(a0), d4
	move.w Entity_Width(a2), d5
	mulu   #SubPixelsPerPixel, d4
	mulu   #SubPixelsPerPixel, d5

	; Get right positions
	move.l d0, d2
	move.l d1, d3
	add.l  d4, d2						; Right of monster
	add.l  d5, d3						; Right of player

	; Expand player bounds by attack distance
	sub.l  #Monster_AttackDistance, d1	; Left of player - attack distance
	add.l  #Monster_AttackDistance, d3	; Right of player + attack distance
	
	cmp.l  d2, d1		; Right of monster vs. left of player (- attack distance)
	bgt    @LeftOfPlayer

	cmp.l  d0, d3		; Left of monster vs. right of player (+ attack distance)
	blt    @RightOfPlayer

	; Within attack distance, stop chasing
	move.b #0x0, Character_Running(a0)
	jsr    CharacterCancelXMovement

	; Attack
	jsr    MonsterStartBite
	bra    @End

	@LeftOfPlayer:

	; Run towards player
	move.b #0x1, Character_Running(a0)
	jsr    CharacterMoveRight
	bra    @End

	@RightOfPlayer:

	; Run towards player
	move.b #0x1, Character_Running(a0)
	jsr    CharacterMoveLeft
	bra    @End

	@PlayerDead:
	@PlayerInactive:
	@PlayerBeingFlung:
	@LostPlayer:

	; Lost player, or player dead, back to search state
	move.b #0x0, Character_Running(a0)
	jsr    CharacterCancelXMovement
	
	; TODO - Search state
	;jsr    MonsterStartWaitForPlayer

	@End:

	rts

MonsterStartBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set attack state
	move.b #MonsterState_Attacking, Monster_State(a0)

	; Start bite animation
	move.l a1, -(sp)
	move.l a0, a1
	add.l  #Monster_Animations, a1
	move.l #(MonsterAnimIdx_Bite*Animation_Struct_Size), d1
	add.l  d1, a1
	jsr    AnimObjSetAnimation
	move.l (sp)+, a1

	; Manually control anim
	move.b #0x0, Character_UpdateAnim(a0)

	rts

MonsterUpdateBite:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Check if end frame reached
	move.l AnimObj_AnimSubframe(a0), d0; Get anim subframe
	lsr.l  #0x8, d0 					; Subframes to frames
	cmp.b  #Anim_MonsterBite_SizeB, d0
	beq    @AnimFinished
	
	; Check if attack frame reached
	cmp.b  #Monster_AnimFrame_Bite, d0
	bne    @End
	
	; On attack frame
	
	; TODO - Check if player still in range on attack frame
	
	; Deal damage to player
	move.l a0, -(sp)
	move.l #Player1, a0
	move.b #Monster_BiteDamage, d0
	jsr    CharacterDealDamage
	move.l (sp)+, a0
	
	bra    @End

	@AnimFinished:
	
	; Pass anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	; Back to chase state
	jsr    MonsterStartTrackPlayer
	
	@End:

	rts

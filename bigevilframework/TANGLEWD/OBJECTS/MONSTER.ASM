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
Monster_MaxVelXRun    equ 0x0330   ; Max X running velocity
Monster_MaxVelYUp	  equ 0x0600   ; Max Y velocity up
Monster_MaxVelYDown	  equ 0x0600   ; Max Y velocity down
Monster_AccelWalk     equ 0x0002   ; Walking acceleration
Monster_AccelRun      equ 0x0005   ; Running acceleration
Monster_DecelIdle     equ 0x0020   ; Deceleration if left alone
Monster_DecelForced   equ 0x0040   ; Deceleration if input opposite direction
Monster_JumpVel	      equ 0x0600   ; Jump velocity impulse
Monster_JumpCancelVel equ 0x0100   ; Velocity to cancel jump
Monster_MaxGrabUpVel  equ 0x0300   ; Max up velocity character can grab a ledge (no limit on down vel)

Monster_StepHeight	  equ 0x3
Monster_ProbeFloorX	  equ (Monster_Width/2)  ; Floor detection probe position X
Monster_ProbeFloorY   equ (Monster_Height-8) ; Floor detection probe position Y
Monster_ProbeLedgeX	  equ 0x1F	   ; Ledge detection probe position X
Monster_ProbeLedgeY	  equ 0x02	   ; Ledge detection probe position Y

Monster_PlayerVisibilityBoxX	equ 0x0600
Monster_PlayerVisibilityBoxY	equ 0x0038

Monster_AlertDistance		equ 0x0090
Monster_AlertDistanceSq		equ (Monster_AlertDistance*Monster_AlertDistance)
Monster_AttackDistance		equ (0x10*SubPixelsPerPixel)
Monster_AttackMaxPlayerVel	equ 0x0900	; Don't attack if player is being flung using a flue/bounce pad, etc

; Search state
Monster_SearchRandDistMax	equ 0x00FF	; Max distance for random X search pos (pixels)
Monster_SearchRandDelayMask	equ 0x007F	; Mask for random delay between walks
Monster_SearchRandDelayMin	equ 0x0018	; Min rand delay between walks
Monster_NearTargetDistance	equ (0x20*SubPixelsPerPixel)

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
Monster_SearchTargetX rs.l 1
Monster_SearchDelay	  rs.w 1
Monster_Colour        rs.b 1
Monster_State         rs.b 1
;--------------------------
Monster_Struct_Pad    rs.b 0
Monster_Struct_Size   rs.b 0

; ************************************
; Subroutines
; ************************************
MonsterInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr CharacterInit
	
	; Set type
	addi.l #entity_type_monster, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Monsters
	
	; Set update and render routines
	move.l #MonsterUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	; Update when out of view
	move.b  #0x1, GameObj_UpdateOutOfView(a0)

	; Default properties
	move.w  #Monster_Width, Entity_Width(a0)
	move.w  #Monster_Height, Entity_Height(a0)
	move.w  #Monster_MaxVelXRun, GameObj_MaxVelX(a0)
	move.w  #Monster_MaxVelYUp, GameObj_MaxVelYUp(a0)
	move.w  #Monster_MaxVelYDown, GameObj_MaxVelYDown(a0)
	move.w  #Monster_DecelIdle, GameObj_DecelX(a0)
	move.w  #Monster_ProbeFloorX, GameObj_FloorProbeX(a0)
	move.w  #Monster_ProbeFloorY, GameObj_FloorProbeY(a0)
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
	move.l  #0x0, Monster_SearchTargetX(a0)
	move.w  #0x0, Monster_SearchDelay(a0)

	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_djakk_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_djakk_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_djakk_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_djakk_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Dead
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Dead), a3
	move.w #spritesheet_djakk_death_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_djakk_bite_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_djakk_bite_speed, Animation_Speed(a3)
	move.b #spriteanim_djakk_bite_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.w #spritesheet_djakk_run_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_djakk_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_djakk_run_speed, Animation_Speed(a3)
	move.b #spriteanim_djakk_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)

	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_djakk_walk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_djakk_walk_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_djakk_walk_speed, Animation_Speed(a3)
	move.b #spriteanim_djakk_walk_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Setup bespoke character animations
	move.l a0, a2
	add.l  #Monster_Animations, a2
	
	; In cave
	;move.l a2, a3
	;add.l  #(Animation_Struct_Size*MonsterAnimIdx_Eyes), a3
	;move.l #Anim_MonsterEyes, Animation_AnimTrackSpriteFrame(a3)
	;move.l #0x0, Animation_AnimTrackPositionX(a3)
	;move.l #0x0, Animation_AnimTrackPositionY(a3)
	;move.b #Anim_MonsterEyes_Speed, Animation_Speed(a3)
	;move.b #Anim_MonsterEyes_SizeB, Animation_Length(a3)
	;move.b #0x1, Animation_Looping(a3)
	
	; Bite
	move.l a2, a3
	add.l  #(Animation_Struct_Size*MonsterAnimIdx_Bite), a3
	move.w #spritesheet_djakk_bite_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_djakk_bite_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_djakk_bite_speed, Animation_Speed(a3)
	move.b #spriteanim_djakk_bite_numframes, Animation_Length(a3)
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
	cmp.b #MonsterState_Wandering, d0
	beq   @Wandering

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
	; Searching
	; ************************************
	@Wandering:

	; Wander around
	jsr MonsterUpdateSearchForPlayer
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
	
MonsterCheckPlayerVisible:
	; d0 --- Return value
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get monster visibility bounds X
	move.l Entity_WorldPosX(a0), d1
	lsr.l  #0x8, d1
	move.w d1, d2
	add.w  #(Monster_Width/2)-(Monster_PlayerVisibilityBoxX/2), d1
	add.w  #(Monster_Width/2)+(Monster_PlayerVisibilityBoxX/2), d2
	
	swap   d1
	swap   d2
	
	; Get monster visibility bounds Y
	move.l Entity_WorldPosY(a0), d3
	lsr.l  #0x8, d3
	move.w d3, d1
	move.w d3, d2
	add.w  #(Monster_Height/2)-(Monster_PlayerVisibilityBoxY/2), d1
	add.w  #(Monster_Height/2)+(Monster_PlayerVisibilityBoxY/2), d2
	
	; Get player 1
	move.l #Player1, a2
	
	; Get player centre X
	move.l Entity_WorldPosX(a2), d3
	lsr.l  #0x8, d3
	move.w Entity_Width(a2), d4
	lsr.w  #0x1, d4
	add.w  d4, d3
	swap   d3
	
	; Get player centre Y
	move.l Entity_WorldPosY(a2), d4
	lsr.l  #0x8, d4
	move.w Entity_Height(a2), d5
	lsr.w  #0x1, d5
	add.w  d5, d4
	move.w d4, d3
	
	jsr    TestPointInsideBox
	
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
	move.l a1, -(sp)
	move.l #Player1, a1
	jsr    GameObjectDistSq
	move.l (sp)+, a1

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
	
	; Block player control and set as camera target
	; TODO: Use cutscene code
	move.b #0x0, Player1ControlEnabled
	move.l a0, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x8, CameraTargetLerpSpeed
	
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
	
	move.b #0x1, Player1ControlEnabled
	move.l #Player1, CameraTargetGameObj
	move.w #0x0, CameraTargetLerpTime
	move.w #0x1, CameraTargetLerpSpeed
	
	; Start chasing player
	jsr    MonsterStartTrackPlayer
	
	@Lerping:

	rts
	
MonsterStartSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set wandering state
	move.b  #MonsterState_Wandering, Monster_State(a0)
	
	; Start walking
	jsr     CharacterCancelRun
	
	; Give anim control back to character
	move.b #0x1, Character_UpdateAnim(a0)
	
	rts

MonsterUpdateSearchForPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Get player 1 addr
	move.l #Player1, a2
	
	; If player dead, search around
	cmp.b  #0x0, Character_Health(a2)
	beq    @Searching
	
	; If player inactive, search around
	cmp.b  #0x0, GameObj_Active(a2)
	beq    @Searching
	
	; Check if player is within tracking window
	jsr    MonsterCheckPlayerVisible
	cmp.b  #0x0, d0
	beq    @Searching
	
	; Player visible, enter chase state
	jsr    MonsterStartTrackPlayer
	bra    @End
	
	@Searching:
	
	; If we have a target X
	move.l Monster_SearchTargetX(a0), d0
	cmp.l  #0x0, d0
	bne    @HasTargetX
	
	; Get a random target X (-255 - 255)
	jsr    RandLong								; Rand long
	andi.l #0xFFFF, d0							; Avoid overflow
	divu   #(Monster_SearchRandDistMax*2), d0	; Div / max*2
	clr.w  d0									; Clear exponent
	swap   d0									; Remainder to lower word (0 - 512)
	sub.w  #Monster_SearchRandDistMax, d0		; Shift down to -255 - 255
	muls   #SubPixelsPerPixel, d0				; To subpixels
	
	; Add min dist
	move.l  #Monster_NearTargetDistance, d1
	cmp.l  #0x0, d0								; If rand target negative
	bgt    @PosTarget
	neg.l  d1									; Make min dist negative
	@PosTarget:
	add.l  d1, d0
	
	; Add current X pos
	add.l  Entity_WorldPosX(a0), d0
	
	; Clamp to screen bounds
	cmp.l  #0x0, d0								; Clamp screen left
	bgt    @NoClampLeft
	move.l #0x0, d0
	@NoClampLeft:
	clr.l  d1
	move.w Level_MapWidth(a1), d1				; Clamp screen right
	mulu   #0x8, d1								; Tiles to pixels
	lsl.l  #0x8, d1								; Pixels to subpixels
	cmp.l  d1, d0
	blt    @NoClampRight
	move.l d1, d0
	@NoClampRight:
	
	; Set new target X
	move.l d0, Monster_SearchTargetX(a0)
	
	@HasTargetX:
	
	; Check if in delay state
	move.w Monster_SearchDelay(a0), d1
	cmp.w  #0x0, d1
	beq    @Move
	
	; Count down delay
	sub.w  #0x1, d1
	move.w d1, Monster_SearchDelay(a0)
	bra    @End
	
	@Move:
	
	; Check if hit a wall
	cmp.b  #0x0, GameObj_HitWall(a0)
	bne    @HitWall
	
	; Check if near target
	move.l Entity_WorldPosX(a0), d1
	sub.l  d1, d0							; Get distance to target
	move.l d0, d3
	cmp.l  #0x0, d0							; If negative
	bgt    @Pos
	neg.l  d0								; Make positive
	@Pos:
	cmp.l  #Monster_NearTargetDistance, d0	; Test distance
	blt    @ReachedTarget
	
	; Move towards target X
	cmp.l  #0x0, d3
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
	jsr    RandLong
	andi.l #Monster_SearchRandDelayMask, d0
	add.w  #Monster_SearchRandDelayMin, d0
	move.w d0, Monster_SearchDelay(a0)
	
	; Reset target pos
	move.l #0x0, Monster_SearchTargetX(a0)
	
	@End:
	
	rts
	
MonsterStartTrackPlayer:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Set chase state
	move.b #MonsterState_Chasing, Monster_State(a0)
	
	; Start running
	jsr    CharacterStartRun
	
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

	; Check if player is within tracking window
	jsr    MonsterCheckPlayerVisible
	cmp.b  #0x0, d0
	beq    @LostPlayer

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
	
	; Back to search state
	jsr    MonsterStartSearchForPlayer

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
	cmp.b  #spriteanim_djakk_bite_numframes, d0
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

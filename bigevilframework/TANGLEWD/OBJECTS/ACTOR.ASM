;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   actor.asm - Basic actor (non-playable character)
;==============================================================

; ************************************
; Constants
; ************************************
Actor_MaxEntities 	equ 0x2

; Actor dimensions
ActorWidth	 		equ 0x0038
ActorHeight	 		equ 0x0030

; Actor acceleration/deceleration
ActorAccelWalk   	equ 0x0004 ; Actor walking acceleration
ActorAccelRun    	equ 0x0008 ; Actor running acceleration
ActorDecelIdle   	equ 0x0010 ; Actor deceleration if left alone
ActorDecelForced 	equ 0x0020 ; Actor deceleration if input opposite direction

; Actor max velocities (all values must be divisors of SubpixelsPerPixel)
ActorMaxVelXWalk 	equ 0x01*SubpixelsPerPixel ; Actor max X walking velocity
ActorMaxVelXRun  	equ 0x03*SubpixelsPerPixel ; Actor max X running velocity
ActorMaxVelYUp   	equ 0x06*SubpixelsPerPixel ; Actor max Y velocity up
ActorMaxVelYDown 	equ 0x08*SubpixelsPerPixel ; Actor max Y velocity down

ActorJumpVel		equ 0x06*SubpixelsPerPixel ; Actor jump velocity impulse
ActorJumpVelWater	equ 0x02*SubpixelsPerPixel ; Actor jump velocity impulse from water
ActorJumpCancelVelLo equ 0x01*SubpixelsPerPixel ; Actor velocity to cancel jump min
ActorJumpCancelVelHi equ ActorMaxVelYUp			; Actor velocity to cancel jump max
ActorMaxGrabUpVel	equ 0x03*SubpixelsPerPixel ; Max up velocity player can grab a ledge (no limit on down vel)

; Actor collision probes
ActorStepHeight		equ 0x3
ActorProbeFloorX   	equ (ActorWidth/2)   ; Floor detection probe position X
ActorProbeFloorY   	equ (ActorHeight-8)  ; Floor detection probe position Y
ActorProbeLedgeX   	equ 0x1F			 ; Ledge detection probe position X
ActorProbeLedgeY   	equ 0x02			 ; Ledge detection probe position Y

; Walk to run transition velocity
ActorWalkToRunVel	equ 0x0200

; ************************************
; Struct
; ************************************
	rsset (Character_Struct_Size)
;---------------------------------

;---------------------------------
Actor_Struct_Pad      		rs.b 0
Actor_Struct_Size     		rs.b 0

; ************************************
; Subroutines
; ************************************
ActorInit:
	; a1 --- Level addr
	
	; Base functionality
	jsr    CharacterInit
	
	; Set type
	ori.l  #entity_type_actor, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_Actors
	
	; Set update and render routines
	move.l #CharacterUpdate, Entity_UpdateRoutine(a0)
	move.l #CharacterDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList
	
	; Update when out of view
	move.b  #0x1, AnimObj_UpdateOutOfView(a0)

	; Setup default state
	move.w  #ActorWidth, Entity_Width(a0)
	move.w  #ActorHeight, Entity_Height(a0)
	move.w  #ActorMaxVelXWalk, PhysicsObj_MaxVelX(a0)
	move.w  #ActorMaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.w  #ActorMaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #ActorDecelIdle, PhysicsObj_DecelX(a0)
	move.w  #ActorProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #ActorProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #ActorStepHeight, PhysicsObj_StepHeight(a0)
	
	move.w  #ActorMaxVelXWalk, Character_MaxVelXWalk(a0)
	move.w  #ActorMaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #ActorAccelWalk, Character_AccelWalk(a0)
	move.w  #ActorAccelRun, Character_AccelRun(a0)
	move.w  #ActorDecelIdle, Character_DecelIdle(a0)
	move.w  #ActorDecelForced, Character_DecelForced(a0)
	move.w  #ActorJumpVel, Character_JumpVel(a0)
	move.w  #ActorJumpVelWater, Character_JumpVelWater(a0)
	move.w  #ActorJumpCancelVelLo, Character_JumpCancelVelLo(a0)
	move.w  #ActorJumpCancelVelHi, Character_JumpCancelVelHi(a0)
	move.w  #ActorMaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #ActorProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #ActorProbeLedgeY, Character_ProbeLedgeY(a0)
	move.w  #ActorWalkToRunVel, Character_WalkToRunVel(a0)
	
	; Setup default character animations
	move.l a0, a2
	add.l  #Character_Animations, a2

	; Idle
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Idle), a3
	move.w #spritesheet_nymn_idle_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_idle_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_idle_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_idle_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Run
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Run), a3
	move.w #spritesheet_nymn_run_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_run_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Walk
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_Walk), a3
	move.w #spritesheet_nymn_walk_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_run_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_walk_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_run_numframes, Animation_Length(a3)
	move.b #0x1, Animation_Looping(a3)
	
	; Walk to run transition
	move.l a2, a3
	add.l  #(Animation_Struct_Size*CharacterAnimIdx_WalkToRun), a3
	move.w #spritesheet_nymn_walktorun_frameoffset, Animation_FirstFrameOffset(a3)
	move.l #spriteanim_nymn_walktorun_track_frames, Animation_AnimTrackSpriteFrame(a3)
	move.l #0x0, Animation_AnimTrackPositionX(a3)
	move.l #0x0, Animation_AnimTrackPositionY(a3)
	move.b #spriteanim_nymn_walktorun_speed, Animation_Speed(a3)
	move.b #spriteanim_nymn_walktorun_numframes, Animation_Length(a3)
	move.b #0x0, Animation_Looping(a3)
	
	rts
	
ActorShutdown:
	; a1 --- Level addr
	
	; Remove from update and render lists
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	subi.w #0x1, EntityCount_Actors

	rts
	
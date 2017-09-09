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

; Actor dimensions
ActorWidth	 		equ 0x0038
ActorHeight	 		equ 0x0030

; Actor acceleration/deceleration
ActorAccelWalk   	equ 0x000400 ; Actor walking acceleration
ActorAccelRun    	equ 0x000800 ; Actor running acceleration
ActorDecelIdle   	equ 0x001000 ; Actor deceleration if left alone
ActorDecelForced 	equ 0x002000 ; Actor deceleration if input opposite direction

; Actor max velocities (all values must be divisors of subpixels_per_pixel)
ActorMaxVelXWalk 	equ 0x01*subpixels_per_pixel ; Actor max X walking velocity
ActorMaxVelXRun  	equ 0x03*subpixels_per_pixel ; Actor max X running velocity
ActorMaxVelYUp   	equ 0x06*subpixels_per_pixel ; Actor max Y velocity up
ActorMaxVelYDown 	equ 0x08*subpixels_per_pixel ; Actor max Y velocity down

ActorJumpVel		equ 0x06*subpixels_per_pixel ; Actor jump velocity impulse
ActorJumpVelWater	equ 0x02*subpixels_per_pixel ; Actor jump velocity impulse from water
ActorJumpCancelVelLo equ 0x01*subpixels_per_pixel ; Actor velocity to cancel jump min
ActorJumpCancelVelHi equ ActorMaxVelYUp			; Actor velocity to cancel jump max
ActorMaxGrabUpVel	equ 0x03*subpixels_per_pixel ; Max up velocity player can grab a ledge (no limit on down vel)

; Actor collision probes
ActorStepHeight		equ 0x3
ActorProbeFloorX   	equ (ActorWidth/2)   ; Floor detection probe position X
ActorProbeFloorY   	equ (ActorHeight-8)  ; Floor detection probe position Y
ActorProbeLedgeX   	equ 0x1F			 ; Ledge detection probe position X
ActorProbeLedgeY   	equ 0x02			 ; Ledge detection probe position Y

; Walk to run transition velocity
ActorWalkToRunVel	equ 0x020000

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
	addq.w #0x1, EntityCount_Actor
	
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
	move.l  #ActorMaxVelXWalk, PhysicsObj_MaxVelFloorX(a0)
	move.l  #ActorMaxVelYUp, PhysicsObj_MaxVelYUp(a0)
	move.l  #ActorMaxVelYDown, PhysicsObj_MaxVelYDown(a0)
	move.w  #ActorDecelIdle, PhysicsObj_DecelX(a0)
	move.w  #ActorProbeFloorX, PhysicsObj_FloorProbeX(a0)
	move.w  #ActorProbeFloorY, PhysicsObj_FloorProbeY(a0)
	move.w  #ActorHeight, PhysicsObj_WallProbeBottom(a0)
	move.w  #(ActorWidth/2)-0x10, PhysicsObj_WallProbeLeft(a0)
	move.w  #(ActorWidth/2)+0x10, PhysicsObj_WallProbeRight(a0)
	move.w  #ActorStepHeight, PhysicsObj_StepHeight(a0)
	
	move.l  #ActorMaxVelXWalk, Character_MaxVelXWalk(a0)
	move.l  #ActorMaxVelXRun, Character_MaxVelXRun(a0)
	move.w  #ActorAccelWalk, Character_AccelWalk(a0)
	move.w  #ActorAccelRun, Character_AccelRun(a0)
	move.w  #ActorDecelIdle, Character_DecelIdle(a0)
	move.w  #ActorDecelForced, Character_DecelForced(a0)
	move.l  #ActorJumpVel, Character_JumpVelY(a0)
	move.l  #ActorJumpVelWater, Character_JumpVelWater(a0)
	move.l  #ActorJumpCancelVelLo, Character_JumpCancelVelLo(a0)
	move.l  #ActorJumpCancelVelHi, Character_JumpCancelVelHi(a0)
	move.l  #ActorMaxGrabUpVel, Character_MaxGrabUpVel(a0)
	move.w  #ActorProbeLedgeX, Character_ProbeLedgeX(a0)
	move.w  #ActorProbeLedgeY, Character_ProbeLedgeY(a0)
	move.l  #ActorWalkToRunVel, Character_WalkToRunVel(a0)
	
	rts
	
ActorLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts

ActorShutdown:
	; a1 --- Level addr
	
	; Remove from update and render lists
	jsr    EntityRemoveFromUpdateList
	jsr    EntityRemoveFromRenderList
	
	subq.w #0x1, EntityCount_Actor

	rts
	
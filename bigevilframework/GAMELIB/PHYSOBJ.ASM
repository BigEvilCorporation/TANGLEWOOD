;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   physobj.asm - Physics object
;==============================================================

;==============================================================
; Constants
;==============================================================
PhysicsObjHitWallNone				equ 0x0
PhysicsObjHitWallLeft				equ 0x1
PhysicsObjHitWallRight				equ 0x2

PhysicsObjDefaultPushBoundsOuter	equ 0x6

PhysicsObjMaxSnapToFloorDist		equ 0x10

;==============================================================
; PhysicsObject
;==============================================================
	rsset AnimObj_Struct_Size
;---------------------------------
	LINKED_LIST_NODE PushableObjs   ; Linked list entry for pushable objects
;---------------------------------
PhysicsObj_LastWall         	rs.l 1 ; Last detected wall X
PhysicsObj_LastFloor        	rs.l 1 ; Last detected floor Y
PhysicsObj_LastCeiling      	rs.l 1 ; Last detected ceiling Y
PhysicsObj_VelX    		    	rs.l 1 ; X velocity
PhysicsObj_VelY    		    	rs.l 1 ; Y velocity
PhysicsObj_ImpulseX    		    rs.l 1 ; X impulse
PhysicsObj_ImpulseY    		    rs.l 1 ; Y impulse
PhysicsObj_LastAppliedVelX		rs.l 1 ; Last applies X velocity (+ impulse)
PhysicsObj_LastAppliedVelY		rs.l 1 ; Last applies Y velocity (+ impulse)
PhysicsObj_MaxVelFloorX 		rs.l 1 ; Max X velocity (on floor)
PhysicsObj_MaxVelAirX 			rs.l 1 ; Max X velocity (in air)
PhysicsObj_MaxVelYUp	    	rs.l 1 ; Max Y velocity up
PhysicsObj_MaxVelYDown			rs.l 1 ; Max Y velocity down
PhysicsObj_WindResistanceFloor	rs.l 1 ; Wind resistance (on floor)
PhysicsObj_WindResistanceAir	rs.l 1 ; Wind resistance (in air)
PhysicsObj_BoundsLeft			rs.w 1 ; Collision bounds offset X
PhysicsObj_BoundsTop			rs.w 1 ; Collision bounds offset Y
PhysicsObj_BoundsWidth			rs.w 1 ; Collision bounds offset width
PhysicsObj_BoundsHeight			rs.w 1 ; Collision bounds offset height
PhysicsObj_PushDetectOuter		rs.w 1 ; Collision bounds outer box extension size for push detection
PhysicsObj_AccelX  		    	rs.w 1 ; X acceleration
PhysicsObj_AccelY  		    	rs.w 1 ; Y acceleration
PhysicsObj_DecelX  		    	rs.w 1 ; X deceleration
PhysicsObj_FloorProbeX	    	rs.w 1 ; Floor probe X offset
PhysicsObj_FloorProbeY	    	rs.w 1 ; Floor probe Y offset
PhysicsObj_CeilingProbeX    	rs.w 1 ; Ceiling probe X offset
PhysicsObj_CeilingProbeY    	rs.w 1 ; Ceiling probe Y offset
PhysicsObj_BounceX		    	rs.w 1 ; Bounce X (reflection div)
PhysicsObj_BounceY		    	rs.w 1 ; Bounce Y (reflection div)
PhysicsObj_StepHeight	    	rs.w 1 ; Max step height
PhysicsObj_MinWallHeight    	rs.w 1 ; Min wall height
PhysicsObj_Asleep				rs.b 1 ; Object sleeping
PhysicsObj_Mass             	rs.b 1 ; Object mass
PhysicsObj_HasPhysics       	rs.b 1 ; Uses physics
PhysicsObj_CollideFloor	    	rs.b 1 ; Collides with floor
PhysicsObj_CollideWalls	    	rs.b 1 ; Collides with walls
PhysicsObj_CollideCeilings  	rs.b 1 ; Collides with ceilings
PhysicsObj_CollidePlatforms		rs.b 1 ; Collides with platforms
PhysicsObj_CollideBarriers		rs.b 1 ; Collides with barriers
PhysicsObj_FallThroughHoles 	rs.b 1 ; Ignores terrain tiles with 'hole' flag
PhysicsObj_AffectedByGravity   	rs.b 1 ; Gets pushed by gravity force
PhysicsObj_AffectedByWind   	rs.b 1 ; Gets pushed by wind force
PhysicsObj_OnFloor		    	rs.b 1 ; Object is on floor
PhysicsObj_CloseToFloor	    	rs.b 1 ; Object is close to floor (dist < step height)
PhysicsObj_HitWall		    	rs.b 1 ; Object is touching a wall (PhysicsObjHitWallLeft/PhysicsObjHitWallRight)
PhysicsObj_Solid		    	rs.b 1 ; Object is solid
PhysicsObj_SnapToFloor	    	rs.b 1 ; Object should snap to floor if within step height
PhysicsObj_MaxVelClamp			rs.b 1 ; Clamp to max velocity if exceeded, otherwise use deceleration
PhysicsObj_CanBePushed			rs.b 1 ; Can be pushed (must also be in PushableObjs list)
PhysicsObj_CanBePulled			rs.b 1 ; Can be pulled (must also be in PushableObjs list)
;---------------------------------
PhysicsObj_Struct_Pad      		rs.b 1
PhysicsObj_Struct_Size      	rs.b 0
	
;==============================================================

PhysicsObjInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Init base
	jsr    AnimObjInit
	
	; Set type
	ori.l  #entity_type_physicsobj, Entity_TypeBits(a0)
	
	move.l #0x0, PhysicsObj_LastWall(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastCeiling(a0)
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #0x0, PhysicsObj_BoundsWidth(a0)
	move.w #0x0, PhysicsObj_BoundsHeight(a0)
	move.w #PhysicsObjDefaultPushBoundsOuter, PhysicsObj_PushDetectOuter(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.w #0x0, PhysicsObj_DecelX(a0)
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	move.l #0x0, PhysicsObj_ImpulseX(a0)
	move.l #0x0, PhysicsObj_ImpulseY(a0)
	move.l #0x0, PhysicsObj_LastAppliedVelX(a0)
	move.l #0x0, PhysicsObj_LastAppliedVelY(a0)
	move.l #0x0, PhysicsObj_WindResistanceFloor(a0)
	move.l #0x0, PhysicsObj_WindResistanceAir(a0)
	move.w #0x0, PhysicsObj_BounceX(a0)
	move.w #0x0, PhysicsObj_BounceY(a0)
	move.w #0x0, PhysicsObj_MinWallHeight(a0)
	move.b #0x0, PhysicsObj_Asleep(a0)
	move.b #0x1, PhysicsObj_Mass(a0)
	move.b #0x1, PhysicsObj_HasPhysics(a0)
	move.b #0x1, PhysicsObj_CollideFloor(a0)
	move.b #0x1, PhysicsObj_CollideWalls(a0)
	move.b #0x1, PhysicsObj_CollideCeilings(a0)
	move.b #0x1, PhysicsObj_CollidePlatforms(a0)
	move.b #0x1, PhysicsObj_CollideBarriers(a0)
	move.b #0x0, PhysicsObj_FallThroughHoles(a0)
	move.b #0x0, PhysicsObj_OnFloor(a0)
	move.b #0x0, PhysicsObj_CloseToFloor(a0)
	move.b #0x0, PhysicsObj_HitWall(a0)
	move.b #0x0, PhysicsObj_Solid(a0)
	move.b #0x0, PhysicsObj_SnapToFloor(a0)
	move.b #0x0, PhysicsObj_MaxVelClamp(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.b #0x0, PhysicsObj_CanBePulled(a0)
	move.b #0x1, PhysicsObj_AffectedByGravity(a0)
	move.b #0x1, PhysicsObj_AffectedByWind(a0)

	rts

PhysicsObjUpdate:
 	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If asleep, process external forces only
	cmp.b  #0x0, PhysicsObj_Asleep(a0)
	bne    @SoundAwake

	; Awaken if moving
	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_VelY(a0), d0
	add.w  PhysicsObj_AccelX(a0), d0
	add.w  PhysicsObj_AccelY(a0), d0
	cmp.l  #0x0, d0
	beq    @Asleep

	@SoundAwake:
	move.b #0x0, PhysicsObj_Asleep(a0)
	
	; If sprite linked or configured to update out of view, and active
	move.b AnimObj_UpdateOutOfView(a0), d0
	or.b   SpriteObj_SpriteLinked(a0), d0
	and.b  Entity_Active(a0), d0
	beq    @InvisibleOrInactive
	
	cmp.b  #0x0, PhysicsObj_HasPhysics(a0)
	beq    @NoPhysics
	
	; Get current animation
	move.l AnimObj_CurrentAnim(a0), a2
	cmp.l  #0x0, a2
	beq    @NoAnim
	
	; Check if velocity is to be cancelled
	cmp.b #0x0, Animation_ZeroVelocity(a2)
	beq   @NoVelCancel
	
	; Cancel out acceleration + velocity (except platform velocity)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.l #0x0, PhysicsObj_VelX(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	
	@NoVelCancel:
	@NoAnim:

	; Apply acceleration
	jsr PhysicsObjApplyAccelDecel

	; Apply gravity and wind
	jsr PhysicsObjApplyWorldForces
	
	; Apply velocity
	jsr PhysicsObjApplyVelocity
	
	; Find floor
	cmp.b #0x0, PhysicsObj_CollideFloor(a0)
	beq   @NoCheckFloor
	move.b #0x0, d0
	jsr PhysicsObjFindFloor
	@NoCheckFloor:

	; Find ceiling
	cmp.b #0x0, PhysicsObj_CollideCeilings(a0)
	beq   @NoCheckCeilings
	jsr PhysicsObjFindCeiling
	@NoCheckCeilings:
	
	; Find wall
	cmp.b #0x0, PhysicsObj_CollideWalls(a0)
	beq   @NoCheckWall
	jsr PhysicsObjFindWall
	@NoCheckWall:
	
	; Correct for floor/wall collision
	jsr PhysicsObjCollisionCorrection
	
	; Clamp pos to level space
	jsr PhysicsObjClampPos
	
	bra @End

	@NoPhysics:

	; No physics, just do the basics
	jsr PhysicsObjApplyVelocity
	jsr PhysicsObjClampPos

	bra @End

	@Asleep:

	; Asleep, check for external forces only
	move.l PhysicsObj_LastFloor(a0), d0
	move.l PhysicsObj_LastWall(a0), d1
	PUSHM  d0-d1

	jsr    PhysicsObjFindMovingFloor
	jsr    PhysicsObjFindMovingBarrier

	POPM   d0-d1
	move.l PhysicsObj_LastFloor(a0), d2
	cmp.l  d0, d2
	bne    @FloorWallChange
	move.l  PhysicsObj_LastWall(a0), d3
	cmp.l  d1, d3
	bne    @FloorWallChange
	bra    @NoFloorWallChange
	
	@FloorWallChange:

	; Floor/wall changed, correct collision
	jsr    PhysicsObjCollisionCorrection
	jsr    PhysicsObjClampPos

	@NoFloorWallChange:
	
	@End:
	@InvisibleOrInactive:
	
	; Base functionality
	jsr AnimObjUpdate
	
	rts
	
PhysicsObjApplyAccelDecel:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if accelerating X
	move.w PhysicsObj_AccelX(a0), d0	; Fetch X acceleration from RAM
	cmp.w  #0x0, d0						; Check if accelerating
	beq    @IdleXDecel					; X controls idle, decelerate
	ext.l  d0							; Sign extend word to long
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0
	
	; Apply acceleration
	move.l PhysicsObj_VelX(a0), d1		; Fetch X velocity from RAM
	add.l  d0, d1						; Add X acceleration
	move.l d1, PhysicsObj_VelX(a0)		; Back to RAM
	
	; Get max X velocity
	cmp.b  #0x0, PhysicsObj_CloseToFloor(a0)
	beq    @AirVelocity
	move.l PhysicsObj_MaxVelFloorX(a0), d0	; Get max velocity +ve
	bra    @FloorVelocity
	@AirVelocity:
	move.l PhysicsObj_MaxVelAirX(a0), d0	; Get max velocity +ve
	@FloorVelocity:

	; Check clamp type
	cmp.b  #0x0, PhysicsObj_MaxVelClamp(a0)
	bne    @ClampMaxVelX
	
	; Check if past max velocity
	cmp.l  d0, d1				; Compare velocity with max
	bgt    @ClampSpeedDecel	    ; (BGT is signed comparison)
	neg.l  d0					; Get max velocity -ve
	cmp.l  d0, d1				; Compare
	blt    @ClampSpeedDecel	    ; (BLT is signed comparison)
	bra    @EndAccelDecel		; Within bounds
	
	@ClampMaxVelX:
	
	cmp.l  d0, d1				; Compare velocity with max
	bgt    @ClampX			    ; (BGT is signed comparison)
	neg.l  d0					; Get max velocity -ve
	cmp.l  d0, d1				; Compare
	blt    @ClampX			    ; (BLT is signed comparison)
	bra    @EndAccelDecel		; Within bounds
	
	@ClampX:
	move.l d0, PhysicsObj_VelX(a0)
	bra    @EndAccelDecel
	
	@IdleXDecel:
	
	; Only decelerate (when X controls idle) if not in air
	move.b PhysicsObj_OnFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @EndAccelDecel

	@ClampSpeedDecel:
	
	; Determine deceleration direction
	cmp.l #0x0, PhysicsObj_VelX(a0)
	beq @EndAccelDecel	; No velocity
	bgt @DecelFromPos	; Postive velocity
	blt @DecelFromNeg	; Negative velocity
	
	; Decelerate from positive X velocity towards 0
	@DecelFromPos:
	move.w PhysicsObj_DecelX(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	sub.l d1, PhysicsObj_VelX(a0)
	cmp.l #0x0, PhysicsObj_VelX(a0)	; Clamp to 0
	bge @EndAccelDecel
	move.l #0x0, PhysicsObj_VelX(a0)
	bra @EndAccelDecel
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNeg:
	move.w PhysicsObj_DecelX(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	add.l d1, PhysicsObj_VelX(a0)
	cmp.l #0x0, PhysicsObj_VelX(a0)	; Clamp to 0
	ble @EndAccelDecel
	move.l #0x0, PhysicsObj_VelX(a0)
	bra @EndAccelDecel
	
	@EndAccelDecel:
	
	;==============================================================
	
	; Check if accelerating Y
	move.w PhysicsObj_AccelY(a0), d0	; Fetch Y acceleration from RAM
	cmp.w  #0x0, d0						; Check if accelerating
	beq    @IdleYDecel					; Y controls idle, decelerate
	ext.l  d0							; Sign extend word to long
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0
	
	; Apply acceleration
	move.l PhysicsObj_VelY(a0), d1		; Fetch Y velocity from RAM
	add.l  d0, d1						; Add Y acceleration
	move.l d1, PhysicsObj_VelY(a0)		; Back to RAM
	
	; Check if past max velocity
	move.l PhysicsObj_MaxVelYUp(a0), d0		; Get max velocity +ve
	cmp.l  d0, d1
	bgt    @ClampY
	move.l PhysicsObj_MaxVelYDown(a0), d0	; Get max velocity -ve
	neg.l  d0
	cmp.l  d0, d1
	blt    @ClampY
	bra    @EndAccelDecelY		; Within bounds
	
	@ClampY:
	move.l d0, PhysicsObj_VelY(a0)
	
	@EndAccelDecelY:
	@IdleYDecel:
	
	rts
	
PhysicsObjApplyWorldForces:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Get physics world
	lea    PhysicsWorld, a2

	; Get speed div
	clr.l  d6
	move.b AnimObj_SpeedDiv(a0), d6

	;==============================================================
	; Apply gravity

	cmp.b  #0x0, PhysicsObj_AffectedByGravity(a0)
	beq    @NotAffectedByGravity
	
	; Get gravity
	move.l PhysicsWorld_Gravity(a2), d2

	; Apply speed div
	DIVS1616_LOSSY d6, d2

	; Get current Y velocity
	move.l PhysicsObj_VelY(a0), d5

	; Apply gravity
	sub.l  d2, d5

	; Clamp Y
	move.l PhysicsObj_MaxVelYUp(a0), d1
	move.l PhysicsObj_MaxVelYDown(a0), d2
	neg.l  d2
	CLAMP d5, d2, d1

	; Set
	move.l d5, PhysicsObj_VelY(a0)

	@NotAffectedByGravity:

	;==============================================================
	; Apply wind

	cmp.b  #0x0, PhysicsObj_AffectedByWind(a0)
	beq    @NotAffectedByWind

	; Get wind force
	move.l PhysicsWorld_Wind(a2), d1
	cmp.l  #0x0, d1
	beq    @NoWind

	; Get wind resistance
	move.l PhysicsObj_WindResistanceFloor(a0), d3
	cmp.b  #0x0, PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor
	move.l PhysicsObj_WindResistanceAir(a0), d3
	@OnFloor:

	; Apply resistance, check if wind is strong enough
	cmp.l  #0x0, d1
	bge    @Positive
	add.l  d3, d1
	cmp.l  #0x0, d1
	bgt    @NotAffectedByWind
	bra    @ApplyWind
	@Positive:
	sub.l  d3, d1
	cmp.l  #0x0, d1
	blt    @NotAffectedByWind
	@ApplyWind:

	; Apply speed div
	DIVS1616_LOSSY d6, d1

	; Get current X velocity
	move.l PhysicsObj_VelX(a0), d4
	
	; Apply wind
	add.l  d1, d4

	; Set
	move.l d4, PhysicsObj_VelX(a0)

	@NoWind:
	@NotAffectedByWind:
	
	rts
	
PhysicsObjApplyVelocity:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Move player X by velocity
	move.l PhysicsObj_VelX(a0), d0		; Fetch X vel from RAM

	; Apply impulse and clear
	add.l  PhysicsObj_ImpulseX(a0), d0
	move.l #0x0, PhysicsObj_ImpulseX(a0)
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0
	
	move.l Entity_WorldPosX(a0), d1		; Get pos
	add.l d0, d1						; Add velocity to pos
	move.l d1, Entity_WorldPosX(a0)
	move.l d0, PhysicsObj_LastAppliedVelX(a0)	; Save for attached platforms/barriers
	
	; Move player Y by velocity
	move.l PhysicsObj_VelY(a0), d0		; Fetch Y vel from RAM

	; Apply impulse and clear
	add.l  PhysicsObj_ImpulseY(a0), d0
	move.l #0x0, PhysicsObj_ImpulseY(a0)
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0
	
	move.l Entity_WorldPosY(a0), d1		; Get Y pos
	sub.l  d0, d1						; Sub velocity from pos (Y is upside down)
	move.l d1, Entity_WorldPosY(a0)		; Put new Y pos back in RAM
	move.l d0, PhysicsObj_LastAppliedVelY(a0)	; Save for attached platforms/barriers

	rts

PhysicsObjClampPos:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	clr.l  d1
	move.l Entity_WorldPosY(a0), d0
	move.w Level_MapHeight(a1), d1
	TILES2PIXELS d1						; Tiles to pixels
	add.l  #vdp_sprite_border_y*2, d1	; To sprite space
	TOSUBPIXELS d1						; To world space
	cmp.l  d1, d0
	bgt    @ClampYBottom
	cmp.l  #0x0, d0
	blt    @ClampYTop
	bra    @EndYClamp

	@ClampYBottom:
	move.l d1, Entity_WorldPosY(a0)
	move.l #0x0, PhysicsObj_VelY(a0)
	bra    @EndYClamp

	@ClampYTop:
	move.l #0x0, Entity_WorldPosY(a0)
	move.l #0x0, PhysicsObj_VelY(a0)

	@EndYClamp:

	clr.l  d1
	move.l Entity_WorldPosX(a0), d0
	move.w Level_MapWidth(a1), d1
	TILES2PIXELS d1						; Tiles to pixels
	add.l  #vdp_sprite_border_x*2, d1	; To sprite space
	TOSUBPIXELS d1						; To world space
	cmp.l  d1, d0
	bgt    @ClampXRight
	cmp.l  #0x0, d0
	blt    @ClampXLeft
	bra    @EndXClamp

	@ClampXRight:
	move.l d1, Entity_WorldPosX(a0)
	move.l #0x0, PhysicsObj_VelX(a0)
	bra    @EndXClamp

	@ClampXLeft:
	move.l #0x0, Entity_WorldPosX(a0)
	move.l #0x0, PhysicsObj_VelX(a0)

	@EndXClamp:

	rts

PhysicsObjRest:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_VelY(a0), d0
	add.w  PhysicsObj_AccelX(a0), d0
	add.w  PhysicsObj_AccelY(a0), d0
	cmp.l  #0x0, d0
	bne    @Awake

	; Can sleep
	move.b #0x1, PhysicsObj_Asleep(a0)

	@Awake:

	rts
	
PhysicsObjCollisionCorrection:
	; a0 --- GameObj addr
	; a1 --- Level addr

	;==============================================================
	; Correct floor collision

	; If not moving on Y axis, skip floor and ceiling correction
	cmp.l  #0x0, PhysicsObj_VelY(a0)
	beq    @HeadingNowhereY

	move.b PhysicsObj_OnFloor(a0), d4

	move.l PhysicsObj_LastFloor(a0), d2				; Get last found floor
	cmp.l  #0x0, d2
	beq    @Uninitialised							; First frame, uninitialised
	clr.l  d3
	move.b #0x0, PhysicsObj_OnFloor(a0)				; Clear object on floor flag
	move.l Entity_WorldPosY(a0), d1					; Get Y pos
	move.w Entity_Height(a0), d3					; Get height
	TOSUBPIXELS d3									; Height to world space
	sub.l  d3, d2									; Floor to floor probe space
	cmp.l  d2, d1									; Check if probe is on or under floor
	blt    @AboveFloor
	move.l d2, Entity_WorldPosY(a0) 				; Collision with ground, correct object's Y pos
	
	; If hit floor this frame, handle bounce
	clr.l  d0										; Zero Y velocity by default
	clr.l  d1
	cmp.b  #0x0, d4
	bne    @NoBounceY
	move.w PhysicsObj_BounceY(a0), d1				; Check for bounce
	cmp.w  #0x0, d1
	beq    @NoBounceY
	move.l PhysicsObj_VelY(a0), d0					; Check if heading down
	cmp.l  #0x0, d0
	bgt    @NoBounceY
	neg.l  d0										; Negate Y velocity
	DIVS1616_LOSSY d1, d0							; Div by bounce
	@NoBounceY:

	move.l d0, PhysicsObj_VelY(a0)					; Clear Y velocity
	move.w #0x0, PhysicsObj_AccelY(a0)				; Clear Y acceleration
	move.b #0x1, PhysicsObj_OnFloor(a0)				; Set object on floor flag
	move.b #0x1, PhysicsObj_CloseToFloor(a0)		; Set object close to floor flag
	bra    @EndFloorTest
	@AboveFloor:

	; Check if close to floor
	move.b #0x0, PhysicsObj_CloseToFloor(a0)		; Clear object close to floor flag
	clr.l  d3
	move.w PhysicsObj_StepHeight(a0), d3			; Get step height
	TOSUBPIXELS d3									; To world pos
	sub.l  d3, d2									; Floor to step height space
	cmp.l  d2, d1									; Check if object is on or under floor-step height
	blt    @NotCloseToFloor
	move.b #0x1, PhysicsObj_CloseToFloor(a0)		; Set object close to floor flag
	cmp.b  #0x0, PhysicsObj_SnapToFloor(a0)			; Check if snap to floor is enabled
	beq    @SnapToFloorDisabled
	add.l  d3, d2
	move.l d2, Entity_WorldPosY(a0)					; Snap object to floor height
	@Uninitialised:
	@NotCloseToFloor:
	@EndFloorTest:
	@SnapToFloorDisabled:
	
	;==============================================================
	; Correct ceiling collision
	
	; Get last ceiling collided with
	move.l PhysicsObj_LastCeiling(a0), d0
	cmp.l  #0x0, d0
	beq    @NoCeilingFound
	
	; Determine Y direction
	move.l PhysicsObj_VelY(a0), d1
	cmp.l  #0x0, d1
	ble    @HeadingDown
	
	; Heading up, clamp
	move.l Entity_WorldPosY(a0), d2
	move.l d0, Entity_WorldPosY(a0)
	
	clr.l  d0										; Zero Y velocity by default
	move.w PhysicsObj_BounceY(a0), d1				; Check for bounce
	cmp.w  #0x0, d1
	beq    @NoBounceCeil
	move.l PhysicsObj_VelY(a0), d0
	neg.l  d0										; Negate Y velocity
	DIVS1616_LOSSY d1, d0							; Div by bounce
	@NoBounceCeil:
	move.l d0, PhysicsObj_VelY(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)				; Clear Y acceleration
	
	@NoCeilingFound:
	@HeadingDown:

	@HeadingNowhereY:

	;==============================================================
	; Correct wall collision

	; Clear hit wall flag
	move.b #0x0, PhysicsObj_HitWall(a0)
	
	; Get last wall collided with
	move.l PhysicsObj_LastWall(a0), d0
	cmp.l  #0x0, d0
	beq    @NoWallFound
	
	; Determine X direction
	move.l PhysicsObj_VelX(a0), d1
	cmp.l  #0x0, d1
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingLeft:
	
	; Heading left, clamp
	move.l d0, Entity_WorldPosX(a0)

	; Wall hit
	move.b #PhysicsObjHitWallLeft, PhysicsObj_HitWall(a0)
	
	bra    @EndWallClamp
	
	@HeadingRight:
	
	; Heading right, translate wall to PhysicsObj space
	clr.l  d2
	move.w Entity_Width(a0), d2
	TOSUBPIXELS d2
	sub.l  d2, d0
	
	; Clamp
	move.l d0, Entity_WorldPosX(a0)

	; Wall hit
	move.b #PhysicsObjHitWallRight, PhysicsObj_HitWall(a0)
	
	@EndWallClamp:
	
	clr.l  d0										; Zero X velocity by default
	move.w PhysicsObj_BounceX(a0), d1				; Check for bounce
	cmp.w  #0x0, d1
	beq    @NoBounceX
	move.l PhysicsObj_VelX(a0), d0
	neg.l  d0										; Negate X velocity
	DIVS1616_LOSSY d1, d0							; Div by bounce
	@NoBounceX:
	move.l d0, PhysicsObj_VelX(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)				; Clear X acceleration
	
	@NoWallFound:

	; Sleep if possible
	jsr    PhysicsObjRest

	rts
	
PhysicsObjFindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Forced (ignores velocity check)

	; Fetch last floor test result
	move.l PhysicsObj_LastFloor(a0), d2
	
	;==============================================================

	; If forced, skip velocity checks
	cmp.b  #0x0, d0
	bne    @SkipVelocityCheck
	
	; Check if positive Y velocity (don't bother finding floor)
	move.l PhysicsObj_VelY(a0), d3
	cmp.l  #0x0, d3
	bgt    @EndFloorTest
	
	; Check if zero X and Y velocity (don't bother finding floor)
	or.l   PhysicsObj_VelX(a0), d3
	beq    @EndFloorTest

	@SkipVelocityCheck:

	; Clear last found floor
	move.l #0x0, PhysicsObj_LastFloor(a0)
	
	;==============================================================
	
	; Get floor probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_FloorProbeX(a0), d3	; Get floor probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get floor probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_FloorProbeY(a0), d3	; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1	; Sub step height

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find platform first
	
	cmp.b #0x0, PhysicsObj_CollidePlatforms(a0)
	beq   @NoPlatform
	
	LIST_GET_HEAD Platforms,a3		; Get list head
	@PlatformLp:					; For all platforms in list
	cmp.l  #0x0, a3
	beq    @NoPlatform

	; Ignore self
	move.l Platform_Owner(a3), d2
	cmp.l  a0, d2
	beq    @NextPlatform
	
	; Get platform Left and Right X
	move.w Platform_PosX(a3), d2			;  (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2			; To screen space
	move.w d2, d3
	add.w  Platform_Width(a3), d3
	
	; Get floor probe X
	swap   d1
	move.w d1, d0
	swap   d1
	
	; Check if probe X within platform X-width
	cmp.w  d0, d2
	bgt    @NextPlatform
	cmp.w  d0, d3
	blt    @NextPlatform
	
	; Get platform top
	move.w Platform_PosY(a3), d2
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	
	; Get floor probe Y
	move.w d1, d0
	
	; Check if platform Y is between probe Y and Y+search height
	cmp.w  d2, d0
	bgt    @NextPlatform
	add.w  #(heightmap_max_search_tiles*8), d0
	cmp.w  d2, d0
	blt    @NextPlatform
	
	; Success
	clr.l  d2
	move.w Platform_PosY(a3), d2			; Get platform Y
	TOSUBPIXELS d2							; To world space
	move.l d2, PhysicsObj_LastFloor(a0)		; Set platform Y as floor height
	
	; Add platform X velocity
	move.l Platform_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	; Add occupant mass
	clr.w  d2
	move.b PhysicsObj_Mass(a0), d2
	add.w  d2, Platform_TotalMass(a3)

	; Mark platform occupied
	move.b #0x1, Platform_Occupied(a3)

	bra    @FoundPlatform
	
	@NextPlatform:
	LIST_GET_NEXT Platforms,a3,a3	; Get next ptr
	bra    @PlatformLp				; Loop
	
	@NoPlatform:
	@EndPlatformSearch:
	
	;==============================================================
	; Find floor
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	move.w Level_MapWidthBlocks(a1), d2		; Map width (in blocks) to d2 hi
	swap   d2
	move.w Level_MapHeightBlocks(a1), d2	; Map height (in blocks) to d2 lo
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    PHYS_GetTerrainHeight
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	;==============================================================
	
	cmp.b  #0x0, PhysicsObj_FallThroughHoles(a0)
	beq    @NoHoleCheck						; Check if set to care about holes
	
	andi.w #col_tile_flag_hole, d3			; Flags in d3, check if a hole was found
	cmp.w  #0x0, d3
	bne    @HoleFound
	
	@NoHoleCheck:
	@NoHoleFound:
	cmp.w  #0x0, d0							; Floor height value in d0
	bne    @FoundFloor
	
	;==============================================================

	@ProbeOutOfBounds:
	@HoleFound:
	lea    PhysicsWorld, a2
	move.l PhysicsWorld_GroundHeight(a2), d2	; No floor, hole found, or probe out of bounds, use default ground Y
	bra	   @EndFloorTest
	
	;==============================================================
	
	@FoundFloor:
	clr.l  d2
	move.w d0, d2
	add.w  #vdp_sprite_border_y, d2			; Back to sprite space
	TOSUBPIXELS d2							; Back to world space
	
	; Check if out of bounds
	lea    PhysicsWorld, a2
	move.l PhysicsWorld_GroundHeight(a2), d1
	cmp.l  d1, d2
	ble    @EndFloorTest
	move.l d1, d2
	
	;==============================================================
	
	@EndFloorTest:
	
	move.l d2, PhysicsObj_LastFloor(a0)		; Store last found floor
	
	@FoundPlatform:
	
	rts
	
PhysicsObjFindWall:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Clear last found wall
	move.l #0x0, PhysicsObj_LastWall(a0)
	
	;==============================================================
	
	; Determine direction
	move.l PhysicsObj_VelX(a0), d3
	cmp.l  #0x0, d3
	beq    @HeadingNowhere
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingLeft:
	
	; Get X, left hand side
	move.w Entity_WorldPosX(a0), d1		; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d1		; To screen space
	
	bra    @EndHeadingTest
	
	@HeadingRight:
	
	; Get X, right hand side
	move.w Entity_WorldPosX(a0), d1		; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d1		; To screen space
	add.w  Entity_Width(a0), d1			; Right hand side

	@EndHeadingTest:
	
	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	
	; Get floor probe Y
	swap   d1							; X to upper word
	move.w Entity_WorldPosY(a0), d2		; Get player pos Y (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2		; To screen space
	move.w Entity_Height(a0), d3		; Get height
	add.w  d3, d2						; Get floor probe
	move.w d2, d1						; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1; Sub step height

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	sub.w  #0x1, d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find barrier first
	
	cmp.b #0x0, PhysicsObj_CollideBarriers(a0)
	beq   @NoBarrier
	
	LIST_GET_HEAD Barriers,a3		; Get list head
	@BarrierLp:						; For all barriers in list
	cmp.l  #0x0, a3
	beq    @NoBarrier

	; Ignore barriers shorter than min wall height
	move.w Barrier_Height(a3), d3
	move.w PhysicsObj_MinWallHeight(a0), d4
	cmp.w  d3, d4
	bgt    @NextBarrier
	
	; Get barrier Top and Bottom Y
	move.w Barrier_PosY(a3), d2 			; (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	add.w  d2, d3

	; + step height
	add.w  PhysicsObj_StepHeight(a0), d3
	
	; Get wall probe Y
	move.w d1, d0
	
	; Check if probe Y within barrier Y-height
	cmp.w  d0, d2		; Top
	bgt    @NextBarrier
	cmp.w  d0, d3		; Bottom + step height
	blt    @NextBarrier
	
	; Get barrier X
	move.w Barrier_PosX(a3), d2				; Get X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2			; To screen space

	; Get wall probe X
	swap   d1
	move.w d1, d0
	swap   d1
	
	; Check if probe X is between barrier left and right
	cmp.w  d2, d0							; Compare probe with barrier left
	blt    @NextBarrier
	add.w  Barrier_Width(a3), d2
	cmp.w  d2, d0							; Compare probe with barrier right
	bgt    @NextBarrier
	
	; Success
	move.w Barrier_PosX(a3), d4				; Get barrier X (top word = integer part)

	; If heading left, use right hand side of barrier
	move.l PhysicsObj_VelX(a0), d3
	cmp.l  #0x0, d3
	bgt    @LeftOfBarrier
	add.w  Barrier_Width(a3), d4
	@LeftOfBarrier:

	TOSUBPIXELS d4							; To world space
	
	; Add barrier X velocity
	move.l Barrier_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	bra    @FoundBarrier
	
	@NextBarrier:
	LIST_GET_NEXT Barriers,a3,a3	; Get next ptr
	bra    @BarrierLp				; Loop
	
	@NoBarrier:
	@EndBarrierSearch:
	
	;==============================================================
	; Find wall
	
	; Get collision flags for tile at probe pos
	PUSHM  a0-a1
	clr.l  d2
	move.w Level_MapWidthBlocks(a1), d2
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr	   PHYS_GetTerrainTile
	POPM   a0-a1
	
	; Check if wall
	andi.w #col_tile_flag_solid, d0
	cmp.w  #0x0, d0
	beq    @NoWallFound
	
	;==============================================================
	
	; Wall found - tile X in d3, translate to world space
	clr.l  d4
	move.w d3, d4
	
	; If heading left, use right hand side of tile
	move.l PhysicsObj_VelX(a0), d3
	cmp.l  #0x0, d3
	bgt    @LeftOfTile
	add.l  #0x1, d4
	@LeftOfTile:

	TILES2PIXELS d4						; Tiles to pixels
	add.l  #vdp_sprite_border_x, d4		; Pixels to screen space
	TOSUBPIXELS d4						; Screen space to object space

	;==============================================================

	@FoundBarrier:
	
	; Result
	move.l d4, PhysicsObj_LastWall(a0)
	bra    @End
	
	;==============================================================
	
	@HeadingNowhere:

	; Not heading left/right, check moving barriers instead
	jsr     PhysicsObjFindMovingBarrier

	@ProbeOutOfBounds:
	@NoWallFound:
	@End:

	rts

PhysicsObjFindCeiling:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Clear last ceiling found
	move.l #0x0, PhysicsObj_LastCeiling(a0)
	clr.l  d4
	
	;==============================================================
	
	; If positive or zero velocity, don't bother finding ceiling
	move.l PhysicsObj_VelY(a0), d3
	cmp.l  #0x0, d3
	ble    @EndCeilingTest
	
	; If zero X and Y velocity, don't bother finding ceiling
	or.l   PhysicsObj_VelX(a0), d3
	beq    @EndCeilingTest
	
	;==============================================================
	
	; Get ceiling probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_CeilingProbeX(a0), d3	; Get ceiling probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get ceiling probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_CeilingProbeY(a0), d3	; Get ceiling probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	
	; Get collision flags for tile at probe pos
	PUSHM  a0-a1
	clr.l  d2
	move.w Level_MapWidthBlocks(a1), d2
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr	   PHYS_GetTerrainTile
	POPM   a0-a1
	
	; Check if solid
	andi.w #col_tile_flag_solid, d0
	cmp.w  #0x0, d0
	beq    @NoCeilingFound
	
	;==============================================================
	
	; Ceiling found - tile Y in d4, translate to world space
	TILES2PIXELS d4						; Tiles to pixels
	add.l  #vdp_sprite_border_y, d4		; Pixels to screen space
	TOSUBPIXELS d4						; Screen space to object space

	;==============================================================
	
	@EndCeilingTest:

	; Result
	move.l d4, PhysicsObj_LastCeiling(a0)
	
	;==============================================================
	
	@ProbeOutOfBounds:
	@NoCeilingFound:

	rts

PhysicsObjFindMovingFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Clear last found floor
	move.l #0x0, PhysicsObj_LastFloor(a0)
	
	;==============================================================
	
	; Get floor probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_FloorProbeX(a0), d3	; Get floor probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get floor probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_FloorProbeY(a0), d3	; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1	; Sub step height

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find platform
	
	cmp.b #0x0, PhysicsObj_CollidePlatforms(a0)
	beq   @NoPlatform
	
	LIST_GET_HEAD MovingPlatforms,a3	; Get list head
	@PlatformLp:						; For all platforms in list
	cmp.l  #0x0, a3
	beq    @NoPlatform

	; Ignore stationary platforms
	cmp.l  #0x0, Platform_VelX(a0)
	bne    @Moving
	cmp.l  #0x0, Platform_VelY(a0)
	bne    @Moving
	bra    @NextPlatform

	@Moving:

	; Ignore self
	move.l Platform_Owner(a3), d2
	cmp.l  a0, d2
	beq    @NextPlatform
	
	; Get platform Left and Right X
	move.w Platform_PosX(a3), d2			;  (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2			; To screen space
	move.w d2, d3
	add.w  Platform_Width(a3), d3
	
	; Get floor probe X
	swap   d1
	move.w d1, d0
	swap   d1
	
	; Check if probe X within platform X-width
	cmp.w  d0, d2
	bgt    @NextPlatform
	cmp.w  d0, d3
	blt    @NextPlatform
	
	; Get platform top
	move.w Platform_PosY(a3), d2
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	
	; Get floor probe Y
	move.w d1, d0
	
	; Check if platform Y is between probe Y and Y+search height
	cmp.w  d2, d0
	bgt    @NextPlatform
	add.w  #(heightmap_max_search_tiles*8), d0
	cmp.w  d2, d0
	blt    @NextPlatform
	
	; Success
	clr.l  d2
	move.w Platform_PosY(a3), d2			; Get platform Y
	TOSUBPIXELS d2							; To world space
	move.l d2, PhysicsObj_LastFloor(a0)		; Set platform Y as floor height
	
	; Add platform X velocity
	move.l Platform_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	; Add occupant mass
	clr.w  d2
	move.b PhysicsObj_Mass(a0), d2
	add.w  d2, Platform_TotalMass(a3)

	; Mark platform occupied
	move.b #0x1, Platform_Occupied(a3)

	bra    @FoundPlatform
	
	@NextPlatform:
	LIST_GET_NEXT MovingPlatforms,a3,a3	; Get next ptr
	bra    @PlatformLp					; Loop
	
	@ProbeOutOfBounds:
	@NoPlatform:
	@EndPlatformSearch:
	@FoundPlatform:

	rts

PhysicsObjFindMovingBarrier:
	; a0 --- GameObj addr
	; a1 --- Level addr

	cmp.b #0x0, PhysicsObj_CollideBarriers(a0)
	beq   @NoBarrier

	;==============================================================
	
	; Get floor probe Y
	move.w Entity_WorldPosY(a0), d2		; Get player pos Y (top word = integer part)
	sub.w  #vdp_sprite_border_y, d2		; To screen space
	move.w Entity_Height(a0), d3		; Get height
	add.l  d3, d2						; Get floor probe
	move.w d2, d1						; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1; Sub step height

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	sub.w  #0x1, d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds

	;==============================================================
	
	LIST_GET_HEAD MovingBarriers,a3	; Get list head
	@BarrierLp:						; For all barriers in list
	cmp.l  #0x0, a3
	beq    @NoBarrier

	; Ignore stationary barriers
	move.l Barrier_VelX(a3), d2
	cmp.l  #0x0, d2
	beq    @NextBarrier

	; Ignore barriers shorter than min wall height
	move.w Barrier_Height(a3), d3
	move.w PhysicsObj_MinWallHeight(a0), d4
	cmp.w  d3, d4
	bgt    @NextBarrier

	;==============================================================
	
	; Determine barrier direction
	move.l Barrier_VelX(a3), d3
	cmp.l  #0x0, d3
	beq    @NextBarrier
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingRight:

	; Get probe X, left hand side
	move.w Entity_WorldPosX(a0), d2		; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2		; To screen space
	
	bra    @EndHeadingTest
	
	@HeadingLeft:
	
	; Get probe X, right hand side
	move.w Entity_WorldPosX(a0), d2		; Get player pos X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2		; To screen space
	add.w  Entity_Width(a0), d2			; Right hand side

	@EndHeadingTest:
	
	; Check if X within collision map bounds
	cmp.w  #0x0, d2
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d3
	TILES2PIXELS d3
	cmp.w  d3, d2
	bge    @NextBarrier

	swap   d1
	move.w d2, d1	; X to upper d1
	swap   d1		; Y to lower d1
	
	;==============================================================
	
	; Get barrier Top and Bottom Y
	move.w Barrier_PosY(a3), d2				; (top word = integer part)
	move.w Barrier_Height(a3), d3
	sub.w  #vdp_sprite_border_y, d2			; To screen space
	add.w  d2, d3

	; + step height
	add.w  PhysicsObj_StepHeight(a0), d3
	
	; Get wall probe Y
	move.w d1, d0
	
	; Check if probe Y within barrier Y-height
	cmp.w  d0, d2		; Top
	bgt    @NextBarrier
	cmp.w  d0, d3		; Bottom + step height
	blt    @NextBarrier
	
	; Get barrier X
	move.w Barrier_PosX(a3), d2				; Get X (top word = integer part)
	sub.w  #vdp_sprite_border_x, d2			; To screen space

	; Get wall probe X
	swap   d1
	move.w d1, d0
	swap   d1
	
	; Check if probe X is between barrier left and right
	cmp.w  d2, d0							; Compare probe with barrier left
	blt    @NextBarrier
	add.w  Barrier_Width(a3), d2
	cmp.w  d2, d0							; Compare probe with barrier right
	bgt    @NextBarrier
	
	; Success
	move.w Barrier_PosX(a3), d4				; Get barrier X (top word = integer part)

	; If heading left, use right hand side of barrier
	move.l Barrier_VelX(a3), d3
	cmp.l  #0x0, d3
	blt    @LeftOfBarrier
	add.w  Barrier_Width(a3), d4
	@LeftOfBarrier:

	TOSUBPIXELS d4							; To world space
	
	; Add barrier X velocity
	move.l Barrier_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	bra    @FoundBarrier

	@NextBarrier:
	LIST_GET_NEXT MovingBarriers,a3,a3	; Get next ptr
	bra    @BarrierLp					; Loop

	;==============================================================

	@FoundBarrier:

	; Determine X direction
	move.l Barrier_VelX(a3), d1
	cmp.l  #0x0, d1
	blt    @BarrierHeadingLeft
	bgt    @BarrierHeadingRight
	
	@BarrierHeadingRight:
	
	; Heading right, clamp object left
	move.l d4, Entity_WorldPosX(a0)

	; Wall hit
	move.b #PhysicsObjHitWallLeft, PhysicsObj_HitWall(a0)
	
	bra    @EndWallClamp
	
	@BarrierHeadingLeft:
	
	; Heading left, clamp object right
	clr.l  d2
	move.w Entity_Width(a0), d2
	TOSUBPIXELS d2
	sub.l  d2, d4
	
	; Clamp
	move.l d4, Entity_WorldPosX(a0)

	; Wall hit
	move.b #PhysicsObjHitWallRight, PhysicsObj_HitWall(a0)
	
	@EndWallClamp:
	
	; Zero X velocity
	move.l #0x0, PhysicsObj_VelX(a0)
	
	@NoWallFound:

	;==============================================================
	
	@NoBarrier:
	@ProbeOutOfBounds:

	rts
	
PhysicsObjSnapToFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b #0x1, d0							; Force check regardless of velocity
	jsr    PhysicsObjFindFloor

	move.l PhysicsObj_LastFloor(a0), d2		; Get last found floor
	beq    @NoFloorFound
	
	ENTITY_GETBOTTOM d1,a0					; Get Y bottom
	cmp.l  #PhysicsObjMaxSnapToFloorDist, d1; Check within max snap distance
	bgt    @FloorTooFar
	
	move.w Entity_Height(a0), d3			; Get height
	TOSUBPIXELS d3							; Height to world space
	sub.l  d3, d2							; Floor to floor probe space
	move.l d2, Entity_WorldPosY(a0) 		; Set Y pos
	move.l #0x0, PhysicsObj_VelY(a0)		; Zero object's Y velocity
	move.b #0x1, PhysicsObj_OnFloor(a0)		; Set object on floor flag
	move.b #0x1, PhysicsObj_CloseToFloor(a0); Set object close to floor flag
	
	@NoFloorFound:
	@FloorTooFar:
	
	rts

PhysicsObjFindPushable:
	; a0 --- PhysicsObj addr
	; a1 --- Level addr
	; a2 --- OUT: Pushable obj

	; Get collision bounds
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	
	; Grow by push detect outer box extension
	move.w PhysicsObj_PushDetectOuter(a0), d0
	PHYSICS_GROWBOUNDS d1,d2,d0
	
	; Loop over pushable objects
	LIST_GET_HEAD PushableObjs,a2	; Get list head
	@PushableObjLp:					; For all pushing objects in list
	cmp.l  #0x0, a2
	beq    @NoPushableObj
	
	; Check if can be pushed
	cmp.b  #0x0, PhysicsObj_CanBePushed(a2)
	beq    @NextPushingObj

	; Can't collide with self
	cmp.l  a0, a2
	beq    @NextPushingObj 
	
	; Get pushable obj collision bounds
	PHYSICS_GETBOUNDS d3,d4,d5,a2

	; Grow by push detect outer box extension
	move.w PhysicsObj_PushDetectOuter(a2), d0
	PHYSICS_GROWBOUNDS d3,d4,d0
	
	; Test intersection
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	cmp.b  #0x0, d0
	beq    @NextPushingObj
	
	; Bounds intersect with outer bounds, found
	bra    @FoundPushableObj
	
	@NextPushingObj:
	
	LIST_GET_NEXT PushableObjs,a2,a2	; Get next ptr
	bra    @PushableObjLp				; Loop
	
	@NoPushableObj:

	; Not found
	move.l #0x0, a2

	@FoundPushableObj:

	rts

PhysicsObjPushPullObj:
	; a0 --- PhysicsObj addr
	; a1 --- Level addr
	; a2 --- Pushable obj
	; d0 (b) OUT: Outer bounds touching, and facing the right direction

	; Init return value
	move.b #0x0, d0

	; Check if can be pushed/pulled
	cmp.b  #0x0, PhysicsObj_CanBePushed(a2)
	bne    @CanPush
	cmp.b  #0x0, PhysicsObj_CanBePulled(a2)
	bne    @CanPull
	bra    @CannotPush

	@CanPush:
	@CanPull:

	; Get bounds
	PHYSICS_GETBOUNDS d1,d2,d5,a0
	PHYSICS_GETBOUNDS d3,d4,d5,a2

	; Check outer push bounds
	PUSHM  d1-d4
	move.w PhysicsObj_PushDetectOuter(a0), d0
	PHYSICS_GROWBOUNDS d1,d2,d0
	move.w PhysicsObj_PushDetectOuter(a2), d0
	PHYSICS_GROWBOUNDS d3,d4,d0
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	cmp.b  #0x0, d0
	beq    @OutOfOuterBounds

	;==============================================================
	
	; Determine push direction from object centres
	ENTITY_GETCENTREX d5, a0
	ENTITY_GETCENTREX d6, a2
	cmp.l  d6, d5
	blt    @PushRight

	;==============================================================
	
	; Can be pushed/pulled to/from the left, check pusher is facing left
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @WrongDirection

	; Check if can be pulled
	cmp.b  #0x0, PhysicsObj_CanBePulled(a2)
	beq    @CannotPullLeft

	; If heading right, pulling
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	bgt    @PullingFromLeft

	@CannotPullLeft:

	; Check if can be pushed, and not hitting wall to the left
	cmp.b  #0x0, PhysicsObj_CanBePushed(a2)
	beq    @CannotPush
	cmp.b  #PhysicsObjHitWallLeft, PhysicsObj_HitWall(a2)
	beq    @CannotPush

	; Pushing, check inner bounds
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	cmp.b  #0x0, d0
	beq    @OutOfInnerBounds

	@PullingFromLeft:

	; Correct penetration
	move.l d1, d5
	swap   d5								; Get pusher's left bound
	sub.w  PhysicsObj_BoundsWidth(a2), d5	; Sub pushee's bounds width to get new left
	sub.w  PhysicsObj_BoundsLeft(a2), d5	; Sub pushee's left bound to get new X pos
	sub.w  #0x1, d5							; -1
	
	bra @EndPenetration

	;==============================================================
	
	@PushRight:
	
	; Can be pushed/pulled to/from the right, check pusher is facing right
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	bne    @WrongDirection

	; Check if can be pulled
	cmp.b  #0x0, PhysicsObj_CanBePulled(a2)
	beq    @CannotPullRight

	; If heading left, pulling
	cmp.l  #0x0, PhysicsObj_VelX(a0)
	blt    @PullingFromRight

	@CannotPullRight:

	; Check if can be pushed, and not hitting wall to the right
	cmp.b  #0x0, PhysicsObj_CanBePushed(a2)
	beq    @CannotPush
	cmp.b  #PhysicsObjHitWallRight, PhysicsObj_HitWall(a2)
	beq    @CannotPush

	; Pushing, check inner bounds
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	cmp.b  #0x0, d0
	beq    @OutOfInnerBounds

	@PullingFromRight:

	; Correct penetration
	move.l d2, d5
	swap   d5								; Get pusher's right bound
	add.w  PhysicsObj_BoundsLeft(a2), d5	; Add pushee's left bound to get new X pos
	add.w  #0x1, d5							; +1
	
	;==============================================================

	@EndPenetration:
	
	; Wake physics
	move.b #0x0, PhysicsObj_Asleep(a2)
	
	; Inherit X velocity
	move.l PhysicsObj_VelX(a0), PhysicsObj_VelX(a2)

	; Add penetration as X impulse
	andi.l #0x0000FFFF, d5					; To world space
	TOSUBPIXELS d5
	move.l Entity_WorldPosX(a2), d4
	sub.l  d4, d5
	add.l  d5, PhysicsObj_ImpulseX(a2)

	;==============================================================

	@Pushing:
	@OutOfInnerBounds:

	; Within outer bounds and facing the right direction
	move.b #0x1, d0
	bra    @End

	@CannotPush:
	@OutOfOuterBounds:
	@WrongDirection:

	; Outside outer bounds or facing wrong direction
	move.b #0x0, d0

	@End:
	
	rts

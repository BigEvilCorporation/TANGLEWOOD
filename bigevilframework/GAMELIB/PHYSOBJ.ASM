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
PhysicsObjHitWallNone				equ 0x00
PhysicsObjHitWallLeft				equ 0x01	; Used as-is for forced direction, don't change value
PhysicsObjHitWallRight				equ 0x02	; Used as-is for forced direction, don't change value
PhysicsObjHitStaticWall				equ 0x04
PhysicsObjHitBarrier				equ 0x08
PhysicsObjHitMovingBarrier			equ 0x10

PhysicsObjDefaultPushBoundsOuter	equ 0x6

PhysicsObjMaxSnapToFloorDist		equ 0x10

PhysicsObj_VelocityPerTimeSplice	equ 0x8*subpixels_per_pixel

;==============================================================
; PhysicsObject
;==============================================================
	rsset AnimObj_Struct_Size
;---------------------------------
	LINKED_LIST_NODE PhysicsObjs    ; Linked list entry for all physics objects
	LINKED_LIST_NODE PushableObjs   ; Linked list entry for pushable objects
;---------------------------------
PhysicsObj_LastWall         	rs.l 1 ; Last detected wall X
PhysicsObj_LastFloor        	rs.l 1 ; Last detected floor Y
PhysicsObj_LastCeiling      	rs.l 1 ; Last detected ceiling Y
PhysicsObj_LastPlatform			rs.l 1 ; Last detected platform addr
PhysicsObj_LastBarrier			rs.l 1 ; Last detected barrier addr
PhysicsObj_LastFloorVelocity	rs.l 1 ; Last detected moving platform Y velocity
PhysicsObj_LastWallVelocity		rs.l 1 ; Last detected moving wall X velocity
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
PhysicsObj_DecelY  		    	rs.w 1 ; Y deceleration
PhysicsObj_FloorProbeX	    	rs.w 1 ; Floor probe X offset
PhysicsObj_FloorProbeY	    	rs.w 1 ; Floor probe Y offset
PhysicsObj_CeilingProbeX    	rs.w 1 ; Ceiling probe X offset
PhysicsObj_CeilingProbeY    	rs.w 1 ; Ceiling probe Y offset
PhysicsObj_WallProbeTop			rs.w 1 ; Top wall probe Y offset
PhysicsObj_WallProbeBottom		rs.w 1 ; Bottom wall probe Y offset
PhysicsObj_WallProbeLeft		rs.w 1 ; Left wall probe X offset
PhysicsObj_WallProbeRight		rs.w 1 ; Right wall probe X offset
PhysicsObj_BounceX		    	rs.w 1 ; Bounce X (reflection div)
PhysicsObj_BounceY		    	rs.w 1 ; Bounce Y (reflection div)
PhysicsObj_StepHeight	    	rs.w 1 ; Max step height
PhysicsObj_MinWallHeight    	rs.w 1 ; Min wall height
PhysicsObj_LastTerrainFlags		rs.w 1 ; Flags for last detected terrain
PhysicsObj_CanSleep				rs.b 1 ; Physics can sleep
PhysicsObj_Asleep				rs.b 1 ; Object sleeping
PhysicsObj_Mass             	rs.b 1 ; Object mass
PhysicsObj_HasCollision       	rs.b 1 ; Uses physics
PhysicsObj_Buoyant				rs.b 1 ; Collides with water terrain
PhysicsObj_CollideFloor	    	rs.b 1 ; Collides with floor
PhysicsObj_CollideWalls	    	rs.b 1 ; Collides with walls (bottom probe)
PhysicsObj_CollideWallsTop	    rs.b 1 ; Collides with walls (top probe)
PhysicsObj_CollideCeilings  	rs.b 1 ; Collides with ceilings
PhysicsObj_CollidePlatforms		rs.b 1 ; Collides with platforms
PhysicsObj_CollideBarriers		rs.b 1 ; Collides with barriers
PhysicsObj_CollideSpecialTerrain rs.b 1 ; Collides with 'special' marked terrain
PhysicsObj_FallThroughHoles 	rs.b 1 ; Ignores terrain tiles with 'hole' flag
PhysicsObj_AffectedByGravity   	rs.b 1 ; Gets pushed by gravity force
PhysicsObj_AffectedByWind   	rs.b 1 ; Gets pushed by wind force
PhysicsObj_DecelInAir           rs.b 1 ; Decelerate even if in air
PhysicsObj_OnFloor		    	rs.b 1 ; Object is on floor
PhysicsObj_CloseToFloor	    	rs.b 1 ; Object is close to floor (dist < step height)
PhysicsObj_OnPlatform			rs.b 1 ; Object is on a platform
PhysicsObj_HitWall		    	rs.b 1 ; Object is touching a wall (PhysicsObjHitWall* flags)
PhysicsObj_UnderWater			rs.b 1 ; Object is underwater
PhysicsObj_SnapToFloor	    	rs.b 1 ; Object should snap to floor if within step height
PhysicsObj_SnapToMovingPlatform rs.b 1 ; Object should snap to moving platforms if within step height
PhysicsObj_MaxVelClamp			rs.b 1 ; Clamp to max velocity if exceeded, otherwise use deceleration
PhysicsObj_CanBePushed			rs.b 1 ; Can be pushed (must also be in PushableObjs list)
PhysicsObj_CanBePulled			rs.b 1 ; Can be pulled (must also be in PushableObjs list)
PhysicsObj_ForceUpdate			rs.b 1 ; Force an update next frame even if sleep/out of view
;---------------------------------
	RS_ALIGN
PhysicsObj_Struct_Size      	rs.b 0
	
;==============================================================

PhysicsObjInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Init base
	jsr    AnimObjInit
	
	; Set type
	ori.l  #entity_type_physicsobj, Entity_TypeBits(a0)

	LIST_INIT_LINK PhysicsObjs,a0
	LIST_INIT_LINK PushableObjs,a0
	
	move.l #0x0, PhysicsObj_LastWall(a0)
	move.l #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastCeiling(a0)
	move.l #0x0, PhysicsObj_LastPlatform(a0)
	move.l #0x0, PhysicsObj_LastBarrier(a0)
	move.l #0x0, PhysicsObj_LastFloorVelocity(a0)
	move.l #0x0, PhysicsObj_LastWallVelocity(a0)
	move.w #0x0, PhysicsObj_BoundsLeft(a0)
	move.w #0x0, PhysicsObj_BoundsTop(a0)
	move.w #0x0, PhysicsObj_BoundsWidth(a0)
	move.w #0x0, PhysicsObj_BoundsHeight(a0)
	move.w #PhysicsObjDefaultPushBoundsOuter, PhysicsObj_PushDetectOuter(a0)
	move.w #0x0, PhysicsObj_AccelX(a0)
	move.w #0x0, PhysicsObj_AccelY(a0)
	move.w #0x0, PhysicsObj_DecelX(a0)
	move.w #0x0, PhysicsObj_DecelY(a0)
	move.w #0x0, PhysicsObj_LastTerrainFlags(a0)
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
	move.b #0x1, PhysicsObj_CanSleep(a0)
	move.b #0x0, PhysicsObj_Asleep(a0)
	move.b #0x1, PhysicsObj_Mass(a0)
	move.b #0x1, PhysicsObj_HasCollision(a0)
	move.b #0x0, PhysicsObj_Buoyant(a0)
	move.b #0x1, PhysicsObj_CollideFloor(a0)
	move.b #0x1, PhysicsObj_CollideWalls(a0)
	move.b #0x0, PhysicsObj_CollideWallsTop(a0)
	move.b #0x1, PhysicsObj_CollideCeilings(a0)
	move.b #0x1, PhysicsObj_CollidePlatforms(a0)
	move.b #0x1, PhysicsObj_CollideBarriers(a0)
	move.b #0x1, PhysicsObj_CollideSpecialTerrain(a0)
	move.b #0x0, PhysicsObj_FallThroughHoles(a0)
	move.b #0x0, PhysicsObj_DecelInAir(a0)
	move.b #0x0, PhysicsObj_OnFloor(a0)
	move.b #0x0, PhysicsObj_CloseToFloor(a0)
	move.b #0x0, PhysicsObj_OnPlatform(a0)
	move.b #0x0, PhysicsObj_HitWall(a0)
	move.b #0x0, PhysicsObj_SnapToFloor(a0)
	move.b #0x0, PhysicsObj_SnapToMovingPlatform(a0)
	move.b #0x0, PhysicsObj_MaxVelClamp(a0)
	move.b #0x0, PhysicsObj_CanBePushed(a0)
	move.b #0x0, PhysicsObj_CanBePulled(a0)
	move.b #0x1, PhysicsObj_AffectedByGravity(a0)
	move.b #0x1, PhysicsObj_AffectedByWind(a0)
	move.b #0x0, PhysicsObj_ForceUpdate(a0)

	; Add to physics objs
	jsr    PhysicsWorldAddObject

	rts

PhysicsObjPreStep:
 	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If forced update, skip all checks
	tst.b  PhysicsObj_ForceUpdate(a0)
	bne    @ForcedUpdate
	
	; Check if awake
	tst.b  PhysicsObj_Asleep(a0)
	beq    @SoundAwake
	
	; If asleep, process external forces only
	lea    PhysicsWorld, a2
	move.l PhysicsObj_VelX(a0), d0
	or.l   PhysicsObj_VelY(a0), d0
	or.w   PhysicsObj_AccelX(a0), d0
	or.w   PhysicsObj_AccelY(a0), d0
	or.l   PhysicsObj_LastFloorVelocity(a0), d0
	or.l   PhysicsObj_ImpulseX(a0), d0
	or.l   PhysicsObj_ImpulseY(a0), d0
	beq    @Asleep

	@SoundAwake:
	move.b #0x0, PhysicsObj_Asleep(a0)
	
	; If inactive, bail
	tst.b  Entity_Active(a0)
	beq    @Inactive

	@ForcedUpdate:
	
	tst.b  PhysicsObj_HasCollision(a0)
	beq    @NoPhysics
	
	; Get current animation
	move.l AnimObj_CurrentAnim(a0), a2
	cmp.l  #0x0, a2
	beq    @NoAnim
	
	; Check if velocity is to be cancelled
	tst.b Animation_ZeroVelocity(a2)
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
	
	; Apply Y velocity and check floor collision
	move.l PhysicsObj_VelY(a0), d0
	add.l  PhysicsObj_ImpulseY(a0), d0
	beq    @NoVelY
	jsr    PhysicsObjApplyVelocityY
	bra    @HasVelY
	@NoVelY:
	jsr    PhysicsObjFindMovingFloor
	@HasVelY:

	; Apply X velocity and check wall collision
	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_ImpulseX(a0), d0
	beq    @NoVelX
	jsr    PhysicsObjApplyVelocityX
	bra    @HasVelX
	@NoVelX:
	jsr    PhysicsObjFindMovingBarrier
	@HasVelX:

	; Save (collision corrected) vel for attached platforms/barriers
	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_ImpulseX(a0), d0
	move.l d0, PhysicsObj_LastAppliedVelX(a0)

	move.l PhysicsObj_VelY(a0), d0
	add.l  PhysicsObj_ImpulseY(a0), d0
	move.l d0, PhysicsObj_LastAppliedVelY(a0)
	
	; Clear impulses
	move.l #0x0, PhysicsObj_ImpulseX(a0)
	move.l #0x0, PhysicsObj_ImpulseY(a0)

	; Sleep if possible
	jsr    PhysicsObjRest
	
	; Clear forced update
	move.b #0x0, PhysicsObj_ForceUpdate(a0)

	; If moved, update grid cell
	btst   #EntityWorldGridFlag_InWorldGrid, Entity_WorldGridFlags(a0)
	beq    @NotOnWorldGrid
	move.l PhysicsObj_LastAppliedVelX(a0), d0
	or.l   PhysicsObj_LastAppliedVelY(a0), d0
	beq    @NotMoved
	jsr    EntityUpdateWorldGridIndex
	@NotOnWorldGrid:
	@NotMoved:
	
	bra @End

	@NoPhysics:

	; No physics, just do the basics
	jsr PhysicsObjApplyAccelDecel

	move.l PhysicsObj_VelY(a0), d0
	add.l  PhysicsObj_ImpulseY(a0), d0
	beq    @VelYZero
	jsr    PhysicsObjApplyVelocityY
	@VelYZero:

	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_ImpulseX(a0), d0
	beq    @VelXZero
	jsr    PhysicsObjApplyVelocityX
	@VelXZero:

	bra @End

	@Asleep:
	@Invisible:

	jsr PhysicsObjSleepyUpdate
	
	@End:
	@Inactive:
	
	rts

PhysicsObjUpdate:

	; Base functionality
	jsr AnimObjUpdate
	
	rts

PhysicsObjSleepyUpdate:

	; Clear last applied vel
	move.l #0x0, PhysicsObj_LastAppliedVelX(a0)
	move.l #0x0, PhysicsObj_LastAppliedVelY(a0)

	; Check for moving floors
	move.b PhysicsObj_HitWall(a0), d0
	move.b PhysicsObj_OnPlatform(a0), d1
	eor.b  d1, d0
	PUSHL  d0
	jsr    PhysicsObjFindMovingFloor
	POPL   d0
	move.b PhysicsObj_HitWall(a0), d1
	move.b PhysicsObj_OnPlatform(a0), d2
	eor.b  d2, d1
	cmp.b  d0, d1
	beq    @NoFloorChange
	
	; Floor/wall state changed, run collision correction
	move.b #0x0, d1
	jsr    PhysicsObjCollisionCorrectX
	jsr    PhysicsObjCollisionCorrectY
	
	; Wake up
	move.b #0x0, PhysicsObj_Asleep(a0)
	
	@NoFloorChange:
	
	;==============================================================
	
	; Check for moving walls
	jsr    PhysicsObjFindMovingBarrier

	rts
	
PhysicsObjApplyAccelDecel:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l PhysicsObj_VelX(a0), d0		; Fetch X velocity from RAM
	
	; Check if accelerating X
	move.w PhysicsObj_AccelX(a0), d1	; Fetch X acceleration from RAM
	beq    @IdleXDecel					; X controls idle, decelerate
	ext.l  d1							; Sign extend word to long
	
	; Apply speed div
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	; Apply acceleration
	add.l  d1, d0						; Add X acceleration
	
	; Get max X velocity
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @AirVelocity
	move.l PhysicsObj_MaxVelFloorX(a0), d1	; Get max velocity +ve
	bra    @FloorVelocity
	@AirVelocity:
	move.l PhysicsObj_MaxVelAirX(a0), d1	; Get max velocity +ve
	@FloorVelocity:

	; Check clamp type
	tst.b  PhysicsObj_MaxVelClamp(a0)
	bne    @ClampMaxVelX
	
	; Check if past max velocity
	cmp.l  d1, d0				; Compare velocity with max
	bgt    @ClampSpeedDecel	    ; (BGT is signed comparison)
	neg.l  d1					; Get max velocity -ve
	cmp.l  d1, d0				; Compare
	blt    @ClampSpeedDecel	    ; (BLT is signed comparison)
	bra    @EndAccelDecelX		; Within bounds
	
	@ClampMaxVelX:
	
	cmp.l  d1, d0				; Compare velocity with max
	bgt    @ClampX			    ; (BGT is signed comparison)
	neg.l  d1					; Get max velocity -ve
	cmp.l  d1, d0				; Compare
	blt    @ClampX			    ; (BLT is signed comparison)
	bra    @EndAccelDecelX		; Within bounds
	
	@ClampX:
	move.l d1, d0
	bra    @EndAccelDecelX
	
	@IdleXDecel:
	
	; Only decelerate (when X controls idle) if not in air
	tst.b  PhysicsObj_DecelInAir(a0)
	bne    @Decel
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @EndAccelDecelX

	@Decel:
	@ClampSpeedDecel:
	
	; Determine deceleration direction
	tst.l PhysicsObj_VelX(a0)
	beq @EndAccelDecelX	; No velocity
	bgt @DecelFromPosX	; Postive velocity
	blt @DecelFromNegX	; Negative velocity
	
	; Decelerate from positive X velocity towards 0
	@DecelFromPosX:
	move.w PhysicsObj_DecelX(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	sub.l d1, d0				; Clamp to 0
	bge @EndAccelDecelX
	moveq #0x0, d0
	bra @EndAccelDecelX
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNegX:
	move.w PhysicsObj_DecelX(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	clr.l  d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	add.l d1, d0
	ble @EndAccelDecelX			; Clamp to 0
	moveq #0x0, d0
	bra @EndAccelDecelX
	
	@EndAccelDecelX:

	move.l d0, PhysicsObj_VelX(a0)		; Back to RAM
	
	;==============================================================
	
	move.l PhysicsObj_VelY(a0), d0		; Fetch Y velocity from RAM

	; Check if accelerating Y
	move.w PhysicsObj_AccelY(a0), d7	; Fetch Y acceleration from RAM
	beq    @IdleYDecel					; Y controls idle, decelerate
	ext.l  d7							; Sign extend word to long
	
	; Apply speed div
	moveq #0x0, d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d7
	
	; Apply acceleration
	add.l  d7, d0						; Add Y acceleration
	
	; Check if past max velocity
	move.l PhysicsObj_MaxVelYUp(a0), d7		; Get max velocity +ve
	cmp.l  d7, d0
	bgt    @ClampY
	move.l PhysicsObj_MaxVelYDown(a0), d7	; Get max velocity -ve
	neg.l  d7
	cmp.l  d7, d0
	blt    @ClampY
	bra    @EndAccelDecelY		; Within bounds
	
	@ClampY:
	move.l d7, d0
	
	@IdleYDecel:

	; Determine deceleration direction
	tst.l d0
	beq @EndAccelDecelY	; No velocity
	bgt @DecelFromPosY	; Postive velocity
	blt @DecelFromNegY	; Negative velocity
	
	; Decelerate from positive X velocity towards 0
	@DecelFromPosY:
	move.w PhysicsObj_DecelY(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	moveq #0x0, d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	sub.l d1, d0
	bge @EndAccelDecelY			; Clamp to 0
	moveq #0x0, d0
	bra @EndAccelDecelY
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNegY:
	move.w PhysicsObj_DecelY(a0), d1
	ext.l  d1						; Sign extend word to long
	
	; Apply speed div
	moveq #0x0, d2
	move.b AnimObj_SpeedDiv(a0), d2
	DIVS1616_LOSSY d2, d1
	
	add.l d1, d0				; Clamp to 0
	ble @EndAccelDecelY
	moveq #0x0, d0
	bra @EndAccelDecelY
	
	@EndAccelDecelY:

	move.l d0, PhysicsObj_VelY(a0)		; Back to RAM
	
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

	tst.b  PhysicsObj_AffectedByGravity(a0)
	beq    @NotAffectedByGravity
	
	; Get gravity
	move.l PhysicsWorld_Gravity(a2), d2

	; Apply speed div
	DIVS1616_LOSSY d6, d2

	; Apply underwater div
	tst.b  PhysicsObj_UnderWater(a0)
	beq    @NotInWaterX
	DIVS1616_LOSSY_FIXED #0x2, d2
	@NotInWaterX:

	; Get current Y velocity
	move.l PhysicsObj_VelY(a0), d5
	move.l d5, d7

	; Apply gravity
	sub.l  d2, d5

	; If gravity caused vel to hit zero, still need to do floor tests
	bne    @NoForceFloorTest
	tst.l  d7
	beq    @NoForceFloorTest
	move.b #0x1, PhysicsObj_ForceUpdate(a0)
	@NoForceFloorTest:

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

	tst.b  PhysicsObj_AffectedByWind(a0)
	beq    @NotAffectedByWind

	; Get wind force
	move.l PhysicsWorld_Wind(a2), d1
	beq    @NoWind

	; Get wind resistance
	move.l PhysicsObj_WindResistanceFloor(a0), d3
	tst.b  PhysicsObj_CloseToFloor(a0)
	bne    @OnFloor
	move.l PhysicsObj_WindResistanceAir(a0), d3
	@OnFloor:

	; Apply resistance, check if wind is strong enough
	tst.l  d1
	bge    @Positive
	add.l  d3, d1
	tst.l  d1
	bgt    @NotAffectedByWind
	bra    @ApplyWind
	@Positive:
	sub.l  d3, d1
	tst.l  d1
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

PhysicsObjApplyVelocityX:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (l) X velocity
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0

	; Apply underwater div
	tst.b  PhysicsObj_UnderWater(a0)
	beq    @NotInWaterX
	DIVS1616_LOSSY_FIXED #0x2, d0
	@NotInWaterX:

	;==============================================================

	; Time splice X for velocities > collision tile size
	move.l d0, d3

	@TimestepX:

	; Next timestep
	move.l d3, d2

	; Clamp to max
	tst.l  d0
	bgt    @PositiveX
	CLAMPL d2, #-PhysicsObj_VelocityPerTimeSplice, #0x0	; Clamp -ve vel to 0
	addi.l #PhysicsObj_VelocityPerTimeSplice, d3		; Advance next timestep
	bra    @NegativeX
	@PositiveX:
	CLAMPL d2, #0x0, #PhysicsObj_VelocityPerTimeSplice	; Clamp 0 to +ve vel
	subi.l #PhysicsObj_VelocityPerTimeSplice, d3		; Advance next timestep
	@NegativeX:

	tst.l  d2
	beq    @EndVelX

	PUSHM  d0-d3
	
	move.l Entity_WorldPosX(a0), d1		; Get pos
	add.l  d2, d1						; Add velocity to pos
	move.l d1, Entity_WorldPosX(a0)

	tst.b  PhysicsObj_HasCollision(a0)
	beq    @NoCheckCollision

	; Collision check wall (bottom probe)
	tst.b  PhysicsObj_CollideWalls(a0)
	beq    @NoCheckWall
	move.b #0x0, d0
	move.b #0x0, d1
	jsr    PhysicsObjFindWall

	; Collision check wall (top probe)
	tst.b  PhysicsObj_HitWall(a0)
	bne    @NoCheckTop
	tst.b  PhysicsObj_CollideCeilings(a0)
	beq    @NoCheckTop
	move.b #0x1, d0
	move.b #0x0, d1
	jsr    PhysicsObjFindWall
	@NoCheckTop:

	@NoCheckWall:

	; Collision correction
	move.b #0x0, d1
	jsr    PhysicsObjCollisionCorrectX

	@NoCheckCollision:

	POPM   d0-d3

	; Next timestep
	bra    @TimestepX

	@EndVelX:

	rts
	
PhysicsObjApplyVelocityY:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (l) Y velocity
	
	; Apply speed div
	clr.l  d1
	move.b AnimObj_SpeedDiv(a0), d1
	DIVS1616_LOSSY d1, d0

	; Apply underwater div
	tst.b  PhysicsObj_UnderWater(a0)
	beq    @NotInWaterY
	DIVS1616_LOSSY_FIXED #0x2, d0
	@NotInWaterY:

	;==============================================================

	; Time splice Y for velocities > collision tile size
	move.l d0, d3

	@TimestepY:

	; Next timestep
	move.l d3, d2

	; Clamp to max
	tst.l  d0
	bgt    @PositiveY
	CLAMPL d2, #-PhysicsObj_VelocityPerTimeSplice, #0x0	; Clamp -ve vel to 0
	addi.l #PhysicsObj_VelocityPerTimeSplice, d3		; Advance next timestep
	bra    @NegativeY
	@PositiveY:
	CLAMPL d2, #0x0, #PhysicsObj_VelocityPerTimeSplice	; Clamp 0 to +ve vel
	subi.l #PhysicsObj_VelocityPerTimeSplice, d3		; Advance next timestep
	@NegativeY:

	tst.l  d2
	beq    @EndVelY

	PUSHM  d0-d3
	
	move.l Entity_WorldPosY(a0), d1		; Get Y pos
	sub.l  d2, d1						; Sub velocity from pos (Y is upside down)
	move.l d1, Entity_WorldPosY(a0)		; Put new Y pos back in RAM

	tst.b  PhysicsObj_HasCollision(a0)
	beq    @NoCheckCollision

	; Find floor
	tst.b  PhysicsObj_CollideFloor(a0)
	beq    @NoCheckFloor
	move.b PhysicsObj_ForceUpdate(a0), d0
	jsr    PhysicsObjFindFloor
	@NoCheckFloor:

	; Find ceiling
	tst.b  PhysicsObj_CollideCeilings(a0)
	beq    @NoCheckCeilings
	jsr    PhysicsObjFindCeiling
	@NoCheckCeilings:

	; If hitting wall and no X vel, also re-check walls
	move.b PhysicsObj_HitWall(a0), d1
	beq    @NoCheckWall
	move.l PhysicsObj_VelX(a0), d0
	add.l  PhysicsObj_ImpulseX(a0), d0
	bne    @NoCheckWall

	; Use last wall direction
	andi.b #0x3, d1	; Left = 1, right = 2

	; Collision check wall (bottom probe)
	tst.b  PhysicsObj_CollideWalls(a0)
	beq    @NoCheckWall
	move.b #0x0, d0
	PUSHW  d1
	jsr    PhysicsObjFindWall
	POPW   d1

	; Collision check wall (top probe)
	tst.b  PhysicsObj_HitWall(a0)
	bne    @NoCheckTop
	tst.b  PhysicsObj_CollideCeilings(a0)
	beq    @NoCheckTop
	move.b #0x1, d0
	PUSHW  d1
	jsr    PhysicsObjFindWall
	POPW   d1
	@NoCheckTop:

	; Collision correction
	jsr    PhysicsObjCollisionCorrectX

	@NoCheckWall:
	
	; Collision correction
	jsr    PhysicsObjCollisionCorrectY

	@NoCheckCollision:

	POPM   d0-d3

	; Next timestep
	bra    @TimestepY

	@EndVelY:

	rts

PhysicsObjRest:
	; a0 --- GameObj addr
	; a1 --- Level addr

	tst.b  PhysicsObj_CanSleep(a0)
	beq    @CannotSleep
	tst.b  PhysicsObj_OnFloor(a0)
	beq    @CannotSleep
	tst.b  PhysicsObj_ForceUpdate(a0)
	bne    @CannotSleep

	move.l PhysicsObj_VelX(a0), d0
	or.l   PhysicsObj_VelY(a0), d0
	or.w   PhysicsObj_AccelX(a0), d0
	or.w   PhysicsObj_AccelY(a0), d0
	or.b   PhysicsObj_OnPlatform(a0), d0
	or.b   PhysicsObj_HitWall(a0), d0
	or.l   PhysicsObj_ImpulseX(a0), d0
	or.l   PhysicsObj_ImpulseY(a0), d0
	bne    @Awake

	; Can sleep
	move.b #0x1, PhysicsObj_Asleep(a0)

	@CannotSleep:
	@Awake:

	rts

PhysicsObjCollisionCorrectX:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d1 (b) Force check (1 = left, 2 = right)

	;==============================================================
	; Correct wall collision

	; If colliding with a wall
	move.b PhysicsObj_HitWall(a0), d0
	andi.b #(PhysicsObjHitStaticWall|PhysicsObjHitBarrier|PhysicsObjHitMovingBarrier), d0
	beq    @NoWallFound
	
	; Get last wall collided with
	move.l PhysicsObj_LastWall(a0), d0

	cmp.b  #0x1, d1
	beq    @HeadingLeft
	cmp.b  #0x2, d1
	beq    @HeadingRight
	
	; Determine X direction
	move.l PhysicsObj_VelX(a0), d1
	add.l  PhysicsObj_ImpulseX(a0), d1
	sub.l  PhysicsObj_LastWallVelocity(a0), d1
	tst.l  d1
	beq    @HeadingNowhere
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingLeft:
	
	; Heading left, clamp
	tst.l  d0
	beq    @UsingCachedWallL
	move.w PhysicsObj_WallProbeLeft(a0), d1
	TOSUBPIXELS d1
	sub.l  d1, d0
	move.l d0, Entity_WorldPosX(a0)
	@UsingCachedWallL:

	; Wall hit
	andi.b #~PhysicsObjHitWallRight, PhysicsObj_HitWall(a0)
	ori.b  #PhysicsObjHitWallLeft, PhysicsObj_HitWall(a0)
	
	bra    @EndWallClamp
	
	@HeadingRight:
	
	; Heading right, clamp
	tst.l  d0
	beq    @UsingCachedWallR
	move.w PhysicsObj_WallProbeRight(a0), d1
	TOSUBPIXELS d1
	sub.l  d1, d0
	move.l d0, Entity_WorldPosX(a0)
	@UsingCachedWallR:

	; Wall hit
	andi.b #~PhysicsObjHitWallLeft, PhysicsObj_HitWall(a0)
	ori.b  #PhysicsObjHitWallRight, PhysicsObj_HitWall(a0)
	
	@EndWallClamp:
	
	clr.l  d0										; Zero X velocity by default
	move.w PhysicsObj_BounceX(a0), d1				; Check for bounce
	beq    @NoBounceX
	move.l PhysicsObj_VelX(a0), d0
	neg.l  d0										; Negate X velocity
	DIVS1616_LOSSY d1, d0							; Div by bounce
	@NoBounceX:
	move.l d0, PhysicsObj_VelX(a0)
	;move.w #0x0, PhysicsObj_AccelX(a0)				; Clear X acceleration

	bra    @End
	
	@NoWallFound:
	
	; Not hitting wall
	andi.b #~(PhysicsObjHitWallLeft|PhysicsObjHitWallRight), PhysicsObj_HitWall(a0)
	
	@HeadingNowhere:
	@End:

	rts
	
PhysicsObjCollisionCorrectY:
	; a0 --- GameObj addr
	; a1 --- Level addr

	;==============================================================
	; Correct floor collision

	; If not moving on Y axis, skip floor and ceiling correction
	tst.l  PhysicsObj_VelY(a0)
	beq    @HeadingNowhereY

	move.b PhysicsObj_OnFloor(a0), d4

	move.l PhysicsObj_LastFloorVelocity(a0), d0		; Get last floor velocity
	move.l PhysicsObj_LastFloor(a0), d2				; Get last found floor
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
	tst.l  d0										; Only if not a moving platform
	bne    @NoBounceY
	clr.l  d1
	tst.b  d4
	bne    @NoBounceY
	move.w PhysicsObj_BounceY(a0), d1				; Check for bounce
	beq    @NoBounceY
	move.l PhysicsObj_VelY(a0), d0					; Check if heading down
	tst.l  d0
	bgt    @NoBounceY
	neg.l  d0										; Negate Y velocity
	DIVS1616_LOSSY d1, d0							; Div by bounce
	@NoBounceY:

	move.l d0, PhysicsObj_VelY(a0)					; Take platform's Y velocity
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

	; Snap to floor
	tst.b  PhysicsObj_SnapToFloor(a0)				; Check if snap to floor is enabled
	bne    @SnapToFloor
	tst.b  PhysicsObj_SnapToMovingPlatform(a0)		; Check if snap to platform is enabled
	beq    @EndSnapToFloor
	tst.b  PhysicsObj_OnPlatform(a0)				; Check if on platform
	beq    @EndSnapToFloor
	tst.l  PhysicsObj_LastFloorVelocity(a0)			; Check if platform moving
	beq    @EndSnapToFloor
	@SnapToFloor:
	add.l  d3, d2
	move.l d2, Entity_WorldPosY(a0)					; Snap object to floor height
	tst.l  d0
	ble    @PlatformDown
	move.l d0, PhysicsObj_VelY(a0)					; Take platform's Y velocity if heading up
	@PlatformDown:
	move.w #0x0, PhysicsObj_AccelY(a0)				; Clear Y acceleration
	move.b #0x1, PhysicsObj_OnFloor(a0)				; Set object on floor flag
	@EndSnapToFloor:

	@Uninitialised:
	@NotCloseToFloor:
	@EndFloorTest:
	
	;==============================================================
	; Correct ceiling collision
	
	; Get last ceiling collided with
	move.l PhysicsObj_LastCeiling(a0), d0
	beq    @NoCeilingFound
	
	; Determine Y direction
	move.l PhysicsObj_VelY(a0), d1
	tst.l  d1
	ble    @HeadingDown
	
	; Heading up, clamp
	move.l Entity_WorldPosY(a0), d2
	move.l d0, Entity_WorldPosY(a0)
	
	clr.l  d0										; Zero Y velocity by default
	move.w PhysicsObj_BounceY(a0), d1				; Check for bounce
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

	rts
	
PhysicsObjFindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) Forced (ignores velocity check)

	; Fetch last floor test result
	move.l PhysicsObj_LastFloor(a0), d2
	
	;==============================================================

	; If forced, skip velocity checks
	tst.b  d0
	bne    @SkipVelocityCheck
	
	; If on moving platform, skip velocity checks
	tst.l  PhysicsObj_LastFloorVelocity(a0)
	bne    @SkipVelocityCheck
	
	; Check if positive Y velocity (don't bother finding floor)
	move.l PhysicsObj_VelY(a0), d3
	tst.l  d3
	bgt    @MovingFloorsOnly
	
	; Check if zero X and Y velocity (don't bother finding floor)
	or.l   PhysicsObj_VelX(a0), d3
	beq    @MovingFloorsOnly

	@SkipVelocityCheck:

	; Clear last found floor and flags
	move.l #0x0, PhysicsObj_LastFloor(a0)
	move.l #0x0, PhysicsObj_LastFloorVelocity(a0)
	move.w #0x0, PhysicsObj_LastTerrainFlags(a0)
	
	;==============================================================
	
	; Get floor probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	subi.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_FloorProbeX(a0), d3	; Get floor probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get floor probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_FloorProbeY(a0), d3	; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1	; Sub step height

	; Check if Y within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find platform first
	
	tst.b PhysicsObj_CollidePlatforms(a0)
	beq   @NoPlatform

	move.l #0x0, PhysicsObj_LastPlatform(a0)
	move.b #0x0, PhysicsObj_OnPlatform(a0)
	
	LIST_GET_HEAD Platforms,a3		; Get list head
	@PlatformLp:					; For all platforms in list
	cmp.l  #0x0, a3
	beq    @NoPlatform

	; Ignore self
	move.l Platform_Owner(a3), a4
	cmp.l  a0, a4
	beq    @NextPlatform
	
	; Get platform Left and Right X
	move.w Platform_PosX(a3), d2			;  (top word = integer part)
	subi.w  #vdp_sprite_border_x, d2			; To screen space
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
	subi.w  #vdp_sprite_border_y, d2			; To screen space
	
	; Get floor probe Y
	move.w d1, d0
	
	; Check if platform Y is between probe Y and Y+search height
	cmp.w  d2, d0
	bgt    @NextPlatform
	addi.w #(heightmap_max_search_tiles*8), d0
	cmp.w  d2, d0
	blt    @NextPlatform

	; Get terrain flags
	move.w Platform_TerrainFlags(a3), d4

	; If water, and not buoyant, don't collide
	tst.b  PhysicsObj_Buoyant(a0)
	bne    @CollideWaterPlatform
	move.w d4, d5
	andi.w #col_tile_flag_water, d5
	bne    @NextPlatform
	@CollideWaterPlatform:

	; If special terrain, and shouldn't collide, bail out
	tst.b  PhysicsObj_CollideSpecialTerrain(a0)
	bne    @CollideSpecialPlatform
	move.w d4, d5
	andi.w #col_tile_flag_special, d5
	bne    @NextPlatform
	@CollideSpecialPlatform:
	
	; Found a platform within step height
	clr.l  d2
	move.w Platform_PosY(a3), d2			; Get platform Y
	TOSUBPIXELS d2							; To world space
	move.l d2, PhysicsObj_LastFloor(a0)		; Set platform Y as floor height
	move.l a3, PhysicsObj_LastPlatform(a0)
	move.b #0x1, PhysicsObj_OnPlatform(a0)

	; Add platform X velocity
	move.l Platform_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	; Set last Y velocity
	move.l Platform_VelY(a3), PhysicsObj_LastFloorVelocity(a0)

	; Add occupant mass
	clr.w  d2
	move.b PhysicsObj_Mass(a0), d2
	add.w  d2, Platform_TotalMass(a3)

	; Mark platform occupied
	move.b #0x1, Platform_Occupied(a3)

	; Set platform last occupant
	move.l a0, Platform_LastOccupant(a3)

	bra    @FoundPlatform
	
	@NextPlatform:
	LIST_GET_NEXT Platforms,a3,a3	; Get next ptr
	bra    @PlatformLp				; Loop
	
	@NoPlatform:
	@EndPlatformSearch:
	
	;==============================================================
	; Find floor

	; Translate probe position to collision map space
	move.w Level_ColMapHeight(a1), d4
	move.w Level_ColMapTop(a1), d6
	TILES2PIXELS d4
	TILES2PIXELS d6

	sub.w  d6, d1				; Translate Y pos to map top
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d4, d1				; If > height
	bgt    @ProbeOutOfBounds

	swap   d1

	move.w Level_ColMapWidth(a1), d3
	move.w Level_ColMapLeft(a1), d5
	TILES2PIXELS d3
	TILES2PIXELS d5
	
	sub.w  d5, d1				; Translate X pos to map left
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d3, d1				; If > width
	bgt    @ProbeOutOfBounds

	swap   d1
	
	; Query collision map
	PUSHM  d5-d6/a0-a1
	move.w Level_ColMapWidthBlocks(a1), d2	; Collision map width (in blocks) to d2 hi
	swap   d2
	move.w Level_ColMapHeightBlocks(a1), d2	; Collision map height (in blocks) to d2 lo
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    PHYS_GetTerrainHeight
	POPM   d5-d6/a0-a1

	; Store terrain flags
	move.w d3, PhysicsObj_LastTerrainFlags(a0)
	
	;==============================================================

	; If water terrain, and not buoyant, bail out
	tst.b  PhysicsObj_Buoyant(a0)
	bne    @CollideWater
	move.w d3, d4
	andi.w #col_tile_flag_water, d4
	bne    @DontCollide
	@CollideWater:

	; If special terrain, and shouldn't collide, bail out
	tst.b  PhysicsObj_CollideSpecialTerrain(a0)
	bne    @CollideSpecial
	move.w d3, d4
	andi.w #col_tile_flag_special, d4
	bne    @DontCollide
	@CollideSpecial:
	
	; If a hole, and shouldn't collide, bail out
	tst.b  PhysicsObj_FallThroughHoles(a0)
	beq    @NoHoleCheck						; Check if set to care about holes
	
	move.w d3, d4
	andi.w #col_tile_flag_hole, d4
	bne    @DontCollide
	
	@NoHoleCheck:
	@NoHoleFound:
	tst.w  d0							; Floor height value in d0
	bne    @FoundFloor
	
	;==============================================================

	@ProbeOutOfBounds:
	@DontCollide:
	lea    PhysicsWorld, a2
	move.l PhysicsWorld_GroundHeight(a2), d2	; No floor, hole found, or probe out of bounds, use default ground Y
	bra	   @EndFloorTest
	
	;==============================================================
	
	@FoundFloor:
	clr.l  d2
	move.w d0, d2
	add.w  d6, d2							; Back to map space
	addi.w #vdp_sprite_border_y, d2			; Back to sprite space
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
	bra    @End

	@MovingFloorsOnly:

	jsr    PhysicsObjFindMovingFloor
	
	@FoundPlatform:
	@End:
	
	rts
	
PhysicsObjFindWall:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d0 (b) 0 == Bottom, 1 = top
	; d1 (b) Forced (1 = left, 2 = right)
	
	;==============================================================

	move.b d1, d7
	cmp.b  #0x1, d1
	beq    @HeadingLeft
	cmp.b  #0x2, d1
	beq    @HeadingRight
	
	; Determine direction
	move.l PhysicsObj_VelX(a0), d3
	add.l  PhysicsObj_ImpulseX(a0), d3
	beq    @HeadingNowhere
	
	tst.l  d3
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingLeft:
	
	; Get X, left hand side
	move.w Entity_WorldPosX(a0), d1				; Get player pos X (top word = integer part)
	add.w  PhysicsObj_WallProbeLeft(a0), d1		; Add probe offset
	subi.w  #vdp_sprite_border_x, d1			; To screen space
	
	bra    @EndHeadingTest
	
	@HeadingRight:
	
	; Get X, right hand side
	move.w Entity_WorldPosX(a0), d1				; Get player pos X (top word = integer part)
	add.w  PhysicsObj_WallProbeRight(a0), d1	; Add probe offset
	subi.w  #vdp_sprite_border_x, d1			; To screen space

	@EndHeadingTest:

	; Clear static wall and static barrier flags
	andi.b #~(PhysicsObjHitStaticWall|PhysicsObjHitBarrier), PhysicsObj_HitWall(a0)
	
	; Check if X within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	tst.b  d0
	bne    @FloorProbeTop
	
	; Get wall probe Y (bottom)
	move.w PhysicsObj_WallProbeBottom(a0), d3
	bra    @FloorProbeBottom

	@FloorProbeTop:

	; Get wall probe Y (top)
	move.w PhysicsObj_WallProbeTop(a0), d3

	@FloorProbeBottom:

	swap   d1							; X to upper word
	move.w Entity_WorldPosY(a0), d2		; Get player pos Y (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2		; To screen space
	add.w  d3, d2						; Offset by floor probe
	move.w d2, d1						; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1; Sub step height

	; Check if Y within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	subq.w  #0x1, d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find barrier first
	
	tst.b PhysicsObj_CollideBarriers(a0)
	beq   @NoBarrier

	; Clear hit barrier flags
	andi.b #~PhysicsObjHitBarrier, PhysicsObj_HitWall(a0)
	andi.b #~PhysicsObjHitMovingBarrier, PhysicsObj_HitWall(a0)

	; Clear last hit barrier
	move.l #0x0, PhysicsObj_LastBarrier(a0)
	
	LIST_GET_HEAD Barriers,a3		; Get list head
	@BarrierLp:						; For all barriers in list
	cmp.l  #0x0, a3
	beq    @NoBarrier

	; Ignore broken barriers
	tst.b  Barrier_Broken(a3)
	bne    @NextBarrier

	; Ignore barriers shorter than min wall height
	move.w Barrier_Height(a3), d3
	move.w PhysicsObj_MinWallHeight(a0), d4
	cmp.w  d3, d4
	bgt    @NextBarrier
	
	; Get barrier Top and Bottom Y
	move.w Barrier_PosY(a3), d2 			; (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2			; To screen space
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
	subi.w  #vdp_sprite_border_x, d2			; To screen space

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

	; If hit velocity exceed max, break barrier and continue
	move.b PhysicsObj_Mass(a0), d2
	cmp.b  Barrier_BreakMass(a3), d2
	blt    @NotBroken
	move.l Barrier_BreakVel(a3), d2
	beq    @NotBroken
	move.l Barrier_TotalHitVel(a3), d3
	add.l  PhysicsObj_VelX(a0), d3
	move.l d3, Barrier_TotalHitVel(a3)
	cmp.l  d2, d3
	blt    @NotBroken
	move.b #0x1, Barrier_Broken(a3)
	bra    @NextBarrier
	@NotBroken:
	
	; Success
	move.w Barrier_PosX(a3), d4				; Get barrier X (top word = integer part)

	; If heading left, use right hand side of barrier
	move.l PhysicsObj_VelX(a0), d3
	add.l  PhysicsObj_ImpulseX(a0), d3
	cmp.b  #0x2, d7
	beq    @LeftOfBarrier	; Forced direction flag
	tst.l  d3
	bgt    @LeftOfBarrier
	add.w  Barrier_Width(a3), d4
	@LeftOfBarrier:

	TOSUBPIXELS d4							; To world space
	
	; Add object velocity to barrier hit velocity
	move.l PhysicsObj_VelX(a0), d2
	add.l  PhysicsObj_ImpulseX(a0), d2
	add.l  d2, Barrier_TotalHitVel(a3)

	; Add barrier X velocity to object
	move.l Barrier_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)
	
	; Set barrier collision
	tst.l  d2
	beq    @NotMoving
	ori.b  #PhysicsObjHitMovingBarrier, PhysicsObj_HitWall(a0)
	bra    @EndFlagSet
	@NotMoving:
	ori.b  #PhysicsObjHitBarrier, PhysicsObj_HitWall(a0)
	@EndFlagSet:

	; Set last hit barrier
	move.l a3, PhysicsObj_LastBarrier(a0)

	bra    @FoundBarrier
	
	@NextBarrier:
	LIST_GET_NEXT Barriers,a3,a3	; Get next ptr
	bra    @BarrierLp				; Loop
	
	@NoBarrier:
	@EndBarrierSearch:
	
	;==============================================================
	; Find wall

	; Translate probe position to collision map space
	move.w Level_ColMapHeight(a1), d4
	move.w Level_ColMapTop(a1), d6
	TILES2PIXELS d4
	TILES2PIXELS d6

	sub.w  d6, d1				; Translate Y pos to map top
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d4, d1				; If > height
	bgt    @ProbeOutOfBounds

	swap   d1

	move.w Level_ColMapWidth(a1), d3
	move.w Level_ColMapLeft(a1), d5
	TILES2PIXELS d3
	TILES2PIXELS d5
	
	sub.w  d5, d1				; Translate X pos to map left
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d3, d1				; If > width
	bgt    @ProbeOutOfBounds

	swap   d1
	
	; Get collision flags for tile at probe pos
	PUSHM  d5-d7/a0-a1
	clr.l  d2
	move.w Level_ColMapWidthBlocks(a1), d2
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr	   PHYS_GetTerrainTile
	POPM   d5-d7/a0-a1
	
	; Check if wall
	andi.w #col_tile_flag_solid, d0
	beq    @NoWallFound
	
	;==============================================================
	
	; Wall found - tile X in d3, translate to world space
	clr.l  d4
	move.w d3, d4
	
	; If heading left, use right hand side of tile
	move.l PhysicsObj_VelX(a0), d3
	add.l  PhysicsObj_ImpulseX(a0), d3
	cmp.b  #0x2, d7
	beq    @LeftOfTile	; Forced direction flag
	tst.l  d3
	bgt    @LeftOfTile
	addq.l #0x1, d4
	@LeftOfTile:

	TILES2PIXELS d4						; Tiles to pixels
	add.w  d5, d4						; Back to map space
	addi.l #vdp_sprite_border_x, d4		; Pixels to screen space
	TOSUBPIXELS d4						; Screen space to object space

	; Set static wall hit flag
	ori.b #PhysicsObjHitStaticWall, PhysicsObj_HitWall(a0)

	;==============================================================

	@FoundBarrier:
	
	; Result
	move.l d4, PhysicsObj_LastWall(a0)
	bra    @End
	
	;==============================================================
	
	@HeadingNowhere:

	; Not heading left/right, check moving barriers instead
	jsr    PhysicsObjFindMovingBarrier

	bra    @End

	@ProbeOutOfBounds:
	@NoWallFound:

	; Clear last found wall
	move.l #0x0, PhysicsObj_LastWall(a0)

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
	tst.l  d3
	ble    @EndCeilingTest
	
	; If zero X and Y velocity, don't bother finding ceiling
	or.l   PhysicsObj_VelX(a0), d3
	beq    @EndCeilingTest
	
	;==============================================================
	
	; Get ceiling probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	subi.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_CeilingProbeX(a0), d3	; Get ceiling probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get ceiling probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_CeilingProbeY(a0), d3	; Get ceiling probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1

	; Check if Y within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find ceiling

	; Translate probe position to collision map space
	move.w Level_ColMapHeight(a1), d4
	move.w Level_ColMapTop(a1), d6
	TILES2PIXELS d4
	TILES2PIXELS d6

	sub.w  d6, d1				; Translate Y pos to map top
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d4, d1				; If > height
	bgt    @ProbeOutOfBounds

	swap   d1

	move.w Level_ColMapWidth(a1), d3
	move.w Level_ColMapLeft(a1), d5
	TILES2PIXELS d3
	TILES2PIXELS d5
	
	sub.w  d5, d1				; Translate X pos to map left
	tst.w  d1					; If < 0
	blt    @ProbeOutOfBounds
	cmp.w  d3, d1				; If > width
	bgt    @ProbeOutOfBounds

	swap   d1
	
	; Get collision flags for tile at probe pos
	PUSHM  d5-d6/a0-a1
	clr.l  d2
	move.w Level_ColMapWidthBlocks(a1), d2
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr	   PHYS_GetTerrainTile
	POPM   d5-d6/a0-a1
	
	; Check if solid
	andi.w #col_tile_flag_solid, d0
	beq    @NoCeilingFound
	
	;==============================================================
	
	; Ceiling found - tile Y in d4, translate to world space
	TILES2PIXELS d4						; Tiles to pixels
	add.w  d6, d4						; Back to map space
	addi.l #vdp_sprite_border_y, d4		; Pixels to screen space
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

	;==============================================================
	
	; Get floor probe X
	move.w Entity_WorldPosX(a0), d1			; Get player pos X (top word = integer part)
	subi.w  #vdp_sprite_border_x, d1			; To screen space
	move.w PhysicsObj_FloorProbeX(a0), d3	; Get floor probe X offset
	add.w  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get floor probe Y
	swap   d1								; X to upper word
	move.w Entity_WorldPosY(a0), d2			; Get player pos Y (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2			; To screen space
	move.w PhysicsObj_FloorProbeY(a0), d3	; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1	; Sub step height

	; Check if Y within collision map bounds
	tst.w  d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	TILES2PIXELS d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	; Find platform
	
	tst.b PhysicsObj_CollidePlatforms(a0)
	beq   @NoPlatform

	move.l #0x0, PhysicsObj_LastPlatform(a0)
	move.l #0x0, PhysicsObj_LastFloorVelocity(a0)
	move.b #0x0, PhysicsObj_OnPlatform(a0)
	
	LIST_GET_HEAD MovingPlatforms,a3	; Get list head
	@PlatformLp:						; For all platforms in list
	cmp.l  #0x0, a3
	beq    @NoPlatform

	; Ignore stationary platforms
	tst.l  Platform_VelX(a0)
	bne    @Moving
	tst.l  Platform_VelY(a0)
	bne    @Moving
	bra    @NextPlatform

	@Moving:

	; Ignore self
	move.l Platform_Owner(a3), d2
	cmp.l  a0, d2
	beq    @NextPlatform
	
	; Get platform Left and Right X
	move.w Platform_PosX(a3), d2			;  (top word = integer part)
	subi.w  #vdp_sprite_border_x, d2			; To screen space
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
	subi.w  #vdp_sprite_border_y, d2			; To screen space
	
	; Get floor probe Y
	move.w d1, d0
	
	; Check if platform Y is between probe Y and Y+search height
	cmp.w  d2, d0
	bgt    @NextPlatform
	addi.w #(heightmap_max_search_tiles*8), d0
	cmp.w  d2, d0
	blt    @NextPlatform

	; Get terrain flags
	move.w Platform_TerrainFlags(a3), d4

	; If water, and not buoyant, don't collide
	tst.b  PhysicsObj_Buoyant(a0)
	bne    @CollideWaterPlatform
	move.w d4, d5
	andi.w #col_tile_flag_water, d5
	bne    @NextPlatform
	@CollideWaterPlatform:

	; If special terrain, and shouldn't collide, bail out
	tst.b  PhysicsObj_CollideSpecialTerrain(a0)
	bne    @CollideSpecialPlatform
	move.w d4, d5
	andi.w #col_tile_flag_special, d5
	bne    @NextPlatform
	@CollideSpecialPlatform:
	
	; Success
	clr.l  d2
	move.w Platform_PosY(a3), d2			; Get platform Y
	TOSUBPIXELS d2							; To world space
	move.l d2, PhysicsObj_LastFloor(a0)		; Set platform Y as floor height
	
	; Add platform X velocity
	move.l Platform_VelX(a3), d2
	add.l  d2, Entity_WorldPosX(a0)

	; Set last Y velocity
	move.l Platform_VelY(a3), PhysicsObj_LastFloorVelocity(a0)

	; Add occupant mass
	clr.w  d2
	move.b PhysicsObj_Mass(a0), d2
	add.w  d2, Platform_TotalMass(a3)

	; Mark platform occupied
	move.b #0x1, Platform_Occupied(a3)

	; Mark object on platform
	move.l a0, Platform_LastOccupant(a3)
	move.l a3, PhysicsObj_LastPlatform(a0)
	move.b #0x1, PhysicsObj_OnPlatform(a0)

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

	tst.b PhysicsObj_CollideBarriers(a0)
	beq   @NoBarrier

	; Clear hit moving barrier flag and velocity
	andi.b #~PhysicsObjHitMovingBarrier, PhysicsObj_HitWall(a0)
	move.l #0x0, PhysicsObj_LastWallVelocity(a0)

	;==============================================================
	
	; Get floor probe Y
	move.w Entity_WorldPosY(a0), d2		; Get player pos Y (top word = integer part)
	subi.w  #vdp_sprite_border_y, d2		; To screen space
	move.w Entity_Height(a0), d3		; Get height
	add.l  d3, d2						; Get floor probe
	move.w d2, d1						; Player pos XY (screen space) to d1
	sub.w  PhysicsObj_StepHeight(a0), d1; Sub step height

	;==============================================================
	
	LIST_GET_HEAD MovingBarriers,a3	; Get list head
	@BarrierLp:						; For all barriers in list
	cmp.l  #0x0, a3
	beq    @NoBarrier

	; HACK: If already colliding with this barrier, it may previously have been static, clear flag
	; TODO: Barriers should wake touching objects if moving
	cmp.l  PhysicsObj_LastBarrier(a0), a3
	bne    @NotPrevBarrier
	andi.b #~PhysicsObjHitBarrier, PhysicsObj_HitWall(a0)
	@NotPrevBarrier:

	; Ignore barriers shorter than min wall height
	move.w Barrier_Height(a3), d3
	move.w PhysicsObj_MinWallHeight(a0), d4
	cmp.w  d3, d4
	bgt    @NextBarrier

	;==============================================================
	
	; Determine barrier direction
	move.l Barrier_VelX(a3), d3
	tst.l  d3
	beq    @NextBarrier
	blt    @HeadingLeft
	bgt    @HeadingRight
	
	@HeadingRight:

	; Get probe X, left hand side
	move.w Entity_WorldPosX(a0), d2		; Get player pos X (top word = integer part)
	subi.w  #vdp_sprite_border_x, d2		; To screen space
	
	bra    @EndHeadingTest
	
	@HeadingLeft:
	
	; Get probe X, right hand side
	move.w Entity_WorldPosX(a0), d2		; Get player pos X (top word = integer part)
	subi.w  #vdp_sprite_border_x, d2		; To screen space
	add.w  Entity_Width(a0), d2			; Right hand side

	@EndHeadingTest:

	; Set object wall probe X
	swap   d1
	move.w d2, d1	; X to upper d1
	swap   d1		; Y to lower d1
	
	;==============================================================
	
	; Get barrier Top and Bottom Y
	move.w Barrier_PosY(a3), d2				; (top word = integer part)
	move.w Barrier_Height(a3), d3
	subi.w  #vdp_sprite_border_y, d2			; To screen space
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
	subi.w  #vdp_sprite_border_x, d2			; To screen space

	; Get object wall probe X
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
	tst.l  d3
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
	
	; Set last found wall
	move.l d4, PhysicsObj_LastWall(a0)
	move.l Barrier_VelX(a3), PhysicsObj_LastWallVelocity(a0)

	; Moving barrier hit
	ori.b  #PhysicsObjHitMovingBarrier, PhysicsObj_HitWall(a0)
	
	@NoWallFound:
	@NoBarrier:
	@EndWallClamp:

	rts
	
PhysicsObjSnapToFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.b #0x1, d0							; Force check regardless of velocity
	jsr    PhysicsObjFindFloor

	move.l PhysicsObj_LastFloor(a0), d2		; Get last found floor
	beq    @NoFloorFound
	
	ENTITY_GETBOTTOM d1,a0					; Get Y bottom
	move.l d2, d3
	sub.l  d1, d3
	cmp.l  #(PhysicsObjMaxSnapToFloorDist*subpixels_per_pixel), d3; Check within max snap distance
	bgt    @FloorTooFar
	
	move.w Entity_Height(a0), d3			; Get height
	TOSUBPIXELS d3							; Height to world space
	sub.l  d3, d2							; Floor to floor probe space
	move.l d2, Entity_WorldPosY(a0) 		; Set Y pos
	move.l PhysicsObj_LastFloorVelocity(a0), PhysicsObj_VelY(a0)	; Take platform's Y velocity
	move.b #0x1, PhysicsObj_OnFloor(a0)		; Set object on floor flag
	move.b #0x1, PhysicsObj_CloseToFloor(a0); Set object close to floor flag
	
	@NoFloorFound:
	@FloorTooFar:
	
	rts

PhysicsObjFindPushable:
	; a0 --- PhysicsObj addr
	; a1 --- Level addr
	; a2 --- OUT: Pushable obj

	; Can't push if in air
	tst.b  PhysicsObj_CloseToFloor(a0)
	beq    @NoPushableObj

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
	tst.b  PhysicsObj_CanBePushed(a2)
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
	tst.b  d0
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
	; d1 (b) OUT: 1 if hitting facing wall

	; Init return value
	move.b #0x0, d0
	move.b #0x0, d1

	; Check if can be pushed/pulled
	tst.b  PhysicsObj_CanBePushed(a2)
	bne    @CanPush
	tst.b  PhysicsObj_CanBePulled(a2)
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
	tst.b  d0
	beq    @OutOfOuterBounds

	;==============================================================
	
	; Determine push direction from object centres
	ENTITY_GETCENTREX d5, a0
	ENTITY_GETCENTREX d6, a2
	cmp.l  d6, d5
	blt    @PushRight

	;==============================================================
	
	; Can be pushed/pulled to/from the left, check pusher is facing left
	tst.b  SpriteObj_FlippedX(a0)
	beq    @WrongDirection

	; Check if can be pulled
	tst.b  PhysicsObj_CanBePulled(a2)
	beq    @CannotPullLeft

	; If heading right, pulling
	tst.l  PhysicsObj_VelX(a0)
	bgt    @PullingFromLeft

	@CannotPullLeft:

	; Check if can be pushed, and not hitting wall to the left
	tst.b  PhysicsObj_CanBePushed(a2)
	beq    @CannotPush
	move.b PhysicsObj_HitWall(a2), d5
	andi.b #PhysicsObjHitWallLeft, d5
	bne    @HittingWall

	; Pushing, check inner bounds
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	tst.b  d0
	beq    @OutOfInnerBounds

	@PullingFromLeft:

	; Correct penetration
	move.l d1, d5
	swap   d5								; Get pusher's left bound
	sub.w  PhysicsObj_BoundsWidth(a2), d5	; Sub pushee's bounds width to get new left
	sub.w  PhysicsObj_BoundsLeft(a2), d5	; Sub pushee's left bound to get new X pos
	;subq.w  #0x1, d5							; -1
	
	bra @EndPenetration

	;==============================================================
	
	@PushRight:
	
	; Can be pushed/pulled to/from the right, check pusher is facing right
	tst.b  SpriteObj_FlippedX(a0)
	bne    @WrongDirection

	; Check if can be pulled
	tst.b  PhysicsObj_CanBePulled(a2)
	beq    @CannotPullRight

	; If heading left, pulling
	tst.l  PhysicsObj_VelX(a0)
	blt    @PullingFromRight

	@CannotPullRight:

	; Check if can be pushed, and not hitting wall to the right
	tst.b  PhysicsObj_CanBePushed(a2)
	beq    @CannotPush
	move.b PhysicsObj_HitWall(a2), d5
	andi.b #PhysicsObjHitWallRight, d5
	bne    @HittingWall

	; Pushing, check inner bounds
	PUSHM  d1-d4
	jsr    PHYS_TestBoxIntersectBox
	POPM   d1-d4
	tst.b  d0
	beq    @OutOfInnerBounds

	@PullingFromRight:

	; Correct penetration
	move.l d2, d5
	swap   d5								; Get pusher's right bound
	add.w  PhysicsObj_BoundsLeft(a2), d5	; Add pushee's left bound to get new X pos
	addq.w #0x1, d5							; +1
	
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

	; Within outer bounds, facing the right direction, not hitting wall
	move.b #0x1, d0
	move.b #0x1, d1
	bra    @End

	@HittingWall:

	; Within outer bounds, facing the right direction, but hitting wall
	move.b #0x1, d0
	move.b #0x0, d1

	; Wake physics to re-evaluate
	move.b #0x0, PhysicsObj_Asleep(a2)

	; If object is hitting wall, then this object is also (effectively) hitting wall
	move.b PhysicsObj_HitWall(a2), d5
	andi.b #PhysicsObjHitWallLeft, d5
	beq    @HitRight
	
	; Obj hitting wall to the left, use obj right bounds as wall
	ENTITY_GETRIGHT d0,a2
	move.w PhysicsObj_WallProbeLeft(a0), d1
	move.w PhysicsObj_BoundsLeft(a0), d2
	sub.w  d1, d2
	move.l d0, PhysicsObj_LastWall(a0)
	sub.w  d2, PhysicsObj_LastWall(a0)
	move.b #(PhysicsObjHitWallLeft|PhysicsObjHitBarrier), PhysicsObj_HitWall(a0)
	bra    @HitLeft

	@HitRight:

	; Obj hitting wall to the right, use obj left bounds as wall
	ENTITY_GETLEFT d0,a2
	move.w PhysicsObj_WallProbeRight(a0), d2
	move.w PhysicsObj_BoundsLeft(a0), d1
	add.w  PhysicsObj_BoundsWidth(a0), d1
	sub.w  d1, d2
	move.l d0, PhysicsObj_LastWall(a0)
	add.w  d2, PhysicsObj_LastWall(a0)
	move.b #(PhysicsObjHitWallRight|PhysicsObjHitBarrier), PhysicsObj_HitWall(a0)

	@HitLeft:

	; Re-run collision avoidance
	move.b #0x0, d1
	jsr    PhysicsObjCollisionCorrectX

	bra    @End

	@CannotPush:
	@OutOfOuterBounds:
	@WrongDirection:

	; Outside outer bounds or facing wrong direction
	move.b #0x0, d0
	move.b #0x0, d1

	@End:
	
	rts

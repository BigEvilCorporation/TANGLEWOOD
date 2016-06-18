;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gameobj.asm - Game object structures and routines
;==============================================================

;==============================================================
; GameObject
;==============================================================
	rsset SpriteObj_Struct_Size
GameObj_LastWall     	 rs.l 1 ; Last detected wall X
GameObj_LastFloor     	 rs.l 1 ; Last detected floor Y
GameObj_Gravity  		 rs.w 1 ; Gravity
GameObj_AccelX  		 rs.w 1 ; X acceleration
GameObj_AccelY  		 rs.w 1 ; Y acceleration
GameObj_DecelX  		 rs.w 1 ; X deceleration
GameObj_VelX    		 rs.w 1 ; X velocity
GameObj_VelY    		 rs.w 1 ; Y velocity
GameObj_MaxVelX 		 rs.w 1 ; Max X velocity
GameObj_MaxVelYUp		 rs.w 1 ; Max Y velocity up
GameObj_MaxVelYDown		 rs.w 1 ; Max Y velocity down
GameObj_FloorProbeX		 rs.w 1 ; Floor probe X offset
GameObj_FloorProbeY		 rs.w 1 ; Floor probe Y offset
GameObj_StepHeight	     rs.w 1 ; Step height
GameObj_HasPhysics       rs.b 1 ; Uses acceleration, can fall under gravity, has drag, collides with floor
GameObj_CollideWalls	 rs.b 1 ; Collides with walls
GameObj_UpdateOutOfView	 rs.b 1 ; GameObj can update even when out of view (sprite not linked on last render)
GameObj_OnFloor			 rs.b 1 ; Object is on floor
GameObj_CloseToFloor	 rs.b 1 ; Object is close to floor (dist < step height)
GameObj_HitWall			 rs.b 1 ; Object is touching a wall
GameObj_Solid			 rs.b 1 ; Object is solid
GameObj_SpeedDiv	     rs.b 1 ; Accel/velocity div
GameObj_SnapToFloor		 rs.b 1 ; Object should snap to floor if within step height
;------------------------------
GameObj_Struct_Pad       rs.b 3
GameObj_Struct_Size      rs.b 0
	
;==============================================================

GameObjInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a0, -(sp)
	move.w #(GameObj_Struct_Size/size_long)-1, d0
	move.l #0x0, d1
	@ClrLp:
	move.l d1, (a0)+
	dbra   d0, @ClrLp
	move.l (sp)+, a0
	
	; Init base
	jsr    SpriteObjInit
	
	; Set type
	addi.l #entity_type_gameobj, Entity_TypeBits(a0)
	
	move.b #0x1, SpriteObj_Visible(a0)
	move.b #0x0, SpriteObj_SpriteLinked(a0)
	move.b #0x1, GameObj_HasPhysics(a0)
	move.b #0x1, GameObj_CollideWalls(a0)
	move.b #0x1, GameObj_SpeedDiv(a0)
	
	move.w Level_Gravity(a1), GameObj_Gravity(a0)

	rts

GameObjUpdate:
 	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; If inactive, jump to end
	move.b Entity_Active(a0), d0
	cmp.b  #0x0, d0
	beq    @Inactive
	
	; If not configured to update out of view, and out of view, jump to end
	cmp.b  #0x0, GameObj_UpdateOutOfView(a0)
	bne    @UpdateOutOfView
	cmp.b  #0x0, SpriteObj_SpriteLinked(a0)
	beq    @OutOfView
	@UpdateOutOfView:
	
	move.b GameObj_HasPhysics(a0), d0
	cmp.b  #0x0, d0
	beq    @NoPhysics

	; Apply acceleration
	jsr GameObjApplyAccelDecel
	jsr GameObjApplyGravity
	
	; Apply velocity
	jsr GameObjApplyVelocity
	
	; Find floor
	jsr GameObjFindFloor
	
	; Find wall
	cmp.b #0x0, GameObj_CollideWalls(a0)
	beq   @NoCheckWall
	jsr GameObjFindWall
	@NoCheckWall:
	
	; Correct for floor/wall collision
	jsr GameObjCollisionCorrection
	
	; Clamp pos to level space
	jsr GameObjClampPos
	
	bra @End

	@NoPhysics:

	; No physics, just do the basics
	jsr GameObjApplyVelocity
	jsr GameObjClampPos
	
	@Inactive:
	@OutOfView:
	@End:
	
	move.l a1, (sp)+
	
	rts
	
GameObjApplyAccelDecel:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Check if accelerating
	move.w GameObj_AccelX(a0), d0	; Fetch X acceleration from RAM
	cmp.w  #0x0, d0					; Check if accelerating
	beq    @IdleXDecel				; X controls idle, decelerate
	
	; Apply speed div
	clr.l  d1
	ext.l  d0						; Sign extend word to long
	move.b GameObj_SpeedDiv(a0), d1
	divs   d1, d0
	
	; Apply acceleration
	move.w GameObj_VelX(a0), d1	; Fetch X velocity from RAM
	add.w  d0, d1				; Add X acceleration
	move.w d1, GameObj_VelX(a0)	; Back to RAM
	
	; Check if past max velocity
	move.w GameObj_MaxVelX(a0), d0	; Get max velocity +ve
	cmp.w  d0, d1				; Compare
	bgt    @ClampSpeedDecel	    ; (BGT is signed comparison)
	neg.w  d0					; Get max velocity -ve
	cmp.w  d0, d1				; Compare
	blt    @ClampSpeedDecel	    ; (BLT is signed comparison)
	jmp    @EndAccelDecel		; Within bounds
	
	;IFD VEL_CLAMP
	
	move.w GameObj_MaxVelX(a0), d0	; Get max velocity +ve
	cmp.w  d0, d1				; Compare
	bgt    @ClampX			    ; (BGT is signed comparison)
	neg.w  d0					; Get max velocity -ve
	cmp.w  d0, d1				; Compare
	blt    @ClampX			    ; (BLT is signed comparison)
	jmp    @EndAccelDecel		; Within bounds
	
	@ClampX:
	move.w d0, GameObj_VelX(a0)
	jmp    @EndAccelDecel
	
	;ENDIF
	
	@IdleXDecel:
	
	; Only decelerate (when X controls idle) if not in air
	move.b GameObj_OnFloor(a0), d0
	cmp.b  #0x0, d0
	beq    @EndAccelDecel

	@ClampSpeedDecel:
	
	; Determine deceleration direction
	cmp.w #0x0, GameObj_VelX(a0)
	beq @EndAccelDecel	; No velocity
	bgt @DecelFromPos	; Postive velocity
	blt @DecelFromNeg	; Negative velocity
	
	; Decelerate from positive X velocity towards 0
	@DecelFromPos:
	move.w GameObj_DecelX(a0), d1
	
	; Apply speed div
	clr.l  d2
	ext.l  d1						; Sign extend word to long
	move.b GameObj_SpeedDiv(a0), d2
	divs   d2, d1
	
	sub.w d1, GameObj_VelX(a0)
	cmp.w #0x0, GameObj_VelX(a0)				; Clamp to 0
	bge @EndAccelDecel
	move.w #0x0, GameObj_VelX(a0)
	jmp @EndAccelDecel
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNeg:
	move.w GameObj_DecelX(a0), d1
	
	; Apply speed div
	clr.l  d2
	ext.l  d1						; Sign extend word to long
	move.b GameObj_SpeedDiv(a0), d2
	divs   d2, d1
	
	add.w d1, GameObj_VelX(a0)
	cmp.w #0x0, GameObj_VelX(a0)				; Clamp to 0
	ble @EndAccelDecel
	move.w #0x0, GameObj_VelX(a0)
	jmp @EndAccelDecel
	
	@EndAccelDecel:
	
	rts
	
GameObjApplyGravity:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Apply gravity
	clr.l  d0
	move.w GameObj_VelY(a0), d0
	move.w GameObj_Gravity(a0), d1
	
	; Apply speed div
	clr.l  d2
	ext.l  d1						; Sign extend word to long
	move.b GameObj_SpeedDiv(a0), d2
	divs   d2, d1
	
	sub.w  d1, d0
	clr.w d2
	sub.w GameObj_MaxVelYDown(a0), d2
	cmp.w  d2, d0
	bge.w  @EndGravity
	move.w d2, d0
	@EndGravity:
	move.w d0, GameObj_VelY(a0)
	
	rts
	
GameObjApplyVelocity:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Move player X by velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0			; Get velocity
	ext.l  d0							; Sign extend word to long
	
	; Apply speed div
	clr.l  d1
	move.b GameObj_SpeedDiv(a0), d1
	divs   d1, d0
	
	ext.l  d0							; Sign extend word to long
	move.l Entity_WorldPosX(a0), d1		; Get pos
	add.l d0, d1						; Add velocity to pos
	move.l d1, Entity_WorldPosX(a0)
	
	; Move player Y by velocity
	move.w GameObj_VelY(a0), d0			; Fetch Y pos from RAM
	ext.l  d0							; Sign extend word to long
	
	; Apply speed div
	clr.l  d1
	move.b GameObj_SpeedDiv(a0), d1
	divs   d1, d0
	
	ext.l  d0							; Sign extend word to long
	move.l Entity_WorldPosY(a0), d1		; Get Y pos
	sub.l  d0, d1						; Sub velocity from pos (Y is upside down)
	move.l d1, Entity_WorldPosY(a0)		; Put new Y pos back in RAM

	rts

GameObjClampPos:
	; a0 --- GameObj addr
	; a1 --- Level addr

	clr.l  d1
	move.l Entity_WorldPosY(a0), d0
	move.w Level_MapHeight(a1), d1
	mulu   #0x8, d1						; Tiles to pixels
	add.l  #SpritePlaneBorderY*2, d1	; To sprite space
	lsl.l  #0x8, d1						; To world space
	cmp.l  d1, d0
	bgt    @ClampYBottom
	cmp.l  #0x0, d0
	blt    @ClampYTop
	bra    @EndYClamp

	@ClampYBottom:
	move.l d1, Entity_WorldPosY(a0)
	move.w #0x0, GameObj_VelY(a0)
	bra    @EndYClamp

	@ClampYTop:
	move.l #0x0, Entity_WorldPosY(a0)
	move.w #0x0, GameObj_VelY(a0)

	@EndYClamp:

	clr.l  d1
	move.l Entity_WorldPosX(a0), d0
	move.w Level_MapWidth(a1), d1
	mulu   #0x8, d1						; Tiles to pixels
	add.l  #SpritePlaneBorderX*2, d1	; To sprite space
	lsl.l  #0x8, d1						; To world space
	cmp.l  d1, d0
	bgt    @ClampXRight
	cmp.l  #0x0, d0
	blt    @ClampXLeft
	bra    @EndXClamp

	@ClampXRight:
	move.l d1, Entity_WorldPosX(a0)
	move.w #0x0, GameObj_VelX(a0)
	bra    @EndXClamp

	@ClampXLeft:
	move.l #0x0, Entity_WorldPosX(a0)
	move.w #0x0, GameObj_VelX(a0)

	@EndXClamp:

	rts
	
GameObjCollisionCorrection:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Correct object pos if on floor
	clr.l  d3
	move.b #0x0, GameObj_OnFloor(a0)				; Clear object on floor flag
	move.l Entity_WorldPosY(a0), d1					; Get Y pos
	move.l GameObj_LastFloor(a0), d2				; Get last found floor
	move.w Entity_Height(a0), d3					; Get height
	lsl.l  #0x8, d3									; Height to world space
	sub.l  d3, d2									; Floor to floor probe space
	cmp.l  d2, d1									; Check if probe is on or under floor
	blt    @AboveFloor
	move.l d2, Entity_WorldPosY(a0) 				; Collision with ground, correct object's Y pos
	move.w #0x0, GameObj_VelY(a0)					; Zero object's Y velocity
	move.b #0x1, GameObj_OnFloor(a0)				; Set object on floor flag
	move.b #0x1, GameObj_CloseToFloor(a0)			; Set object close to floor flag
	bra    @EndFloorTest
	@AboveFloor:

	; Check if close to floor
	move.b #0x0, GameObj_CloseToFloor(a0)			; Clear object close to floor flag
	clr.l  d3
	move.w GameObj_StepHeight(a0), d3				; Get step height
	lsl.l  #0x8, d3									; To world pos
	sub.l  d3, d2									; Floor to step height space
	cmp.l  d2, d1									; Check if object is on or under floor-step height
	blt    @NotCloseToFloor
	move.b #0x1, GameObj_CloseToFloor(a0)			; Set object close to floor flag
	cmp.b  #0x0, GameObj_SnapToFloor(a0)			; Check if snap to floor is enabled
	beq    @SnapToFloorDisabled
	add.l  d3, d2
	move.l d2, Entity_WorldPosY(a0)					; Snap object to floor height
	@NotCloseToFloor:
	@EndFloorTest:
	@SnapToFloorDisabled:
	
	;==============================================================
	
	; Clear hit wall flag
	move.b #0x0, GameObj_HitWall(a0)
	
	; Get last wall collided with
	move.l GameObj_LastWall(a0), d0
	cmp.l  #0x0, d0
	beq    @NoWallFound
	
	; Determine X direction
	move.w GameObj_VelX(a0), d1
	cmp.w  #0x0, d1
	blt    @HeadingLeft
	bgt    @HeadingRight
	bra    @HeadingNowhere
	
	@HeadingLeft:
	
	; Heading left, clamp
	move.l d0, Entity_WorldPosX(a0)
	bra    @EndWallClamp
	
	@HeadingRight:
	
	; Heading right, translate wall to gameobj space
	clr.l  d2
	move.w Entity_Width(a0), d2
	lsl.l  #0x8, d2
	sub.l  d2, d0
	
	; Clamp
	move.l d0, Entity_WorldPosX(a0)
	
	@EndWallClamp:
	
	; Wall hit
	move.b #0x1, GameObj_HitWall(a0)
	
	; Cancel X velocity
	move.w #0x0, GameObj_VelX(a0)
	
	@NoWallFound:
	@HeadingNowhere:

	rts
	
GameObjFindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Fetch last floor test result
	move.l GameObj_LastFloor(a0), d2
	
	;==============================================================
	
	; Check if positive Y velocity (don't bother finding floor)
	move.w GameObj_VelY(a0), d3
	cmp.w  #0x0, d3
	bgt    @EndFloorTest
	
	; Check if zero X and Y velocity (don't bother finding floor)
	swap   d3
	move.w GameObj_VelX(a0), d3
	cmp.l  #0x0, d3
	beq    @EndFloorTest

	; Clear last found floor
	move.l #0x0, GameObj_LastFloor(a0)
	
	;==============================================================
	
	; Get floor probe X
	move.l Entity_WorldPosX(a0), d1			; Get player pos X
	lsr.l  #0x8, d1							; To sprite space
	sub.w  #SpritePlaneBorderX, d1			; To screen space
	clr.l  d3
	move.w GameObj_FloorProbeX(a0), d3		; Get floor probe X offset
	add.l  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================

	; Get floor probe Y
	swap   d1								; X to upper word
	move.l Entity_WorldPosY(a0), d2			; Get player pos Y
	lsr.l  #0x8, d2							; To sprite space
	sub.w  #SpritePlaneBorderY, d2			; To screen space
	move.w GameObj_FloorProbeY(a0), d3		; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1
	sub.w  GameObj_StepHeight(a0), d1		; Sub step height

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	clr.l  d2
	move.w Level_MapWidth(a1), d2			; Map width to d2 hi
	swap   d2
	move.w Level_MapHeight(a1), d2			; Map height to d2 lo
	move.l Level_ColMapAddr(a1), a0			; Collision map to a0
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    GetTerrainHeight
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	cmp.w  #0x0, d0							; Y return value in d0
	bne    @FoundFloor
	
	;==============================================================

	@ProbeOutOfBounds:
	move.l #GroundHeightWorld, d2   		; No floor or gameobj out of bounds, use default ground Y
	bra	   @EndFloorTest
	
	;==============================================================
	
	@FoundFloor:
	clr.l  d2
	move.w d0, d2
	add.w  #SpritePlaneBorderY, d2			; Back to sprite space
	lsl.l  #0x8, d2							; Back to world space
	
	; Check if out of bounds
	cmp.l  #GroundHeightWorld, d2
	ble    @EndFloorTest
	move.l #GroundHeightWorld, d2
	
	;==============================================================
	
	@EndFloorTest:
	
	move.l d2, GameObj_LastFloor(a0)		; Store last found floor
	
	rts
	
GameObjFindWall:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Clear last found wall
	move.l #0x0, GameObj_LastWall(a0)
	
	;==============================================================
	
	; Determine direction
	move.w GameObj_VelX(a0), d3
	cmp.w  #0x0, d3
	blt    @HeadingLeft
	bgt    @HeadingRight
	bra    @HeadingNowhere
	
	@HeadingLeft:
	
	; Get X, left hand side
	move.l Entity_WorldPosX(a0), d1		; Get player pos X
	lsr.l  #0x8, d1						; To sprite space
	sub.w  #SpritePlaneBorderX, d1		; To screen space
	
	bra    @EndHeadingTest
	
	@HeadingRight:
	
	; Get X, right hand side
	move.l Entity_WorldPosX(a0), d1		; Get player pos X
	lsr.l  #0x8, d1						; To sprite space
	sub.w  #SpritePlaneBorderX, d1		; To screen space
	add.w  Entity_Width(a0), d1			; Right hand side

	@EndHeadingTest:
	
	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapWidth(a1), d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	
	; Get floor probe Y
	swap   d1							; X to upper word
	move.l Entity_WorldPosY(a0), d2		; Get player pos Y
	lsr.l  #0x8, d2						; To sprite space
	sub.w  #SpritePlaneBorderY, d2		; To screen space
	move.w Entity_Height(a0), d3		; Get height
	add.l  d3, d2						; Get floor probe
	move.w d2, d1						; Player pos XY (screen space) to d1

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @ProbeOutOfBounds
	move.w Level_MapHeight(a1), d2
	sub.w  #0x1, d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @ProbeOutOfBounds
	
	;==============================================================
	
	; Get collision flags for tile at probe pos
	move.l a0, -(sp)
	clr.l  d2
	move.w Level_MapWidth(a1), d2
	move.l Level_ColMapAddr(a1), a0		; Collision map to a0
	jsr	   GetCollisionTileFlags
	move.l (sp)+, a0
	
	; Check if wall
	andi.w #col_tile_flag_solid, d0
	cmp.w  #0x0, d0
	beq    @NoWallFound
	
	;==============================================================
	
	; Wall found - tile X in d4, translate to world space
	mulu   #0x8, d4						; Tiles to pixels
	add.w  #SpritePlaneBorderY, d4		; Pixels to screen space
	lsl.l  #0x8, d4						; Screen space to sprite space
	
	; If heading left, use right hand side of tile
	move.w GameObj_VelX(a0), d3
	cmp.w  #0x0, d3
	bgt    @LeftOfTile
	add.w  #(0x8*SubPixelsPerPixel), d4
	@LeftOfTile:
	
	; Result
	move.l d4, GameObj_LastWall(a0)
	
	;==============================================================
	
	@HeadingNowhere:
	@ProbeOutOfBounds:
	@NoWallFound:

	rts
	
GameObjSnapToFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	jsr    GameObjFindFloor

	move.l GameObj_LastFloor(a0), d2		; Get last found floor
	beq    @NoFloorFound
	
	move.l Entity_WorldPosY(a0), d1			; Get Y pos
	move.w Entity_Height(a0), d3			; Get height
	lsl.l  #0x8, d3							; Height to world space
	sub.l  d3, d2							; Floor to floor probe space
	move.l d2, Entity_WorldPosY(a0) 		; Set Y pos
	move.w #0x0, GameObj_VelY(a0)			; Zero object's Y velocity
	move.b #0x1, GameObj_OnFloor(a0)		; Set object on floor flag
	move.b #0x1, GameObj_CloseToFloor(a0)	; Set object close to floor flag
	
	@NoFloorFound:
	
	rts

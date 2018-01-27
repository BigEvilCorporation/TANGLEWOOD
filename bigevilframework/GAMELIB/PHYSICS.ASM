;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   physics.asm - Physics world and routines
;==============================================================

	rsset 0
;-----------------------------------------
PhysicsWorld_Gravity				rs.l 1
PhysicsWorld_Wind					rs.l 1
PhysicsWorld_UnderwaterVelXScale	rs.l 1
PhysicsWorld_UnderwaterVelYScale	rs.l 1
PhysicsWorld_UnderwaterAccelScale	rs.l 1
PhysicsWorld_GroundHeight			rs.l 1
PhysicsWorld_MovingPlatformsUpdated	rs.b 1	; Platforms moved/stopped last frame
PhysicsWorld_MovingBarriersUpdated	rs.b 1	; Barriers moved/stopped last frame
;-----------------------------------------
	RS_ALIGN
PhysicsWorld_Struct_Size			rs.b 0
;-----------------------------------------

PhysicsWorldInit:
	lea    PhysicsWorld, a3
	move.l #PhysicsWorld_Struct_Size, d0
	MEMZEROB a3,d0
	rts

PhysicsWorldAddObject:
	; a0 --- Object

	btst.b #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	bne    @InPhysicsList
	LIST_APPEND_TAIL PhysicsObjs,a0,a3
	bset.b #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	@InPhysicsList:

	rts

PhysicsWorldRemoveObject:
	; a0 --- Object

	btst   #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	beq    @NotInPhysicsList
	LIST_REMOVE PhysicsObjs,a0,a2,a4
	bclr   #EntityWorldGridFlag_InPhysicsList, Entity_WorldGridFlags(a0)
	@NotInPhysicsList:

	rts

PhysicsWorldPreStep:
	; a1 --- Level

	; Get moving platform count
	LIST_GET_SIZE MovingPlatforms,d0
	PUSHL d0

	; Clear all moving platforms
	LIST_CLEAR MovingPlatforms,a3,a4

	; Add all moving platforms to list, clear total mass
	LIST_GET_HEAD Platforms,a3
	@PlatformLp:
	cmp.l  #0x0, a3
	beq    @NoPlatform
	move.l #0x0, Platform_LastOccupant(a3)
	move.w #0x0, Platform_TotalMass(a3)
	move.b #0x0, Platform_Occupied(a3)
	move.l Platform_VelX(a3), d0		; Check velocity
	add.b  Platform_Dirty(a3), d0		; and dirty flag
	add.l  Platform_VelY(a3), d0		; Y last for longword Z check
	beq    @NextPlatform
	LIST_APPEND_TAIL MovingPlatforms,a3,a4
	move.b #0x0, Platform_Dirty(a3)		; Clear dirty flag
	@NextPlatform:
	LIST_GET_NEXT Platforms,a3,a3
	bra    @PlatformLp
	@NoPlatform:

	; If moving platform count changed, set dirty
	POPL   d0
	move.b #0x0, d2
	LIST_GET_SIZE MovingPlatforms,d1
	cmp.w  d0, d1
	beq    @NoPlatformChange
	move.b #0x1, d2
	@NoPlatformChange:
	lea    PhysicsWorld, a3
	move.b d2, PhysicsWorld_MovingPlatformsUpdated(a3)

	; Get moving barrier count
	LIST_GET_SIZE MovingBarriers,d0
	PUSHL d0

	; Clear all moving barriers
	LIST_CLEAR MovingBarriers,a3,a4
	
	; Add all moving barriers to list, clear total hit velocities
	LIST_GET_HEAD Barriers,a3
	@BarrierLp:
	cmp.l  #0x0, a3
	beq    @NoBarrier
	move.l #0x0, Barrier_TotalHitVel(a3)
	move.l Barrier_VelX(a3), d0
	add.l  Barrier_VelY(a3), d0
	beq    @NextBarrier
	LIST_APPEND_TAIL MovingBarriers,a3,a4
	@NextBarrier:
	LIST_GET_NEXT Barriers,a3,a3
	bra    @BarrierLp
	@NoBarrier:

	; If moving barrier count changed, set dirty
	POPL   d0
	move.b #0x0, d2
	LIST_GET_SIZE MovingBarriers,d1
	cmp.w  d0, d1
	beq    @NoBarrierChange
	move.b #0x1, d2
	@NoBarrierChange:
	lea    PhysicsWorld, a3
	move.b d2, PhysicsWorld_MovingBarriersUpdated(a3)

	; Run all physics pre-updates
	LIST_GET_HEAD PhysicsObjs,a0			; Get list head
	@ObjLp:									; For all objs in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	jsr    PhysicsObjPreStep
	LIST_GET_NEXT PhysicsObjs,a0,a0			; Get next ptr
	bra    @ObjLp							; Loop
	@ListEnd:

	rts

PhysicsWorldFindTerrain:
	;-------------------------------------------------------------
	; Queries terrain (downwards) from a starting point to
	; max search distance
	;-------------------------------------------------------------
	; INPUT:
	;-------------------------------------------------------------
	; a1 --- Level addr
	; d0 (w) Search probe X pos
	; d1 (w) Search probe Y pos
	; d2 (w) Max search distance (tiles)
	; d3 (b) Search platforms
	;-------------------------------------------------------------
	; OUTPUT:
	;-------------------------------------------------------------
	; a2 --- Found platform
	; d0 (w) Found terrain height
	; d1 (w) Terrain flags
	;-------------------------------------------------------------

	; Translate probe to map space
	subi.w #vdp_sprite_border_x, d0
	subi.w #vdp_sprite_border_y, d1

	; Clear found platform
	move.l #0x0, a2

	; If searching platforms
	tst.b  d3
	beq    @NoPlatformFound

	; Backup pos and dist
	move.w d0, d5
	move.w d1, d6
	move.w d2, d7

	LIST_GET_HEAD Platforms,a3		; Get list head
	@PlatformLp:					; For all platforms in list
	cmp.l  #0x0, a3
	beq    @NoPlatformFound
	
	; Get platform Left and Right X
	move.w Platform_PosX(a3), d2			;  (top word = integer part)
	subi.w  #vdp_sprite_border_x, d2		; To screen space
	move.w d2, d3
	add.w  Platform_Width(a3), d3
	
	; Check if probe X within platform X-width
	cmp.w  d0, d2
	bgt    @NextPlatform
	cmp.w  d0, d3
	blt    @NextPlatform
	
	; Get platform top
	move.w Platform_PosY(a3), d2
	subi.w  #vdp_sprite_border_y, d2		; To screen space
	
	; Check if platform Y is between probe Y and Y+search height
	move.w d2, d3
	cmp.w  d2, d1
	bgt    @NextPlatform
	addi.w #(heightmap_max_search_tiles*8), d3
	cmp.w  d2, d3
	blt    @NextPlatform

	; Get terrain flags
	move.w Platform_TerrainFlags(a3), d1
	
	; Found a platform within step height
	clr.l  d2
	move.w Platform_PosY(a3), d0			; Get platform Y
	move.l a3, a2							; Set result
	bra    @Found
	
	@NextPlatform:
	LIST_GET_NEXT Platforms,a3,a3			; Get next ptr
	bra    @PlatformLp						; Loop

	@NoPlatformFound:

	; Restore pos and dist
	move.w d5, d0
	move.w d6, d1
	move.w d7, d2

	;==============================================================

	; Translate probe position to collision map space
	move.w Level_ColMapLeft(a1), d5
	TILES2PIXELS d5
	sub.w  d5, d0

	move.w Level_ColMapTop(a1), d6
	TILES2PIXELS d6
	sub.w  d6, d1

	; End pos
	add.w  d1, d2

	; Probe X/Y to d1
	swap   d1
	move.w d0, d1
	swap   d1

	; Clear result
	clr.w  d0

	; Clear found target pos
	clr.b  d3

	@TerrainLp:

	; Find terrain
	PUSHM  d1-d6/a0-a1
	move.w Level_ColMapWidthBlocks(a1), d2	; Map width (in blocks) to d2 hi
	swap   d2
	move.w Level_ColMapHeightBlocks(a1), d2	; Map height (in blocks) to d2 lo
	move.l Level_ColMapBlocksAddr(a1), a0	; Collision blocks to a0
	move.l Level_ColMapBlockMapAddr(a1), a2	; Collision block map to a2
	move.l Level_ColMapBlockYLookupAddr(a1), a5	; Collision block map Y offset lookup
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    PHYS_GetTerrainHeight
	POPM   d1-d6/a0-a1

	tst.w  d0
	bne    @Found

	; Not found, increment Y pos and try again
	addi.w #heightmap_max_search_tiles*8, d1

	; If not at end of search
	cmp.w  d1, d2
	bge    @TerrainLp

	; Failure
	move.w #0x0, d0
	bra    @End

	@Found:

	; Success
	add.w  d6, d0							; Back to map space
	addi.w #vdp_sprite_border_y, d0			; Back to sprite space

	@End:

	rts

PHYS_TestBoxIntersectBox:
	; d0 (b)  Return value: 0 = no collision, 1 = collision
	; d1 (ww) Box 1 min XY
	; d2 (ww) Box 1 max XY
	; d3 (ww) Box 2 min XY
	; d4 (ww) Box 2 max XY
	
	move.b #0x0, d0
	
	; If maxY1 < minY2, bail
	cmp.w d2, d3
	bgt @NoIntersect

	; If minY1 > maxY2, bail
	cmp.w d1, d4
	blt @NoIntersect
	
	; If maxX1 < minX2, bail
	swap d2
	swap d3
	cmp.w d2, d3
	bgt @NoIntersect
		
	; If minX1 > maxX2, bail
	swap d1
	swap d4
	cmp.w d1, d4
	blt @NoIntersect
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@NoIntersect:
	rts
	
PHYS_TestBoxIntersectBoxX:
	; d0 (b)  Return value: 0 = no collision, 1 = collision
	; d1 (w) Box 1 min X
	; d2 (w) Box 1 max X
	; d3 (w) Box 2 min X
	; d4 (w) Box 2 max X
	
	move.b #0x0, d0
	
	; If maxX1 < minX2, bail
	cmp.w d2, d3
	bgt @NoIntersect
		
	; If minX1 > maxX2, bail
	cmp.w d1, d4
	blt @NoIntersect
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@NoIntersect:
	rts

PHYS_TestBoxIntersectBoxY:
	; d0 (b)  Return value: 0 = no collision, 1 = collision
	; d1 (w) Box 1 min Y
	; d2 (w) Box 1 max Y
	; d3 (w) Box 2 min Y
	; d4 (w) Box 2 max Y
	
	move.b #0x0, d0
	
	; If maxY1 < minY2, bail
	cmp.w d2, d3
	bgt @NoIntersect
		
	; If minY1 > maxY2, bail
	cmp.w d1, d4
	blt @NoIntersect
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@NoIntersect:
	rts

PHYS_TestBoxInsideBox:
	; d0 (b)  Return value: 0 = box 2 outside box 1, 1 = box 2 inside box 1
	; d1 (ww) Box 1 min XY (outside box)
	; d2 (ww) Box 1 max XY
	; d3 (ww) Box 2 min XY (inside box)
	; d4 (ww) Box 2 max XY
	
	move.b #0x0, d0
	
	; If minY1 > minY2, bail
	cmp.w d1, d3
	blt @Outside

	; If maxY1 < maxY2, bail
	cmp.w d2, d4
	bgt @Outside

	; If minX1 > minX2, bail
	swap d1
	swap d3
	cmp.w d1, d3
	blt @Outside
	
	; If maxX1 < maxX2, bail
	swap d2
	swap d4
	cmp.w d2, d4
	bgt @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestBoxInsideBoxX:
	; d0 (b)  Return value: 0 = box 2 X outside box 1 X, 1 = box 2 X inside box 1 X
	; d1 (w) Box 1 min X (outside box)
	; d2 (w) Box 1 max X
	; d3 (w) Box 2 min X (inside box)
	; d4 (w) Box 2 max X
	
	move.b #0x0, d0

	; If minX1 > minX2, bail
	cmp.w d1, d3
	blt @Outside
	
	; If maxX1 < maxX2, bail
	cmp.w d2, d4
	bgt @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestPointInsideBox:
	; d0 (b)  Return value: 0 = point outside box, 1 = point inside box
	; d1 (ww) Box min XY
	; d2 (ww) Box max XY
	; d3 (ww) Point XY
	
	move.b #0x0, d0
	
	; If point Y < box min Y, bail
	cmp.w d3, d1
	bgt   @Outside
	
	; If point Y > box max Y, bail
	cmp.w d3, d2
	blt   @Outside
	
	swap  d3
	
	; If point X < box min X, bail
	swap  d1
	cmp.w d3, d1
	bgt   @Outside
	
	; If point X > box man X, bail
	swap  d2
	cmp.w d3, d2
	blt   @Outside
	
	; Success
	move.b #0x1, d0
	
	; Fail
	@Outside:
	rts
	
PHYS_TestEntityBoxIntersectBoxX:
	; d0 (b) Return value
	; a0 --- Entity 1
	; a1 --- Entity 2
	
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	
	swap d1
	swap d2
	swap d3
	swap d4
	
	jsr PHYS_TestBoxIntersectBoxX
	
	rts

PHYS_TestEntityBoxInsideBox:
	; d0 (b) Return value
	; a0 --- Entity 1
	; a1 --- Entity 2
	
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	
	swap d1
	swap d2
	swap d3
	swap d4
	
	jsr PHYS_TestBoxInsideBox
	
	rts
	
PHYS_TestEntityBoxInsideBoxX:
	; d0 (b) Return value
	; a0 --- Entity 1
	; a1 --- Entity 2
	
	ENTITY_GETBOUNDS d1,d2,d3,a0
	ENTITY_GETBOUNDS d3,d4,d5,a1
	
	swap d1
	swap d2
	swap d3
	swap d4
	
	jsr PHYS_TestBoxInsideBoxX
	
	rts

PHYS_EntityDistSq:
	; d0 (l) Return value (pixel space)
	; a0 --- Entity 1
	; a1 --- Entity 2

	; Obj 1 X
	move.w Entity_WorldPosX(a0), d0		; X (top word = integer part)
	swap   d0							; In upper word d1
	
	; Obj 1 Y
	move.w Entity_WorldPosY(a0), d2		; Y (top word = integer part)
	move.w d2, d0						; In lower word d1
	
	; Obj 2 X
	move.w Entity_WorldPosX(a1), d1		; X (top word = integer part)
	swap   d1							; In upper word d1
	
	; Obj 2 Y
	move.w Entity_WorldPosY(a1), d2		; Y (top word = integer part)
	move.w d2, d1						; In lower word d1

	VEC2_DISTSQ d0, d1, d2

	rts

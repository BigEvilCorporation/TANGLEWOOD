;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gameobj.asm - Game object structures and routines
;==============================================================

;==============================================================
; GameObject base
;==============================================================
	rsset 0
;------------------------------
GameObj_UpdateRoutine	 rs.l 1 ; Update subroutine address
GameObj_RenderRoutine	 rs.l 1 ; Render subroutine address
;------------------------------
GameObj_UpdateNext		 rs.l 1 ; Next in update linked list
GameObj_RenderNext		 rs.l 1 ; Next in render linked list
;------------------------------
GameObj_WorldPosX        rs.l 1	; Position X (world space)
GameObj_WorldPosY        rs.l 1	; Position Y (world space)
GameObj_SubSpriteOffArr  rs.l 1	; Subsprite position offsets array address
GameObj_SubSpriteOffArrF rs.l 1	; Subsprite position offsets array address (flipped)
GameObj_TilesetAddr      rs.l 1	; Art tiles ROM address
GameObj_VRAMAddr         rs.l 1	; Art tiles VRAM address
GameObj_LastFloor     	 rs.l 1 ; Last detected floor height
GameObj_Width            rs.w 1	; Width (sprite draw space)
GameObj_Height           rs.w 1	; Height(sprite draw space)
GameObj_TilesetSize      rs.w 1	; Art tiles size (bytes)
GameObj_Dimensions       rs.w 1	; Width/height in subsprite
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
GameObj_FloorProbeLen    rs.w 1 ; Floor probe length
GameObj_StepHeight	     rs.w 1 ; Step height
GameObj_SpriteID         rs.b 1	; First sub-sprite ID
GameObj_NumSubSprites    rs.b 1	; Num sub-sprites
GameObj_FlippedX         rs.b 1	; Sprite flip X
GameObj_FlippedY         rs.b 1	; Sprite flip Y
GameObj_Active           rs.b 1	; Can update
GameObj_Visible          rs.b 1	; Is visible (hidden in sprite border if not)
GameObj_SpriteLinked     rs.b 1	; Is sprite linked (use as last frame visibility test)
GameObj_HasPhysics       rs.b 1 ; Uses acceleration, can fall under gravity, has drag, collides with floor
GameObj_OnFloor			 rs.b 1 ; Object is on floor
GameObj_CloseToFloor	 rs.b 1 ; Object is close to floor (dist < step height)
GameObj_Solid			 rs.b 1 ; Object is solid

;------------------------------
GameObj_Struct_Pad       rs.b 1
GameObj_Struct_Size      rs.b 0

;==============================================================
; Game object update/render lists
;==============================================================

GameObjAddToUpdateList:
	; a0 --- GameObjAddr
	
	; If first in list, set as head and tail
	cmp.l  #0x0, (GameObjListHead_Update)
	bne    @HasHead
	move.l a0, GameObjListHead_Update
	move.l a0, GameObjListTail_Update
	bra    @End
	@HasHead:
	
	; else link to current tail, then set as current tail
	move.l (GameObjListTail_Update), a1
	move.l a0, GameObj_UpdateNext(a1)
	move.l a0, GameObjListTail_Update
	
	@End:
	
	; Increment count
	addi.l #0x1, GameObjListSize_Update
	
	rts

GameObjAddToRenderList:
	; a0 --- GameObjAddr
	
	; If first in list, set as head and tail
	cmp.l  #0x0, (GameObjListHead_Render)
	bne    @HasHead
	move.l a0, GameObjListHead_Render
	move.l a0, GameObjListTail_Render
	bra    @End
	@HasHead:
	
	; else link to current tail, then set as current tail
	move.l (GameObjListTail_Render), a1
	move.l a0, GameObj_RenderNext(a1)
	move.l a0, GameObjListTail_Render
	
	@End:
	
	; Increment count
	addi.l #0x1, GameObjListSize_Render
	
	rts
	
GameObjUpdateAll:
	; a1 --- Level address
	
	IFD DEBUG
	lea Str_GameObjs, a0
	jsr Profile_PushScope
	ENDIF

	move.l (GameObjListSize_Update), d0	 ; Get gameobj list size
	cmp.l  #0x0, d0
	beq    @NoGameObjs					 ; Skip if nothing to do
	subi.l #0x1, d0						 ; -1 for loop
	move.l (GameObjListHead_Update), a0	 ; Get list head
	@GameObjLp:							 ; For all objs in list
	move.l d0, -(sp)					 ; Backup counter
	move.l GameObj_UpdateRoutine(a0), a2 ; Get update routine
	jsr    (a2)							 ; Execute update routine
	move.l (sp)+, d0					 ; Restore counter
	move.l GameObj_UpdateNext(a0), a0	 ; Get next ptr
	dbra   d0, @GameObjLp				 ; Loop
	@NoGameObjs:

	IFD DEBUG
	jsr Profile_PopScope
	ENDIF
	
	rts
	
GameObjRenderAll:
	; a1 --- Level address
	
	move.l (GameObjListSize_Render), d0	 ; Get gameobj list size
	cmp.l  #0x0, d0
	beq    @NoGameObjs					 ; Skip if nothing to do
	subi.l #0x1, d0						 ; -1 for loop
	move.l (GameObjListHead_Render), a0	 ; Get list head
	@GameObjLp:							 ; For all objs in list
	move.l d0, -(sp)					 ; Backup counter
	move.l GameObj_RenderRoutine(a0), a2 ; Get render routine
	jsr    (a2)							 ; Execute render routine
	move.l (sp)+, d0					 ; Restore counter
	move.l GameObj_RenderNext(a0), a0	 ; Get next ptr
	dbra   d0, @GameObjLp				 ; Loop
	@NoGameObjs:
	
	rts
	
;==============================================================

GameObjInit:
	; a0 --- GameObj addr
	
	move.l a0, -(sp)
	move.w #(GameObj_Struct_Size/size_long)-1, d0
	move.l #0x0, d1
	@ClrLp:
	move.l d1, (a0)+
	dbra   d0, @ClrLp
	move.l (sp)+, a0
	
	move.b #0x1, GameObj_Active(a0)
	move.b #0x1, GameObj_Visible(a0)
	move.b #0x0, GameObj_SpriteLinked(a0)
	move.b #0x1, GameObj_HasPhysics(a0)

	rts

GameObjLoadMultiSprite:
	; a0 --- GameObj address
	; a1 --- Tileset address
	; a2 --- Multi-sprite subsprite dimentions bits array address
	; a3 --- Multi-sprite subsprite position offsets array address
	; a4 --- Multi-sprite tiles per subsprite array address
	; d0 (l) VRAM address
	; d1 (w) Num tiles
	; d2 (b) Num subsprites
	; d3 (w) Sprite W/H dimentions
	; d4 (b) Palette ID

	move.l a1, GameObj_TilesetAddr(a0)
	move.l a3, GameObj_SubSpriteOffArr(a0)
	move.l d0, GameObj_VRAMAddr(a0)
	move.w d1, GameObj_TilesetSize(a0)
	move.b d2, GameObj_NumSubSprites(a0)
	move.w d3, GameObj_Dimensions(a0)

	; LoadTiles:
	;  a0 - Tiles address (l)
	;  d0 - VRAM address (l)
	;  d1 - Num tiles (w)
	movem.l  a0-a3/d0-d2, -(sp)
	move.l   a1, a0
	jsr      LoadTiles
	movem.l  (sp)+, a0-a3/d0-d2

	; AddSprite:
	;  d0 (bb) Width/height (in subsprites)
	;  d1 (ww) X/Y coord
	;  d2 (w)  First tile index
	;  d3 (b)  Palette
	;  a0 ---- Subsprite dimensions bits array (b * numSubsprites)
	;  a1 ---- Num tiles per subsprite array (b * numSubsprites)
	movem.l  a0-a3/d0-d2, -(sp)
	move.w d0, d5			; Backup d0
	move.w d3, d0			; W/H to d0
	divu   #size_tile_b, d5	; Tile ID
	move.w d5, d2			; To d2
	move.l #0x00000000, d1	; X/Y offset
	move.b d4, d3			; Palette
	move.l a2, a0			; Dimension bits array to a0
	move.l a4, a1			; Tiles per sprite array to a1
	jsr    AddSprite		; Add and link sprite
	move.b d0, d4			; Sprite ID in d0
	movem.l  (sp)+, a0-a3/d0-d2

	; Set sprite ID
	move.b d4, GameObj_SpriteID(a0)	; Sprite ID in d0

	rts

GameObjUpdate:
 	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; If inactive, jump to end
	move.b GameObj_Active(a0), d0
	cmp.b  #0x0, d0
	beq    @Inactive
	
	move.b GameObj_HasPhysics(a0), d0
	cmp.b  #0x0, d0
	beq    @NoPhysics

	; Apply acceleration
	jsr GameObjApplyAccelDecel
	
	; Apply X velocity before finding floor
	jsr GameObjApplyVelocityX
	
	; Apply gravity and find floor
	jsr GameObjApplyGravity
	jsr GameObjFindFloor
	
	; Apply Y velocity and correct for floor collision
	jsr GameObjApplyVelocityY
	jsr GameObjCollisionCorrection
	
	; Clamp pos to level space
	jsr GameObjClampPos
	
	bra @End

	@NoPhysics:

	; No physics, just do the basics
	jsr GameObjApplyVelocityX
	jsr GameObjApplyVelocityY
	jsr GameObjClampPos
	
	@Inactive:
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
	
	IFD VEL_CLAMP
	
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
	
	ENDIF
	
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
	sub.w d1, GameObj_VelX(a0)
	cmp.w #0x0, GameObj_VelX(a0)				; Clamp to 0
	bge @EndAccelDecel
	move.w #0x0, GameObj_VelX(a0)
	jmp @EndAccelDecel
	
	; Decelerate from negative X velocity towards 0
	@DecelFromNeg:
	move.w GameObj_DecelX(a0), d1
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
	move.w (LevelGravity), d1
	sub.w  d1, d0
	clr.w d2
	sub.w GameObj_MaxVelYDown(a0), d2
	cmp.w  d2, d0
	bge.w  @EndGravity
	move.w d2, d0
	@EndGravity:
	move.w d0, GameObj_VelY(a0)
	
	rts
	
GameObjApplyVelocityX:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Move player X by velocity
	clr.l  d0
	move.w GameObj_VelX(a0), d0			; Get velocity
	ext.l  d0							; Sign extend word to long
	move.l GameObj_WorldPosX(a0), d1	; Get pos
	add.l d0, d1						; Add velocity to pos
	move.l d1, GameObj_WorldPosX(a0)

	rts
	
GameObjApplyVelocityY:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Move player Y by velocity
	move.w GameObj_VelY(a0), d0			; Fetch Y pos from RAM
	ext.l  d0							; Sign extend word to long
	move.l GameObj_WorldPosY(a0), d1	; Get Y pos
	sub.l  d0, d1						; Sub velocity from pos (Y is upside down)
	move.l d1, GameObj_WorldPosY(a0)	; Put new Y pos back in RAM
	
	rts

GameObjClampPos:
	; a0 --- GameObj addr
	; a1 --- Level addr

	clr.l  d1
	move.l GameObj_WorldPosY(a0), d0
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
	move.l d1, GameObj_WorldPosY(a0)
	move.w #0x0, GameObj_VelY(a0)
	bra    @EndYClamp

	@ClampYTop:
	move.l #0x0, GameObj_WorldPosY(a0)
	move.w #0x0, GameObj_VelY(a0)

	@EndYClamp:

	clr.l  d1
	move.l GameObj_WorldPosX(a0), d0
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
	move.l d1, GameObj_WorldPosX(a0)
	move.w #0x0, GameObj_VelX(a0)
	bra    @EndXClamp

	@ClampXLeft:
	move.l #0x0, GameObj_WorldPosX(a0)
	move.w #0x0, GameObj_VelX(a0)

	@EndXClamp:

	rts
	
GameObjCollisionCorrection:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Correct player pos if on floor
	clr.l  d3
	move.b #0x0, GameObj_OnFloor(a0)				; Clear player on floor flag
	move.l GameObj_WorldPosY(a0), d1				; Get Y pos
	move.l GameObj_LastFloor(a0), d2				; Get last found floor
	move.w GameObj_Height(a0), d3					; Get gameobj height
	lsl.l  #0x8, d3									; Height to world space
	sub.l  d3, d2									; Floor to player space
	cmp.l  d2, d1									; Check if player is on or under floor
	blt    @AboveFloor
	move.l d2, d1 									; Collision with ground, correct player's Y pos
	move.w #0x0, GameObj_VelY(a0)					; Zero player's Y velocity
	move.b #0x1, GameObj_OnFloor(a0)				; Set player on floor flag
	move.b #0x1, GameObj_CloseToFloor(a0)			; Set player close to floor flag
	move.l d1, GameObj_WorldPosY(a0)				; Put new Y pos back in RAM
	@AboveFloor:

	; Check if close to floor
	move.b #0x0, GameObj_CloseToFloor(a0)				; Clear player close to floor flag
	clr.l  d3
	move.w GameObj_StepHeight(a0), d3
	lsl.l  #0x8, d3
	sub.l  d3, d2	; Raise floor by step height
	cmp.l  d2, d1										; Check if player is on or under floor-step height
	blt    @End
	move.b #0x1, GameObj_CloseToFloor(a0)				; Set player close to floor flag

	@End:

	rts
	
GameObjFindFloor:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Fetch last floor test result
	move.l GameObj_LastFloor(a0), d2
	
	; Check if positive Y velocity (don't bother finding floor)
	move.w GameObj_VelY(a0), d3
	cmp.w  #0x0, d3
	bgt    @EndFloorTest
	
	; Check if zero X and Y velocity (don't bother finding floor)
	swap   d3
	move.w GameObj_VelX(a0), d3
	cmp.l  #0x0, d3
	beq    @EndFloorTest
	
	; Floor collision probe length
	neg.w  d3								; Negate Y velocity
	lsr.w  #0x8, d3							; Subpixels to pixels
	add.w  #0x1, d3							; Always at least ProbeLen*1
	move.w GameObj_FloorProbeLen(a0), d0	; Get probe length
	mulu   d3, d0							; Mul probe length by Y velocity
	
	; Find floor
	move.l #0x0, GameObj_LastFloor(a0)		; Clear last found floor
	move.l GameObj_WorldPosX(a0), d1		; Get player pos X
	lsr.l  #0x8, d1							; To sprite space
	sub.w  #SpritePlaneBorderX, d1			; To screen space
	clr.l  d3
	move.w GameObj_FloorProbeX(a0), d3		; Get floor probe X offset
	add.l  d3, d1							; Add to X pos

	; Check if X within collision map bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	move.w Level_MapWidth(a1), d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @OutOfBounds

	swap   d1								; X to upper word
	move.l GameObj_WorldPosY(a0), d2		; Get player pos Y
	lsr.l  #0x8, d2							; To sprite space
	sub.w  #SpritePlaneBorderY, d2			; To screen space
	move.w GameObj_FloorProbeY(a0), d3		; Get floor probe Y offset
	add.l  d3, d2							; Add to Y pos
	move.w d2, d1							; Player pos XY (screen space) to d1

	; Check if Y within collision map bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	move.w Level_MapHeight(a1), d2
	mulu   #0x8, d2
	cmp.w  d2, d1
	bge    @OutOfBounds
	
	move.l a0, -(sp)
	move.l a1, -(sp)
	clr.l  d2
	move.w Level_MapWidth(a1), d2			; Map width to d2 hi
	swap   d2
	move.w Level_MapHeight(a1), d2			; Map height to d2 lo
	move.l Level_ColMapAddr(a1), a0			; Collision map to a0
	move.l Level_ColTilesAddr(a1), a1		; Collision tileset to a1
	jsr    FindFloor
	move.l (sp)+, a1
	move.l (sp)+, a0
	
	cmp.w  #0x0, d1					; Y return value in d1
	bne    @FoundFloor

	@OutOfBounds:
	move.l #GroundHeightWorld, d2   ; No floor or gameobj out of bounds, use default ground Y
	bra	   @EndFloorTest
	
	@FoundFloor:
	clr.l  d2
	move.w d1, d2
	add.w  #SpritePlaneBorderY, d2		; Back to sprite space
	lsl.l  #0x8, d2						; Back to world space
	
	; Check if out of bounds
	cmp.l  #GroundHeightWorld, d2
	ble    @EndFloorTest
	move.l #GroundHeightWorld, d2
	
	@EndFloorTest:
	
	move.l d2, GameObj_LastFloor(a0)		; Store last found floor
	
	rts
	
GameObjDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; TODO: Only if moved/flipped/unhidden
	
	; Check if visible
	move.b GameObj_Visible(a0), d0
	cmp.b  #0x0, d0
	beq    @Invisible
	
	; X pos world space to sprite space
	move.l GameObj_WorldPosX(a0), d1
	divs.w #SubpixelsPerPixel, d1
	
	move.l (WorldScrollX), d2
	divs.w #SubpixelsPerPixel, d2
	
	neg.l  d2		; Camera space to scroll space
	add.l  d2, d1	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	cmp.w  #SpritePlaneWidth, d1
	bgt    @OutOfBounds
	
	; Set X position and flipping
	move.l a1, -(sp)
	move.l a0, -(sp)
	move.b GameObj_SpriteID(a0), d0
	move.b GameObj_NumSubSprites(a0), d2
	move.w GameObj_Width(a0), d3
	move.b GameObj_FlippedX(a0), d4
	move.l GameObj_SubSpriteOffArr(a0), a1
	jsr    SetMultiSpritePosX
	move.l (sp)+, a0
	move.l (sp)+, a1
	
	; Y pos world space to sprite space
	move.l GameObj_WorldPosY(a0), d1
	divs.w #SubpixelsPerPixel, d1
	
	move.l (WorldScrollY), d2
	divs.w #SubpixelsPerPixel, d2
	
	neg.w  d2		; Camera space to scroll space
	add.w  d2, d1	; Scroll space to screen space (subpixels)

	; Check if out of bounds
	cmp.w  #0x0, d1
	blt    @OutOfBounds
	cmp.w  #SpritePlaneHeight, d1
	bgt    @OutOfBounds
	
	; Set Y position
	move.l a1, -(sp)
	move.l a0, -(sp)
	move.b GameObj_SpriteID(a0), d0
	move.b GameObj_NumSubSprites(a0), d2
	move.w GameObj_Height(a0), d3
	move.b GameObj_FlippedY(a0), d4
	move.l GameObj_SubSpriteOffArr(a0), a1
	jsr    SetMultiSpritePosY
	move.l (sp)+, a0
	move.l (sp)+, a1
	
	;==============================================================
	
	; Sprite is visible - link to prev in list
	clr.w  d1
	move.b GameObj_SpriteID(a0), d1 		; This id
	clr.l  d3
	move.b GameObj_NumSubSprites(a0), d3
	subi.b #0x1, d3
	
	move.l a0, -(sp)
	@SubSpriteLinkLp:
	move.w (prev_sprite_link), d0			; Prev id
	move.l d1, -(sp)
	cmp.b  #0x0, d1
	beq    @FirstSprite						; Not first sprite
	jsr    LinkSprite						; Link sprite with prev
	@FirstSprite:
	move.l (sp)+, d1
	move.w d1, prev_sprite_link				; Set as next
	addi.b #0x1, d1							; Next subsprite
	dbra   d3, @SubSpriteLinkLp
	move.l (sp)+, a0
	
	; Sprite linked
	move.b #0x1, GameObj_SpriteLinked(a0)
	
	jmp    @End
	
	;==============================================================

	@Invisible:
	@OutOfBounds:
	
	; Sprite isn't visible - unlink first sprite from list
	cmp.b  #0x0, GameObj_SpriteLinked(a0)	; Check if already unlinked first
	beq    @Unlinked
	
	move.b GameObj_SpriteID(a0), d0			; This id
	move.b #0x0, d1							; Next id
	move.l a0, -(sp)
	jsr    LinkSprite						; Unlink
	move.l (sp)+, a0

	; Can't unlink first sprite, move to border
	move.b GameObj_SpriteID(a0), d0
	cmp.b  #0x0, d0
	bne    @NotFirstSprite
	move.w #0x0, d1
	move.l a0, -(sp)
	jsr    SetSpritePosX
	move.l (sp)+, a0
	@NotFirstSprite:
	
	@Unlinked:
	
	; Sprite unlinked
	move.b #0x0, GameObj_SpriteLinked(a0)
	
	@End:
 rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   bridge.asm - Drawbridge
;==============================================================

BRIDGE_PROXIMITY_DEBUG	equ 0

; Constants
Bridge_Width			equ 0xC0
Bridge_Height			equ 0x80
Bridge_NotchWidth		equ 0x10
Bridge_NotchHeight		equ 0x10
Bridge_NotchDiameter	equ 0x10
Bridge_NotchBuoyancy	equ 0x08
Bridge_NumNotches		equ Bridge_Width/Bridge_NotchWidth
Bridge_MaxNotchSpiralRadius	equ 0x20
Bridge_MinNotchSpiralRadius	equ 0x10
Bridge_UnrollSpeed		equ 0x00038000	; Approx player run speed
Bridge_DropSpeed		equ 0x00030000	; Just under player run speed

Bridge_DropCamShakeVel	equ 0x4000
Bridge_DropCamShakeAmp	equ 0x0100

Bridge_PlatformWidth	equ Bridge_Width	; Physics platform width
Bridge_PlatformExtWater equ 0x0010	; Physics platform width extension when bridging water
Bridge_PlatformXOffset	equ 0x0000	; Offset to platform from top of Bridge
Bridge_PlatformYOffset	equ 0x0000	; Offset to platform from top of Bridge

Bridge_BarrierWidth		equ 0x30	; Width of roll
Bridge_BarrierHeight	equ 0x50	; Height of blocking barrier
Bridge_BarrierXOffset	equ 0x0
Bridge_BarrierYOffsetUp	equ -Bridge_BarrierHeight
Bridge_BarrierYOffsetDn	equ 0x0000

Bridge_ViewBoundsOffsetX	equ 0x0000
Bridge_ViewBoundsOffsetY	equ -0x0040

Bridge_SpiralCoords:
	dc.b 0,0
	dc.b 17,-1
	dc.b 34,-7
	dc.b 49,-17
	dc.b 52,-34
	dc.b 52,-52
	dc.b 36,-61
	dc.b 19,-60
	dc.b 6,-49
	dc.b 0,-33
	dc.b 13,-21
	dc.b 29,-28

	even

; State
Bridge_StateClosed		equ 0
Bridge_StateOpen		equ 1
Bridge_StateRolling		equ 2
Bridge_StateUnrolling	equ 3
Bridge_StateDropping	equ 4
Bridge_StateDropped		equ 5

; Movement mode
Bridge_ModeRollUp		equ 0
Bridge_ModeRollDown		equ 1
Bridge_ModeDrop			equ 2

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
Bridge_Platform			rs.b Platform_Struct_Size	; Physics platform (when down)
Bridge_Barrier			rs.b Barrier_Struct_Size	; Physic barrier (when up)
Bridge_NotchYPos		rs.l Bridge_NumNotches		; Y positions of notches (for drop mode)
Bridge_NotchYVel		rs.l Bridge_NumNotches		; Y velocities of notches (for drop mode)
Bridge_UnrollPos		rs.l 1
Bridge_Speed			rs.l 1
Bridge_DropTargetY		rs.w 1
Bridge_Mode				rs.b 1
Bridge_Buoyant			rs.b 1
Bridge_DropUnderWeight	rs.b 1
Bridge_State			rs.b 1
Bridge_InView			rs.b 1
Bridge_PlatformActive	rs.b 1
Bridge_BarrierActive	rs.b 1
Bridge_UpdateOutOfView	rs.b 1
;-----------------------------
	RS_ALIGN
Bridge_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

BridgeInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Bridge
	
	; Set update and render routines
	move.l #BridgeUpdate, Entity_UpdateRoutine(a0)
	move.l #BridgeDraw, Entity_RenderRoutine(a0)
	move.l #BridgeSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	;jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Bridge_Width, Entity_Width(a0)
	move.w  #Bridge_Height, Entity_Height(a0)
	move.l  #0x0, Bridge_UnrollPos(a0)
	move.b  #Bridge_StateClosed, Bridge_State(a0)
	move.b  #Bridge_ModeRollUp, Bridge_Mode(a0)
	move.w  #0x0, Bridge_DropTargetY(a0)
	move.b  #0x1, Bridge_DropUnderWeight(a0)
	move.b  #0x0, Bridge_Buoyant(a0)
	move.b  #0x0, Bridge_InView(a0)
	move.b  #0x0, Bridge_PlatformActive(a0)
	move.b  #0x0, Bridge_BarrierActive(a0)
	move.b  #0x0, Bridge_UpdateOutOfView(a0)

	; Zero Y offsets and velocities
	lea     Bridge_NotchYPos(a0), a2
	move.l  #Bridge_NumNotches, d0
	MEMZEROL a2,d0
	lea     Bridge_NotchYVel(a0), a2
	move.l  #Bridge_NumNotches, d0
	MEMZEROL a2,d0

	; Setup platform
	lea    Bridge_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.l a0, Platform_Owner(a2)
	move.b #PlatformType_Sliding, Platform_Type(a2)
	move.w #Bridge_PlatformWidth, Platform_Width(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)
	jsr    BridgeActivatePlatform

	; Setup barrier
	lea    Bridge_Barrier(a0), a2
	move.l #Barrier_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Bridge_BarrierWidth, Barrier_Width(a2)
	move.w #Bridge_BarrierHeight, Barrier_Height(a2)
	jsr    BridgeActivateBarrier

	rts

BridgeLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED Bridge,notch,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridUpdates)|(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	;==============================================================

	; Set initial state
	cmp.b  #Bridge_ModeDrop, Bridge_Mode(a0)
	bne    @NotDropping
	jsr    BridgeSetDropMode
	bra    @End
	@NotDropping:
	cmp.b  #Bridge_StateClosed, Bridge_state(a0)
	beq    @Closed
	jsr    BridgeSnapOpen
	bra    @End
	@Closed:
	jsr    BridgeSnapClosed
	@End:

	; Position platform/barrier (don't calculate velocity)
	move.b #0x0, d5
	move.l Bridge_UnrollPos(a0), d4
	jsr    BridgeUpdateBarrierPlatformPos

	rts
	
BridgeUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Manual view test (can't use sprite link state)
	move.b  #0x0, Bridge_InView(a0)
	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS_VEC2 d3,d4,d5
	addi.l #(Bridge_ViewBoundsOffsetX<<16)|Bridge_ViewBoundsOffsetY, d1
	addi.l #(Bridge_ViewBoundsOffsetX<<16)|Bridge_ViewBoundsOffsetY, d2
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @OutOfView
	move.b  #0x1, Bridge_InView(a0)
	@OutOfView:
	
	; Base functionality
	jsr    SpriteObjUpdate

	;==============================================================

	IF BRIDGE_PROXIMITY_DEBUG

	move.l (Player1), a2
	move.l Entity_WorldPosX(a2), d0
	move.l Entity_WorldPosX(a0), d1
	sub.l  d0, d1
	cmp.l  #(Player1Width+0x10)*subpixels_per_pixel, d1
	bgt    @Close
	cmp.b  #Bridge_StateClosed, Bridge_State(a0)
	bne    @EndUnroll
	jsr    BridgeBeginUnroll
	bra    @EndUnroll
	@Close:
	cmp.b  #Bridge_StateOpen, Bridge_State(a0)
	bne    @EndUnroll
	jsr    BridgeBeginRoll
	@EndUnroll:
	
	ENDIF ; BRIDGE_PROXIMITY_DEBUG

	;==============================================================

	; If dropping, check for occupant and begin drop
	tst.b  Bridge_DropUnderWeight(a0)
	beq    @NotDropMode
	cmp.b  #Bridge_ModeDrop, Bridge_Mode(a0)
	bne    @NotDropMode
	cmp.b  #Bridge_Stateopen, Bridge_State(a0)
	bne    @AlreadyDropping
	lea    Bridge_Platform(a0), a2
	tst.b  Platform_Occupied(a2)
	beq    @Unoccupied
	jsr    BridgeBeginDrop
	@Unoccupied:
	@NotDropMode:
	@AlreadyDropping:

	; Update roll/unroll/drop
	move.b Bridge_State(a0), d0
	cmp.b  #Bridge_StateRolling, d0
	beq    @Rolling
	cmp.b  #Bridge_StateUnrolling, d0
	beq    @Unrolling
	cmp.b  #Bridge_StateDropping, d0
	beq    @Dropping
	cmp.b  #Bridge_StateDropped, d0
	beq    @Dropping
	bra    @End

	@Rolling:
	jsr    BridgeUpdateRoll
	bra    @End

	@Unrolling:
	jsr    BridgeUpdateUnroll
	bra    @End

	@Dropping:
	jsr    BridgeUpdateDropping

	@End:
	@Inactive:

	rts

BridgeDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	PUSHMW d2-d5

	tst.b  Bridge_InView(a0)
	beq    @OutOfView

	PUSHL  a0

	; Get bridge pos
	move.w Entity_WorldPosX(a0), d5
	move.w Entity_WorldPosY(a0), d6

	; To sprite space
	sub.w  WorldScrollX, d5
	sub.w  WorldScrollY, d6

	;==============================================================

	; Get Y pos array
	lea    Bridge_NotchYPos(a0), a3

	; Roll pos to notch index
	moveq #0x0, d7
	move.w Bridge_UnrollPos(a0), d7	;  (top word = integer part)
	lsr.w #0x4, d7 ;divu   #Bridge_NotchWidth, d7

	; Clear view flag
	move.b #0x0, Bridge_InView(a0)

	; Draw all notches
	move.w #0x0, d2
	@NotchDrawLp:

	; Clear position offset
	moveq #0x0, d3
	moveq #0x0, d4
	moveq #0x0, d1

	; If in drop mode, just render flat
	cmp.b  #Bridge_ModeDrop, Bridge_Mode(a0)
	beq    @Flat

	;==============================================================

	; Check if within flat or rolled section
	cmp.b  d2, d7
	bge    @Flat

	; Rolled section
	lea    Bridge_SpiralCoords, a2
	move.b d2, d3	; Get index
	sub.b  d7, d3	; Offset spiral start by unroll pos
	lsl.w  #0x1, d3	; 2 bytes per coord
	add.l  d3, a2	; Offset into coord table
	move.b (a2)+, d3; Get Y coord
	move.b (a2)+, d4; Get X coord
	ext.w  d3		; Sign extend
	ext.w  d4
	cmp.b  #Bridge_ModeRollUp, Bridge_Mode(a0)	; If rolling down, invert Y
	beq    @RollUp
	neg.w  d4
	@RollUp:
	move.w d7, d1
	lsl.w #0x4, d1 ;mulu   #Bridge_NotchWidth, d1 ; Add X offset
	add.w  d1, d3
	bra    @EndSpiral

	;==============================================================

	@Flat:

	; Flat X offset
	moveq #0x0, d1
	move.b d2, d1
	lsl.w #0x4, d1 ;mulu   #Bridge_NotchWidth, d1
	move.w d1, d3

	@EndSpiral:

	;==============================================================

	; If flipped on X axis, origin at right-hand side
	tst.b  SpriteObj_FlippedX(a0)
	beq    @NotFlipped

	; Invert X offset
	move.w #(Bridge_Width-Bridge_NotchWidth), d1
	sub.w  d3, d1
	move.w d1, d3

	@NotFlipped:

	;==============================================================

	; Add origin
	add.w  d5, d3
	add.w  d6, d4

	; Add Y offset
	move.l (a3)+, d0
	swap   d0
	add.w  d0, d4

	; If not fallen off bottom
	cmp.w  #screen_height+vdp_sprite_border_y, d4
	bgt    @NextNotch

	; Draw
	PUSHMW d2-d7
	move.w d3, d0
	move.w d4, d1
	jsr    SpriteObjAllocSprite
	POPMW  d2-d7

	; Set drawn
	ori.b  #0x1, Bridge_InView(a0)

	; Loop
	@NextNotch:
	addq.b #0x1, d2
	cmp.b  #Bridge_NumNotches, d2
	bne    @NotchDrawLp

	;==============================================================

	POPL   a0

	; If no notches drawn, in dropping state, and not buoyant, never render again
	cmp.b  #Bridge_StateDropping, Bridge_State(a0)
	bne    @NotDropping
	tst.b  Bridge_Buoyant(a0)
	bne    @Buoyant
	tst.b  Bridge_InView(a0)
	bne    @InView
	ENTITY_REMOVEFROMRENDERLIST_SAFE a0
	ENTITY_REMOVEFROMWORLDGRID_SAFE a0
	@InView:
	@NotDropping:
	@Buoyant:

	@OutOfView:

	POPMW  d2-d5

	rts

BridgeSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEB Bridge_State(a0)
	SAVEL Bridge_UnrollPos(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Bridge_State(a0)
	LOADL Bridge_UnrollPos(a0)
	
	;==============================================================
	
	@End:
	
	rts

BridgeActivatePlatform:

	tst.b  Bridge_PlatformActive(a0)
	bne    @AlreadyActive
	lea    Bridge_Platform(a0), a2
	move.w #Bridge_Width, Platform_Width(a2)
	LIST_APPEND_TAIL Platforms, a2, a3
	move.b #0x1, Bridge_PlatformActive(a0)
	@AlreadyActive:

	rts

BridgeDeactivatePlatform:

	tst.b  Bridge_PlatformActive(a0)
	beq    @AlreadyInactive
	lea    Bridge_Platform(a0), a2
	move.w #0x0, Platform_Width(a2)
	LIST_REMOVE Platforms, a2, a3, a4
	move.b #0x0, Bridge_PlatformActive(a0)
	@AlreadyInactive:

	rts

BridgeActivateBarrier:

	tst.b  Bridge_BarrierActive(a0)
	bne    @AlreadyActive
	lea    Bridge_Barrier(a0), a2
	LIST_APPEND_TAIL Barriers, a2, a3
	move.b #0x1, Bridge_BarrierActive(a0)
	@AlreadyActive:

	rts

BridgeDeactivateBarrier:

	tst.b  Bridge_BarrierActive(a0)
	beq    @AlreadyInactive
	lea    Bridge_Barrier(a0), a2
	LIST_REMOVE Barriers, a2, a3, a4
	move.b #0x0, Bridge_BarrierActive(a0)
	@AlreadyInactive:

	rts

BridgeSnapOpen:

	; Set unroll pos at end
	move.l #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel), Bridge_UnrollPos(a0)

	; Activate platform
	jsr    BridgeActivatePlatform

	; Disable barrier
	jsr    BridgeDeactivateBarrier

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	rts

BridgeSnapClosed:

	; Reset unroll pos
	move.l #0x0, Bridge_UnrollPos(a0)

	; Disable platform
	jsr    BridgeDeactivatePlatform

	; Activate barrier
	jsr    BridgeActivateBarrier

	; Set closed state
	move.b #Bridge_StateClosed, Bridge_State(a0)
	
	rts

BridgeSetDropMode:

	; Use roll pos for drop pos
	move.l #0x0, Bridge_UnrollPos(a0)

	; Activate platform
	jsr    BridgeActivatePlatform

	; Disable barrier
	jsr    BridgeDeactivateBarrier

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	rts

BridgeBeginRoll:

	; Activate barrier
	jsr    BridgeActivateBarrier

	; Set speed
	MOVE_NTSC_L Bridge_UnrollSpeed, Bridge_Speed(a0), d0

	; Set rolling state
	move.b #Bridge_StateRolling, Bridge_State(a0)

	; Begin SFX
	cmp.b  #0x1, (GlobalTimeDiv)
	bne    @NoSFX
	PLAYSFX #SFX_BridgeRoll
	@NoSFX:

	rts

BridgeBeginUnroll:

	; Activate platform
	jsr    BridgeActivatePlatform

	; Set speed
	MOVE_NTSC_L Bridge_UnrollSpeed, Bridge_Speed(a0), d0

	; Set unrolling state
	move.b #Bridge_StateUnrolling, Bridge_State(a0)

	; Begin SFX
	cmp.b  #0x1, (GlobalTimeDiv)
	bne    @NoSFX
	PLAYSFX #SFX_BridgeRoll
	@NoSFX:

	rts

BridgeBeginDrop:

	; Set speed
	MOVE_NTSC_L Bridge_DropSpeed, Bridge_Speed(a0), d0

	; Set drop state
	move.b #Bridge_StateDropping, Bridge_State(a0)

	; Begin camera shake
	move.w #0x0, d0
	move.w #Bridge_DropCamShakeVel, d1
	move.w #0x0, d2
	move.w #Bridge_DropCamShakeAmp, d3
	move.w #0x0, d4
	jsr    CAM_StartCameraShake

	; Begin SFX
	PLAYSFX #SFX_BridgeFall

	rts

BridgeUpdateRoll:

	; Advance roll pos
	moveq #0x0, d3
	moveq #0x0, d4
	moveq #0x0, d5
	move.b (GlobalTimeDiv), d3
	move.l Bridge_Speed(a0), d5
	DIVS1616_LOSSY d3, d5
	move.l Bridge_UnrollPos(a0), d4
	sub.l  d5, d4
	CLAMPL d4, #0x0, #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel)
	move.l d4, Bridge_UnrollPos(a0)

	; If at start, disable platform and set closed state
	tst.l  d4
	beq    @FinishedRolling
	bra    @StillRolling

	@FinishedRolling:

	; Disable platform
	jsr    BridgeDeactivatePlatform

	; Set closed state
	move.b #Bridge_StateClosed, Bridge_State(a0)

	@StillRolling:

	; Set barrier and platform pos
	move.l Bridge_UnrollPos(a0), d4
	move.b #0x1, d5
	jsr    BridgeUpdateBarrierPlatformPos

	rts

BridgeUpdateUnroll:

	; Advance unroll pos
	moveq #0x0, d3
	moveq #0x0, d4
	moveq #0x0, d5
	move.b (GlobalTimeDiv), d3
	move.l Bridge_Speed(a0), d5
	DIVS1616_LOSSY d3, d5
	move.l Bridge_UnrollPos(a0), d4
	add.l  d5, d4
	CLAMPL d4, #0x0, #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel)
	move.l d4, Bridge_UnrollPos(a0)

	; If at end, disable platform and set closed state
	cmp.l  #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel), d4
	beq    @FinishedUnrolling
	bra    @StillUnrolling

	@FinishedUnrolling:

	; Disable barrier
	jsr    BridgeDeactivateBarrier

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	@StillUnrolling:

	; Set barrier and platform pos
	move.l Bridge_UnrollPos(a0), d4
	move.b #0x1, d5
	jsr    BridgeUpdateBarrierPlatformPos

	rts

BridgeUpdateBarrierPlatformPos:
	; d4 (w) Unroll pos
	; d5 (b) Calc velocity

	; Unroll pos to pixels
	TOPIXELS d4
	addq.w #0x1, d4

	; Get platform
	lea    Bridge_Platform(a0), a2
	
	; If drop mode, set whole width
	cmp.b  #Bridge_ModeDrop, Bridge_Mode(a0)
	bne    @NotDropMode
	move.w #Bridge_Width, Platform_Width(a2)
	bra    @DropMode
	@NotDropMode:

	;  else set platform width to unroll pos
	move.w d4, Platform_Width(a2)
	move.b #0x1, Platform_Dirty(a2)
	@DropMode:

	; To world space
	TOSUBPIXELS d4
	
	; Get pos for platform
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1

	; Add inverted X offset if flipped
	tst.b  SpriteObj_FlippedX(a0)
	beq    @NoInvertX
	move.l #Bridge_Width*subpixels_per_pixel, d7
	sub.l  d4, d7
	move.l d7, d4
	add.l  d4, d0
	@NoInvertX:
	
	; Set platform pos
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)

	; Move barrier to unroll pos
	lea    Bridge_Barrier(a0), a2
	move.l Barrier_PosX(a2), d3
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	add.l  d4, d0
	addi.l #Bridge_BarrierXOffset*subpixels_per_pixel, d0
	cmp.b  #Bridge_ModeRollUp, Bridge_Mode(a0)
	beq    @RollUp
	addi.l #Bridge_BarrierYOffsetDn*subpixels_per_pixel, d1
	bra    @RollDn
	@RollUp:
	addi.l #Bridge_BarrierYOffsetUp*subpixels_per_pixel, d1
	@RollDn:

	; Sub barrier width if flipped
	tst.b  SpriteObj_FlippedX(a0)
	beq    @NoFlipX
	sub.l  #Bridge_BarrierWidth*subpixels_per_pixel, d0
	@NoFlipX:

	move.l d0, Barrier_PosX(a2)
	move.l d1, Barrier_PosY(a2)

	; Calc barrier velocity
	sub.l  d3, d0
	tst.b  d5
	bne    @CalcVel
	moveq  #0x0, d0
	@CalcVel:
	move.l d0, Barrier_VelX(a2)

	rts

BridgeUpdateDropping:

	; Advance drop pos
	moveq #0x0, d3
	moveq #0x0, d4
	moveq #0x0, d5
	move.b (GlobalTimeDiv), d3
	move.l Bridge_Speed(a0), d5
	DIVS1616_LOSSY d3, d5
	move.l Bridge_UnrollPos(a0), d4
	add.l  d5, d4
	CLAMPL d4, #0x0, #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel)
	move.l d4, Bridge_UnrollPos(a0)

	;==============================================================

	; For each notch up to drop pos, fall under gravity
	TOPIXELS d4
	lsr.w #0x4, d4 ;divu.w #Bridge_NotchWidth, d4
	lea    Bridge_NotchYVel(a0), a2
	lea    Bridge_NotchYPos(a0), a3
	move.l Level_Gravity(a1), d0

	; Get drop target
	move.w Bridge_DropTargetY(a0), d5
	TOSUBPIXELS d5

	tst.w  d4
	beq    @FirstNotch
	subq.w  #0x1, d4
	@NotchLp:
	move.l (a2), d1		; Vel to a2
	add.l  d0, d1		; Add gravity to vel
	move.l d1, (a2)+	; Back to array
	move.l (a3), d6		; Get current pos
	add.l  d1, d6		; Add to pos
	tst.l  d5			; Clamp to drop target
	beq    @NoDropTarget
	CLAMPL d6, #0x0, d5
	@NoDropTarget:
	move.l d6, (a3)+	; Store pos
	dbra   d4, @NotchLp
	@FirstNotch:

	;==============================================================

	; If buoyant
	tst.b  Bridge_Buoyant(a0)
	beq    @NotBuoyant

	; If not yet found drop target, check if first notch hits water
	tst.w  Bridge_DropTargetY(a0)
	beq    @NotFoundDropTarget

	; If last notch hit water, reactivate platform and finish
	cmp.l  d5, d6
	beq    @DroppedIntoWater
	
	bra    @FoundDropTarget

	@NotFoundDropTarget:

	; Get notch bottom pos
	lea    Bridge_NotchYPos(a0), a3
	move.w Entity_WorldPosX(a0), d3
	swap   d3
	move.w Entity_WorldPosY(a0), d3
	move.l (a3), d4
	TOPIXELS d4
	add.w  d4, d3
	addi.w #Bridge_NotchHeight, d3

	; Check all water bodies
	move.w (EntityCount_WaterBody), d6
	beq    @NoWater
	move.l (EntityPoolStart_WaterBody), a2
	subq.w  #0x1, d6
	@WaterLoop:
	ENTITY_GETBOUNDS d1,d2,d5,a2
	jsr    PHYS_TestPointInsideBox
	tst.b  d0
	beq    @NextWater
	move.w Entity_WorldPosY(a2), d0
	sub.w  Entity_WorldPosY(a0), d0
	subi.w #Bridge_NotchBuoyancy, d0
	move.w d0, Bridge_DropTargetY(a0)
	bra    @FoundDropTarget
	@NextWater:
	lea    WaterBody_Struct_Size(a2), a2
	dbra   d6, @WaterLoop

	@NoWater:
	@FoundDropTarget:
	@NotBuoyant:

	;==============================================================

	; If already dropped, done here
	cmp.b  #Bridge_StateDropped, Bridge_State(a0)
	beq    @End

	; If at end, disable platform
	move.w Bridge_UnrollPos(a0), d4	;  (top word = integer part)
	cmp.l  #(Bridge_NumNotches*Bridge_NotchWidth), d4
	beq    @FinishedDropping

	; Unroll pos to pixels
	addq.w #0x1, d4

	; Reposition platform and set width
	lea    Bridge_Platform(a0), a2
	move.w #Bridge_Width, d5			; Invert for width
	sub.w  d4, d5
	move.w d5, Platform_Width(a2)
	TOSUBPIXELS d4						; To world space

	; Invert X if flipped
	tst.b  SpriteObj_FlippedX(a0)
	beq    @NoInvertX
	move.l #Bridge_Width*subpixels_per_pixel, d7
	sub.l  d4, d7
	move.l d7, d4
	@NoInvertX:
	
	move.l Entity_WorldPosX(a0), d1		; Set position
	add.l  d4, d1
	move.l d1, Platform_PosX(a2)

	; Play SFX
	PLAYSFX #SFX_BridgeFall

	bra    @End

	;==============================================================

	@DroppedIntoWater:
	
	; Reactivate platform
	jsr    BridgeActivatePlatform

	; Set platform pos to water level
	lea    Bridge_Platform(a0), a2
	move.w #Bridge_PlatformWidth+Bridge_PlatformExtWater, Platform_Width(a2)
	move.l Entity_WorldPosX(a0), d0
	subi.l #(Bridge_PlatformExtWater/2)*subpixels_per_pixel, d0
	move.l d0, Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), d0
	move.w Bridge_DropTargetY(a0), d1
	TOSUBPIXELS d1
	add.l  d1, d0
	move.l d0, Platform_PosY(a2)

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	bra    @StopEffects

	;==============================================================

	@FinishedDropping:

	; Disable platform
	jsr    BridgeDeactivatePlatform

	; Set dropped state
	move.b #Bridge_StateDropped, Bridge_State(a0)

	;==============================================================

	@StopEffects:

	; Stop camera shake
	jsr    CAM_StopCameraShake

	; Stop SFX
	jsr    SND_StopSFX

	;==============================================================

	@End:

	rts
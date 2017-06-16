;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   bridge.asm - Drawbridge
;==============================================================

BRIDGE_PROXIMITY_DEBUG	equ 0

; Constants
Bridge_MaxEntities		equ 0x4
Bridge_Width			equ 0xC0
Bridge_Height			equ 0x10
Bridge_NotchWidth		equ 0x10
Bridge_NotchHeight		equ 0x10
Bridge_NotchDiameter	equ 0x10
Bridge_NumNotches		equ Bridge_Width/Bridge_NotchWidth
Bridge_MaxNotchSpiralRadius	equ 0x20
Bridge_MinNotchSpiralRadius	equ 0x10
Bridge_UnrollSpeed		equ 0x00038000	; Approx player run speed
Bridge_DropSpeed		equ 0x00030000	; Just under player run speed

Bridge_PlatformWidth	equ Bridge_Width	; Physics platform width
Bridge_PlatformXOffset	equ 0x0000	; Offset to platform from top of Bridge
Bridge_PlatformYOffset	equ 0x0000	; Offset to platform from top of Bridge

Bridge_BarrierWidth		equ 0x30	; Width of roll
Bridge_BarrierHeight	equ 0x50	; Height of blocking barrier
Bridge_BarrierXOffset	equ 0x0
Bridge_BarrierYOffset	equ Bridge_Height-Bridge_BarrierHeight

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
Bridge_Mode				rs.b 1
Bridge_State			rs.b 1
;-----------------------------
Bridge_Struct_Pad		rs.b 2   ; Alignment padding
Bridge_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

BridgeInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	addi.w #0x1, EntityCount_Bridge
	
	; Set update and render routines
	move.l #BridgeUpdate, Entity_UpdateRoutine(a0)
	move.l #BridgeDraw, Entity_RenderRoutine(a0)
	move.l #BridgeSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Bridge_Width, Entity_Width(a0)
	move.w  #Bridge_Height, Entity_Height(a0)
	move.l  #0x0, Bridge_UnrollPos(a0)
	move.b  #Bridge_StateClosed, Bridge_State(a0)
	move.b  #Bridge_ModeRollUp, Bridge_Mode(a0)

	; Zero Y offsets and velocities
	move.l  a0, a2
	add.l   #Bridge_NotchYPos, a2
	move.l  #Bridge_NumNotches, d0
	MEMZEROL a2,d0
	move.l  a0, a2
	add.l   #Bridge_NotchYVel, a2
	move.l  #Bridge_NumNotches, d0
	MEMZEROL a2,d0

	; Setup platform (deactivated)
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.l a0, Platform_Owner(a2)
	move.b #0x0, Platform_Active(a2)
	move.w #Bridge_PlatformWidth, Platform_Width(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	; Setup barrier (activated)
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x1, Barrier_Active(a2)
	move.w #Bridge_BarrierWidth, Barrier_Width(a2)
	move.w #Bridge_BarrierHeight, Barrier_Height(a2)
	LIST_APPEND_TAIL Barriers, a2, a3

	rts

BridgeLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Bridge,PaletteId_World0,0x0

	;==============================================================

	; Position platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	add.l  #Bridge_PlatformXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_PlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)

	; Position barrier
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	add.l  #Bridge_BarrierXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_BarrierYOffset*subpixels_per_pixel, d1
	move.l d0, Barrier_PosX(a2)
	move.l d1, Barrier_PosY(a2)

	; Disable barrier if rolling downwards
	cmp.b  #Bridge_ModeRollDown, Bridge_Mode(a0)
	bne    @NotRollingDown
	move.b #0x0, Barrier_Active(a2)
	@NotRollingDown:

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

	rts
	
BridgeUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    SpriteObjUpdate

	;==============================================================

	IF BRIDGE_PROXIMITY_DEBUG

	move.l #Player1, a2
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
	cmp.b  #Bridge_ModeDrop, Bridge_Mode(a0)
	bne    @NotDropMode
	cmp.b  #Bridge_StateDropping, Bridge_State(a0)
	beq    @AlreadyDropping
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	cmp.b  #0x0, Platform_Occupied(a2)
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

	rts

BridgeDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	PUSHL  a0

	; Get bridge pos
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	move.l d0, d5
	move.l d1, d6

	; Backup
	PUSHM  d0-d1

	;==============================================================

	; Get Y pos array
	move.l a0, a3
	add.l  #Bridge_NotchYPos, a3

	; Roll pos to notch index
	clr.l  d7
	move.l Bridge_UnrollPos(a0), d7
	TOPIXELS d7
	divu   #Bridge_NotchWidth, d7

	; Draw all notches
	move.l #0x0, d2
	@NotchDrawLp:

	; Clear position offset
	clr.l  d3
	clr.l  d4

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
	move.w (a2), d3	; Get coord
	move.w d3, d4
	lsr.w  #0x8, d3	; X
	andi.w #0xFF, d4; Y
	ext.w  d3		; Sign extend
	ext.w  d4
	cmp.b  #Bridge_ModeRollUp, Bridge_Mode(a0)	; If rolling down, invert Y
	beq    @RollUp
	neg.w  d4
	@RollUp:
	move.l d7, d1
	mulu   #Bridge_NotchWidth, d1 ; Add X offset
	add.w  d1, d3
	bra    @EndSpiral

	;==============================================================

	@Flat:

	; Flat X offset
	clr.l  d1
	move.b d2, d1
	mulu   #Bridge_NotchWidth, d1
	move.w d1, d3

	@EndSpiral:

	; To subpixels
	TOSUBPIXELS d3
	TOSUBPIXELS d4

	;==============================================================

	; If flipped on X axis, origin at right-hand side
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @NotFlipped

	; Invert X offset
	move.l #(Bridge_Width-Bridge_NotchWidth)*subpixels_per_pixel, d1
	sub.l  d3, d1
	move.l d1, d3

	@NotFlipped:

	;==============================================================

	; Add origin
	add.l  d5, d3
	add.l  d6, d4

	; Add Y offset
	add.l  (a3)+, d4

	; Set pos
	move.l d3, Entity_WorldPosX(a0)
	move.l d4, Entity_WorldPosY(a0)

	; Draw
	PUSHM  d0-d2/d7
	jsr    SpriteObjDraw
	POPM   d0-d2/d7

	; Loop
	add.b  #0x1, d2
	cmp.b  #Bridge_NumNotches, d2
	bne    @NotchDrawLp

	;==============================================================

	; Restore original pos
	POPM   d0-d1

	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

	POPL   a0

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

BridgeSnapOpen:

	; Set unroll pos at end
	move.l #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel), Bridge_UnrollPos(a0)

	; Activate platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)
	move.w #Bridge_Width, Platform_Width(a2)

	; Disable barrier
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x0, Barrier_Active(a2)

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	rts

BridgeSnapClosed:

	; Reset unroll pos
	move.l #0x0, Bridge_UnrollPos(a0)

	; Disable platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)
	move.w #0x0, Platform_Width(a2)

	; Activate barrier if in roll up mode
	move.l a0, a2
	cmp.b  #Bridge_ModeRollDown, Bridge_Mode(a0)
	beq    @RollDown
	add.l  #Bridge_Barrier, a2
	move.b #0x1, Barrier_Active(a2)
	@RollDown:

	; Set closed state
	move.b #Bridge_StateClosed, Bridge_State(a0)
	
	rts

BridgeSetDropMode:

	; Use roll pos for drop pos
	move.l #0x0, Bridge_UnrollPos(a0)

	; Activate platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)
	move.w #Bridge_Width, Platform_Width(a2)

	; Disable barrier
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x0, Barrier_Active(a2)

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	rts

BridgeBeginRoll:

	; Activate barrier (if rolling upwards)
	cmp.b  #Bridge_ModeRollDown, Bridge_Mode(a0)
	beq    @RollDown
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x1, Barrier_Active(a2)
	@RollDown:

	; Set speed
	move.l #Bridge_UnrollSpeed, Bridge_Speed(a0)

	; Set rolling state
	move.b #Bridge_StateRolling, Bridge_State(a0)

	rts

BridgeBeginUnroll:

	; Activate platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)

	; Set speed
	move.l #Bridge_UnrollSpeed, Bridge_Speed(a0)

	; Set unrolling state
	move.b #Bridge_StateUnrolling, Bridge_State(a0)

	rts

BridgeBeginDrop:

	; Set speed
	move.l #Bridge_DropSpeed, Bridge_Speed(a0)

	; Set drop state
	move.b #Bridge_StateDropping, Bridge_State(a0)

	rts

BridgeUpdateRoll:

	; Advance roll pos
	clr.l  d3
	clr.l  d4
	clr.l  d5
	move.b (GlobalTimeDiv), d3
	move.l Bridge_Speed(a0), d5
	DIVS1616_LOSSY d3, d5
	move.l Bridge_UnrollPos(a0), d4
	sub.l  d5, d4
	CLAMPL d4, #0x0, #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel)
	move.l d4, Bridge_UnrollPos(a0)

	; If at start, disable platform and set closed state
	cmp.l  #0x0, d4
	beq    @FinishedRolling
	bra    @StillRolling

	@FinishedRolling:

	; Disable platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)

	; Set closed state
	move.b #Bridge_StateClosed, Bridge_State(a0)

	@StillRolling:

	; Set barrier and platform pos
	move.l Bridge_UnrollPos(a0), d4
	jsr    BridgeUpdateBarrierPlatformPos

	rts

BridgeUpdateUnroll:

	; Advance unroll pos
	clr.l  d3
	clr.l  d4
	clr.l  d5
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
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x0, Barrier_Active(a2)

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	@StillUnrolling:

	; Set barrier and platform pos
	move.l Bridge_UnrollPos(a0), d4
	jsr    BridgeUpdateBarrierPlatformPos

	rts

BridgeUpdateBarrierPlatformPos:
	; d4 - Unroll pos

	; Unroll pos to pixels
	TOPIXELS d4
	add.w  #0x1, d4

	; Set platform width to unroll pos
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.w d4, Platform_Width(a2)

	; To world space
	TOSUBPIXELS d4

	; Add inverted X offset if flipped
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @NoInvertX
	move.l #Bridge_Width*subpixels_per_pixel, d7
	sub.l  d4, d7
	move.l d7, d4
	move.l Entity_WorldPosX(a0), d0
	add.l  d4, d0
	move.l d0, Platform_PosX(a2)
	@NoInvertX:

	; Move barrier to unroll pos
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.l Barrier_PosX(a2), d3
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	add.l  d4, d0
	add.l  #Bridge_BarrierXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_BarrierYOffset*subpixels_per_pixel, d1

	; Sub barrier width if flipped
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @NoFlipX
	sub.l  #Bridge_BarrierWidth*subpixels_per_pixel, d0
	@NoFlipX:

	move.l d0, Barrier_PosX(a2)
	move.l d1, Barrier_PosY(a2)

	; Calc barrier velocity
	sub.l  d3, d0
	move.l d0, Barrier_VelX(a2)

	rts

BridgeUpdateDropping:

	; Advance drop pos
	clr.l  d3
	clr.l  d4
	clr.l  d5
	move.b (GlobalTimeDiv), d3
	move.l Bridge_Speed(a0), d5
	DIVS1616_LOSSY d3, d5
	move.l Bridge_UnrollPos(a0), d4
	add.l  d5, d4
	CLAMPL d4, #0x0, #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel)
	move.l d4, Bridge_UnrollPos(a0)

	; For each notch up to drop pos, fall under gravity
	TOPIXELS d4
	divu.w #Bridge_NotchWidth, d4
	move.l a0, a2
	move.l a0, a3
	add.l  #Bridge_NotchYVel, a2
	add.l  #Bridge_NotchYPos, a3
	move.l Level_Gravity(a1), d0

	@NotchLp:
	move.l (a2), d1		; Vel to a2
	add.l  d0, d1		; Add gravity to vel
	move.l d1, (a2)+	; Back to array
	add.l  d1, (a3)+	; Add to pos
	dbra   d4, @NotchLp

	; If at end, disable platform
	move.l Bridge_UnrollPos(a0), d4
	cmp.l  #(Bridge_NumNotches*Bridge_NotchWidth*subpixels_per_pixel), d4
	beq    @FinishedDropping

	; Unroll pos to pixels
	TOPIXELS d4
	add.w  #0x1, d4

	; Reposition platform and set width
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.w #Bridge_Width, d5			; Invert for width
	sub.w  d4, d5
	move.w d5, Platform_Width(a2)
	TOSUBPIXELS d4						; To world space

	; Invert X if flipped
	cmp.b  #0x0, SpriteObj_FlippedX(a0)
	beq    @NoInvertX
	move.l #Bridge_Width*subpixels_per_pixel, d7
	sub.l  d4, d7
	move.l d7, d4
	@NoInvertX:
	
	move.l Entity_WorldPosX(a0), d1		; Set position
	add.l  d4, d1
	move.l d1, Platform_PosX(a2)

	bra    @End

	@FinishedDropping:

	; Disable platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)

	@End:

	rts
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
Bridge_UnrollSpeed		equ 0x28

Bridge_PlatformWidth	equ Bridge_Width	; Physics platform width
Bridge_PlatformXOffset	equ 0x0000	; Offset to platform from top of Bridge
Bridge_PlatformYOffset	equ 0x0000	; Offset to platform from top of Bridge

Bridge_BarrierWidth		equ 0x08
Bridge_BarrierHeight	equ 0x40
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

; Roll direction
Bridge_RollUp			equ 0
Bridge_RollDown			equ 1

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
Bridge_Platform			rs.b Platform_Struct_Size	; Physics platform (when down)
Bridge_Barrier			rs.b Barrier_Struct_Size	; Physic barrier (when up)
Bridge_UnrollPos		rs.w 1
Bridge_RollDirection	rs.b 1
Bridge_State			rs.b 1
;-----------------------------
Bridge_Struct_Pad		rs.b 0   ; Alignment padding
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
	move.w  #0x0, Bridge_UnrollPos(a0)
	move.b  #Bridge_StateClosed, Bridge_State(a0)
	move.b  #Bridge_RollUp, Bridge_RollDirection(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

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
	cmp.b  #Bridge_RollUp, Bridge_RollDirection(a0)
	beq    @RollUp
	move.b #0x0, Barrier_Active(a2)
	@RollUp:

	; Set initial state
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

	; Update roll/unroll
	move.b Bridge_State(a0), d0
	cmp.b  #Bridge_StateRolling, d0
	beq    @Rolling
	cmp.b  #Bridge_StateUnrolling, d0
	beq    @Unrolling
	bra    @End

	@Rolling:
	jsr    BridgeUpdateRoll
	bra    @End

	@Unrolling:
	jsr    BridgeUpdateUnroll

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

	; Draw all notches
	move.l #0x0, d2
	@NotchDrawLp:

	; Clear position offset
	clr.l  d3
	clr.l  d4

	; Check if within flat or rolled section
	clr.l  d7
	move.w Bridge_UnrollPos(a0), d7
	lsr.w  #0x8, d7
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
	cmp.b  #Bridge_RollUp, Bridge_RollDirection(a0)	; If rolling down, invert Y
	beq    @RollUp
	neg.w  d4
	@RollUp:
	mulu   #Bridge_NotchWidth, d7 ; Add X offset
	add.w  d7, d3
	bra    @EndSpiral

	@Flat:

	; Flat X offset
	clr.l  d7
	move.b d2, d7
	mulu   #Bridge_NotchWidth, d7
	move.w d7, d3

	@EndSpiral:

	; To subpixels
	TOSUBPIXELS d3
	TOSUBPIXELS d4

	; Add circle origin
	add.l  d5, d3
	add.l  d6, d4

	; Set pos
	move.l d3, Entity_WorldPosX(a0)
	move.l d4, Entity_WorldPosY(a0)

	; Draw
	PUSHM  d0-d2
	jsr    SpriteObjDraw
	POPM   d0-d2

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
	SAVEW Bridge_UnrollPos(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Bridge_State(a0)
	LOADW Bridge_UnrollPos(a0)
	
	;==============================================================
	
	@End:
	
	rts

BridgeSnapOpen:

	move.w #(Bridge_NumNotches<<8), Bridge_UnrollPos(a0)
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x0, Barrier_Active(a2)

	move.b Bridge_StateOpen, Bridge_State(a0)

	rts

BridgeSnapClosed:

	move.w #0x0, Bridge_UnrollPos(a0)
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)
	move.l a0, a2

	cmp.b  #Bridge_RollDown, Bridge_RollDirection(a0)
	beq    @RollDown
	add.l  #Bridge_Barrier, a2
	move.b #0x1, Barrier_Active(a2)
	@RollDown:

	move.b Bridge_StateClosed, Bridge_State(a0)
	
	rts

BridgeBeginRoll:

	; Activate barrier (if rolling upwards)
	cmp.b  #Bridge_RollDown, Bridge_RollDirection(a0)
	beq    @RollDown
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x1, Barrier_Active(a2)
	@RollDown:

	; Set rolling state
	move.b #Bridge_StateRolling, Bridge_State(a0)

	rts

BridgeBeginUnroll:

	; Activate platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)

	; Set unrolling state
	move.b #Bridge_StateUnrolling, Bridge_State(a0)

	rts

BridgeUpdateRoll:

	; Advance roll pos
	clr.l  d3
	clr.l  d4
	move.b (GlobalTimeDiv), d3
	move.l #Bridge_UnrollSpeed, d5
	divs.w d3, d5
	move.w Bridge_UnrollPos(a0), d4
	sub.w  d5, d4
	CLAMPW d4,#0x0,#(Bridge_NumNotches<<8)
	move.w d4, Bridge_UnrollPos(a0)

	; If at start, disable platform and set closed state
	cmp.w  #0x0, d4
	beq    @FinishedRolling

	; Unroll pos to pixels
	lsr.l  #0x8, d4
	add.w  #0x1, d4
	mulu   #Bridge_NotchWidth, d4

	; Set platform width to unroll pos
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.w d4, Platform_Width(a2)

	; Move barrier to unroll pos
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	TOSUBPIXELS d4
	add.l  d4, d0
	add.l  #Bridge_BarrierXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_BarrierYOffset*subpixels_per_pixel, d1
	move.l d0, Barrier_PosX(a2)
	move.l d1, Barrier_PosY(a2)

	bra    @End

	@FinishedRolling:

	; Disable platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)

	; Set closed state
	move.b #Bridge_StateClosed, Bridge_State(a0)

	@End:

	rts

BridgeUpdateUnroll:

	; Advance unroll pos
	clr.l  d3
	clr.l  d4
	move.b (GlobalTimeDiv), d3
	move.l #Bridge_UnrollSpeed, d5
	divs.w d3, d5
	move.w Bridge_UnrollPos(a0), d4
	add.w  d5, d4
	CLAMPW d4,#0x0,#(Bridge_NumNotches<<8)
	move.w d4, Bridge_UnrollPos(a0)

	; If at end, disable platform and set closed state
	cmp.w  #(Bridge_NumNotches<<8), d4
	beq    @FinishedUnrolling

	; Unroll pos to pixels
	lsr.l  #0x8, d4
	add.w  #0x1, d4
	mulu   #Bridge_NotchWidth, d4

	; Set platform width to unroll pos
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.w d4, Platform_Width(a2)

	; Move barrier to unroll pos
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	TOSUBPIXELS d4
	add.l  d4, d0
	add.l  #Bridge_BarrierXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_BarrierYOffset*subpixels_per_pixel, d1
	move.l d0, Barrier_PosX(a2)
	move.l d1, Barrier_PosY(a2)

	bra    @End

	@FinishedUnrolling:

	; Disable barrier
	move.l a0, a2
	add.l  #Bridge_Barrier, a2
	move.b #0x0, Barrier_Active(a2)

	; Set open state
	move.b #Bridge_StateOpen, Bridge_State(a0)

	@End:

	rts
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   bridge.asm - Drawbridge
;==============================================================

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

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
Bridge_Platform			rs.b Platform_Struct_Size	; Physics platform (when down)
Bridge_Barrier			rs.b Barrier_Struct_Size	; Physic barrier (when up)
Bridge_UnrollPos		rs.w 1
Bridge_Down				rs.b 1
;-----------------------------
Bridge_Struct_Pad		rs.b 1   ; Alignment padding
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
	move.b  #0x0, Bridge_Down(a0)
	
	; Setup collision bounds
	move.w  #0x0, PhysicsObj_BoundsLeft(a0)
	move.w  #0x0, PhysicsObj_BoundsTop(a0)
	move.w  Entity_Width(a0), PhysicsObj_BoundsWidth(a0)
	move.w  Entity_Height(a0), PhysicsObj_BoundsHeight(a0)

	rts

BridgeLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_DEFAULT Bridge,PaletteId_World0,0x0

	; Setup platform (deactivated)
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.l a0, Platform_Owner(a2)
	move.b #0x0, Platform_Active(a2)
	move.w #Bridge_PlatformWidth, Platform_Width(a2)
	move.l Entity_WorldPosX(a0), d0
	move.l Entity_WorldPosY(a0), d1
	add.l  #Bridge_PlatformXOffset*subpixels_per_pixel, d0
	add.l  #Bridge_PlatformYOffset*subpixels_per_pixel, d1
	move.l d0, Platform_PosX(a2)
	move.l d1, Platform_PosY(a2)
	move.l #0x0, Platform_VelX(a2)
	move.l #0x0, Platform_VelY(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts
	
BridgeUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    SpriteObjUpdate

	clr.l  d4
	move.w Bridge_UnrollPos(a0), d4

	; TODO: Move to BridgeBeginRoll/BridgeBeginUnroll
	move.l #Player1, a2
	move.l Entity_WorldPosX(a2), d0
	move.l Entity_WorldPosX(a0), d1
	sub.l  d0, d1
	cmp.l  #(Player1Width+0x10)*subpixels_per_pixel, d1
	bgt    @NoUnroll

	; Activate platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x1, Platform_Active(a2)
	
	; Unroll
	add.w  #Bridge_UnrollSpeed, d4

	bra    @EndUnroll

	@NoUnroll:

	; Disable platform
	move.l a0, a2
	add.l  #Bridge_Platform, a2
	move.b #0x0, Platform_Active(a2)

	; Roll
	sub.w  #Bridge_UnrollSpeed, d4

	@EndUnroll:

	; Clamp
	CLAMPW d4,#0x0,#(Bridge_NumNotches<<8)

	; Apply
	move.w d4, Bridge_UnrollPos(a0)

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
	
	SAVEB Bridge_Down(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADB Bridge_Down(a0)
	
	;==============================================================
	
	@End:
	
	rts

BridgeBeginClose:

	; Setup barrier

	rts

BridgeBeginOpen:

	; Setup platform
	; move.l a0, a2
	; add.l  #Bridge_UpperPlatform, a2
	; move.l a0, Platform_Owner(a2)
	; move.b #0x1, Platform_Active(a2)
	; move.w #Bridge_PlatformWidth, Platform_Width(a2)
	; move.l Entity_WorldPosX(a0), d0
	; move.l Entity_WorldPosY(a0), d1
	; add.l  #Bridge_UpperPlatformXOffset*subpixels_per_pixel, d0
	; add.l  #Bridge_UpperPlatformYOffset*subpixels_per_pixel, d1
	; move.l d0, Platform_PosX(a2)
	; move.l d1, Platform_PosY(a2)
	; move.l #0x0, Platform_VelX(a2)
	; move.l #0x0, Platform_VelY(a2)
	; LIST_APPEND_TAIL Platforms, a2, a3

	rts

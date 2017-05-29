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

Bridge_PlatformWidth		equ Bridge_Width	; Physics platform width
Bridge_UpperPlatformXOffset	equ 0x0000	; Offset to platform from top of Bridge
Bridge_UpperPlatformYOffset	equ 0x0000	; Offset to platform from top of Bridge

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

	rts
	
BridgeUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Base functionality
	jsr    SpriteObjUpdate
	
	add.w  #0x1, Bridge_UnrollPos(a0)

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

	; Get notch idx
	clr.l  d3
	clr.l  d4
	move.b d2, d3

	; To X pos (as if straight)
	;mulu   #Bridge_NotchWidth, d3

	lea    Bridge_SpiralCoords, a2
	lsl.w  #0x1, d3
	add.l  d3, a2
	move.w (a2), d3
	move.w d3, d4
	lsr.w  #0x8, d3
	andi.w #0xFF, d4
	ext.w  d3
	ext.w  d4

	; Sin/cos of current notch idx
	; Translate to -127-127 range
	;mulu   #sintablesize/Bridge_NumNotches, d3
	;mulu   #costablesize/Bridge_NumNotches, d4
	;
	;; Lookup sin/cos
	;lea    costable, a2
	;lea    sintable, a3
	;add.l  d3, a2
	;add.l  d4, a3
	;move.b (a2), d3
	;move.b (a3), d4
	;ext.w  d3
	;ext.w  d4
	;
	;; To subpixels
	TOSUBPIXELS d3
	TOSUBPIXELS d4
	;
	;; Reduce radius to fit all notches together
	;;clr.l  d7
	;;move.b d2, d7
	;;mulu   #(Bridge_MaxNotchSpiralRadius-Bridge_MinNotchSpiralRadius)/Bridge_NumNotches, d7
	;
	;clr.l  d7
	;;move.w Bridge_UnrollPos(a0), d7
	;;lsr.w  #0x8, d7
	;move.b d2, d7
	;add.w  #(sintablemax-sintablemin)/2/Bridge_MaxNotchSpiralRadius, d7
	;
	;DIVS1616_LOSSY d7, d3
	;DIVS1616_LOSSY d7, d4
	;
	;; Get circle origin
	move.l d5, d0
	move.l d6, d1
	;
	;; Offset origin to bridge pos
	;; sub.l  #(Bridge_MaxNotchSpiralRadius+Bridge_NotchWidth)*subpixels_per_pixel, d4
	;
	;; Add sin/cos offset
	add.l  d3, d0
	add.l  d4, d1

	; Set pos
	move.l d0, Entity_WorldPosX(a0)
	move.l d1, Entity_WorldPosY(a0)

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

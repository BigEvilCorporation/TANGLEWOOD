;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   uitext.asm - Text label UI widget
;==============================================================

UIWidgetText_MaxWidgets			equ 0x10

UIWidgetText_DrawPlane_PlaneA	equ 0x0
UIWidgetText_DrawPlane_PlaneB	equ 0x1
UIWidgetText_DrawPlane_Sprite	equ 0x2

	rsset UIWidget_Struct_Size
;---------------------------------
UIWidgetText_StringAddr		rs.l 1
UIWidgetText_FontAddrVRAM	rs.w 1
UIWidgetText_Palette		rs.b 1
UIWidgetText_DrawPlane		rs.b 1
;---------------------------------
UIWidgetText_Struct_Pad		rs.b 0
UIWidgetText_Struct_Size	rs.b 0
;---------------------------------

UIWidgetTextInit:
	; a0 --- Widget addr

	; Base init
	jsr    UIWidgetInit

	; Count
	add.w  #0x1, WidgetCount_Text

	; Set update/render routines
	move.l #UIWidgetTextUpdate, UIWidget_UpdateRoutine(a0)
	move.l #UIWidgetTextRender, UIWidget_RenderRoutine(a0)

	; Initial state
	move.l #0x0, UIWidgetText_StringAddr(a0)
	move.w #0x0, UIWidgetText_FontAddrVRAM(a0)
	move.b #0x0, UIWidgetText_Palette(a0)
	move.b #UIWidgetText_DrawPlane_PlaneA, UIWidgetText_DrawPlane(a0)
	
	rts

UIWidgetTextSetString:
	; a0 --- Widget addr
	; a1 --- String
	; d0 (w) Font
	; d1 (b) Palette
	; d2 (b) Draw plane

	move.l a1, UIWidgetText_StringAddr(a0)
	move.w d0, UIWidgetText_FontAddrVRAM(a0)
	move.b d1, UIWidgetText_Palette(a0)
	move.b d2, UIWidgetText_DrawPlane(a0)

	rts

UIWidgetTextUpdate:
	; a0 --- Widget addr

	jsr    UIWidgetUpdate

	rts

UIWidgetTextRender:
	; a0 --- Widget addr

	move.b UIWidgetText_DrawPlane(a0), d0
	cmp.b  #UIWidgetText_DrawPlane_PlaneA, d0
	beq    @DrawPlane
	cmp.b  #UIWidgetText_DrawPlane_PlaneB, d0
	beq    @DrawPlane
	cmp.b  #UIWidgetText_DrawPlane_Sprite, d0
	beq    @DrawSprites

	@DrawPlane:

	PUSHL   a0

	move.w  UIWidget_PositionX(a0), d1			; X pos
	lsr.w   #0x3, d1							; Pixels to tiles
	swap    d1
	move.w  UIWidget_PositionY(a0), d1			; Y pos
	lsr.w   #0x3, d1							; Pixels to tiles

	move.w UIWidgetText_FontAddrVRAM(a0), d0	; Font (VRAM)
	divu.w #size_tile_b, d0						; To tiles
	move.b UIWidgetText_Palette(a0), d2			; Palette
	move.b UIWidgetText_DrawPlane(a0), d3		; Plane
	move.l  UIWidgetText_StringAddr(a0), a0		; String
	jsr     TXT_DrawPlane

	POPL    a0

	bra @End

	@DrawSprites:
	; TODO
	bra @End

	@End:

	jsr    UIWidgetRender
	
	rts
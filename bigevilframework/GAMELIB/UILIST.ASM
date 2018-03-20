;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   uilist.asm - List selection widget
;==============================================================

UIWidgetList_MaxItems			equ 0x60

UIWidgetList_DrawPlane_PlaneA	equ 0x0
UIWidgetList_DrawPlane_PlaneB	equ 0x1
UIWidgetList_DrawPlane_Sprite	equ 0x2

UIWidgetList_Orientation_Horizontal	equ 0x0
UIWidgetList_Orientation_Vertical	equ 0x1

	rsset UIWidgetText_Struct_Size
;---------------------------------
UIWidgetList_Items			rs.l UIWidgetList_MaxItems
UIWidgetList_Orientation	rs.b 1
UIWidgetList_NumItems		rs.b 1
UIWidgetList_ItemIndex		rs.b 1
;---------------------------------
	RS_ALIGN
UIWidgetList_Struct_Size	rs.b 0
;---------------------------------

UIWidgetListInit:
	; a0 --- Widget addr

	; Base init
	jsr    UIWidgetTextInit

	; Set update/render routines
	move.l #UIWidgetListUpdate, UIWidget_UpdateRoutine(a0)
	move.l #UIWidgetListRender, UIWidget_RenderRoutine(a0)

	; Initial state
	move.l #UIWidgetListOnOptionCycle, UIWidget_OnOptionCycle(a0)
	move.b #UIWidgetList_Orientation_Horizontal, UIWidgetList_Orientation(a0)
	move.b #0x0, UIWidgetList_NumItems(a0)
	move.b #0x0, UIWidgetList_ItemIndex(a0)
	
	rts

UIWidgetListUpdate:
	; a0 --- Widget addr

	jsr    UIWidgetTextUpdate

	rts

UIWidgetListRender:
	; a0 --- Widget addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	jsr    UIWidgetTextRender
	
	rts


UIWidgetListSetFont:
	; a0 --- Widget addr
	; a2 --- Font
	; d0 (w) Font (VRAM)
	; d1 (b) Palette
	; d2 (b) Draw plane

	move.l a2, UIWidgetText_FontAddr(a0)
	move.w d0, UIWidgetText_FontAddrVRAM(a0)
	move.b d1, UIWidgetText_Palette(a0)
	move.b d2, UIWidgetText_DrawPlane(a0)

	rts

UIWidgetListAddItem:
	; a0 --- Widget addr
	; a1 --- Item string

	; Set string ptr
	moveq  #0x0, d0
	move.b UIWidgetList_NumItems(a0), d0
	lsl.l  #0x2, d0
	lea    UIWidgetList_Items(a0), a2
	add.l  d0, a2
	move.l a1, (a2)

	; Increment item count
	addi.b #0x1, UIWidgetList_NumItems(a0)

	; If first item, set string
	cmp.b  #0x1, UIWidgetList_NumItems(a0)
	bne    @NotFirst
	move.b #0x0, d0
	jsr    UIWidgetListSetItem
	@NotFirst:

	rts

UIWidgetListOnOptionCycle:
	; a0 --- Widget addr
	; d0 (b) 0 = cycled left, 1 = cycled right

	tst.b d0
	bne   @CycleRight
	jsr   UIWidgetListPrevItem
	bra   @CycleLeft
	@CycleRight:
	jsr   UIWidgetListNextItem
	@CycleLeft:

	; Set new index as OnSelected userdata
	moveq  #0x0, d0
	move.b UIWidgetList_ItemIndex(a0), d0
	move.l d0, UIWidget_OnSelectedData(a0)

	rts

UIWidgetListSetItem:
	; a0 --- Widget addr
	; d0 (b) Item index

	; Get string ptr
	andi.l #0xFF, d0
	lsl.l  #0x2, d0
	lea    UIWidgetList_Items(a0), a2
	add.l  d0, a2
	move.l (a2), a1

	; Get font settings
	move.l UIWidgetText_FontAddr(a0), a2
	move.w UIWidgetText_FontAddrVRAM(a0), d0
	move.b UIWidgetText_Palette(a0), d1
	move.b UIWidgetText_DrawPlane(a0), d2

	; Set text
	jsr    UIWidgetTextSetString

	rts

UIWidgetListNextItem:
	; a0 --- Widget addr

	; Increment and wrap
	move.b UIWidgetList_ItemIndex(a0), d0
	addi.b #0x1, d0
	cmp.b  UIWidgetList_NumItems(a0), d0
	blt    @NoClamp
	move.b #0x0, d0
	@NoClamp:

	; Set new index
	move.b d0, UIWidgetList_ItemIndex(a0)

	; Set new item
	jsr    UIWidgetListSetItem

	rts

UIWidgetListPrevItem:
	; a0 --- Widget addr

	; Decrement and wrap
	move.b UIWidgetList_ItemIndex(a0), d0
	subi.b #0x1, d0
	bge    @NoClamp
	move.b UIWidgetList_NumItems(a0), d0
	subi.b #0x1, d0
	@NoClamp:

	; Set new index
	move.b d0, UIWidgetList_ItemIndex(a0)

	; Set new item
	jsr    UIWidgetListSetItem

	rts
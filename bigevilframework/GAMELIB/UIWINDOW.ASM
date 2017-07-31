;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   uiwindow.asm - User interface window (collection of widgets)
;==============================================================

UIWindow_MaxEntities		equ 0x1

	rsset Entity_Struct_Size
;---------------------------------
	LINKED_LIST Widgets				; Widgets belonging to this window
;---------------------------------
UIWindow_Struct_Pad			rs.b 0
UIWindow_Struct_Size		rs.b 0
;---------------------------------

UIWindowInit:
	; a0 --- Window addr

	; Base init
	jsr    EntityInit
	
	; Count
	addi.w #0x1, EntityCount_UIWindow
	
	; Set update and render routines
	move.l #UIWindowUpdate, Entity_UpdateRoutine(a0)
	move.l #UIWindowRender, Entity_RenderRoutine(a0)

	; Add to update and render lists
	jsr EntityAddToUpdateList
	jsr EntityAddToRenderList

	rts

UIWindowAddWidget:
	; a0 --- Window addr
	; a1 --- Widget addr

	MLIST_APPEND_TAIL Widgets,a1,a2,a0

	rts

UIWindowUpdate:
	; a0 --- Window addr

	MLIST_GET_HEAD Widgets,a1,a0			; Get list head
	@WidgetLp:								; For all widgets in list
	cmp.l  #0x0, a1
	beq    @ListEnd
	PUSHM  a0-a1
	move.l a1, a0							; Widget addr to a0
	move.l UIWidget_UpdateRoutine(a0), a2 	; Get update routine
	jsr    (a2)								; Execute update routine
	POPM   a0-a1
	LIST_GET_NEXT Widgets,a1,a1				; Get next ptr
	bra    @WidgetLp						; Loop
	@ListEnd:

	rts

UIWindowRender:
	; a0 --- Window addr

	MLIST_GET_HEAD Widgets,a1,a0			; Get list head
	@WidgetLp:								; For all widgets in list
	cmp.l  #0x0, a1
	beq    @ListEnd
	PUSHM  a0-a1
	move.l a1, a0							; Widget addr to a0
	move.l UIWidget_RenderRoutine(a0), a2 	; Get render routine
	jsr    (a2)								; Execute update routine
	POPM   a0-a1
	LIST_GET_NEXT Widgets,a1,a1				; Get next ptr
	bra    @WidgetLp						; Loop
	@ListEnd:

	rts
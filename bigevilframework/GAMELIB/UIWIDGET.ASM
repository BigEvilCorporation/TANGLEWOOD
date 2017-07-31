;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   uiwidget.asm - User interface base widget
;==============================================================

	rsset 0
;---------------------------------
	LINKED_LIST_NODE Widgets		; Next in linked list
;---------------------------------
UIWidget_Window				rs.l 1	; Window owning this widget
UIWidget_UpdateRoutine		rs.l 1	; Update subroutine address
UIWidget_RenderRoutine		rs.l 1	; Render subroutine address
UIWidget_PositionX			rs.w 1	; Position X (relative to window)
UIWidget_PositionY			rs.w 1	; Position Y (relative to window)
UIWidget_Enabled			rs.b 1	; Widget enabled
UIWidget_HasFocus			rs.b 1	; Widget has focus
;---------------------------------
UIWidget_Struct_Pad			rs.b 2
UIWidget_Struct_Size		rs.b 0
;---------------------------------

UIWidgetInit:
	; a0 --- Widget addr

	move.l #0x0, UIWidget_Window(a0)
	move.l #0x0, UIWidget_UpdateRoutine(a0)
	move.l #0x0, UIWidget_RenderRoutine(a0)
	move.w #0x0, UIWidget_PositionX(a0)
	move.w #0x0, UIWidget_PositionY(a0)
	move.b #0x1, UIWidget_Enabled(a0)
	move.b #0x0, UIWidget_HasFocus(a0)

	rts

UIWidgetUpdate:
	; a0 --- Widget addr

	rts

UIWidgetRender:
	; a0 --- Widget addr
	
	rts
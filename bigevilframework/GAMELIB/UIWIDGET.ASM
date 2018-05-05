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
UIWidget_OnSelected			rs.l 1	; On selected callback
UIWidget_OnCancelled		rs.l 1	; On cancelled callback
UIWidget_OnSelectedData		rs.l 1	; On selected callback userdata
UIWidget_OnCancelledData	rs.l 1	; On cancelled callback userdata
UIWidget_OnOptionCycle		rs.l 1	; On option cycled callback
UIWidget_OnOptionAdvance	rs.l 1	; On option advanced callback
UIWidget_UpdateRoutine		rs.l 1	; Update subroutine address
UIWidget_RenderRoutine		rs.l 1	; Render subroutine address
UIWidget_PositionX			rs.w 1	; Position X (relative to window)
UIWidget_PositionY			rs.w 1	; Position Y (relative to window)
UIWidget_Width				rs.w 1	; Size X
UIWidget_Height				rs.w 1	; Size Y
UIWidget_Enabled			rs.b 1	; Widget enabled
UIWidget_HasFocus			rs.b 1	; Widget has focus
;---------------------------------
	RS_ALIGN
UIWidget_Struct_Size		rs.b 0
;---------------------------------

UIWidgetInit:
	; a0 --- Widget addr

	LIST_INIT_LINK Widgets,a0
	move.l #0x0, UIWidget_Window(a0)
	move.l #0x0, UIWidget_OnSelected(a0)
	move.l #0x0, UIWidget_OnCancelled(a0)
	move.l #0x0, UIWidget_OnSelectedData(a0)
	move.l #0x0, UIWidget_OnCancelledData(a0)
	move.l #0x0, UIWidget_OnOptionCycle(a0)
	move.l #0x0, UIWidget_OnOptionAdvance(a0)
	move.l #0x0, UIWidget_UpdateRoutine(a0)
	move.l #0x0, UIWidget_RenderRoutine(a0)
	move.w #0x0, UIWidget_PositionX(a0)
	move.w #0x0, UIWidget_PositionY(a0)
	move.w #0x0, UIWidget_Width(a0)
	move.w #0x0, UIWidget_Height(a0)
	move.b #0x1, UIWidget_Enabled(a0)
	move.b #0x0, UIWidget_HasFocus(a0)

	rts

UIWidgetSelect:
	; a0 --- Widget addr

	PUSHALL
	move.l UIWidget_OnSelectedData(a0), a1
	move.l UIWidget_OnSelected(a0), a2
	cmpa.w #0x0, a2
	beq    @NoCallback
	jsr    (a2)
	@NoCallback:
	POPALL

	rts

UIWidgetCancel:
	; a0 --- Widget addr

	PUSHALL
	move.l UIWidget_OnCancelledData(a0), a1
	move.l UIWidget_OnCancelled(a0), a2
	cmpa.w #0x0, a2
	beq    @NoCallback
	jsr    (a2)
	@NoCallback:
	POPALL

	rts

UIWidgetUpdate:
	; a0 --- Widget addr

	rts

UIWidgetRender:
	; a0 --- Widget addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom
	
	rts
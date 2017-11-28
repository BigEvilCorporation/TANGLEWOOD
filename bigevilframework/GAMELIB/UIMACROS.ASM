;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   uimacros.asm - Helper macros for setting up UI
;==============================================================

	; Create text widget and add to window
	; Returns widget in a3
WINDOW_CREATE_WIDGET_TEXT macro windowaddr,stringaddr,font,fontvram,palette,plane,posx,posy
	PUSHM  d0-d3/a0-a1
	PUSHL  \windowaddr
	RAMPOOL_ALLOC Pool_Entities, #UIWidgetText_Struct_Size
	move.l a1, a0
	jsr    UIWidgetTextInit
	move.l \stringaddr, a1
	move.l \font, a2
	move.w \fontvram, d0
	move.b \palette, d1
	move.b \plane, d2
	jsr    UIWidgetTextSetString
	move.w \posx, UIWidget_PositionX(a0)
	move.w \posy, UIWidget_PositionY(a0)
	move.l a0, a1
	POPL   \windowaddr
	move.l \windowaddr, a0
	jsr    UIWindowAddWidget
	move.l a1, a3
	POPM   d0-d3/a0-a1
	endm

	; Create list widget and add to window
	; Returns widget in a3
WINDOW_CREATE_WIDGET_LIST macro windowaddr,font,fontvram,palette,plane,posx,posy
	PUSHM  d0-d3/a0-a1
	PUSHL  \windowaddr
	RAMPOOL_ALLOC Pool_Entities, #UIWidgetList_Struct_Size
	move.l a1, a0
	jsr    UIWidgetListInit
	move.l \font, a2
	move.w \fontvram, d0
	move.b \palette, d1
	move.b \plane, d2
	jsr    UIWidgetListSetFont
	move.w \posx, UIWidget_PositionX(a0)
	move.w \posy, UIWidget_PositionY(a0)
	move.l a0, a1
	POPL   \windowaddr
	move.l \windowaddr, a0
	jsr    UIWindowAddWidget
	move.l a1, a3
	POPM   d0-d3/a0-a1
	endm

	; Create cursor widget and add to window
	; Returns widget in a3
WINDOW_CREATE_WIDGET_CURSOR macro windowaddr
	PUSHM  d0-d3/a0-a1
	PUSHL  \windowaddr
	RAMPOOL_ALLOC Pool_Entities, #UIWidgetCursor_Struct_Size
	move.l a1, a0
	jsr    UIWidgetCursorInit
	move.l a0, a1
	POPL   \windowaddr
	move.l \windowaddr, a0
	jsr    UIWindowAddWidget
	move.l a1, a3
	POPM   d0-d3/a0-a1
	endm

	; Set widget OnSelected callback
WIDGET_SET_ONSELECTED: macro widgetaddr,callbackaddr,userdata
	move.l #\callbackaddr, UIWidget_OnSelected(\widgetaddr)
	move.l #\userdata, UIWidget_OnSelectedData(\widgetaddr)
	endm

	; Load cursor sprite
CURSOR_LOAD_SPRITE: macro cursoraddr,actor,sheet,width,height,palette,prio
	PUSHM  d0-d7/a0-a3
	move.w #actor_\actor\_sheet_\sheet\_VRAM_size_b, d0
	jsr    VRAM_PoolAlloc
	move.l \cursoraddr, a0
	lea    spritesheets_\actor, a1
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_dimensions_bits, a2
	lea    actor_\actor\_sheet_\sheet\_frame_0_subsprite_pos_offsets, a3
	move.l #actor_\actor\_sheet_\sheet\_frame_0_size_t, d1
	move.b #actor_\actor\_sheet_\sheet\_frame_0_size_subsprites, d2
	move.b #\palette, d4
	move.b #\prio, d5
	move.w #\width, d6
	move.w #\height, d7
	jsr    UIWidgetCursorLoadSprite
	POPM   d0-d7/a0-a3
	endm

	; Add widget to cursor selection list
CURSOR_ADD_WIDGET: macro cursoraddr,widgetaddr
	PUSHM a0-a3
	move.l \cursoraddr, a0
	move.l \widgetaddr, a1
	jsr    UIWidgetCursorAddWidget
	POPM a0-a3
	endm

	; Add string item to list widget
WIDGET_LIST_ADD_ITEM: macro listaddr,stringaddr
	PUSHM a0-a3
	move.l \listaddr, a0
	move.l \stringaddr, a1
	jsr    UIWidgetListAddItem
	POPM  a0-a3
	endm
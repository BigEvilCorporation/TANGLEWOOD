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
	clr.l  d0
	move.w (WidgetCount_Text), d0
	mulu   #UIWidgetText_Struct_Size, d0
	move.l #WidgetArray_Text, a0
	add.l  d0, a0
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

	; Create cursor widget and add to window
	; Returns widget in a3
WINDOW_CREATE_WIDGET_CURSOR macro windowaddr
	PUSHM  d0-d3/a0-a1
	PUSHL  \windowaddr
	clr.l  d0
	move.w (WidgetCount_Cursor), d0
	mulu   #UIWidgetCursor_Struct_Size, d0
	move.l #WidgetArray_Cursor, a0
	add.l  d0, a0
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
CURSOR_LOAD_SPRITE: macro cursoraddr,spritesheet,width,height,palette,prio
	PUSHM  d0-d7/a0-a2
	move.w #sprite_\spritesheet\_size_b, d0
	jsr    VRAM_PoolAlloc
	move.l \cursoraddr, a0
	lea    spritesheets_\spritesheet, a1
	lea    sprite_\spritesheet\_subsprite_dimensions_bits, a2
	lea    sprite_\spritesheet\_subsprite_pos_offsets, a3
	lea    sprite_\spritesheet\_numtiles_per_subsprite, a4
	move.l #sprite_\spritesheet\_size_t, d1
	move.b #sprite_\spritesheet\_size_subsprites, d2
	move.w #sprite_\spritesheet\_widthheight_subsprites, d3
	move.b #\palette, d4
	move.b #\prio, d5
	move.w #\width, d6
	move.w #\height, d7
	jsr    UIWidgetCursorLoadSprite
	POPM   d0-d7/a0-a2
	endm

	; Add widget to cursor selection list
CURSOR_ADD_WIDGET: macro cursoraddr,widgetaddr
	PUSHM a0-a1
	move.l \cursoraddr, a0
	move.l \widgetaddr, a1
	jsr    UIWidgetCursorAddWidget
	POPM a0-a1
	endm

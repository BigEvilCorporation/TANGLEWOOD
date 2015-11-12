;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   debug.asm - debug drawing and controls
;==============================================================

debugdraw_playerpos_text_x equ 0x8
debugdraw_playerpos_text_y equ 0x1

DebugDraw:

	; Alloc string space
	sub.l  #0x10, sp

	move.l sp, a4
	move.l (hblank_counter), d0
	; To string
	move.l a4, a0
	jsr    ItoA_Hex_l
	move.w  #debugdraw_playerpos_text_x, d1
	swap   d1
	move.w  #debugdraw_playerpos_text_y, d1
	move.l a4, a0					; String
	move.w #Tiles_PixelFont_ID, d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    DrawTextToPlane
	
	move.l sp, a4
	move.l (vblank_counter), d0
	; To string
	move.l a4, a0
	jsr    ItoA_Hex_l
	move.w  #debugdraw_playerpos_text_x, d1
	swap   d1
	move.w  #debugdraw_playerpos_text_y+0x1, d1
	move.l a4, a0					; String
	move.w #Tiles_PixelFont_ID, d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    DrawTextToPlane
	
	move.l sp, a4
	move.l (frame_counter_update), d0
	; To string
	move.l a4, a0
	jsr    ItoA_Hex_l
	move.w  #debugdraw_playerpos_text_x, d1
	swap   d1
	move.w  #debugdraw_playerpos_text_y+0x2, d1
	move.l a4, a0					; String
	move.w #Tiles_PixelFont_ID, d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    DrawTextToPlane
	
	move.l sp, a4
	move.l (frame_counter_render), d0
	; To string
	move.l a4, a0
	jsr    ItoA_Hex_l
	move.w  #debugdraw_playerpos_text_x, d1
	swap   d1
	move.w  #debugdraw_playerpos_text_y+0x3, d1
	move.l a4, a0					; String
	move.w #Tiles_PixelFont_ID, d0	; Font
	move.b #0x0, d2					; Palette
	move.b #0x0, d3					; Plane A
	jsr    DrawTextToPlane
	
	; Free string space
	add.l  #0x10, sp
	
	; Alloc string space
	;sub.l  #0x10, sp
    ;
	;move.l sp, a4
    ;
	;; Get player X
	;lea    Player1, a2
	;move.l GameObj_WorldPosX(a2), d0
    ;
	;; To string
	;move.l a4, a0
	;jsr    ItoA_Hex_l
	;
	;; Translate scroll pos to tile space
	;move.l (WorldScrollX), d1
	;lsr.l  #0x8, d1					; Screen space (subpixels) to pixels
	;divu.w #0x8, d1					; Pixels to tile space
	;add.w  #debugdraw_playerpos_text_x, d1
	;swap   d1
    ;
	;move.l (WorldScrollY), d2
	;lsr.l  #0x8, d2					; Screen space (subpixels) to pixels
	;divu.w #0x8, d2					; Pixels to tile space
	;add.w  #debugdraw_playerpos_text_y, d2
	;move.w d2, d1
    ;
	;move.l a4, a0					; String
	;move.w #Tiles_PixelFont_ID, d0	; Font
	;move.b #0x0, d2					; Palette
	;move.b #0x0, d3					; Plane A
    ;
	;jsr    DrawTextToPlane
    ;
	;; Get player Y
	;lea    Player1, a2
	;move.l GameObj_WorldPosY(a2), d0
    ;
	;; To string
	;move.l a4, a0
	;jsr    ItoA_Hex_l
	;
	;; Translate scroll pos to tile space
	;move.l (WorldScrollX), d1
	;lsr.l  #0x8, d1					; Screen space (subpixels) to pixels
	;divu.w #0x8, d1					; Pixels to tile space
	;add.w  #debugdraw_playerpos_text_x, d1
	;swap   d1
    ;
	;move.l (WorldScrollY), d2
	;lsr.l  #0x8, d2					; Screen space (subpixels) to pixels
	;divu.w #0x8, d2					; Pixels to tile space
	;add.w  #debugdraw_playerpos_text_y+0x1, d2
	;move.w d2, d1
    ;
	;move.l a4, a0					; String
	;move.w #Tiles_PixelFont_ID, d0	; Font
	;move.b #0x0, d2					; Palette
	;move.b #0x0, d3					; Plane A
    ;
	;jsr    DrawTextToPlane
    ;
	;; Free string space
	;add.l  #0x10, sp


	rts

;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   ladder.asm - Basic ladder
;==============================================================

; Constants
Ladder_Width			equ 0x28
Ladder_Height			equ 0xA0

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
;-----------------------------
Ladder_Struct_Pad		rs.b 0   ; Alignment padding
Ladder_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

LadderInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Ladder
	
	; Set render routine
	move.l #SpriteObjDraw, Entity_RenderRoutine(a0)
	
	; Add to render list
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Ladder_Width, Entity_Width(a0)
	move.w  #Ladder_Height, Entity_Height(a0)

	rts

LadderLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED Ladder,PaletteId_World0,0x0

	rts

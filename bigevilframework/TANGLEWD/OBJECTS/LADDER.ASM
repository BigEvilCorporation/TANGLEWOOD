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
Ladder_SpriteHeight		equ 0x20
Ladder_NumSprites		equ (Ladder_Height/Ladder_SpriteHeight)

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;-----------------------------
Ladder_Platform			rs.b Platform_Struct_Size
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
	move.l #LadderDraw, Entity_RenderRoutine(a0)
	
	; Add to render list
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Ladder_Width, Entity_Width(a0)
	move.w  #Ladder_Height, Entity_Height(a0)

	; Setup platform
	lea    Ladder_Platform(a0), a2
	move.l #Platform_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Ladder_Width, Platform_Width(a2)
	LIST_APPEND_TAIL Platforms, a2, a3

	rts

LadderLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED Ladder,ladder,PaletteId_World0,0x0

	; Position platform
	lea    Ladder_Platform(a0), a2
	move.l Entity_WorldPosX(a0), Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), Platform_PosY(a2)

	rts

LadderDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; d2 (w) Camera left
	; d3 (w) Camera right
	; d4 (w) Camera top
	; d5 (w) Camera bottom

	PUSHMW d2-d5

	ENTITY_GETBOUNDS d1,d2,d3,a0
	CAMERA_GETSCREENBOUNDS d3,d4,d5
	jsr    PHYS_TestBoxIntersectBox
	tst.b  d0
	beq    @OutOfView

	; Get XY
	move.w Entity_WorldPosX(a0), d0
	move.w Entity_WorldPosY(a0), d1

	; To sprite space
	sub.w  WorldScrollX, d0
	sub.w  WorldScrollY, d1

	; Loop sprites
	move.w #Ladder_NumSprites-1, d6
	@DrawLp:

	; Draw
	PUSHMW d0-d1/d6
	move.b #0x0, d2
	jsr    SpriteObjAllocSprite
	POPMW  d0-d1/d6

	; Inc. Y
	addi.w #Ladder_SpriteHeight, d1

	dbra   d6, @DrawLp

	@OutOfView:

	POPMW  d2-d5

	rts
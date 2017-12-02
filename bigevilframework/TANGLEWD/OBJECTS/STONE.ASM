;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   stone.asm - Small pushable stone - stops boulders rolling
;==============================================================

; Constants
Stone_Width				equ 0x10
Stone_Height			equ 0x10

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;--------------------------
Stone_Barrier      rs.b Barrier_Struct_Size ; Moving barrier attached to stone
;--------------------------
	RS_ALIGN
Stone_Struct_Size  rs.b 0
;--------------------------

;==============================================================

StoneInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Set type
	; ori.l  #entity_type_stone, Entity_TypeBits(a0)
	addq.w #0x1, EntityCount_Stone
	
	; Set render routine
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to render list
	;jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Stone_Width, Entity_Width(a0)
	move.w  #Stone_Height, Entity_Height(a0)

	;==============================================================
	
	; Setup barrier
	lea    Stone_Barrier(a0), a2
	move.l #Barrier_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Stone_Width, Barrier_Width(a2)
	move.w #Stone_Height, Barrier_Height(a2)
	
	; Add to physics barriers list
	LIST_APPEND_TAIL Barriers, a2, a3

	rts

StoneLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED stone,stone,0,PaletteId_World0,0x0

	; Add to world grid
	move.b  #(1<<EntityWorldGridFlag_GridRenders), d0
	jsr     EntityAddToWorldGrid

	; TODO: Snap to floor
	; jsr    PhysicsObjSnapToFloor

	; Reposition barrier
	lea    Stone_Barrier(a0), a2
	move.l Entity_WorldPosX(a0), Barrier_PosX(a2)
	move.l Entity_WorldPosY(a0), Barrier_PosY(a2)

	rts

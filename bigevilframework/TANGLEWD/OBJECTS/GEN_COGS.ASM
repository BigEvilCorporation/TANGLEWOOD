;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   gen_cogs.asm - Spinning cogs attachment for Fuzzl Cogs
;==============================================================

; Constants
Cogs_Width				equ 0x38
Cogs_Height				equ 0x68

;==============================================================

; Animations
CogsAnimIdx_Spin    equ 0
; --------------------------
CogsAnimIdx_Max     equ 1

;==============================================================

; Struct
	rsset (AnimObj_Struct_Size)
;-----------------------------
Cogs_Animations			rs.b (Animation_Struct_Size*CogsAnimIdx_Max)
;-----------------------------
Cogs_Struct_Pad			rs.b 0   ; Alignment padding
Cogs_Struct_Size		rs.b 0
;-----------------------------

;==============================================================

CogsInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    AnimObjInit
	
	; Set type
	addq.w #0x1, EntityCount_Cogs
	
	; Set update and render routines
	move.l #AnimObjUpdate, Entity_UpdateRoutine(a0)
	move.l #AnimObjDraw, Entity_RenderRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	jsr    EntityAddToRenderList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Cogs_Width, Entity_Width(a0)
	move.w  #Cogs_Height, Entity_Height(a0)
	
	;==============================================================
	; Setup animation

	; Cog spin
	ANIM_LOAD_DEFAULT cogs,cogs,spin,Cogs_Animations,CogsAnimIdx_Spin,1,0,0

	PUSHL  a1
	lea    Cogs_Animations+(Animation_Struct_Size*CogsAnimIdx_Spin)(a0), a1
	move.b #0x0, d0
	move.l #0x0, a2
	move.l #0x0, a3
	jsr    AnimObjSetAnimation
	POPL   a1

	; Stop anim by default
	move.b #0x0, AnimObj_Playing(a0)

	rts

CogsLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Load sprite
	SPRITE_LOAD_SHARED cogs,cogs,PaletteId_World0,0x0

	rts

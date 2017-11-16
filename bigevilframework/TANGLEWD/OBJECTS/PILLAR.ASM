;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   pillar.asm - Breakable pillar
;==============================================================

; Constants
Pillar_Width			equ 0x30
Pillar_Height			equ 0x30

Pillar_BarrierOffsetX	equ 0x0003
Pillar_BarrierWidth		equ 0x002A

Pillar_BreakMass		equ 0x0A
Pillar_BreakVelocity	equ 0x00010000

;==============================================================

; Struct
	rsset (SpriteObj_Struct_Size)
;--------------------------
Pillar_Barrier         rs.b Barrier_Struct_Size
Pillar_Smashed         rs.b 1
;--------------------------
Pillar_Struct_Pad      rs.b 3   ; Alignment padding
Pillar_Struct_Size     rs.b 0
;--------------------------

;==============================================================

PillarInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base init
	jsr    SpriteObjInit
	
	; Count
	addq.w #0x1, EntityCount_Pillar
	
	; Set update and render routines
	move.l #PillarUpdate, Entity_UpdateRoutine(a0)
	move.l #SpriteObjDraw, Entity_RenderRoutine(a0)
	move.l #PillarSerialise, Entity_SerialiseRoutine(a0)
	
	; Add to update and render lists
	jsr    EntityAddToUpdateList
	;jsr    EntityAddToRenderList
	jsr    EntityAddToSerialiseList
	
	; Default state
	move.b  #0x1, Entity_Active(a0)
	move.b  #0x1, SpriteObj_Visible(a0)
	move.w  #Pillar_Width, Entity_Width(a0)
	move.w  #Pillar_Height, Entity_Height(a0)
	move.b  #0x0, Pillar_Smashed(a0)

	;==============================================================
	
	; Setup barrier
	lea    Pillar_Barrier(a0), a2
	move.l #Barrier_Struct_Size, d0
	MEMZEROB a2, d0
	move.w #Pillar_BarrierWidth, Barrier_Width(a2)
	move.w #Pillar_Height, Barrier_Height(a2)
	MOVE_NTSC_L Pillar_BreakVelocity, Barrier_BreakVel(a2), d0
	move.b #Pillar_BreakMass, Barrier_BreakMass(a2)
	
	; Add to physics barriers list
	LIST_APPEND_TAIL Barriers, a2, a3
	
	;==============================================================
	
	; Setup animations
	; TODO

	rts

PillarLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	SPRITE_LOAD_SHARED Pillar,pillar,PaletteId_World0,0x0

	; Add to world grid
	jsr     EntityAddToWorldGrid

	; Reposition barrier
	lea    Pillar_Barrier(a0), a2
	move.l Entity_WorldPosX(a0), d0
	addi.l #(Pillar_BarrierOffsetX*subpixels_per_pixel), d0
	move.l d0, Platform_PosX(a2)
	move.l Entity_WorldPosY(a0), Platform_PosY(a2)

	rts

PillarUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; If hit at velocity, smash
	lea    Pillar_Barrier(a0), a2
	tst.b  Barrier_Broken(a2)
	beq    @NotBroken
	move.b #0x0, SpriteObj_Visible(a0)
	@NotBroken:

	rts
	
PillarSerialise:
	; a0 --- GameObj addr
	; a1 --- Level addr
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)

	cmp.b #serialise_dir_in, d1
	beq   @Loading
	
	;==============================================================
	
	@Saving:
	
	SAVEL Entity_WorldPosX(a0)
	SAVEL Entity_WorldPosY(a0)
	
	bra  @End
	
	;==============================================================
	
	@Loading:
	
	LOADL Entity_WorldPosX(a0)
	LOADL Entity_WorldPosY(a0)
	
	;==============================================================
	
	@End:
	
	rts

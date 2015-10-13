;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2014
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   flue.asm - Chucks a character/Fuzzl up high
;==============================================================

; Constants
Flue_MaxGameObjs	equ 0x8
Flue_Width			equ 0x40
Flue_Height			equ 0x40
Flue_BoundsExtendX	equ 0x08
Flue_HoldDelay		equ 0x0040
Flue_EjectForceX	equ 0x0000
;Flue_EjectForceY	equ 0x0A00
Flue_EjectForceY	equ 0x0C00

; Struct
	rsset (GameObj_Struct_Size)
;--------------------------
Flue_HeldGameObj	rs.l 1	; GameObj being held
Flue_HoldTimer		rs.w 1	; Hold timer
Flue_Ejecting		rs.b 1	; Currently ejecting the held GameObj
;--------------------------
Flue_Struct_Pad   rs.b 3	; Alignment padding
Flue_Struct_Size  rs.b 0

FlueInit:
	jsr GameObjInit

	; Default state
	move.b #0x0, GameObj_Active(a0)
	move.b #0x0, GameObj_Visible(a0)	; Flue graphics are baked into the level
	move.w #Flue_Width, GameObj_Width(a0)
	move.w #Flue_Height, GameObj_Height(a0)
	
	move.l #0x0, Flue_HeldGameObj(a0)
	move.w #0x0, Flue_HoldTimer(a0)
	move.b #0x0, Flue_Ejecting(a0)

	rts

FlueUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr

	move.l a0, -(sp)
	move.l a1, -(sp)

	; Check if holding a GameObj
	move.l Flue_HeldGameObj(a0), a1
	cmp.l  #0x0, a1
	beq    @NotHolding

	; Check if still ejecting a GameObj
	move.b Flue_Ejecting(a0), d0
	cmp.b  #0x0, d0
	bne    @StillEjecting

	; Check if timer elapsed
	move.w Flue_HoldTimer(a0), d0
	cmp.w  #0x0, d0
	bne    @TimerRunning

	; Timer elapsed, eject GameObj
	move.w #Flue_EjectForceX, GameObj_VelX(a1)
	move.w #Flue_EjectForceY, GameObj_VelY(a1)
	move.b #0x1, Flue_Ejecting(a0)

	; Snap to X centre
	clr.l  d1
	move.l GameObj_WorldPosX(a0), d0
	move.w GameObj_Width(a0), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	add.l  d1, d0
	move.w GameObj_Width(a1), d1
	lsl.l  #0x7, d1	; Screen to world / 2
	sub.l  d1, d0
	move.l d0, GameObj_WorldPosX(a1)

	; Snap to Y top
	move.l GameObj_WorldPosY(a0), GameObj_WorldPosY(a1)

	; Set jumping
	move.b #0x1, Character_Jumping(a1)

	; Visible and active
	move.b #0x1, GameObj_Visible(a1)
	move.b #0x1, GameObj_Active(a1)

	@NotHolding:
	@StillEjecting:

	; TODO: All GameObjs
	; Check if player 1 is inside the flue
	lea Player1, a1
	jsr FlueTestGameObjInside

	cmp.b #0x0, d0
	beq   @Outside

	; Player inside, check if they were being ejecting
	move.b  Flue_Ejecting(a0), d0
	cmp.b   #0x0, d0
	bne     @End

	; Player inside and not yet ejected, set invisible and hold in place
	move.b #0x0, GameObj_Visible(a1)
	move.b #0x0, GameObj_Active(a1)

	; Set current gameobj ptr
	move.l a1, Flue_HeldGameObj(a0)

	; Start timer
	move.w #Flue_HoldDelay, Flue_HoldTimer(a0)

	bra    @End

	@Outside:
	; Player fully clear of box, no longer ejecting
	move.b #0x0, Flue_Ejecting(a0)
	move.l #0x0, Flue_HeldGameObj(a0)

	bra    @End

	@TimerRunning:
	; Decrement eject timer
	sub.w  #0x1, Flue_HoldTimer(a0)

	@End:

	move.l (sp)+, a1
	move.l (sp)+, a0

	jsr GameObjUpdate
	rts

FlueTestGameObjInside:
	; d0 (b) Return value
	; a0 --- GameObj 1
	; a1 --- GameObj 2
	
	; Obj 1 min X
	move.l GameObj_WorldPosX(a0), d1	; X
	lsr.l  #0x8, d1						; To screen space
	move.w d1, d2						; Copy for max
	sub.w  #Flue_BoundsExtendX, d1		; Extend X bounds for Flue
	swap   d1							; In upper word d1
	
	; Obj 1 max X
	move.w GameObj_Width(a0), d3		; Width
	add.w  d3, d2						; Fuzzl X max
	add.w  #Flue_BoundsExtendX, d2		; Extend X bounds for Flue
	swap   d2							; In upper word d2
	
	; Obj 1 min Y
	move.l GameObj_WorldPosY(a0), d3	; Y
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d2						; Copy for max
	move.w d3, d1						; In lower word d1
	
	; Obj 1 max Y
	move.w GameObj_Height(a0), d3		; Height
	add.w  d3, d2						; Fuzzl Y max
	
	; Obj 2 min X
	move.l GameObj_WorldPosX(a1), d3	; X
	lsr.l  #0x8, d3						; To screen space
	move.w d3, d4						; Copy for max
	swap   d3							; In upper word d1
	
	; Obj 2 max X
	move.w GameObj_Width(a1), d5		; Width
	add.w  d5, d4						; Fuzzl X max
	swap   d4							; In upper word d2
	
	; Obj 2 min Y
	move.l GameObj_WorldPosY(a1), d5	; Y
	lsr.l  #0x8, d5						; To screen space
	move.w d5, d4						; Copy for max
	move.w d5, d3						; In lower word d1
	
	; Obj 2 max Y
	move.w GameObj_Height(a1), d5		; Height
	add.w  d5, d4						; Fuzzl Y max
	
	jsr TestBoxInsideBox
	
	rts

FlueDraw:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Base functionality
	jsr GameObjDraw

	rts

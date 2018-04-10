;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   aimarker.asm - An interesting location according to AI
;==============================================================

; Constants
AIMarker_Width        equ 0x0008
AIMarker_Height       equ 0x0008

; Types
AIMarker_Type_Barrier	equ 0x0	; Barrier: AI won't walk past it
AIMarker_Type_Wait		equ 0x1	; AI will wait for instruction
AIMarker_Type_SafePos	equ 0x2	; Safe spawn pos
AIMarker_Type_Jump		equ 0x3	; Jump

; Affected directions
AIMarker_Direction_Any		equ 0x0
AIMarker_Direction_Left		equ 0x1
AIMarker_Direction_Right	equ 0x2

; Struct
	rsset (Entity_Struct_Size)
;---------------------------------
	LINKED_LIST_NODE AIMarkers		; Linked list entry for AI markers
;---------------------------------
AIMarker_Type         rs.b 1
AIMarker_Direction    rs.b 1
;---------------------------------
	RS_ALIGN
AIMarker_Struct_Size  rs.b 0

AIMarkerInit:
	; a0 --- GameObj addr
	; a1 --- Level addr

	; Init base
	jsr    EntityInit
	
	; Add to count
	addq.w #0x1, EntityCount_AIMarker

	; Add to markers list
	LIST_APPEND_TAIL AIMarkers, a0, a3

	; Initialise
	move.b  #0x1, Entity_Active(a0)
	move.w  #AIMarker_Width, Entity_Width(a0)
	move.w  #AIMarker_Height, Entity_Height(a0)
	move.b  #AIMarker_Type_SafePos, AIMarker_Type(a0)
	move.b  #AIMarker_Direction_Any, AIMarker_Direction(a0)

	rts

AIMarkerLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
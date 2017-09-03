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
AIMarker_Type_Barrier equ 0x0	; Barrier: AI won't walk past it

; Struct
	rsset (Entity_Struct_Size)
;---------------------------------
	LINKED_LIST_NODE AIMarkers		; Linked list entry for AI markers
;---------------------------------
AIMarker_Type         rs.b 1
;---------------------------------
AIMarker_Struct_Pad   rs.b 3	; Alignment padding
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
	move.w  #AIMarker_Width, Entity_Width(a0)
	move.w  #AIMarker_Height, Entity_Height(a0)

	rts

AIMarkerLoadGfx:
	; a0 --- GameObj addr
	; a1 --- Level addr

	rts
	
;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   waterbdy.asm - Body of water
;==============================================================

; Constants
WaterBody_MaxEntities  equ 0x2
WaterBody_Width        equ 0x0180
WaterBody_Height       equ 0x0028

; Struct
	rsset (Entity_Struct_Size)
;--------------------------

;--------------------------
WaterBody_Struct_Pad   rs.b 0	; Alignment padding
WaterBody_Struct_Size  rs.b 0

WaterBodyInit:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	; Set type
	addi.l #entity_type_waterbody, Entity_TypeBits(a0)
	addi.w #0x1, EntityCount_WaterBodies
	
	; Set update routine
	move.l #WaterBodyUpdate, Entity_UpdateRoutine(a0)
	
	; Add to update list
	jsr EntityAddToUpdateList

	; Default state
	move.w #WaterBody_Width, Entity_Width(a0)
	move.w #WaterBody_Height, Entity_Height(a0)

	rts

WaterBodyUpdate:
	; a0 --- GameObj addr
	; a1 --- Level addr
	
	move.l a1, -(sp)
	
	; Check player vs. box
	move.l #Player1, a1
	jsr    TestGameObjBoxIntersectBox
	cmp.b  #0x0, d0
	beq    @NoIntersect
	
	; Player inside
	; TODO: Support multiple bodies
	move.b #0x1, Character_InWater(a0)
	
	bra    @End
	
	@NoIntersect:
	
	; Player outside
	; TODO: Support multiple bodies
	move.b #0x0, Character_InWater(a0)
	
	@End:
	
	move.l (sp)+, a1
	
	rts
	
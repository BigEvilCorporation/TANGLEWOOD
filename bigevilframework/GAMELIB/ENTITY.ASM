;==============================================================
;   BIG EVIL FRAMEWORK - Matt Phillips (c) 2015
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   entity.asm - Basic positional entity
;==============================================================

	rsset 0
;-----------------------------
Entity_TypeBits         rs.l 1 ; Entity type bits
;-----------------------------
Entity_UpdateRoutine	rs.l 1 ; Update subroutine address
Entity_RenderRoutine	rs.l 1 ; Render subroutine address
Entity_SerialiseRoutine	rs.l 1 ; Save/load subroutine address
;-----------------------------
	LINKED_LIST_NODE EntityUpdate ; Next in update linked list
	LINKED_LIST_NODE EntityRender ; Next in render linked list
	LINKED_LIST_NODE EntitySerialise ; Next in serialise linked list
;-----------------------------
Entity_WorldPosX        rs.l 1 ; Position X (world space)
Entity_WorldPosY        rs.l 1 ; Position Y (world space)
Entity_Width            rs.w 1 ; Width (pixels)
Entity_Height           rs.w 1 ; Height(pixels)
Entity_Active           rs.b 1 ; Active flag
;-----------------------------
Entity_Struct_Pad		rs.b 3
Entity_Struct_Size		rs.b 0

;==============================================================
; Game object update/render lists
;==============================================================

EntityAddToUpdateList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntityUpdate,a0,a3
	rts

EntityAddToRenderList:
	; a0 --- Entity addr
	
	LIST_APPEND_TAIL EntityRender,a0,a3
	
	rts
	
EntityAddToSerialiseList:
	; a0 --- Entity addr
	LIST_APPEND_TAIL EntitySerialise,a0,a3
	rts
	
EntityRemoveFromUpdateList:
	; a0 --- Entity addr
	LIST_REMOVE EntityUpdate,a0,a4,a3
	rts
	
EntityRemoveFromRenderList:
	; a0 --- Entity addr
	LIST_REMOVE EntityRender,a0,a4,a3
	rts
	
EntityRemoveFromSerialiseList:
	; a0 --- Entity addr
	LIST_REMOVE EntitySerialise,a0,a4,a3
	rts
	
EntityClearUpdateList:
	LIST_CLEAR EntityUpdate
	rts
	
EntityClearRenderList:
	LIST_CLEAR EntityRender
	rts
	
EntityClearSerialiseList:
	LIST_CLEAR EntitySerialise
	rts
	
EntityUpdateAll:
	; a1 --- Level address
	
	IFD DEBUG
	lea Str_Entities, a0
	jsr DBG_Profile_PushScope
	ENDIF

	LIST_GET_HEAD EntityUpdate,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_UpdateRoutine(a0), a2 ; Get update routine
	jsr    (a2)							; Execute update routine
	LIST_GET_NEXT EntityUpdate,a0,a0	; Get next ptr
	bra    @EntityLp					; Loop
	@ListEnd:

	IFD DEBUG
	jsr DBG_Profile_PopScope
	ENDIF
	
	rts
	
EntityRenderAll:
	; a1 --- Level address
	
	LIST_GET_HEAD EntityRender,a0		; Get list head
	@EntityLp:							; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_RenderRoutine(a0), a2 ; Get Render routine
	jsr    (a2)							; Execute Render routine
	LIST_GET_NEXT EntityRender,a0,a0	; Get next ptr
	bra    @EntityLp					; Loop
	@ListEnd:
	
	rts

	
EntitySerialiseAll:
	; a1 --- Level address
	; a3 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	LIST_GET_HEAD EntitySerialise,a0		; Get list head
	@EntityLp:								; For all entities in list
	cmp.l  #0x0, a0
	beq    @ListEnd
	move.l Entity_SerialiseRoutine(a0), a2	; Get Serialise routine
	jsr    (a2)								; Execute Serialise routine
	LIST_GET_NEXT EntitySerialise,a0,a0		; Get next ptr
	bra    @EntityLp						; Loop
	@ListEnd:
	
	rts
	
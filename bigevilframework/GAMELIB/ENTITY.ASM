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
Entity_UpdateNext		rs.l 1 ; Next in update linked list
Entity_RenderNext		rs.l 1 ; Next in render linked list
Entity_SerialiseNext	rs.l 1 ; Next in serialise linked list
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
	
	; If first in list, set as head and tail
	cmp.l  #0x0, (EntityListHead_Update)
	bne    @HasHead
	move.l a0, EntityListHead_Update
	move.l a0, EntityListTail_Update
	bra    @End
	@HasHead:
	
	; else link to current tail, then set as current tail
	move.l (EntityListTail_Update), a3
	move.l a0, Entity_UpdateNext(a3)
	move.l a0, EntityListTail_Update
	
	@End:
	
	; Increment count
	addi.l #0x1, EntityListSize_Update
	
	rts

EntityAddToRenderList:
	; a0 --- Entity addr
	
	; If first in list, set as head and tail
	cmp.l  #0x0, (EntityListHead_Render)
	bne    @HasHead
	move.l a0, EntityListHead_Render
	move.l a0, EntityListTail_Render
	bra    @End
	@HasHead:
	
	; else link to current tail, then set as current tail
	move.l (EntityListTail_Render), a3
	move.l a0, Entity_RenderNext(a3)
	move.l a0, EntityListTail_Render
	
	@End:
	
	; Increment count
	addi.l #0x1, EntityListSize_Render
	
	rts
	
EntityAddToSerialiseList:
	; a0 --- Entity addr
	
	; If first in list, set as head and tail
	cmp.l  #0x0, (EntityListHead_Serialise)
	bne    @HasHead
	move.l a0, EntityListHead_Serialise
	move.l a0, EntityListTail_Serialise
	bra    @End
	@HasHead:
	
	; else link to current tail, then set as current tail
	move.l (EntityListTail_Serialise), a3
	move.l a0, Entity_SerialiseNext(a3)
	move.l a0, EntityListTail_Serialise
	
	@End:
	
	; Increment count
	addi.l #0x1, EntityListSize_Serialise
	
	rts
	
EntityRemoveFromUpdateList:
	; a0 --- Entity addr
	
	move.l  #0x0, a4
	
	move.l (EntityListHead_Update), a3	 ; Get list head
	@EntityLp:							 ; For all entities in list
	cmp.l  a0, a3						 ; Check if entity to remove
	beq    @Found
	move.l a3, a4						 ; Backup prev
	move.l Entity_UpdateNext(a3), a3	 ; Get next ptr
	bra    @EntityLp
	
	@Found:
	
	cmp.l  #0x0, a4
	beq    @NewHead
	
	; Link next with prev
	move.l Entity_UpdateNext(a0), Entity_UpdateNext(a4)
	bra    @End
	
	@NewHead:
	
	; Removed entity was head, set new head
	move.l Entity_UpdateNext(a0), EntityListHead_Update
	
	@End:
	
	; Decrement count
	subi.l #0x1, EntityListSize_Update
	
	rts
	
EntityRemoveFromRenderList:
	; a0 --- Entity addr
	
	move.l  #0x0, a4
	
	move.l (EntityListHead_Render), a3	 ; Get list head
	@EntityLp:							 ; For all entities in list
	cmp.l  a0, a3						 ; Check if entity to remove
	beq    @Found
	move.l a3, a4						 ; Backup prev
	move.l Entity_RenderNext(a3), a3	 ; Get next ptr
	bra    @EntityLp
	
	@Found:
	
	cmp.l  #0x0, a4
	beq    @NewHead
	
	; Link next with prev
	move.l Entity_RenderNext(a0), Entity_RenderNext(a4)
	bra    @End
	
	@NewHead:
	
	; Removed entity was head, set new head
	move.l Entity_RenderNext(a0), EntityListHead_Render
	
	@End:
	
	; Decrement count
	subi.l #0x1, EntityListSize_Render
	
	rts
	
EntityRemoveFromSerialiseList:
	; a0 --- Entity addr
	
	move.l  #0x0, a4
	
	move.l (EntityListHead_Serialise), a3 ; Get list head
	@EntityLp:							  ; For all entities in list
	cmp.l  a0, a3						  ; Check if entity to remove
	beq    @Found
	move.l a3, a4						  ; Backup prev
	move.l Entity_SerialiseNext(a3), a3	  ; Get next ptr
	bra    @EntityLp
	
	@Found:
	
	cmp.l  #0x0, a4
	beq    @NewHead
	
	; Link next with prev
	move.l Entity_SerialiseNext(a0), Entity_SerialiseNext(a4)
	bra    @End
	
	@NewHead:
	
	; Removed entity was head, set new head
	move.l Entity_SerialiseNext(a0), EntityListHead_Serialise
	
	@End:
	
	; Decrement count
	subi.l #0x1, EntityListSize_Serialise
	
	rts
	
EntityClearUpdateList:
	move.l  #0x0, EntityListHead_Update
	move.l  #0x0, EntityListTail_Update
	move.l  #0x0, EntityListSize_Update
	rts
	
EntityClearRenderList:
	move.l  #0x0, EntityListHead_Render
	move.l  #0x0, EntityListTail_Render
	move.l  #0x0, EntityListSize_Render
	rts
	
EntityClearSerialiseList:
	move.l  #0x0, EntityListHead_Serialise
	move.l  #0x0, EntityListTail_Serialise
	move.l  #0x0, EntityListSize_Serialise
	rts
	
EntityUpdateAll:
	; a1 --- Level address
	
	IFD DEBUG
	lea Str_Entities, a0
	jsr Profile_PushScope
	ENDIF

	move.l (EntityListSize_Update), d0	 ; Get entity list size
	cmp.l  #0x0, d0
	beq    @NoEntities					 ; Skip if nothing to do
	subi.l #0x1, d0						 ; -1 for loop
	move.l (EntityListHead_Update), a0	 ; Get list head
	@EntityLp:							 ; For all entities in list
	move.l d0, -(sp)					 ; Backup counter
	move.l Entity_UpdateRoutine(a0), a2  ; Get update routine
	jsr    (a2)							 ; Execute update routine
	move.l (sp)+, d0					 ; Restore counter
	move.l Entity_UpdateNext(a0), a0	 ; Get next ptr
	dbra   d0, @EntityLp				 ; Loop
	@NoEntities:

	IFD DEBUG
	jsr Profile_PopScope
	ENDIF
	
	rts
	
EntityRenderAll:
	; a1 --- Level address
	
	move.l (EntityListSize_Render), d0	 ; Get entity list size
	cmp.l  #0x0, d0
	beq    @NoEntities					 ; Skip if nothing to do
	subi.l #0x1, d0						 ; -1 for loop
	move.l (EntityListHead_Render), a0	 ; Get list head
	@EntityLp:							 ; For all entities in list
	move.l d0, -(sp)					 ; Backup counter
	move.l Entity_RenderRoutine(a0), a2  ; Get render routine
	jsr    (a2)							 ; Execute render routine
	move.l (sp)+, d0					 ; Restore counter
	move.l Entity_RenderNext(a0), a0	 ; Get next ptr
	dbra   d0, @EntityLp				 ; Loop
	@NoEntities:
	
	rts

	
EntitySerialiseAll:
	; a1 --- Level address
	; a2 --- Stream ptr
	; d1 (b) Direction (serialise_dir_in/serialise_dir_out)
	
	move.l (EntityListSize_Serialise), d0	; Get entity list size
	cmp.l  #0x0, d0
	beq    @NoEntities					 	; Skip if nothing to do
	subi.l #0x1, d0						 	; -1 for loop
	move.l (EntityListHead_Serialise), a0	; Get list head
	@EntityLp:							 	; For all entities in list
	move.l d0, -(sp)					 	; Backup counter
	move.l Entity_SerialiseRoutine(a0), a2  ; Get Serialise routine
	jsr    (a2)							 	; Execute Serialise routine
	move.l (sp)+, d0					 	; Restore counter
	move.l Entity_SerialiseNext(a0), a0	 	; Get next ptr
	dbra   d0, @EntityLp				 	; Loop
	@NoEntities:
	
	rts
	
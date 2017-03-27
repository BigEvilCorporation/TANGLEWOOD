;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   linklist.asm - Linked list
;==============================================================

	; Defines a linked list in a memory map (using RS)
LINKED_LIST: macro name
List_\name\_Head	 	rs.l 1
List_\name\_Tail	 	rs.l 1
List_\name\_Size	 	rs.l 1
	endm
	
	; Defines a linked list node in a structure (using RS)
LINKED_LIST_NODE: macro name
List_\name\_Next		rs.l 1
	endm
	
	; Get number of elements in list
LIST_GET_SIZE: macro name,outreg
	move.l List_\name\_Size,\outreg
	endm
	
	; Appends new link to the end of a list
LIST_APPEND_TAIL: macro name,objaddrreg,tempaddrreg

	; If first in list, set as head and tail
	cmp.l  #0x0, (List_\name\_Head)
	bne    @HasHead\@
	move.l \objaddrreg, List_\name\_Head
	move.l \objaddrreg, List_\name\_Tail
	bra    @End\@
	@HasHead\@:
	
	; else link to current tail, then set as current tail
	move.l (List_\name\_Tail), \tempaddrreg
	move.l \objaddrreg, List_\name\_Next(\tempaddrreg)
	move.l \objaddrreg, List_\name\_Tail
	
	@End\@:

	; Ensure tail has no tail
	move.l #0x0, List_\name\_Next(\objaddrreg)
	
	; Increment count
	addi.l #0x1, List_\name\_Size
	
	endm
	
	; Removes link from list
LIST_REMOVE: macro name,objaddrreg,tempaddrreg1,tempaddrreg2

	move.l  #0x0, \tempaddrreg1
	
	move.l (List_\name\_Head), \tempaddrreg2	 				; Get list head
	@EntityLp:							 					; For all entities in list
	cmp.l  \objaddrreg, \tempaddrreg2						; Check if entity to remove
	beq    @Found
	move.l \tempaddrreg2, \tempaddrreg1						; Backup prev
	move.l List_\name\_Next(\tempaddrreg2), \tempaddrreg2	; Get next ptr
	bra    @EntityLp
	
	@Found:
	
	; Check if new head
	cmp.l  #0x0, \tempaddrreg1
	beq    @NewHead
	
	; Link next with prev
	move.l List_\name\_Next(\objaddrreg), List_\name\_Next(\tempaddrreg1)
	bra    @EndLink
	
	@NewHead:
	
	; Removed entity was head, set new head
	move.l List_\name\_Next(\objaddrreg), List_\name\_Head
	
	@EndLink:
	
	; Check if new tail
	cmp.l   #0x0, List_\name\_Next(\objaddrreg)
	bne     @NotTail
	
	; Removed entity was tail, set new tail
	move.l  \tempaddrreg1, List_\name\_Tail
	
	@NotTail:
	
	; Decrement count
	subi.l #0x1, List_\name\_Size
	
	endm
	
	; Clears list
LIST_CLEAR: macro name
	move.l #0x0, List_\name\_Head
    move.l #0x0, List_\name\_Tail
    move.l #0x0, List_\name\_Size
	endm
	
	; Get the head of a list
LIST_GET_HEAD: macro name,addrreg
	move.l (List_\name\_Head), \addrreg
	endm
	
	; Get next in list
LIST_GET_NEXT: macro name,objaddrreg,outreg
	move.l List_\name\_Next(\objaddrreg), \outreg
	endm
	
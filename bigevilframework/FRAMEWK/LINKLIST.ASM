;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2016
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   linklist.asm - Linked list
;==============================================================

	; Defines a linked list in a memory map or structure (using RS)
LINKED_LIST: macro name
List_\name\_Head	 	rs.l 1
List_\name\_Tail	 	rs.l 1
List_\name\_Size	 	rs.l 1
	endm
	
	; Defines a linked list node in a structure (using RS)
LINKED_LIST_NODE: macro name
List_\name\_Next		rs.l 1
	endm

;==============================================================
;	FOR LINK LISTS IN MEMORY MAP
;==============================================================
	
	; Get number of elements in list
LIST_GET_SIZE: macro name,outreg
	move.l List_\name\_Size,\outreg
	endm
	
	; Appends new link to the end of a list
LIST_APPEND_TAIL: macro name,objaddrreg,tempaddrreg

	; Sanity check - make sure object isn't already in a list
	IFND FINAL

	; Check object's next ptr is null
	cmp.l  #0x0, List_\name\_Next(\objaddrreg)
	beq    @NoNextLink\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NoNextLink\@:

	; Check object isn't the list head
	move.l List_\name\_Head, \tempaddrreg
	cmp.l  \objaddrreg, \tempaddrreg
	bne    @NotHead\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NotHead\@:

	; Check object isn't the list tail
	move.l List_\name\_Tail, \tempaddrreg
	cmp.l  \objaddrreg, \tempaddrreg
	bne    @NotTail\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NotTail\@:

	ENDIF

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
	
	; Increment count
	addq.l #0x1, List_\name\_Size
	
	endm
	
	; Removes link from list
LIST_REMOVE: macro name,objaddrreg,tempaddrreg1,tempaddrreg2

	move.l  #0x0, \tempaddrreg1
	
	move.l (List_\name\_Head), \tempaddrreg2	 			; Get list head
	@EntityLp\@:							 				; For all entities in list
	cmp.l  \objaddrreg, \tempaddrreg2						; Check if entity to remove
	beq    @Found\@
	move.l \tempaddrreg2, \tempaddrreg1						; Backup prev
	move.l List_\name\_Next(\tempaddrreg2), \tempaddrreg2	; Get next ptr
	bra    @EntityLp\@

	; Error, object wasn't in this list
	IFND FINAL
	RAISE_EXCEPTION error_obj_not_in_list
	ENDIF
	
	@Found\@:
	
	; Check if new head
	cmp.l  #0x0, \tempaddrreg1
	beq    @NewHead\@
	
	; Link next with prev
	move.l List_\name\_Next(\objaddrreg), List_\name\_Next(\tempaddrreg1)
	bra    @EndLink\@
	
	@NewHead\@:
	
	; Removed entity was head, set new head
	move.l List_\name\_Next(\objaddrreg), List_\name\_Head
	
	@EndLink\@:
	
	; Check if new tail
	cmp.l   #0x0, List_\name\_Next(\objaddrreg)
	bne     @NotTail\@
	
	; Removed entity was tail, set new tail
	move.l  \tempaddrreg1, List_\name\_Tail
	
	@NotTail\@:
	
	; Clear removed object's next link
	move.l #0x0, List_\name\_Next(\objaddrreg)

	; Decrement count
	subi.l #0x1, List_\name\_Size
	
	endm
	
	; Clears list
LIST_CLEAR: macro name,tempaddrreg,tempaddrreg2

	; Clear all links
	move.l (List_\name\_Head), \tempaddrreg
	@EntityLp\@:
	cmp.l  #0x0, \tempaddrreg
	beq    @End\@
	move.l List_\name\_Next(\tempaddrreg), \tempaddrreg2
	move.l #0x0, List_\name\_Next(\tempaddrreg)
	move.l \tempaddrreg2, \tempaddrreg
	bra    @EntityLp\@
	@End\@:

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
	
;==============================================================
;	FOR LINK LISTS AS STRUCT MEMBERS
;==============================================================

	; Init list
MLIST_INIT: macro name,structaddrreg
	move.l #0x0, List_\name\_Head(\structaddrreg)
	move.l #0x0, List_\name\_Tail(\structaddrreg)
	move.l #0x0, List_\name\_Size(\structaddrreg)
	endm
	
	; Init list link
LIST_INIT_LINK: macro name,objaddrreg
	move.l #0x0, List_\name\_Next(\objaddrreg)
	endm

	; Get number of elements in list
MLIST_GET_SIZE: macro name,outreg,structaddrreg
	move.l List_\name\_Size(\structaddrreg),\outreg
	endm

	; Appends new link to the end of a list
MLIST_APPEND_TAIL: macro name,objaddrreg,tempaddrreg,structaddrreg

	; Sanity check - make sure object isn't already in a list
	IFND FINAL

	; Check object's next ptr is null
	cmp.l  #0x0, List_\name\_Next(\objaddrreg)
	beq    @NoNextLink\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NoNextLink\@:

	; Check object isn't the list head
	move.l List_\name\_Head(\structaddrreg), \tempaddrreg
	cmp.l  \objaddrreg, \tempaddrreg
	bne    @NotHead\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NotHead\@:

	; Check object isn't the list tail
	move.l List_\name\_Tail(\structaddrreg), \tempaddrreg
	cmp.l  \objaddrreg, \tempaddrreg
	bne    @NotTail\@
	RAISE_EXCEPTION error_obj_already_in_list
	@NotTail\@:

	ENDIF

	; If first in list, set as head and tail
	cmp.l  #0x0, List_\name\_Head(\structaddrreg)
	bne    @HasHead\@
	move.l \objaddrreg, List_\name\_Head(\structaddrreg)
	move.l \objaddrreg, List_\name\_Tail(\structaddrreg)
	bra    @End\@
	@HasHead\@:
	
	; else link to current tail, then set as current tail
	move.l List_\name\_Tail(\structaddrreg), \tempaddrreg
	move.l \objaddrreg, List_\name\_Next(\tempaddrreg)
	move.l \objaddrreg, List_\name\_Tail(\structaddrreg)
	
	@End\@:
	
	; Increment count
	addq.l #0x1, List_\name\_Size(\structaddrreg)
	
	endm

	; Removes link from list
MLIST_REMOVE: macro name,objaddrreg,tempaddrreg1,tempaddrreg2,structaddrreg

	move.l  #0x0, \tempaddrreg1
	
	move.l List_\name\_Head(\structaddrreg), \tempaddrreg2	; Get list head
	@EntityLp\@:							 				; For all entities in list
	cmp.l  \objaddrreg, \tempaddrreg2						; Check if entity to remove
	beq    @Found\@
	move.l \tempaddrreg2, \tempaddrreg1						; Backup prev
	move.l List_\name\_Next(\tempaddrreg2), \tempaddrreg2	; Get next ptr
	bra    @EntityLp\@

	; Error, object wasn't in this list
	IFND FINAL
	RAISE_EXCEPTION error_obj_not_in_list
	ENDIF
	
	@Found\@:
	
	; Check if new head
	cmp.l  #0x0, \tempaddrreg1
	beq    @NewHead\@
	
	; Link next with prev
	move.l List_\name\_Next(\objaddrreg), List_\name\_Next(\tempaddrreg1)
	bra    @EndLink\@
	
	@NewHead\@:
	
	; Removed entity was head, set new head
	move.l List_\name\_Next(\objaddrreg), List_\name\_Head(\structaddrreg)
	
	@EndLink\@:
	
	; Check if new tail
	cmp.l   #0x0, List_\name\_Next(\objaddrreg)
	bne     @NotTail\@
	
	; Removed entity was tail, set new tail
	move.l  \tempaddrreg1, List_\name\_Tail(\structaddrreg)
	
	@NotTail\@:
	
	; Clear removed object's next link
	move.l #0x0, List_\name\_Next(\objaddrreg)

	; Decrement count
	subi.l #0x1, List_\name\_Size(\structaddrreg)
	
	endm

	; Clears list
MLIST_CLEAR: macro name,tempaddrreg,tempaddrreg2,structaddrreg

	; Clear all links
	move.l List_\name\_Head(\structaddrreg), \tempaddrreg
	@EntityLp\@:
	cmp.l  #0x0, \tempaddrreg
	beq    @End\@
	move.l List_\name\_Next(\tempaddrreg), \tempaddrreg2
	move.l #0x0, List_\name\_Next(\tempaddrreg)
	move.l \tempaddrreg2, \tempaddrreg
	bra    @EntityLp\@
	@End\@:

	move.l #0x0, List_\name\_Head(\structaddrreg)
    move.l #0x0, List_\name\_Tail(\structaddrreg)
    move.l #0x0, List_\name\_Size(\structaddrreg)
	endm

	; Get the head of a list
MLIST_GET_HEAD: macro name,addrreg,structaddrreg
	move.l List_\name\_Head(\structaddrreg), \addrreg
	endm
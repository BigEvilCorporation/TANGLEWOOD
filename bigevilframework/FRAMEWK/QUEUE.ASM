;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;==============================================================
;   queue.asm - Single producer, single consumer queue
;==============================================================

	rsset 0
;------------------------------
Queue_MaxSize            rs.w 1 ; Queue max elements
Queue_ElementSizeLong    rs.w 1 ; Element size in longwords
Queue_ProducerIndex      rs.w 1	; Producer position
Queue_ConsumerIndex      rs.w 1 ; Consumer position
Queue_Data               rs.b 0 ; Array is expected to be allocated at end of struct
;------------------------------
	RS_ALIGN
Queue_Struct_Size        rs.b 0

Queue_Init:
	; a0 --- Queue struct address
	; d0 (w) Queue max size
	; d1 (w) Queue element size (longs)

	move.w d0, Queue_MaxSize(a0)	
	move.w d1, Queue_ElementSizeLong(a0)	
	move.w #0x0, Queue_ProducerIndex(a0)
	move.w #0x0, Queue_ConsumerIndex(a0)
	
	rts
	
Queue_Push:
	; a0 --- Queue struct address
	; a1 --- Address to copy element from
	
	; Get producer index
	moveq #0x0, d0
	move.w Queue_ProducerIndex(a0), d0
	move.w d0, d2
	
	; Get address into array
	moveq #0x0, d1
	move.w Queue_ElementSizeLong(a0), d1	; Get element size
	mulu   d1, d0							; Mul by index
	mulu   #size_long, d0					; To bytes
	addi.l #Queue_Data, d0					; Add queue data offset
	move.l a0, a2							; Get queue address
	add.l  d0, a2							; Add element address offset
	
	; Copy data
	subq.w  #0x1, d1
	@CopyLp:
	move.l (a1)+, (a2)+
	dbra.w d1, @CopyLp
	
	; Increment and wrap producer index
	addq.w #0x1, d2
	cmp.w  Queue_MaxSize(a0), d2
	bne    @NoWrap
	move.w #0x0, d2
	@NoWrap:
	
	; Set new producer index
	move.w d2, Queue_ProducerIndex(a0)
	
	rts
	
Queue_Pop:
	; a0 --- Queue struct address
	; a1 --- Address to copy element to
	
	; Get consumer index
	moveq #0x0, d0
	move.w Queue_ConsumerIndex(a0), d0
	move.w d0, d2
	
	; Get address into array
	moveq #0x0, d1
	move.w Queue_ElementSizeLong(a0), d1	; Get element size
	mulu   d1, d0							; Mul by index
	mulu   #size_long, d0					; To bytes
	addi.l #Queue_Data, d0					; Add queue data offset
	move.l a0, a2							; Get queue address
	add.l  d0, a2							; Add element address offset
	
	; Copy data
	subq.w  #0x1, d1
	@CopyLp:
	move.l (a2)+, (a1)+
	dbra.w d1, @CopyLp
	
	; Increment and wrap consumer index
	addq.w #0x1, d2
	cmp.w  Queue_MaxSize(a0), d2
	bne    @NoWrap
	move.w #0x0, d2
	@NoWrap:
	
	; Set new consumer index
	move.w d2, Queue_ConsumerIndex(a0)
	
	rts
	
Queue_GetSize:
	; a0 --- Queue struct address
	; d0 (w) OUT: Queue size
	
	move.w Queue_ProducerIndex(a0), d0
	move.w Queue_ConsumerIndex(a0), d1
	sub.w  d1, d0
	
	rts
	
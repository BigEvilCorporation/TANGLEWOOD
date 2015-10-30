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
Queue_ElementSizeBytes   rs.w 1 ; Element size in bytes
Queue_ProducerIndex      rs.w 1	; Producer position
Queue_ConsumerIndex      rs.w 1 ; Consumer position
Queue_Data               rs.b 0 ; Array is expected to be allocated at end of struct
;------------------------------
Queue_Struct_Pad         rs.b 0
Queue_Struct_Size        rs.b 0

Queue_Init:
	; a0 --- Queue struct address
	
	move.w #0x0, Queue_ProducerIndex(a0)
	move.w #0x0, Queue_ConsumerIndex(a0)
	
	rts
	
Queue_Push:
	; a0 --- Queue struct address
	; a1 --- Address to copy element from
	
	; Get producer index
	move.w Queue_ProducerIndex(a0), d0
	move.w d0, d2
	
	; Get address into array
	clr.l  d1
	move.w Queue_ElementSizeBytes(a0), d1
	mulu   d1, d0
	add.l  Queue_Data, d0
	move.l a0, a2
	add.l  d1, a2
	
	; Copy data
	sub.w  #0x1, d0
	@CopyLp:
	move.b (a2)+, (a1)+
	dbra.w d0, @CopyLp
	
	; Increment and wrap producer index
	addi.w #0x1, d2
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
	move.w Queue_ConsumerIndex(a0), d0
	move.w d0, d2
	
	; Get address into array
	clr.l  d1
	move.w Queue_ElementSizeBytes(a0), d1
	mulu   d1, d0
	add.l  Queue_Data, d0
	move.l a0, a2
	add.l  d1, a2
	
	; Copy data
	sub.w  #0x1, d0
	@CopyLp:
	move.b (a2)+, (a1)+
	dbra.w d0, @CopyLp
	
	; Increment and wrap consumer index
	addi.w #0x1, d2
	cmp.w  Queue_MaxSize(a0), d2
	bne    @NoWrap
	move.w #0x0, d2
	@NoWrap:
	
	; Set new consumer index
	move.w d2, Queue_ConsumerIndex(a0)
	
	rts
	
Queue_Size:
	; a0 --- Queue struct address
	; d0 (w) OUT: Queue size
	
	rts
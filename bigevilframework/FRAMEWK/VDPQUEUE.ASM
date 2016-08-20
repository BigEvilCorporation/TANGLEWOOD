;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;================================================================
;   vdpqueue.asm - Single producer, single consumer VDP job queue
;================================================================

; Constants
VDPQueue_MaxSize    equ 0x40  ; Queue max elements
VDPQueue_NumRegs	equ 0x0C ; (d0-d6/a0-a4)

; Job struct
	rsset 0
;------------------------------
VDPJob_Regs              rs.l VDPQueue_NumRegs ; Subroutine regs (d0-d6/a0-a4)
VDPJob_SubroutineAddr    rs.l 1  			   ; Job subroutine address
;------------------------------
VDPJob_Struct_Pad        rs.b 0
VDPJob_Struct_Size       rs.b 0
;------------------------------

VDP_JobQueue_Init:

	move.l #0x0, vdp_queue_produceridx
	move.l #0x0, vdp_queue_consumeridx
	
	rts
	
VDP_JobQueue_PushJob:
	; (d0-d6/a0-a4) - Job regs
	; a5 --- Job subroutine address
	
	; Get producer index
	clr.l  d7
	move.l (vdp_queue_produceridx), d7
	
	IFND FINAL
	PUSHL  d0
	PUSHL  d7
	move.l (vdp_queue_consumeridx), d0
	sub.l  d0, d7
	cmp.l  #VDPQueue_MaxSize, d7
	bne    @NotFull
	RAISE_EXCEPTION 0xFF
	@NotFull:
	POPL   d7
	POPL   d0
	ENDIF
	
	divu   #VDPQueue_MaxSize, d7
	clr.w  d7
	swap   d7
	
	; Get address into array of job
	mulu   #VDPJob_Struct_Size, d7	; Index to element offset
	lea    vdp_queue_jobarray, a6	; Get VDP job array
	add.l  d7, a6					; Add offset
	
	; Set job subroutine address
	move.l  a5, VDPJob_SubroutineAddr(a6)
	
	; Copy job regs
	movem.l d0-d6/a0-a4, VDPJob_Regs(a6)
	
	; Increment producer index
	addi.l #0x1, (vdp_queue_produceridx)
	
	rts
	
VDP_JobQueue_ExecuteJob:

	; Get consumer index
	clr.l  d7
	move.l (vdp_queue_consumeridx), d7
	divu   #VDPQueue_MaxSize, d7
	clr.w  d7
	swap   d7
	
	; Get address into array of job
	mulu   #VDPJob_Struct_Size, d7	; Index to element offset
	lea    vdp_queue_jobarray, a6	; Get VDP job array
	add.l  d7, a6					; Add offset
	
	; Get job subroutine address
	move.l  VDPJob_SubroutineAddr(a6), a5
	
	; Copy job regs
	movem.l VDPJob_Regs(a6), d0-d6/a0-a4
	
	; Increment (and wrap) consumer index
	addi.l #0x1, (vdp_queue_consumeridx)
	
	; Run job
	jsr (a5)
	
	rts
	
VDP_JobQueue_ExecuteAll:

	; Get queue size
	move.l (vdp_queue_produceridx), d0
	move.l (vdp_queue_consumeridx), d1
	sub.l  d1, d0
	cmp.l  #0x0, d0
	beq    @QueueEmpty
	
	; Run all
	subi.l #0x1, d0
	@QueueLp:
	
	; Pop and run job
	move.l d0, -(sp)
	jsr    VDP_JobQueue_ExecuteJob
	move.l (sp)+, d0

	; Next job
	dbra   d0, @QueueLp
	
	@QueueEmpty:
	
	rts
	
VDP_JobQueue_GetSize:
	; d0 - OUT - Queue size
	move.l (vdp_queue_produceridx), d0
	move.l (vdp_queue_consumeridx), d1
	sub.l  d1, d0
	
	rts
	
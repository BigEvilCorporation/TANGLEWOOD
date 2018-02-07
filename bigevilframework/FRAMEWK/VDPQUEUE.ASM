;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;================================================================
;   vdpqueue.asm - Single producer, single consumer VDP job queue
;================================================================

; Constants
VDPQueue_MaxSize    equ 0x0040  ; Queue max elements (must be power-of-two)
VDPQueue_NumRegs	equ 0x0C ; (d0-d6/a0-a4)

; Job struct
	rsset 0
;------------------------------
VDPJob_Regs              rs.l VDPQueue_NumRegs ; Subroutine regs (d0-d6/a0-a4)
VDPJob_SubroutineAddr    rs.l 1  			   ; Job subroutine address
;------------------------------
VDPJob_Padding			 rs.l 3					; Pad up to 64 bytes
;------------------------------
	RS_ALIGN
VDPJob_Struct_Size       rs.b 0
;------------------------------

; Uses shifts, can't change size
	IF !(VDPJob_Struct_Size=64)
	inform 2,"VDPJob_Struct_Size is not 64 bytes"
	ENDIF

VDP_JobQueue_Init:

	move.l #0x0, vdp_queue_produceridx
	move.l #0x0, vdp_queue_consumeridx
	
	rts
	
VDP_JobQueue_PushJob:
	; (d0-d6/a0-a4) - Job regs
	; a5 --- Job subroutine address

	; Breaks: d0,d7,a5,a6
	
	; Get producer index
	moveq  #0x0, d7
	move.w (vdp_queue_produceridx), d7
	
	IFND FINAL
	PUSHW  d0
	PUSHW  d7
	move.w (vdp_queue_consumeridx), d0
	sub.w  d0, d7
	cmp.w  #VDPQueue_MaxSize, d7
	bne    @NotFull
	RAISE_EXCEPTION error_vdp_queue_full
	@NotFull:
	POPW   d7
	POPW   d0
	ENDIF
	
	andi.w #VDPQueue_MaxSize-1, d7	; MOD to get producer position
	
	; Get address into array of job
	lsl.w  #0x6, d7; mulu   #VDPJob_Struct_Size, d7	; Index to element offset
	lea    vdp_queue_jobarray, a6	; Get VDP job array
	add.l  d7, a6					; Add offset
	
	; Set job subroutine address
	move.l  a5, VDPJob_SubroutineAddr(a6)
	
	; Copy job regs
	movem.l d0-d6/a0-a4, VDPJob_Regs(a6)
	
	; Increment producer index
	addq.w #0x1, (vdp_queue_produceridx)
	
	rts
	
VDP_JobQueue_ExecuteJob:

	; Get consumer index
	moveq  #0x0, d7
	move.w (vdp_queue_consumeridx), d7
	andi.w #VDPQueue_MaxSize-1, d7	; MOD to get consumer position
	
	; Get address into array of job
	lsl.w  #0x6, d7 ;mulu   #VDPJob_Struct_Size, d7	; Index to element offset
	lea    vdp_queue_jobarray, a6	; Get VDP job array
	add.l  d7, a6					; Add offset
	
	; Get job subroutine address
	move.l  VDPJob_SubroutineAddr(a6), a5
	
	; Copy job regs
	movem.l VDPJob_Regs(a6), d0-d6/a0-a4
	
	; Increment (and wrap) consumer index
	addq.w #0x1, (vdp_queue_consumeridx)
	
	; Run job
	jsr (a5)
	
	rts
	
VDP_JobQueue_ExecuteAll:

	; Get queue size
	move.w (vdp_queue_produceridx), d0
	move.w (vdp_queue_consumeridx), d1
	move.w d1, d7
	sub.w  d1, d0
	tst.w  d0
	beq    @QueueEmpty
	
	; Clear queue
	add.w  d0, (vdp_queue_consumeridx)	; Increment (and wrap) consumer index
	
	; Get consumer index
	andi.w #VDPQueue_MaxSize-1, d7		; MOD to get consumer position
	
	; Get address into array of job
	lsl.w  #0x6, d7 ;mulu   #VDPJob_Struct_Size, d7	; Index to element offset
	lea    vdp_queue_jobarray, a6		; Get VDP job array
	add.l  d7, a6						; Add offset
	
	; Run all
	subq.w #0x1, d0
	@QueueLp:
	PUSHM  d0/a6
	
	; Pop and run job
	;PUSHW  d0
	;jsr    VDP_JobQueue_ExecuteJob
	;POPW   d0
	
	; Get job subroutine address
	move.l VDPJob_SubroutineAddr(a6), a5
	
	; Copy job regs
	movem.l VDPJob_Regs(a6), d0-d6/a0-a4
	
	; Run job
	
	jsr    (a5)

	; Next job
	POPM   d0/a6
	addi.l #VDPJob_Struct_Size, a6
	
	; Wrap queue
	cmp.l  #vdp_queue_jobarray+(VDPJob_Struct_Size*VDPQueue_MaxSize), a6
	bne    @WithinBounds
	lea    vdp_queue_jobarray, a6
	@WithinBounds:
	
	dbra   d0, @QueueLp
	
	@QueueEmpty:
	
	rts
	
VDP_JobQueue_GetSize:
	; d0 - OUT - Queue size
	move.w (vdp_queue_produceridx), d0
	move.w (vdp_queue_consumeridx), d1
	sub.w  d1, d0
	
	rts
	
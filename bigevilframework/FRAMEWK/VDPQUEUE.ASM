;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2015
;================================================================
;   vdpqueue.asm - Single producer, single consumer VDP job queue
;================================================================

; Constants
VDPJobQueue_MaxSize		equ 0x0040  ; Queue max elements
VDPJobQueue_NumRegs		equ 0x05    ; (d0-d3/a0)

; Job struct
	rsset 0
;------------------------------
VDPJob_Regs              rs.l VDPJobQueue_NumRegs	; Subroutine regs (d0-d3/a0)
VDPJob_SubroutineAddr    rs.l 1						; Subroutine
;------------------------------
VDPJob_Struct_Size       rs.b 0
;------------------------------

VDP_JobQueue_Init:
	move.l #vdp_job_queue, vdp_job_queue_next
	rts
	
VDP_JobQueue_PushJob:
	; (d0-d3/a0) - Job regs
	; a5 --- Job subroutine address
	; Breaks: a5,a6

	; Get queue address
	move.l vdp_job_queue_next, a6

	IFND FINAL
	cmp.l #vdp_job_queue+(VDPJob_Struct_Size*VDPJobQueue_MaxSize), a6
	bne    @NotFull
	RAISE_EXCEPTION error_vdp_queue_full
	@NotFull:
	ENDIF

	; Write job regs
	movem.l d0-d3/a0, (a6)
	lea     (VDPJobQueue_NumRegs*size_long)(a6), a6
	
	; Write job subroutine address
	move.l  a5, (a6)+

	; Advance queue
	move.l  a6, vdp_job_queue_next
	
	rts
	
VDP_JobQueue_ExecuteAll:

	; Get queue address
	lea    vdp_job_queue, a6

	; Get queue end
	move.l vdp_job_queue_next, a5

	; Check empty
	cmp.l  a6, a5
	beq    @NoJobs

	; Execute jobs
	@QueueLoop:
	movem.l (a6)+, d0-d3/a0	; Regs
	move.l (a6)+, a3		; Routine
	PUSHM  a5-a6
	jsr    (a3)				; Execute
	POPM   a5-a6
	cmp.l  a6, a5
	bne    @QueueLoop
	
	; Clear queue
	move.l #vdp_job_queue, vdp_job_queue_next
	
	@NoJobs:
	
	rts

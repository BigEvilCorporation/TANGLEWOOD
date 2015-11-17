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

VDPQueue_Init:

	move.l #0x0, vdp_queue_produceridx
	move.l #0x0, vdp_queue_consumeridx
	
	rts
	
VDPQueue_PushJob:
	; (d0-d6/a0-a4) - Job regs
	; a5 --- Job subroutine address
	
	; Get producer index
	clr.l  d7
	move.l (vdp_queue_produceridx), d7
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
	
VDPQueue_ExecuteJob:

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
	
VDPQueue_ExecuteAll:

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
	jsr    VDPQueue_ExecuteJob
	move.l (sp)+, d0

	; Next job
	dbra   d0, @QueueLp
	
	@QueueEmpty:
	
	rts
	
VDPQueue_GetSize:
	; d0 - OUT - Queue size
	move.l (vdp_queue_produceridx), d0
	move.l (vdp_queue_consumeridx), d1
	sub.l  d1, d0
	
	rts
	
; Constants
;VDPQueue_MaxSize	equ 0x0080
;VDPQueue_NumRegs	equ 0x000D ; (d0-d7/a0-a4)
;
;; Job types
;VDPJob_SetSpritePosX		equ 0x1
;VDPJob_SetSpritePosY		equ 0x2
;VDPJob_SetMultiSpritePosX	equ 0x3
;VDPJob_SetMultiSpritePosY	equ 0x4
;VDPJob_LoadTiles			equ 0x5
;
;; Job struct
;	rsset 0
;;------------------------------
;VDPJob_Regs              rs.l VDPQueue_NumRegs ; Subroutine regs (d0-d7/a0-a4)
;VDPJob_SubroutineAddr    rs.l 1  			   ; Job subroutine address
;;------------------------------
;VDPJob_Struct_Pad        rs.b 0
;VDPJob_Struct_Size       rs.b 0
;;------------------------------
;
;VDP_QueueInit:
;	; Create VDP job queue
;	lea vdp_jobqueue, a0
;	move.w #VDPQueue_MaxSize, d0
;	move.w #(VDPJob_Struct_Size/size_long), d1
;	jsr Queue_Init
;	
;	rts
;	
;VDP_AddTaskToQueue:
;	; a1 --- VDP job regs stack (d0-d7/a0-a4)
;	; a2 --- VDP job subroutine
;	
;	; Get queue
;	lea vdp_jobqueue, a0
;	
;	; Alloc job struct on stack
;	sub.l #VDPJob_Struct_Size, sp
;	
;	; Set subroutine
;	move.l a2, VDPJob_SubroutineAddr(sp)
;	
;	; Copy regs
;	move.l sp, a2	; Job struct
;	move.l #(VDPQueue_NumRegs-1), d1
;	@RegLp:
;	move.l (a1)+, (a2)+
;	dbra   d1, @RegLp
;	
;	; Add to queue
;	move.l sp, a1	; Queue item address
;	jsr    Queue_Push
;	
;	; Free struct
;	add.l  #VDPJob_Struct_Size, sp
;	
;	rts
;	
;VDP_ExecuteQueue:
;	; While items in queue
;	@QueueLp:
;	lea    vdp_jobqueue, a0
;	jsr    Queue_GetSize
;	cmp.w  #0x0, d0
;	beq    @QueueEmpty
;	
;	; Alloc space for job
;	sub.l  #VDPJob_Struct_Size, sp
;
;	; Job address
;	move.l sp, a1
;	
;	; Pop job
;	jsr    Queue_Pop
;	
;	; Job address
;	move.l sp, a1
;
;	; Backup queue addr
;	move.l a0, -(sp)
;	
;	; Execute job
;	jsr    VDP_ExecuteJob
;	
;	; Restore queue addr
;	move.l (sp)+, a0
;	
;	; Free job
;	add.l  #VDPJob_Struct_Size, sp
;	
;	; Next job
;	bra    @QueueLp
;	
;	@QueueEmpty:
;	
;	rts
;	
;VDP_ExecuteJob:
;	; a1 --- VDP job address
;	
;	; Get subroutine
;	move.l VDPJob_SubroutineAddr(a1), a5
;	
;	; Extract regs
;	move.l  a1, a6
;	movem.l (a6)+, d0-d7/a0-a4
;
;	; Run
;	jsr (a5)
;	
;	rts
	
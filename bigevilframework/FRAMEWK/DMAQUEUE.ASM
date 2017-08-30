;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;================================================================
;   dmaqueue.asm - VDP DMA job queue
;================================================================

; Constants
VDPDMAQueue_MaxSize    equ 0x40  ; Queue max size

; Job struct
	rsset 0
;------------------------------
VDPDMAJob_SourceAddr     rs.l 1	; Source address (68k space)
VDPDMAJob_DestAddr		 rs.w 1 ; Dest address (VRAM space)
VDPDMAJob_SizeWords      rs.w 1 ; Data size (in words)
;------------------------------
VDPDMAJob_Struct_Pad     rs.b 0
VDPDMAJob_Struct_Size    rs.b 0
;------------------------------

; Routines
VDP_DMAQueue_AddJob:
	; a0 --- - Source addr (68k space)
	; d0 (l) - Dest addr (VRAM space)
	; d1 (w) - Data size (words)

	IFND FINAL
	tst.w d1
	bne   @NonZero
	RAISE_EXCEPTION error_dma_queue_full
	@NonZero:
	ENDIF
	
	; Get next queue element
	lea    vdp_dma_queue, a1
	clr.l  d2
	move.w (vdp_dma_queue_size), d2
	mulu   #VDPDMAJob_Struct_Size, d2
	add.l  d2, a1
	
	; If block crosses a 128kb boundary, split into two jobs
	; (but simpler to do with 64kb, can just use carry flag)
	move.l a0, d2
	move.w d1, d3
	lsl.w  #0x1, d3		; Words to bytes
	add.w  d3, d2		; Add size to lower 16 bits of address
	bcs    @SplitJobs	; Branch if Carry Set (result overflowed across 16 bit boundary)
	
	; Set properties
	move.l a0, VDPDMAJob_SourceAddr(a1)
	move.w d0, VDPDMAJob_DestAddr(a1)
	move.w d1, VDPDMAJob_SizeWords(a1)
	
	; Increment queue size
	addq.w #0x1, vdp_dma_queue_size
	
	bra    @End
	
	@SplitJobs:
	
	; Job 1
	move.l a0, d2
	move.l a0, d3
	andi.l #0xFFFF0000, d3	; Align source address down to 64kb boundary
	add.l  #0x00010000, d3	; Align up
	sub.l  d2, d3			; Get size difference from original address
	move.l d3, d4
	lsr.l  #0x1, d4			; Size diff to words
	move.l a0, VDPDMAJob_SourceAddr(a1)
	move.w d0, VDPDMAJob_DestAddr(a1)
	move.w d4, VDPDMAJob_SizeWords(a1)
	addq.w #0x1, vdp_dma_queue_size
	add.l  #VDPDMAJob_Struct_Size, a1
	
	; Job 2
	add.l  d3, a0			; Offset source address (bytes)
	add.w  d3, d0			; Offset dest address (bytes)
	sub.w  d4, d1			; Subtract size (words)
	move.l a0, VDPDMAJob_SourceAddr(a1)
	move.w d0, VDPDMAJob_DestAddr(a1)
	move.w d1, VDPDMAJob_SizeWords(a1)
	addq.w #0x1, vdp_dma_queue_size
	
	@End:
	
	rts
	
VDP_DMAQueue_ExecuteAll:

	; Get queue address
	lea    vdp_dma_queue, a1
	
	; Get queue size (-1 for counter)
	move.w (vdp_dma_queue_size), d5
	tst.w  d5
	beq    @NoJobs
	sub.w  #0x1, d5
	
	; Execute jobs
	@QueueLoop:
	move.l VDPDMAJob_SourceAddr(a1), a0
	move.w VDPDMAJob_DestAddr(a1), d0
	move.w VDPDMAJob_SizeWords(a1), d1
	jsr    VDP_DMACopyVRAM
	addi.l #VDPDMAJob_Struct_Size, a1
	dbra   d5, @QueueLoop
	
	; Clear queue
	move.w #0x0, vdp_dma_queue_size
	
	@NoJobs:

	rts
	
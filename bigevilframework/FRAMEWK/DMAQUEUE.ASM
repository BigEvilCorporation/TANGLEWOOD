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
VDPDMAQueue_AddJob:
	; a0 --- - Source addr (68k space)
	; d0 (w) - Dest addr (VRAM space)
	; d1 (w) - Data size (bytes)
	
	; Get next queue element
	lea    vdp_dma_queue, a1
	clr.l  d2
	move.w (vdp_dma_queue_size), d2
	mulu   #VDPDMAJob_Struct_Size, d2
	add.l  d2, a1
	
	; Set properties
	move.l a0, VDPDMAJob_SourceAddr(a1)
	move.w d0, VDPDMAJob_DestAddr(a1)
	move.w d1, VDPDMAJob_SizeWords(a1)
	
	; Increment queue size
	addi.w #0x1, vdp_dma_queue_size
	
	rts
	
VDPDMAQueue_ExecuteAll:

	; Get queue address
	lea    vdp_dma_queue, a1
	
	; Get queue size (-1 for counter)
	move.w (vdp_dma_queue_size), d5
	cmp.w  #0x0, d5
	beq    @NoJobs
	sub.w  #0x1, d5
	
	; Execute jobs
	@QueueLoop:
	move.l VDPDMAJob_SourceAddr(a1), a0
	move.w VDPDMAJob_DestAddr(a1), d0
	move.w VDPDMAJob_SizeWords(a1), d1
	jsr    VPDDMACopyVRAM
	addi.l #VDPDMAJob_Struct_Size, a1
	dbra   d5, @QueueLoop
	
	; Clear queue
	move.w #0x0, vdp_dma_queue_size
	
	@NoJobs:

	rts
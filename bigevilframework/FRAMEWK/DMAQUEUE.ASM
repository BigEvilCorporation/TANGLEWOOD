;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;================================================================
;   dmaqueue.asm - VDP DMA job queue
;================================================================

; Constants
VDPDMAQueue_MaxSize    equ 0x40  ; Queue max size
VDPDMAQueue_Job_size   equ 0x0E  ; Job size

; Routines
VDP_DMAQueue_Init:
	move.l #vdp_dma_queue, vdp_dma_queue_next
	rts

VDP_DMAQueue_AddJob:
	; a0 --- - Source addr (68k space)
	; d0 (w) - Dest addr (VRAM space)
	; d1 (w) - Data size (words)
	
	; If block crosses a 128kb boundary, split into two jobs
	; (but simpler to do with 64kb, can just use carry flag)
	move.l a0, d2
	move.w d1, d3
	lsl.w  #0x1, d3		; Words to bytes
	add.w  d3, d2		; Add size to lower 16 bits of address
	bcs    @SplitJobs	; Branch if Carry Set (result overflowed across 16 bit boundary)
	
	@SingleJob:
	
	; Add single job
	move.l a0, d2
	jsr    VDP_DMAQueue_AddToQueue
	
	bra    @End
	
	@SplitJobs:
	
	; Edge case: end of data lands precisely on 64kb boundary
	beq    @SingleJob
	
	; Job 1
	moveq  #0x0, d4
	move.l a0, d2			; Source addr to d2
	move.w d1, d5			; Backup original size
	move.w d0, d6			; Backup original dest
	move.l d2, d3
	andi.l #0xFFFF0000, d3	; Align source address down to 64kb boundary
	addi.l #0x00010000, d3	; Align up
	sub.l  d2, d3			; Get size difference from original address
	move.w d3, d4			; Backup job 1 size
	move.w d3, d1			; Size to d1
	lsr.w  #0x1, d1			; Size diff to words
	jsr    VDP_DMAQueue_AddToQueue
	
	; Job 2
	move.l a0, d2			; Source address to d2
	move.w d5, d1			; Restore original size
	move.w d6, d0			; Restore original dest
	add.l  d4, d2			; Offset source address (bytes)
	add.w  d4, d0			; Offset dest address (bytes)
	lsr.w  #0x1, d4			; Job 1 size to words
	sub.w  d4, d1			; Subtract job 1 size (words)
	jsr    VDP_DMAQueue_AddToQueue
	
	@End:
	
	rts

VDP_DMAQueue_AddToQueue:
	; d0 (w) - Dest addr (VRAM space)
	; d1 (w) - Data size (words)
	; d2 (l) - Source addr (68k space)

	; Get queue address
	move.l vdp_dma_queue_next, a1

	IFND FINAL
	tst.w d1
	bne   @NonZero
	RAISE_EXCEPTION error_dma_bad_param
	@NonZero:
	move.l a1, a2
	addi.l #VDPDMAQueue_Job_size*VDPDMAQueue_MaxSize, a2
	cmp.l  a1, a2
	bne    @NotFull
	RAISE_EXCEPTION error_dma_queue_full
	@NotFull:
	ENDIF
	
	; Add DMA mode to top byte of address
	lsr.l  #0x1, d2							; Source addr to words
	andi.l #vdp_dma_addr_mask_write_l, d2	; Top byte mask (to fit DMA mode)
	ori.l  #(vdp_dma_mode_write<<16), d2	; DMA mode 0
	
	; Write source addr and size stream
	move.l  #$94009300, (a1)+				; Size hi and lo (regs 13 and 14) set commands
	move.l  #$97009600, (a1)+				; Source addr lo and mid (regs 15 and 16) set commands
	move.w  #$9500, (a1)+					; Source addr hi and mode (reg 17) set command
	movep.l d2, -7(a1)						; Disperse source address and DMA mode bytes first (or will overwrite size)
	movep.w d1, -9(a1)						; Disperse size bytes

	; Write dest addr and command stream
	andi.l  #0xFFFF, d0
	lsl.l   #0x2, d0						; Shift bits 14/15 of dest address to bits 16/17
	lsr.w   #0x2, d0						; Shift lower word back
	swap    d0								; Swap address hi/lo
	ori.l   #vdp_cmd_dma_vram_write, d0		; OR in VRAM+DMA write command
	move.l  d0, (a1)+						; Set dest addr bytes

	; Advance queue
	move.l  a1, vdp_dma_queue_next

	rts
	
VDP_DMAQueue_ExecuteAll:

	; Get queue address
	lea    vdp_dma_queue, a1

	; Get queue end
	move.l vdp_dma_queue_next, a2

	; Check empty
	cmp.l  a1, a2
	beq    @NoJobs

	; Disable interrupts
	PUSHW  sr
	ori.w  #status_reg_int_disable, sr

	; Read VDP reg 1
	VDPGETREG 1, d4
	
	; Enable DMA
	ori.w   #0x10, d4  			; Set register 1 + DMA bit (5)
	VDPSETREG 1, d4

	; Prepare VDP control port addr
	move.l  #vdp_control, a6
	
	; Execute jobs
	@QueueLoop:
	move.l (a1)+, (a6)	; Size hi/lo
	move.l (a1)+, (a6)	; Source addr hi/mid + DMA mode
	move.l (a1)+, (a6)	; Source addr lo + dest addr/DMA command hi word
	move.w (a1)+, (a6)	; Dest addr/DMA command lo word
	cmp.l  a1, a2
	bne    @QueueLoop

	; Disable DMA
	andi.b  #0xEF, d4 				; Clear DMA bit (5)
	VDPSETREG 1, d4

	; Restore interrupts
	POPW    sr
	
	; Clear queue
	move.l #vdp_dma_queue, vdp_dma_queue_next
	
	@NoJobs:

	rts
	
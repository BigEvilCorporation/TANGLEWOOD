;================================================================
;   http://www.bigevilcorporation.co.uk
;================================================================
;   SEGA Genesis Framework (c) Matt Phillips 2016
;================================================================
;   dmaqueue.asm - VDP DMA job queue
;================================================================

; Constants
VDPDMAQueue_MaxSize    equ 0x28  ; Queue max size
VDPDMAQueue_Job_Size   equ 0x10

;---------------------------------
; DMA job
;---------------------------------
	rsset 0
;---------------------------------
VDPDMAJob_SizeHiLoCmd		rs.l 1	; Set DMA size command
VDPDMAJob_AddrMidLoCmd		rs.l 1	; Set source address mid/lo command
VDPDMAJob_AddrHiModeCmd		rs.w 1	; Set source address hi and DMA mode command
VDPDMAJob_AutoIncCmd		rs.w 1	; Autoincrement set reg command
VDPDMAJob_DestAddrCmd		rs.l 1	; Set dest address command
;---------------------------------
VDPDMAJob_Struct_Size		rs.b 0
;---------------------------------

DMAVDPQueue_VRAM       equ 0x0
DMAVDPQueue_CRAM       equ 0x1

; Routines
VDP_DMAQueue_Init:
	move.l #vdp_dma_queue, vdp_dma_queue_next
	rts

VDP_DMAQueue_AddJob:
	; a0 --- - Source addr (68k space)
	; d0 (w) - Dest addr (VRAM space)
	; d1 (w) - Data size (words)
	; d2 (b) - Dest memory (DMAVDPQueue_VRAM/DMAVDPQueue_CRAM)
	; d3 (b) - Data stride

	move.b d2, d7
	move.b d3, d6
	
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
	PUSHMW d0/d1			; Backup original size/dest
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
	POPMW  d0/d1			; Restore original size/dest
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
	; d6 (b) - Autoincrement
	; d7 (b) - Dest memory (DMAVDPQueue_VRAM/DMAVDPQueue_CRAM)

	; Get queue address
	move.l vdp_dma_queue_next, a1

	IFND FINAL
	tst.w d1
	bne   @NonZero
	RAISE_EXCEPTION error_dma_bad_param
	@NonZero:
	cmp.l #vdp_dma_queue+(VDPDMAJob_Struct_Size*VDPDMAQueue_MaxSize), a1
	bne   @NotFull
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

	; Write autoincrement reg set command stream
	move.w  #0x8F00, d1
	move.b  d6, d1
	move.w  d1, (a1)+

	; Write dest addr and command stream
	andi.l  #0xFFFF, d0
	lsl.l   #0x2, d0						; Shift bits 14/15 of dest address to bits 16/17
	lsr.w   #0x2, d0						; Shift lower word back
	swap    d0								; Swap address hi/lo
	cmp.b   #DMAVDPQueue_VRAM, d7
	bne     @CRAM
	ori.l   #vdp_cmd_dma_vram_write, d0		; OR in VRAM+DMA write command
	bra     @VRAM
	@CRAM:
	ori.l   #vdp_cmd_dma_cram_write, d0		; OR in VRAM+DMA write command
	@VRAM:
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

	; Backup VDP regs 1 (DMA enable) and F (autoincrement)
	VDP_GETREG 0x1, d4
	VDP_GETREG 0xF, d6
	
	; Enable DMA
	ori.w   #0x10, d4  			; Set register 1 + DMA bit (5)
	VDP_SETREG 1, d4

	; Prepare VDP control port addr
	move.l  #vdp_control, a6

	; Take Z80 bus
	jsr    Z80_TakeBus
	
	; Execute jobs
	@QueueLoop:
	DISABLE_INTERRUPTS
	move.l (a1)+, (a6)	; Size hi/lo
	move.l (a1)+, (a6)	; Source addr hi/mid + DMA mode
	move.l (a1)+, (a6)	; Source addr lo + dest addr/DMA command hi word
	move.l (a1)+, (a6)	; Autoincrement command, and dest addr/DMA command lo word
	RESTORE_INTERRUPTS
	cmp.l  a1, a2
	bne    @QueueLoop

	; Release Z80 bus
	jsr   Z80_ReleaseBus

	; Disable DMA
	andi.b  #0xEF, d4 				; Clear DMA bit (5)

	; Restore VDP regs 1 (DMA enable) and F (autoincrement)
	VDP_SETREG 0x1, d4
	VDP_SETREG 0xF, d6
	
	; Clear queue
	move.l #vdp_dma_queue, vdp_dma_queue_next
	
	@NoJobs:

	rts
	
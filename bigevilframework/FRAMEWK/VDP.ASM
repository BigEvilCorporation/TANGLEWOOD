;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   vdp.asm - VDP initialisation and control
;==============================================================

InitVDP:

	; Load empty horizontal interrupt routine
	lea HBlankInterrupt_Blank, a0
	jsr LoadInterruptHBlank

	; Set VDP registers
	move.l #VDPRegisters, a0   		  ; Load address of register table into a0
	move.l #(vdp_num_registers-1), d0 ; 24 registers to write (-1 for loop counter)
	move.l #vdp_write_register, d1    ; 'Set register 0' command

	@CopyVDP:
	move.b (a0)+, d1           ; Move register value to lower byte of d1
	move.w d1, vdp_control     ; Write command and value to VDP control port
	add.w #0x0100, d1          ; Increment register #
	dbra d0, @CopyVDP
	
	; Clear VDP memory
	jsr ClearVRAM
	jsr ClearCRAM
	jsr ClearVSRAM

	rts
	
ClearVRAM:

	move.w #0x8F01, vdp_control     ; Set autoincrement to 1 byte
	move.w #0x93FF, vdp_control     ; Set bytes to fill (lo) (reg 19)
	move.w #0x94FF, vdp_control     ; Set bytes to fill (hi) (reg 20)
	move.w #0x9780, vdp_control     ; Set DMA to Fill (reg 23, bits 0-1)
	move.l #vdp_cmd_dma_vram_write, vdp_control ; Set destination address
	move.w #0x0, vdp_data           ; Value to write

	@WaitForDMA_vram:                    
	move.w vdp_control, d1          ; Read VDP status reg
	btst   #0x1, d1                 ; Check if DMA finished
	bne.s  @WaitForDMA_vram
	
	rts
	
ClearVSRAM:

	move.w #0x9350, vdp_control     ; Set bytes to fill (lo) (reg 19)
	move.w #0x9400, vdp_control     ; Set bytes to fill (hi) (reg 20)
	move.w #0x9780, vdp_control     ; Set DMA to Fill (reg 23, bits 0-1)
	move.l #vdp_cmd_dma_vsram_write, vdp_control ; Set destination address
	move.w #0x0, vdp_data           ; Value to write

	@WaitForDMA_vsram:                    
	move.w vdp_control, d1          ; Read VDP status reg
	btst   #0x1, d1                 ; Check if DMA finished
	bne.s  @WaitForDMA_vsram

	move.w #0x8F02, vdp_control     ; Set autoincrement to 2 bytes
	
	rts
	
ClearCRAM:

	move.l #vdp_write_palettes, vdp_control ; Write to palette memory
	move.l #0x3F, d1                        ; CRAM size (in words)
	@ClrCRAM:
	move.w #0x0, vdp_data                   ; Write 0 (autoincrement is 2)
	dbra d1, @ClrCRAM
	
	rts

VPDDMACopyVRAM:
	; a0 --- Source address (RAM/ROM)
	; d0 (w) Dest address (VRAM)
	; d1 (w) Size (in words)
	
	; Size lo (register 13)
	move.w d1, d2
	andi.w #0x00FF, d2
	ori.w  #0x9300, d2
	move.w d2, vdp_control
	
	; Size hi (register 14)
	lsr.w  #0x8, d1
	andi.w #0x00FF, d1
	ori.w  #0x9400, d1
	move.w d1, vdp_control

	; Copy source address
	move.l a0, d2
	clr.l  d3
	
	; Address byte 0 (register 15)
	lsr.l  #0x1, d2					; Ignore first bit (address is always even)
	move.w #0x9500, d3
	move.b d2, d3
	move.w d3, vdp_control
	
	; Address byte 1 (register 16)
	lsr.l  #0x8, d2					; Next byte
	move.w #0x9600, d3
	move.b d2, d3
	move.w d3, vdp_control
	
	; Address byte 2 + DMA mode (register 17)
	lsr.l  #0x8, d2					; Next byte
	move.w #0x9700, d3
	move.b d2, d3
	andi.b #vdp_dma_addr_mask_write, d3	; Top byte mask (to fit DMA mode)
	ori.b  #vdp_dma_mode_write, d3	; DMA mode 0
	move.w d3, vdp_control
	
	; Generate dest command+address
	lsl.l   #0x2, d0				; Shift bits 14/15 of dest address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_dma_vram_write, d0 ; OR in VRAM+DMA write command
	
	; Read and backup VDP reg 1
	move.w  (VDPRegisters), d4		; VDP regs
	andi.w  #0x00FF, d4 			; Second reg
	
	; Enable DMA
	ori.w   #0x8110, d4  			; Set register 1 + DMA bit (5)
	move.w  d4, vdp_control
	
	; Initiate DMA - command must come from RAM, so push to stack and pop for write
	move.l  d0, -(sp)
	move.w  (sp)+, vdp_control      ; Move dest address to VDP control port
	move.w  (sp)+, vdp_control      ; Move dest address to VDP control port
	
	; Disable DMA
	andi.b  #0xEF, d4 				; Clear DMA bit (5)
	move.w  d4, vdp_control
	
	rts
	
VDPDMACopyCRAM:
	; a0 --- Source address (RAM/ROM)
	; d0 (w) Dest address (CRAM)
	; d1 (w) Size (in words)
	
	; Size lo (register 13)
	move.w d1, d2
	andi.w #0x00FF, d2
	ori.w  #0x9300, d2
	move.w d2, vdp_control
	
	; Size hi (register 14)
	lsr.w  #0x8, d1
	andi.w #0x00FF, d1
	ori.w  #0x9400, d1
	move.w d1, vdp_control

	; Copy source address
	move.l a0, d2
	clr.l  d3
	
	; Address byte 0 (register 15)
	lsr.l  #0x1, d2					; Ignore first bit (address is always even)
	move.w #0x9500, d3
	move.b d2, d3
	move.w d3, vdp_control
	
	; Address byte 1 (register 16)
	lsr.l  #0x8, d2					; Next byte
	move.w #0x9600, d3
	move.b d2, d3
	move.w d3, vdp_control
	
	; Address byte 2 + DMA mode (register 17)
	lsr.l  #0x8, d2					; Next byte
	move.w #0x9700, d3
	move.b d2, d3
	andi.b #vdp_dma_addr_mask_write, d3	; Top byte mask (to fit DMA mode)
	ori.b  #vdp_dma_mode_write, d3	; DMA mode 0
	move.w d3, vdp_control
	
	; Generate dest command+address
	lsl.l   #0x2, d0				; Shift bits 14/15 of dest address to bits 16/17
	lsr.w   #0x2, d0				; Shift lower word back
	swap    d0                     	; Swap address hi/lo
	ori.l   #vdp_cmd_dma_cram_write, d0 ; OR in CRAM+DMA write command
	
	; Read and backup VDP reg 1
	move.w  (VDPRegisters), d4		; VDP regs
	andi.w  #0x00FF, d4 			; Second reg
	
	; Enable DMA
	ori.w   #0x8110, d4  			; Set register 1 + DMA bit (5)
	move.w  d4, vdp_control
	
	; Initiate DMA - command must come from RAM, so push to stack and pop for write
	move.l  d0, -(sp)
	move.w  (sp)+, vdp_control      ; Move dest address to VDP control port
	move.w  (sp)+, vdp_control      ; Move dest address to VDP control port
	
	; Disable DMA
	andi.b  #0xEF, d4 				; Clear DMA bit (5)
	move.w  d4, vdp_control

	rts

EnableDisplay:
	move.w #(0x8100|VDPReg1|vdp_reg1_enabledisplay), vdp_control
	rts
		
DisableDisplay:
	move.w #(0x8100|VDPReg1&~vdp_reg1_enabledisplay), vdp_control
	rts
		
EnableVINT:
	move.w #(0x8100|VDPReg1|vdp_reg1_enablevint), vdp_control
	rts
		
DisableVINT:
	move.w #(0x8100|VDPReg1&~vdp_reg1_enablevint), vdp_control
	rts
		
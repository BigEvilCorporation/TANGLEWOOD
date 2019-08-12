;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   init.asm - 68000, VDP, Z80, PSG and gamepad initialisation
;==============================================================

; Entry point address set in ROM header
CPU_EntryPoint:

	IFD DEBUG
	; Cross Products MegaCD kit
	jsr DBG_ConnectDebugger
	; For MegaCD - restore HINT vector
	jsr MCD_RestoreHINT
	ENDIF

	; Test reset state (if pad A state is still how we initialised it)
	move.b pad_ctrl_a, d0
	cmp.b  #pad_byte_latch, d0
	beq    @SoftReset

	; Clear RAM (for hard reset)
	jsr    RAM_Clear

	bra    @EndClearRAM

	; Clear RAM (for soft reset)
	@SoftReset:
	move.l SoftResetSaveLong, d7
	jsr RAM_Clear
	move.l d7, SoftResetSaveLong

	@EndClearRAM:

	; Write TMSS
	jsr VDP_WriteTMSS

	; Init Z80
	jsr Z80_Init

	; Init PSG
	jsr PSG_Init
	
	; Init VDP
	jsr VDP_Init

	; Init gamepad ports
	jsr PAD_Init
	
	; Init EXT port
	jsr PAD_InitEXTPort

	; Init VDP DMA queue
	jsr VDP_DMAQueue_Init

	; Init VDP job queue
	jsr VDP_JobQueue_Init

	; Init VRAM pools
	jsr VRAM_InitPools
	
	; Init random number generator
	jsr RND_Init
	
	; Init sound driver
	jsr SND_Init

	; Determine system type and apply default settings
	jsr SYS_DetectSystemType

	; Cleanup registers
	move.l #ram_start, a0     ; Move address of first byte of ram (contains zero, RAM has been cleared) to a0
	movem.l (a0), d0-d7/a1-a6  ; Multiple move zero to all registers (except sp)
	move.l #0x00000000, a0    ; Clear a0
	
	; Init status register
	move.w #status_reg_init, sr	; INT level 3 (all interrupts) + supervisor + trace (if debug)

	; Run checksum test
	IF !CHECKSUM_TEST
	jsr    PAD_ReadPadA
	cmp.w  #(1<<pad_button_a|1<<pad_button_b|1<<pad_button_start), d0
	bne    @NoChkSum
	ENDIF

	jsr SYS_Checksum

	@NoChkSum:

	; ************************************
	; CPU_Main
	; ************************************
CPU_Main:

	jmp __main ; Begin external main

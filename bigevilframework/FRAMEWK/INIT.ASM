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

	; Test reset state
	tst.w reset_exp    ; Test expansion reset
	bne CPU_Main           ; Branch if Not Equal (to zero) - to CPU_Main
	tst.w reset_button ; Test reset button
	bne CPU_Main           ; Branch if Not Equal (to zero) - to CPU_Main
   
	; Clear RAM
	jsr RAM_Clear

	; Write TMSS
	jsr VDP_WriteTMSS

	; Init Z80
	jsr InitZ80

	; Init PSG
	jsr PSG_Init
	
	; Init VDP
	jsr VDP_Init

	; Init gamepad ports
	jsr PAD_InitGamepads
	
	; Init EXT port
	jsr PAD_InitEXTPort

	; Init VDP job queue
	jsr VDP_JobQueue_Init
	
	; Init random number generator
	jsr RND_Init
	
	; Init ECHO sound driver
	lea echo_instruments, a0
	jsr Echo_Init
	
	; Init letterbox
	move.w #0x0, letterbox_top
	move.w #screen_height, letterbox_bottom

	; Cleanup registers
	move.l  #ram_start, a0     ; Move address of first byte of ram (contains zero, RAM has been cleared) to a0
	movem.l (a0), d0-d7/a1-a6  ; Multiple move zero to all registers (except sp)
	move.l  #0x00000000, a0    ; Clear a0
	
	; Init status register
	move.w  #status_reg_init, sr	; INT level 3 (all interrupts) + supervisor + trace (if debug)

	; ************************************
	; CPU_Main
	; ************************************
CPU_Main:

	jmp __main ; Begin external main

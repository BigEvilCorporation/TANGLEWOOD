;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   init.asm - 68000, VDP, Z80, PSG and gamepad initialisation
;==============================================================

; Entry point address set in ROM header
EntryPoint:

	IFD DEBUG
	; Cross Products MegaCD kit
	jsr ConnectDebugger
	ENDIF

	; For MegaCD - restore HINT vector
	jsr MCD_RestoreHINT

	; Test reset state
	tst.w reset_exp    ; Test expansion reset
	bne Main           ; Branch if Not Equal (to zero) - to Main
	tst.w reset_button ; Test reset button
	bne Main           ; Branch if Not Equal (to zero) - to Main
   
	; Clear RAM
	jsr ClearRAM

	; Write TMSS
	jsr InitTMSS

	; Init Z80
	jsr InitZ80

	; Init PSG
	jsr InitPSG
	
	; Init VDP
	jsr InitVDP

	; Init gamepad ports
	jsr InitGamepads
	
	; Init EXT port
	jsr InitEXTPort

	; Init random number generator
	jsr RandInit

	; Cleanup registers
	move.l  #ram_start, a0     ; Move address of first byte of ram (contains zero, RAM has been cleared) to a0
	movem.l (a0), d1-d7/a1-a6  ; Multiple move zero to all registers (except sp)
	move.l  #0x00000000, a0    ; Clear a0
	
	IFD DEBUG
	; Set interrupt level 3 (+ TRACE for debugger)
	move.w sr, d0		; Get original sr set by debugging hardware
	andi.w #0xF8FF, d0	; INT level 3 (all interrupts)
	ori.w  #0x0300, d0	; TRACE bit for debugger
	move.w d0, sr
	ELSE
	; Set interrupt level 3
	move.w  #0x2300, sr	; INT level 3 (all interrupts)
	ENDIF

	clr.l  d0			; Clear d0

	; ************************************
	; Main
	; ************************************
Main:

	jmp __main ; Begin external main

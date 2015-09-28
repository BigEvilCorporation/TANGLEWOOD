;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   psg.asm - PSG initialisation and control
;==============================================================

InitPSG:

	move.l #PSGInitData, a0    ; Load address of PSG data into a0
	move.l #0x03, d0           ; 4 bytes of data
	@CopyPSG:
	move.b (a0)+, psg_control  ; Copy data to PSG RAM
	dbra d0, @CopyPSG
	
	rts
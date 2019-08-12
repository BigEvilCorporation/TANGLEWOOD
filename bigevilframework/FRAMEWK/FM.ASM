;==============================================================
;   TANGLEWOOD - A game by Matt Phillips - (c) 2017
;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   fm.asm - YM2612 routines
;==============================================================

FM_SetTimerB:
	; d0 (b) Timer B value

	; Take Z80 bus
	move.w #0x0100, z80_bus_request

	; Wait for Z80 bus
	@WaitZ80Bus:
	btst #0x0, z80_bus_request
	bne @WaitZ80Bus

	; Timer B reg to address port
	move.b #fm_reg_timer_b, fm_control

	; Timer value to control port
	move.b d0, fm_data

	; Release Z80 bus
	move.w #0x0000, z80_bus_request

	rts
	
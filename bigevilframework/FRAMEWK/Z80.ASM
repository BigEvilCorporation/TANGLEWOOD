;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   z80.asm - Z80 initialisation and control
;==============================================================

Z80_Init:

	move.w #0x0100, z80_bus_request ; Request access to the Z80 bus, by writing 0x0100 into the BUSREQ port
	move.w #0x0100, z80_bus_reset   ; Hold the Z80 in a reset state, by writing 0x0100 into the RESET port

	@Wait:
	btst #0x0, z80_bus_request ; Test bit 0 of A11100 to see if the 68k has access to the Z80 bus yet
	bne @Wait                  ; If we don't yet have control, branch back up to Wait
	
	move.l #z80_ram_start, a1    ; Z80 RAM start
	move.l #z80_ram_size_b-1, d0 ; 8KB (-1 for loop counter)
	@CopyZ80:
	move.b #0x0, (a1)+           ; Clear byte, increment dest address
	dbra d0, @CopyZ80

	move.w #0x0000, z80_bus_reset    ; Release reset state
	move.w #0x0000, z80_bus_request  ; Release control of bus
	
	rts

Z80_TakeBus:

	move.w #0x0100, z80_bus_request

	; Wait for Z80 bus
	@WaitZ80Bus:
	btst #0x0, z80_bus_request
	bne @WaitZ80Bus

	rts

Z80_ReleaseBus:
	move.w #0x0000, z80_bus_request
	rts
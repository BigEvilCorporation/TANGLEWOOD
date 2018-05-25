;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2018
;==============================================================
;   mdmodel.asm - Checks for various Mega Drive types
;==============================================================

SYS_Check_VRAM_128KB_Wrap:
	; ---------------------------------------------------------------------------------------------------------
	; SYS_Check_VRAM_128KB_Wrap
	; ---------------------------------------------------------------------------------------------------------
	; Checks if enabling 128KB VRAM mode causes writes to wrap around to 0x0.
	; On genuine hardware, values written above 64KB should be discarded (routine returns 0).
	; On most clones and emulators, values written above 64KB should wrap around to 0x0000 (routine returns 1).
	; ---------------------------------------------------------------------------------------------------------
	; RETURNS:
	; d0 (b) 0 = In 128KB VRAM mode writes >64KB are discarded (likely genuine hardware)
	;        1 = In 128KB VRAM mode writes >64KB wrap around (likely a clone/emulator)
	; ---------------------------------------------------------------------------------------------------------

	move.b #0x0, d0

	; Backup 8 bytes at VRAM 0x0000
	VDP_SET_VRAM_READ 0x0000
	move.w vdp_data, d4
	move.w vdp_data, d5

	; Enable 128KB VRAM mode
	VDP_GETREG 0x1, d7
	move.b d7, d6
	ori.b  #vdp_reg1_vram_128KB, d7
	VDP_SETREG 0x1, d7

	; Init >64KB area
	VDP_SET_VRAM_WRITE 0x00010000
	move.w #0x0000, vdp_data
	move.w #0x0000, vdp_data

	; Write known value to 0x0000
	VDP_SET_VRAM_WRITE 0x00000000
	move.w #0x1234, vdp_data
	move.w #0x5678, vdp_data

	; Read >64KB area
	VDP_SET_VRAM_READ 0x00010000
	move.w vdp_data, d1
	move.w vdp_data, d2

	; Disable 128KB VRAM mode
	VDP_SETREG 0x1, d6

	; If match, values wrapped
	cmp.w  #0x1234, d1
	bne    @NoWrap
	cmp.w  #0x5678, d2
	bne    @NoWrap

	; Values wrapped, not genuine hardware
	move.b #0x1, d0

	@NoWrap:

	; Restore 8 bytes at VRAM 0x0000
	VDP_SET_VRAM_WRITE 0x0000
	move.w d4, vdp_data
	move.w d5, vdp_data

	rts

SYS_Check_AtGames_Firecore:
	; ---------------------------------------------------------------------------------------------------------
	; SYS_Check_AtGames_Firecore
	; ---------------------------------------------------------------------------------------------------------
	; Detects the AtGames Firecore by probing 128KB VRAM mode, and known default values of its
	; debug regs at $B00000.
	; ---------------------------------------------------------------------------------------------------------
	; RETURNS:
	; d0 (b) 0 = Probaby not at AtGames Firecore
	;        1 = Very likely an AtGames Firecore
	; ---------------------------------------------------------------------------------------------------------

	move.b #0x0, d0

	; Check for 128KB VRAM implementation
	jsr    SYS_Check_VRAM_128KB_Wrap
	tst.b  d0
	beq    @NotAtGames

	move.b #0x0, d0

	; Probably safe to probe Firecore regs
	move.w #atgames_latch_on, atgames_addr_reg_latch
	move.b atgames_addr_psg_freq, d1
	move.b atgames_addr_fm_freq, d2
	move.b atgames_addr_fm_clk, d3
	move.w #atgames_latch_off, atgames_addr_reg_latch

	cmp.b  #atgames_default_psg_freq, d1
	bne    @NotAtGames
	cmp.b  #atgames_default_fm_freq, d2
	bne    @NotAtGames
	cmp.b  #atgames_default_fm_clk, d3
	bne    @NotAtGames

	; This is very likely an AtGames Firecore
	move.b #0x1, d0

	@NotAtGames:

	rts

;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2018
;==============================================================
;   mdmodel.asm - Checks for various Mega Drive types
;==============================================================

ABCD_Test_Table:
	;     d0,  d1, ccr
	dc.b $4A, $4A, $00
	dc.b $4A, $4A, $1F
	dc.b $4E, $4E, $00
	dc.b $4E, $4E, $1F
	dc.b $FF, $FF, $00
	dc.b $FF, $FF, $1F
ABCD_Test_Table_End

ABCD_Results_SEGA:
	;    res,  sr
	dc.b $9A, $08
	dc.b $9B, $08
	dc.b $02, $11
	dc.b $03, $11
	dc.b $64, $11
	dc.b $65, $11

ABCD_Results_Firecore:
	;    res,  sr
	dc.b $94, $08
	dc.b $95, $0A
	dc.b $9C, $08
	dc.b $9D, $0A
	dc.b $FE, $08
	dc.b $FF, $0A

ABCD_Results_Flashback_GPGX:
	;    res,  sr
	dc.b $FA, $1B
	dc.b $FB, $1B
	dc.b $02, $11
	dc.b $03, $11
	dc.b $64, $11
	dc.b $65, $11

	even

SYS_DetectSystemType:

	; Determine system type
	move.b #system_type_genuine, system_type

	; Skip test if A + Start is held
	jsr    PAD_ReadPadA
	cmp.w  #(1<<pad_button_a|1<<pad_button_start), d0
	beq    @End

	IFD EMUBUILD
	; Embedded into host emulator, treat as genuine
	bra    @End
	ENDIF

	; Detect AtGames Flashback - Z80 driver will have disabled SSG-EG on boot if it detected missing IYL instruction
	jsr    SND_GetSSGEGEnabled
	tst.b  d0
	bne    @NotFlashback
	move.b #system_type_flashback, system_type
	bra    @End
	@NotFlashback:

	; Detect AtGames Firecore
	jsr    SYS_Check_AtGames_Firecore
	tst.b  d0
	beq    @NotFirecore
	move.b #system_type_firecore, system_type
	jsr    SYS_Init_AtGames_Firecore
	bra    @End
	@NotFirecore:

	; Detect systems with broken ABCD implementation, assume clone or emu
	lea    ABCD_Results_SEGA, a0
	jsr    SYS_Check_ABCD
	tst.b  d0
	bne    @ABCDOk
	move.b #system_type_clone_emu, system_type
	bra    @End
	@ABCDOk:

	; Detect systems with broken 128KB VRAM implementation, assume clone or emu
	jsr    SYS_Check_VRAM_128KB_Wrap
	tst.b  d0
	beq    @VRAM128Ok
	move.b #system_type_clone_emu, system_type
	bra    @End
	@VRAM128Ok:

	@End:

	rts

SYS_Check_ABCD:
	; ---------------------------------------------------------------------------------------------------------
	; SYS_Check_ABCD
	; ---------------------------------------------------------------------------------------------------------
	; Checks ABCD values against a results table
	; ---------------------------------------------------------------------------------------------------------
	; INPUT:
	; a0 --- Test table
	; ---------------------------------------------------------------------------------------------------------
	; RETURNS:
	; d0 (b) 0 = ABCD tests didn't match
	;        1 = ABCD tests matched
	; ---------------------------------------------------------------------------------------------------------

	; Clear result and ssr
	moveq  #0x0, d0
	moveq  #0x0, d3

	lea    ABCD_Test_Table, a1
	move.w #((ABCD_Test_Table_End-ABCD_Test_Table)/3)-1, d7
	@TestLp:

	; Get test params
	move.b (a1)+, d1	; Source operand
	move.b (a1)+, d2	; Dest operand
	move.b (a1)+, d3	; CCR

	; Do ABCD
	move   d3, ccr
	abcd.b d1, d2
	move   sr, d6		; Get sr

	; Get test results
	move.b (a0)+, d4	; Expected result
	move.b (a0)+, d5	; Expected sr

	; Check results
	cmp.b  d2, d4
	bne    @TestFail
	cmp.b  d6, d5
	bne    @TestFail

	; Next
	dbra   d7, @TestLp
	
	; Test success
	move.b #0x1, d0

	@TestFail:

	rts

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
	; Detects the AtGames Firecore by probing ABCD, and known default values of its
	; debug regs at $B00000.
	; ---------------------------------------------------------------------------------------------------------
	; RETURNS:
	; d0 (b) 0 = Probaby not at AtGames Firecore
	;        1 = Very likely an AtGames Firecore
	; ---------------------------------------------------------------------------------------------------------

	move.b #0x0, d0

	; Check ABCD test first, or it's not safe to probe the debug registers
	lea    ABCD_Results_Firecore, a0
	jsr    SYS_Check_ABCD
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

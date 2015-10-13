;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   timing.asm - Timers, counters, frames
;==============================================================

WaitVBlankStart:
	move.w  vdp_control, d0	; Move VDP status word to d0
	btst    #0x3, d0     	; vblank state in bit 3
	beq     WaitVBlankStart ; Branch if equal (to zero)
	rts

WaitVBlankEnd:
	move.w  vdp_control, d0	; Move VDP status word to d0
	btst    #0x3, d0     	; vblank state in bit 3
	bne     WaitVBlankEnd   ; Branch if not equal (to zero)
	rts

WaitVSync:
	@WaitStart:
	move.w  vdp_control, d0
	btst    #0x3, d0
	beq     @WaitStart
	
	@WaitEnd:
	move.w  vdp_control, d0
	btst    #0x3, d0
	bne     @WaitEnd
	
	rts

WaitFrames:
	; d0 - Number of frames to wait

	move.l  vblank_counter, d1 ; Get start vblank count

	@Wait:
	move.l  vblank_counter, d2 ; Get end vblank count
	subx.l  d1, d2             ; Calc delta, result in d2
	cmp.l   d0, d2             ; Compare with num frames
	bge     @End               ; Branch to end if greater or equal to num frames
	jmp     @Wait              ; Try again
	
	@End:
	rts

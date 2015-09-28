;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   memory.asm - RAM routines
;==============================================================

ClearRAM:

	move.l (sp), d0			   ; Backup subroutine return address from stack
	move.l #ram_start, a0      ; Start address
	move.l #(size_ram_l-1), d1 ; Clearing 64k's worth of longwords (minus 1 for loop counter)
	
	@Clear:
	move.l #0x00000000, (a0)+  ; Write 0 and increment
	dbra d1, @Clear            ; Decrement d0, repeat until depleted
	
	move.l stack_top, sp	   ; Reset stack
	move.l d0, -(sp)		   ; Restore return address
	rts
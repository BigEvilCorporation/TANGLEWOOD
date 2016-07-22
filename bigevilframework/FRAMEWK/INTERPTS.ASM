;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   interpts.asm - Interrupts and exceptions
;==============================================================

LoadInterruptHBlank:
	; a0 --- Interrupt address
	
	jsr DisableVINT
	
	lea HBlankInterrupt, a1
	move.l #(hint_max_size/size_long), d0
	MEMCPYL a1,a0,d0
	
	jsr EnableVINT
	
	rts

VBlankInterrupt:
   addi.l #0x1, vblank_counter    ; Increment vinterrupt counter
   move.w #0x0, hline_counter	  ; Clear h-line counter

   IFD DEBUG
   TRAP #0 ; Sync with debugger - NOT FOR RELEASE
   ENDIF

   cmp.b #0x0, vint_enabled
   beq   @VINTDisabled
   
   ; Jump to game rendering subroutine
   movem.l d0-d7/a0-a6, -(sp)
   jsr __vinterrupt
   movem.l (sp)+, d0-d7/a0-a6
   
   @VINTDisabled:

   rte

HBlankInterrupt_Blank:
   addi.l #0x1, hblank_counter    ; Increment hinterrupt counter
   addi.w #0x1, hline_counter     ; Increment h-line counter
   rte

NullInterrupt:
   rte

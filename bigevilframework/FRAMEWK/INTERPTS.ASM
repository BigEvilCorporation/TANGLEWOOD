;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   interpts.asm - Interrupts and exceptions
;==============================================================

VBlankInterrupt:
   addi.l #0x1, vblank_counter    ; Increment vinterrupt counter

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

 HBlankInterrupt:
   addi.l #0x1, hblank_counter    ; Increment hinterrupt counter
   rte
   
Exception:
   IFD DEBUG
   TRAP #0 ; Sync with debugger - NOT FOR RELEASE
   ENDIF

   stop #0x2700 ; Halt CPU
   rte

NullInterrupt:
   rte

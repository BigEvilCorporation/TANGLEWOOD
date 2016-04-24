;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   interpts.asm - Interrupts and exceptions
;==============================================================

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

HBlankInterrupt:
	;movem.l d0-d2 -(sp)

	; If letterbox top or bottom, turn off display
	;move.w (hline_counter), d0
	;move.w (letterbox_top), d1
	;move.w (letterbox_bottom), d2
	;cmp.w  d0, d1
	cmp.w  (hline_counter), letterbox_top
	;bgt    @ScreenOff
	;cmp.w  d0, d2
	;blt    @ScreenOff
	
	; Outside letterbox lines, screen on
	;move.w #0x8074, vdp_control
	
	@ScreenOff:
	
	; Inside letterbox lines, screen off
	;move.w #0x8034, vdp_control
	
	@EndLetterbox:
	
	;movem.l (sp)+, d0-d2
	
   addi.l #0x1, hblank_counter    ; Increment hinterrupt counter
   addi.w #0x1, hline_counter     ; Increment h-line counter
   rte

NullInterrupt:
   rte

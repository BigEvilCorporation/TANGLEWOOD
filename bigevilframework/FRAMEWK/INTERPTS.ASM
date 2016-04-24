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
	movem.l d0-d2, -(sp)

	; If letterbox top or bottom, turn off display
	;move.w (hline_counter), d0
	;move.w (letterbox_top), d1
	;move.w (letterbox_bottom), d2
	;cmp.w  d0, d1
	;;cmp.w  #0x10, (hline_counter) ;, letterbox_top
	;bge    @ScreenOff
	;cmp.w  d0, d2
	;;cmp.w  #(screen_height-0x10), (hline_counter)
	;ble    @ScreenOff
	
	move.w (hline_counter), d0
	andi.w #0x1, d0
	cmp.w  #0x1, d0
	beq    @ScreenOff
	
	; Outside letterbox lines, screen on
	;move.w #0x8174, vdp_control
	;move.w #0x8014, vdp_control
	
	bra     @EndLetterbox
	
	@ScreenOff:
	
	; Inside letterbox lines, screen off
	;move.w #0x8134, vdp_control
	;move.w #0x8015, vdp_control
	
	@EndLetterbox:
	
	movem.l (sp)+, d0-d2
	
   addi.l #0x1, hblank_counter    ; Increment hinterrupt counter
   addi.w #0x1, hline_counter     ; Increment h-line counter
   rte

NullInterrupt:
   rte

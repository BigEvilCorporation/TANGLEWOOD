;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   interpts.asm - Interrupts and exceptions
;==============================================================

INT_LoadHBlank:
	; a0 --- Interrupt address
	
	jsr VDP_DisableVINT
	
	lea HBlankInterrupt, a1
	move.l #(hint_max_size/size_long), d0
	MEMCPYL a1,a0,d0
	
	jsr VDP_EnableVINT
	
	rts

INT_VBlank:
   addi.l #0x1, vblank_counter    ; Increment vinterrupt counter
   move.w #0x0, hline_counter	  ; Clear h-line counter

   IFD DEBUG
   TRAP #0 ; Sync with debugger - NOT FOR RELEASE
   ENDIF

   cmp.b #0x0, vint_enabled
   beq   @VINTDisabled
   
   ; Jump to game rendering subroutine
   PUSHALL
   jsr __vinterrupt
   POPALL
   
   @VINTDisabled:

   rte

INT_HBlank:
   addi.l #0x1, hblank_counter    ; Increment hinterrupt counter
   addi.w #0x1, hline_counter     ; Increment h-line counter
   rte

INT_Null:
   rte

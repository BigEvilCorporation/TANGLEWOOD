;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   interpts.asm - Interrupts and exceptions
;==============================================================

INT_LoadHBlank:
	; a0 --- Interrupt address
	
	DISABLE_INTERRUPTS
	
	lea HBlankInterrupt, a1
	move.l #(hint_max_size/size_long), d0
	MEMCPYL a1,a0,d0
	
	RESTORE_INTERRUPTS
	
	rts

INT_VBlank:
   addq.l #0x1, vblank_counter    ; Increment vinterrupt counter
   move.w #0x0, hline_counter	  ; Clear h-line counter

   IFD DEBUG
   TRAP #0 ; Sync with debugger - NOT FOR RELEASE
   ENDIF

   rte

INT_HBlank:
   addq.l #0x1, hblank_counter    ; Increment hinterrupt counter
   addq.w #0x1, hline_counter     ; Increment h-line counter
   rte

INT_Null:
   rte

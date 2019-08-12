HBlankInterrupt_Letterbox:
	;movem.l d0-d2, -(sp)

	;; If letterbox top or bottom, turn off display
	;move.w (hline_counter), d0
	;move.w (letterbox_top), d1
	;move.w (letterbox_bottom), d2
	;cmp.w  d0, d1
	;;cmp.w  #0x10, (hline_counter) ;, letterbox_top
	;bge    @ScreenOff
	;cmp.w  d0, d2
	;;cmp.w  #(screen_height-0x10), (hline_counter)
	;ble    @ScreenOff
	;
	;move.w (hline_counter), d0
	;andi.w #0x1, d0
	;cmp.w  #0x1, d0
	;beq    @ScreenOff
	;
	;; Outside letterbox lines, screen on
	;move.w #0x8174, vdp_control
	;move.w #0x8014, vdp_control
	;
	;bra     @EndLetterbox
	;
	;@ScreenOff:
	
	; Inside letterbox lines, screen off
	;move.w #0x8134, vdp_control
	;move.w #0x8015, vdp_control
	
	;@EndLetterbox:
	
	;movem.l (sp)+, d0-d2
	
	btst.b #0x0, hblank_counter
	beq    @On
	move.w #0x8134, vdp_control
	bra    @Off
	@On:
	move.w #0x8174, vdp_control
	@Off:
	
	addq.l #0x1, hblank_counter    ; Increment hinterrupt counter
	addq.w #0x1, hline_counter     ; Increment h-line counter
	rte
	
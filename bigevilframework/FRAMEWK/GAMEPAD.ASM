;==============================================================
;   http://www.bigevilcorporation.co.uk
;==============================================================
;   SEGA Genesis Framework (c) Matt Phillips 2014
;==============================================================
;   gamepad.asm - Gamepad reading
;==============================================================

InitGamepads:
	move.b #pad_byte_latch, pad_ctrl_a  ; Controller port 1 CTRL
	move.b #pad_byte_latch, pad_ctrl_b  ; Controller port 2 CTRL
	rts
	
InitEXTPort:
	move.b #pad_byte_latch, pad_ctrl_c  ; EXP port CTRL
	rts
	
ReadPadA:
	; d0 (w) - Pad A return result (00SA0000 00CBRLDU)
	
	move.b  #0x0, pad_data_a   ; Set port to read byte 0
	nop						   ; 2-NOP delay to respond to change
	nop
	move.b  pad_data_a, d0     ; Read byte
	rol.w   #0x8, d0           ; Move to upper byte of d0
	move.b  #pad_byte_latch, pad_data_a  ; Set port to read byte 1
	nop						   ; 2-NOP delay to respond to change
	nop
	move.b  pad_data_a, d0     ; Read byte
	
	; Invert and mask
	neg.w   d0
	sub.w   #0x1, d0
	andi.w  #pad_button_all, d0

	rts
	
ReadPadB:
	; d0 (w) - Pad B return result (00SA0000 00CBRLDU)
	
	move.b  #0x0, pad_data_b   ; Set port to read byte 0
	nop						   ; 2-NOP delay to respond to change
	nop
	move.b  pad_data_b, d0     ; Read byte
	rol.w   #0x8, d0           ; Move to upper byte of d0
	move.b  #pad_byte_latch, pad_data_b  ; Set port to read byte 1
	nop						   ; 2-NOP delay to respond to change
	nop
	move.b  pad_data_b, d0     ; Read byte
	
	; Invert and mask
	neg.w   d0
	sub.w   #0x1, d0
	andi.w  #pad_button_all, d0

	rts

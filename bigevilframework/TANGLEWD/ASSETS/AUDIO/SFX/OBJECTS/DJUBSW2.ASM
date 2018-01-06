	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $7f	; Set instrument for channel FM 6
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $0b	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $05	; Delay
	dc.b $ff	; The End

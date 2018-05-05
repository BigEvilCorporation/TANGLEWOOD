	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $99	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $c7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $6d	; Note F#3 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $45	; Note D-2 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $6f	; Note G-3 on channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $05	; Delay
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $ff	; The End

	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
; Pattern $00, Row 0; 
	dc.b $45, $85	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $07	; Note D#0 on channel FM 5
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $09	; Delay
	dc.b $ff	; The End

	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $45, $39	; Set instrument for channel FM 5
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $05, $03	; Note C#0 on channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $46, $39	; Set instrument for channel FM 6
	dc.b $26, $0a	; Set volume for channel FM 6
	dc.b $06, $03	; Note C#0 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

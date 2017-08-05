	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $49	; Set instrument for channel FM 6
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
	dc.b $fe, $09	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
	dc.b $fe, $06	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

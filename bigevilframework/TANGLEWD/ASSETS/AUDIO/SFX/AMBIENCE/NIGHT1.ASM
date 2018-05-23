	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $9b	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $f0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $69	; Note E-3 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $16	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $0b	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $69	; Note E-3 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $16	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $05	; Delay
	dc.b $ff	; The End

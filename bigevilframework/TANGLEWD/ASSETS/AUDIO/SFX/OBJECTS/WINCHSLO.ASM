	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $5b	; Set instrument for channel FM 6
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $77	; Note B-3 on channel FM 6
	dc.b $f6, $c0	; Set params for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $06, $77	; Note B-3 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $77	; Note B-3 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $05	; Delay
	dc.b $ff	; The End

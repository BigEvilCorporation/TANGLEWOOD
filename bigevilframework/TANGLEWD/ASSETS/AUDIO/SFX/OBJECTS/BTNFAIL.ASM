	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $58	; Set instrument for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $f6, $c0	; Set params for channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $06, $6d	; Note F#3 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $08	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

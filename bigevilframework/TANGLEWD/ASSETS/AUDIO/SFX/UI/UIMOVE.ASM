	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $48	; Set instrument for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $f6, $40	; Set params for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $06, $6f	; Note G-3 on channel FM 6
	dc.b $f6, $80	; Set params for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $f6, $c0	; Set params for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

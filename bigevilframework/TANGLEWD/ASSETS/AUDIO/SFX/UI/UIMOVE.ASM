	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $b3	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $50	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $f6, $90	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $6f	; Note G-3 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $f6, $d0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

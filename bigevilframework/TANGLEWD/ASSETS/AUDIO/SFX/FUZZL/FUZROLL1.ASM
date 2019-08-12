	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $46, $a3	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $f6, $c7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $65	; Note D-3 on channel FM 6
	dc.b $fe, $02	; Delay
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $05	; Delay
	dc.b $ff	; The End

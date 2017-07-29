	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e0		; Lock channel FM 1
; Pattern $00, Row 0; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $63	; Note C#3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ad	; Set frequency '6829' (octave 3 semitone 685) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $b1	; Set frequency '6833' (octave 3 semitone 689) for channel FM 1
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $b5	; Set frequency '6837' (octave 3 semitone 693) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $b9	; Set frequency '6841' (octave 3 semitone 697) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $bd	; Set frequency '6845' (octave 3 semitone 701) for channel FM 1
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
; Pattern $00, Row 3; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 1
	dc.b $ff	; The End

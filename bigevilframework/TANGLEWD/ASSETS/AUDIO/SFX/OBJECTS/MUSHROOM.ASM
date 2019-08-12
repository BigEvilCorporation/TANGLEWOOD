	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $a2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $71	; Set frequency '9073' (octave 4 semitone 881) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $6f	; Set frequency '9327' (octave 4 semitone 1135) for channel FM 6
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $ff	; The End

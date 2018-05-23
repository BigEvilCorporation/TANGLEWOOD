	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $a5	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c2	; Set frequency '10946' (octave 5 semitone 706) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b2	; Set frequency '10930' (octave 5 semitone 690) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $1a	; Set frequency '11034' (octave 5 semitone 794) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $0a	; Set frequency '11018' (octave 5 semitone 778) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $4a	; Set frequency '11082' (octave 5 semitone 842) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $3a	; Set frequency '11066' (octave 5 semitone 826) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $06, $af	; Note G-5 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $26, $09	; Set volume for channel FM 6
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $07	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

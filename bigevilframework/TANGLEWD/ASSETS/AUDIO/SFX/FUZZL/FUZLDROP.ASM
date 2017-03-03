	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $2c	; Set instrument for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $19	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $ff	; The End

	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $a1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $03	; Set frequency '8963' (octave 4 semitone 771) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $01	; Set frequency '9217' (octave 4 semitone 1025) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 6
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

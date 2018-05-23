	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $a4	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $f0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $19	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

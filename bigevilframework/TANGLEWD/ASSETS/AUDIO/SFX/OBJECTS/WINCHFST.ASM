	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $49	; Set instrument for channel FM 6
	dc.b $06, $67	; Note D#3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0d	; Set frequency '6925' (octave 3 semitone 781) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1d	; Set frequency '6941' (octave 3 semitone 797) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $25	; Set frequency '6949' (octave 3 semitone 805) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $2d	; Set frequency '6957' (octave 3 semitone 813) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $35	; Set frequency '6965' (octave 3 semitone 821) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3d	; Set frequency '6973' (octave 3 semitone 829) for channel FM 6
	dc.b $ff	; The End

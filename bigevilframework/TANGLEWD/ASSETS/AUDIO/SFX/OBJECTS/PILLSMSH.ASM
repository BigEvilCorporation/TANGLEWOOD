	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $45, $c6	; Set instrument for channel FM 5
	dc.b $f5, $e0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $09	; Note E-0 on channel FM 5
	dc.b $46, $c6	; Set instrument for channel FM 6
	dc.b $f6, $e0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $4b, $c7	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $04, $0d	; Set frequency '212' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $ff	; The End

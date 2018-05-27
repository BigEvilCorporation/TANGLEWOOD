	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $45, $d8	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $e0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $09	; Note E-0 on channel FM 5
	dc.b $46, $d8	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $e0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $4b, $d9	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $04, $0d	; Set frequency '212' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $31	; Set frequency '3121' (octave 1 semitone 1073) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b2	; Set frequency '2994' (octave 1 semitone 946) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $33	; Set frequency '2867' (octave 1 semitone 819) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $31	; Set frequency '3121' (octave 1 semitone 1073) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b2	; Set frequency '2994' (octave 1 semitone 946) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $31	; Set frequency '3121' (octave 1 semitone 1073) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $b2	; Set frequency '2994' (octave 1 semitone 946) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $33	; Set frequency '2867' (octave 1 semitone 819) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

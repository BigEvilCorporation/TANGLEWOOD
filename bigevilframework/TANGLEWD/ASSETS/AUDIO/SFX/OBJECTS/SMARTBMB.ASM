	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $d4	; Set instrument for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $45, $d3	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $21	; Note C-1 on channel FM 5
	dc.b $46, $d2	; Set instrument for channel FM 6
	dc.b $f6, $f4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $4b, $39	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1b	; Set frequency '6939' (octave 3 semitone 795) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $24, $06	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $0c	; Set volume for channel FM 4
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $26, $06	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $0c	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $2a, $06	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $0c	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $1e	; Set volume for channel FM 4
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $24, $24	; Set volume for channel FM 4
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $24, $2a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9e	; Set frequency '2974' (octave 1 semitone 926) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

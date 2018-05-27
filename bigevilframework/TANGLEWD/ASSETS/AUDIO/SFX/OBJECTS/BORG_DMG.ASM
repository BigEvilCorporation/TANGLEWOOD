	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $c7	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $4b, $c7	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
	dc.b $3a, $03, $00	; Set frequency '3' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $3a, $04, $00	; Set frequency '4' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $3a, $05, $00	; Set frequency '5' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $3a, $06, $00	; Set frequency '6' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
	dc.b $3a, $07, $00	; Set frequency '7' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $3a, $08, $00	; Set frequency '8' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $3a, $09, $00	; Set frequency '9' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
	dc.b $3a, $0a, $00	; Set frequency '10' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
	dc.b $3a, $0b, $00	; Set frequency '11' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $3a, $0c, $00	; Set frequency '12' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $3a, $0e, $00	; Set frequency '14' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $3a, $0f, $00	; Set frequency '15' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
	dc.b $3a, $00, $01	; Set frequency '16' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $27	; Set frequency '2855' (octave 1 semitone 807) for channel FM 6
	dc.b $3a, $01, $01	; Set frequency '17' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a8	; Set frequency '2728' (octave 1 semitone 680) for channel FM 6
	dc.b $3a, $02, $01	; Set frequency '18' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ad	; Set frequency '1197' (octave 0 semitone 1197) for channel FM 6
	dc.b $3a, $03, $01	; Set frequency '19' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $2e	; Set frequency '1070' (octave 0 semitone 1070) for channel FM 6
	dc.b $3a, $04, $01	; Set frequency '20' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $af	; Set frequency '943' (octave 0 semitone 943) for channel FM 6
	dc.b $3a, $05, $01	; Set frequency '21' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $30	; Set frequency '816' (octave 0 semitone 816) for channel FM 6
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $16		; Note off channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $01	; Set frequency '24' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $01	; Set frequency '25' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $01	; Set frequency '28' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $01	; Set frequency '29' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $01	; Set frequency '30' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $01	; Set frequency '31' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $02	; Set frequency '33' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $02	; Set frequency '34' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $02	; Set frequency '35' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $02	; Set frequency '36' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $02	; Set frequency '38' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $02	; Set frequency '39' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $02	; Set frequency '40' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $02	; Set frequency '41' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $02	; Set frequency '43' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $02	; Set frequency '44' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $02	; Set frequency '45' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $02	; Set frequency '46' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $03	; Set frequency '49' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $03	; Set frequency '50' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $03	; Set frequency '51' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $03	; Set frequency '61' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
	dc.b $ff	; The End

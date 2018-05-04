	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $a4	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $4b, $a4	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 6
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 6
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 6
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 6
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 6
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
	dc.b $3a, $0d, $03	; Set frequency '61' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $0f, $03	; Set frequency '63' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 6
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $05, $04	; Set frequency '69' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $04	; Set frequency '71' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $04	; Set frequency '73' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $16		; Note off channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $04	; Set frequency '79' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $05	; Set frequency '81' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $05	; Set frequency '89' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $05	; Set frequency '91' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $05	; Set frequency '93' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $06	; Set frequency '97' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $06	; Set frequency '99' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $06	; Set frequency '103' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $06	; Set frequency '105' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $ff	; The End

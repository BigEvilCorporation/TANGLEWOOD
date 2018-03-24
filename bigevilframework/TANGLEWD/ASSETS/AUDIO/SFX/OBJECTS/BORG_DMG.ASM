	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $ae	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $4b, $ae	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $07, $00	; Set frequency '23' (octave 0 semitone 23) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $00, Row 1; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $1a		; Note off channel PSG 3
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $3a, $07, $00	; Set frequency '23' (octave 0 semitone 23) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $1a		; Note off channel PSG 3
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $07, $00	; Set frequency '23' (octave 0 semitone 23) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $2b, $0c	; Set volume for channel PSG 4
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $2b, $0d	; Set volume for channel PSG 4
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $2b, $0e	; Set volume for channel PSG 4
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $2b, $0f	; Set volume for channel PSG 4
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
	dc.b $fe, $24	; Delay
	dc.b $ff	; The End

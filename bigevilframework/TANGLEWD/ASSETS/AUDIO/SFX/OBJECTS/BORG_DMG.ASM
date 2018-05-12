	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $c6	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $4b, $c6	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $3f	; Set frequency '9279' (octave 4 semitone 1087) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $41	; Set frequency '9025' (octave 4 semitone 833) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3f	; Set frequency '7231' (octave 3 semitone 1087) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3f	; Set frequency '5183' (octave 2 semitone 1087) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3f	; Set frequency '3135' (octave 1 semitone 1087) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $c0	; Set frequency '3008' (octave 1 semitone 960) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $41	; Set frequency '2881' (octave 1 semitone 833) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c2	; Set frequency '2754' (octave 1 semitone 706) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $3f	; Set frequency '1087' (octave 0 semitone 1087) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $c0	; Set frequency '960' (octave 0 semitone 960) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $41	; Set frequency '833' (octave 0 semitone 833) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $16		; Note off channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 25; 
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 26; 
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 27; 
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 28; 
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

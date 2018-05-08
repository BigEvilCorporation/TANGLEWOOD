	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $c9	; Set instrument for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $45, $c8	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $21	; Note C-1 on channel FM 5
	dc.b $46, $c7	; Set instrument for channel FM 6
	dc.b $f6, $f4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $4b, $38	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $00, Row 4; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 20; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 24; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 28; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 32; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 36; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 40; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 44; 
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 48; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 51; 
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 52; 
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 54; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 56; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 57; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 60; 
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 61; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 63; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 1; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $01, Row 2; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 3; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 4; 
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $26, $06	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 5; 
	dc.b $26, $08	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 6; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 7; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $01, Row 8; 
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $26, $0c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 9; 
	dc.b $26, $0e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 10; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 11; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 12; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 13; 
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 15; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 16; 
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 17; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 18; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 19; 
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
; Pattern $01, Row 20; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 21; 
	dc.b $26, $20	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 22; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 23; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 24; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 25; 
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 26; 
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 27; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 28; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 29; 
	dc.b $26, $2c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 30; 
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $26, $2d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 31; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 32; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 33; 
	dc.b $25, $31	; Set volume for channel FM 5
	dc.b $26, $32	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 34; 
	dc.b $26, $33	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 35; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 36; 
	dc.b $26, $36	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 37; 
	dc.b $25, $33	; Set volume for channel FM 5
	dc.b $26, $38	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 38; 
	dc.b $26, $39	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 39; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $26, $3b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 40; 
	dc.b $26, $3c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 41; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $01, Row 42; 
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 43; 
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 45; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 47; 
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 49; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 51; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 53; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 55; 
	dc.b $25, $3c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 57; 
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 59; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 61; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 63; 
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

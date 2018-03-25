	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $40, $04	; Set instrument for channel FM 1
	dc.b $20, $5f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $46, $00	; Set instrument for channel FM 6
	dc.b $f6, $d2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $c1	; Note C-6 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $09	; Delay
	dc.b $20, $5e	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 3; 
	dc.b $fe, $05	; Delay
	dc.b $20, $5d	; Set volume for channel FM 1
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $5c	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $41, $00	; Set instrument for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $5b	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $42, $00	; Set instrument for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $00, Row 7; 
	dc.b $fe, $05	; Delay
	dc.b $20, $5a	; Set volume for channel FM 1
; Pattern $00, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $59	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $09	; Delay
	dc.b $20, $58	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 11; 
	dc.b $fe, $05	; Delay
	dc.b $20, $57	; Set volume for channel FM 1
; Pattern $00, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $56	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $05	; Delay
	dc.b $20, $55	; Set volume for channel FM 1
; Pattern $00, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 15; 
	dc.b $fe, $05	; Delay
	dc.b $20, $54	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $53	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $00, Row 17; 
	dc.b $fe, $05	; Delay
	dc.b $20, $52	; Set volume for channel FM 1
; Pattern $00, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $00, Row 19; 
	dc.b $fe, $05	; Delay
	dc.b $20, $51	; Set volume for channel FM 1
; Pattern $00, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $50	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $00, Row 21; 
	dc.b $fe, $05	; Delay
	dc.b $20, $4f	; Set volume for channel FM 1
; Pattern $00, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $4e	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $3d	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $af	; Note G-5 on channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $05	; Delay
	dc.b $20, $4c	; Set volume for channel FM 1
; Pattern $00, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $4b	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $4a	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $00, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $49	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $48	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $47	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 33; 
	dc.b $fe, $05	; Delay
	dc.b $20, $46	; Set volume for channel FM 1
; Pattern $00, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $20, $45	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 35; 
	dc.b $fe, $05	; Delay
	dc.b $20, $44	; Set volume for channel FM 1
; Pattern $00, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $00, Row 37; 
	dc.b $fe, $05	; Delay
	dc.b $20, $43	; Set volume for channel FM 1
; Pattern $00, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $20, $42	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $00, Row 39; 
	dc.b $fe, $05	; Delay
	dc.b $20, $41	; Set volume for channel FM 1
; Pattern $00, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $00	; Set instrument for channel FM 5
	dc.b $f5, $d2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
; Pattern $00, Row 41; 
	dc.b $fe, $05	; Delay
	dc.b $20, $40	; Set volume for channel FM 1
; Pattern $00, Row 42; 
	dc.b $fe, $04	; Delay
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 43; 
	dc.b $fe, $05	; Delay
	dc.b $20, $3e	; Set volume for channel FM 1
; Pattern $00, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $20, $3d	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $3c	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 47; 
	dc.b $fe, $05	; Delay
	dc.b $20, $3b	; Set volume for channel FM 1
; Pattern $00, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $3a	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $39	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $00, Row 51; 
	dc.b $fe, $05	; Delay
	dc.b $20, $38	; Set volume for channel FM 1
; Pattern $00, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $20, $37	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $05	; Delay
	dc.b $20, $36	; Set volume for channel FM 1
; Pattern $00, Row 54; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 55; 
	dc.b $fe, $05	; Delay
	dc.b $20, $35	; Set volume for channel FM 1
; Pattern $00, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 57; 
	dc.b $fe, $05	; Delay
	dc.b $20, $33	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $00, Row 59; 
	dc.b $fe, $05	; Delay
	dc.b $20, $32	; Set volume for channel FM 1
; Pattern $00, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $31	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $00, Row 61; 
	dc.b $fe, $05	; Delay
	dc.b $20, $30	; Set volume for channel FM 1
; Pattern $00, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $05, $ab	; Note F-5 on channel FM 5
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $c1	; Note C-6 on channel FM 6
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
	dc.b $fe, $09	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
	dc.b $fe, $09	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $29	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 15; 
	dc.b $fe, $05	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $af	; Note G-5 on channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $05	; Delay
	dc.b $20, $23	; Set volume for channel FM 1
; Pattern $01, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $01, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 33; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
; Pattern $01, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 35; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
; Pattern $01, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $01, Row 37; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
; Pattern $01, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $01, Row 39; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
; Pattern $01, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $05, $a1	; Note C-5 on channel FM 5
; Pattern $01, Row 41; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
; Pattern $01, Row 42; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 43; 
	dc.b $fe, $05	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $01, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $05	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
; Pattern $01, Row 46; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 47; 
	dc.b $fe, $05	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
; Pattern $01, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $04, $b3	; Note A-5 on channel FM 4
; Pattern $01, Row 49; 
	dc.b $fe, $05	; Delay
	dc.b $20, $16	; Set volume for channel FM 1
; Pattern $01, Row 50; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $01, Row 51; 
	dc.b $fe, $05	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $01, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $05	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
; Pattern $01, Row 54; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 55; 
	dc.b $fe, $05	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
; Pattern $01, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $20, $03	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
; Pattern $01, Row 57; 
	dc.b $fe, $05	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $01, Row 59; 
	dc.b $fe, $05	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $01, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $01, Row 61; 
	dc.b $fe, $05	; Delay
	dc.b $20, $10	; Set volume for channel FM 1
; Pattern $01, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $02, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $02, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $02, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $02, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $02, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $02, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $02, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $02, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $02, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $02, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $02, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $02, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $02, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $02, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $02, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $03, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $03, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $03, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $03, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $03, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $03, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $03, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $03, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $03, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $03, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $03, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $03, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $03, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $47	; Note D#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $03, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b3	; Note A-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $00	; Set instrument for channel FM 5
	dc.b $f5, $d2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b5	; Note A#5 on channel FM 5
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $a7	; Note D#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $48, $03	; Set instrument for channel PSG 1
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $48	; Note C-3 on channel PSG 1
	dc.b $49, $07	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $4a, $07	; Set instrument for channel PSG 3
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $05	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $18	; Note C-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $07, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $08, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $08, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $08, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $08, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $08, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $08, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $08, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $08, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $08, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $08, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $08, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $08, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $08, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $08, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $38, $00, $0a	; Set frequency '160' for channel PSG 1
; Pattern $08, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $38, $01, $0a	; Set frequency '161' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $38, $02, $0a	; Set frequency '162' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $38, $03, $0a	; Set frequency '163' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $38, $04, $0a	; Set frequency '164' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $38, $05, $0a	; Set frequency '165' for channel PSG 1
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0a	; Set frequency '166' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $0a	; Set frequency '167' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $0a	; Set frequency '168' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $0a	; Set frequency '169' for channel PSG 1
; Pattern $08, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $0a	; Set frequency '170' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $0a	; Set frequency '171' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $0a	; Set frequency '172' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $0a	; Set frequency '173' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $0a	; Set frequency '174' for channel PSG 1
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $0a	; Set frequency '175' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $0b	; Set frequency '176' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $0b	; Set frequency '177' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0b	; Set frequency '178' for channel PSG 1
; Pattern $09, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $09, $12	; Note A-0 on channel PSG 2
	dc.b $0a, $18	; Note C-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $04	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $09, Row 3; 
; Pattern $09, Row 4; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $09, Row 5; 
; Pattern $09, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $09, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $09, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $09, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $09, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $09, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $09, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $09, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $09, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $09, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
; Pattern $09, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
; Pattern $09, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $38, $07, $0d	; Set frequency '215' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $38, $08, $0d	; Set frequency '216' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $38, $09, $0d	; Set frequency '217' for channel PSG 1
; Pattern $09, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $38, $0a, $0d	; Set frequency '218' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $38, $0b, $0d	; Set frequency '219' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $38, $0c, $0d	; Set frequency '220' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $0d, $0d	; Set frequency '221' for channel PSG 1
; Pattern $09, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $47	; Note D#2 on channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $38, $0e, $0d	; Set frequency '222' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $be	; Set frequency '11454' (octave 5 semitone 1214) for channel FM 5
	dc.b $38, $0f, $0d	; Set frequency '223' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
	dc.b $38, $00, $0e	; Set frequency '224' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
	dc.b $38, $01, $0e	; Set frequency '225' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $38, $02, $0e	; Set frequency '226' for channel PSG 1
; Pattern $09, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $38, $03, $0e	; Set frequency '227' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $38, $04, $0e	; Set frequency '228' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $38, $05, $0e	; Set frequency '229' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $06, $0e	; Set frequency '230' for channel PSG 1
; Pattern $09, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $38, $07, $0e	; Set frequency '231' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $38, $08, $0e	; Set frequency '232' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $38, $09, $0e	; Set frequency '233' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $38, $0a, $0e	; Set frequency '234' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $38, $0b, $0e	; Set frequency '235' for channel PSG 1
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $38, $0c, $0e	; Set frequency '236' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $38, $0d, $0e	; Set frequency '237' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $38, $0e, $0e	; Set frequency '238' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $38, $0f, $0e	; Set frequency '239' for channel PSG 1
; Pattern $09, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $38, $00, $0f	; Set frequency '240' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $38, $01, $0f	; Set frequency '241' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0f	; Set frequency '242' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0f	; Set frequency '243' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $0f	; Set frequency '244' for channel PSG 1
; Pattern $09, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0f	; Set frequency '245' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0f	; Set frequency '246' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $0f	; Set frequency '247' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $0f	; Set frequency '248' for channel PSG 1
; Pattern $0a, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $38, $09, $0f	; Set frequency '249' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $38, $0a, $0f	; Set frequency '250' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $0b, $0f	; Set frequency '251' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $38, $0c, $0f	; Set frequency '252' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $38, $0d, $0f	; Set frequency '253' for channel PSG 1
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $38, $0e, $0f	; Set frequency '254' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $38, $0f, $0f	; Set frequency '255' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $38, $00, $10	; Set frequency '256' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $38, $01, $10	; Set frequency '257' for channel PSG 1
; Pattern $0a, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $38, $02, $10	; Set frequency '258' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $38, $03, $10	; Set frequency '259' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $38, $04, $10	; Set frequency '260' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $38, $05, $10	; Set frequency '261' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $38, $06, $10	; Set frequency '262' for channel PSG 1
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $10	; Set frequency '263' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $10	; Set frequency '264' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $10	; Set frequency '265' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $10	; Set frequency '266' for channel PSG 1
; Pattern $0a, Row 4; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $10	; Set frequency '267' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $10	; Set frequency '268' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $10	; Set frequency '269' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $10	; Set frequency '270' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $10	; Set frequency '271' for channel PSG 1
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $11	; Set frequency '272' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $11	; Set frequency '273' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $11	; Set frequency '274' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $11	; Set frequency '275' for channel PSG 1
; Pattern $0a, Row 6; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $11	; Set frequency '276' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $11	; Set frequency '277' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $11	; Set frequency '278' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $11	; Set frequency '279' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $11	; Set frequency '280' for channel PSG 1
; Pattern $0a, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $11	; Set frequency '281' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $11	; Set frequency '282' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $11	; Set frequency '283' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $11	; Set frequency '284' for channel PSG 1
; Pattern $0a, Row 8; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $11	; Set frequency '285' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $11	; Set frequency '286' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $11	; Set frequency '287' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $12	; Set frequency '288' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $12	; Set frequency '289' for channel PSG 1
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $12	; Set frequency '290' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $12	; Set frequency '291' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $12	; Set frequency '292' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $12	; Set frequency '293' for channel PSG 1
; Pattern $0a, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $12	; Set frequency '294' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $12	; Set frequency '295' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $12	; Set frequency '296' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $12	; Set frequency '297' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $12	; Set frequency '298' for channel PSG 1
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $12	; Set frequency '299' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $12	; Set frequency '300' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $12	; Set frequency '301' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $12	; Set frequency '302' for channel PSG 1
; Pattern $0a, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $12	; Set frequency '303' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $13	; Set frequency '304' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $13	; Set frequency '305' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $13	; Set frequency '306' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $13	; Set frequency '307' for channel PSG 1
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $13	; Set frequency '308' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $13	; Set frequency '309' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $13	; Set frequency '310' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $13	; Set frequency '311' for channel PSG 1
; Pattern $0a, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $13	; Set frequency '312' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $13	; Set frequency '313' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $13	; Set frequency '314' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $13	; Set frequency '315' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $13	; Set frequency '316' for channel PSG 1
; Pattern $0a, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $13	; Set frequency '317' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $13	; Set frequency '318' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $13	; Set frequency '319' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $14	; Set frequency '320' for channel PSG 1
; Pattern $0a, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $14	; Set frequency '321' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $14	; Set frequency '322' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $14	; Set frequency '323' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $14	; Set frequency '324' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $14	; Set frequency '325' for channel PSG 1
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $14	; Set frequency '326' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $14	; Set frequency '327' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $14	; Set frequency '328' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $14	; Set frequency '329' for channel PSG 1
; Pattern $0a, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $14	; Set frequency '330' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $14	; Set frequency '331' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $14	; Set frequency '332' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $14	; Set frequency '333' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $14	; Set frequency '334' for channel PSG 1
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $14	; Set frequency '335' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $15	; Set frequency '336' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $15	; Set frequency '337' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $15	; Set frequency '338' for channel PSG 1
; Pattern $0a, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $15	; Set frequency '339' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $15	; Set frequency '340' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $15	; Set frequency '341' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $15	; Set frequency '342' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $15	; Set frequency '343' for channel PSG 1
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $15	; Set frequency '344' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $15	; Set frequency '345' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $15	; Set frequency '346' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $15	; Set frequency '347' for channel PSG 1
; Pattern $0a, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $15	; Set frequency '348' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $15	; Set frequency '349' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $15	; Set frequency '350' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $15	; Set frequency '351' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $16	; Set frequency '352' for channel PSG 1
; Pattern $0a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $16	; Set frequency '353' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $16	; Set frequency '354' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $16	; Set frequency '355' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $16	; Set frequency '356' for channel PSG 1
; Pattern $0a, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $16	; Set frequency '357' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $16	; Set frequency '358' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $16	; Set frequency '359' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $16	; Set frequency '360' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $16	; Set frequency '361' for channel PSG 1
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $16	; Set frequency '362' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $16	; Set frequency '363' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $16	; Set frequency '364' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $16	; Set frequency '365' for channel PSG 1
; Pattern $0a, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $16	; Set frequency '366' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $16	; Set frequency '367' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $17	; Set frequency '368' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $17	; Set frequency '369' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $17	; Set frequency '370' for channel PSG 1
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $17	; Set frequency '371' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $17	; Set frequency '372' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $17	; Set frequency '373' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $17	; Set frequency '374' for channel PSG 1
; Pattern $0a, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $17	; Set frequency '375' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $17	; Set frequency '376' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $17	; Set frequency '377' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $17	; Set frequency '378' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $17	; Set frequency '379' for channel PSG 1
; Pattern $0a, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $17	; Set frequency '380' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $17	; Set frequency '381' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $17	; Set frequency '382' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $17	; Set frequency '383' for channel PSG 1
; Pattern $0a, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $18	; Set frequency '384' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $18	; Set frequency '385' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $18	; Set frequency '386' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $18	; Set frequency '387' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $18	; Set frequency '388' for channel PSG 1
; Pattern $0a, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $18	; Set frequency '389' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $18	; Set frequency '390' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $18	; Set frequency '391' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $18	; Set frequency '392' for channel PSG 1
; Pattern $0a, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $38, $09, $18	; Set frequency '393' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $38, $0a, $18	; Set frequency '394' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $0b, $18	; Set frequency '395' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $38, $0c, $18	; Set frequency '396' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $38, $0d, $18	; Set frequency '397' for channel PSG 1
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $38, $0e, $18	; Set frequency '398' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $38, $0f, $18	; Set frequency '399' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $38, $00, $19	; Set frequency '400' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $38, $01, $19	; Set frequency '401' for channel PSG 1
; Pattern $0a, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $38, $02, $19	; Set frequency '402' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $38, $03, $19	; Set frequency '403' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $38, $04, $19	; Set frequency '404' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $38, $05, $19	; Set frequency '405' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $38, $06, $19	; Set frequency '406' for channel PSG 1
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $19	; Set frequency '407' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $19	; Set frequency '408' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $19	; Set frequency '409' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $19	; Set frequency '410' for channel PSG 1
; Pattern $0a, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $19	; Set frequency '411' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $19	; Set frequency '412' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $19	; Set frequency '413' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $19	; Set frequency '414' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $19	; Set frequency '415' for channel PSG 1
; Pattern $0a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1a	; Set frequency '416' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1a	; Set frequency '417' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1a	; Set frequency '418' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1a	; Set frequency '419' for channel PSG 1
; Pattern $0a, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1a	; Set frequency '420' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1a	; Set frequency '421' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1a	; Set frequency '422' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1a	; Set frequency '423' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1a	; Set frequency '424' for channel PSG 1
; Pattern $0a, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1a	; Set frequency '425' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1a	; Set frequency '426' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1a	; Set frequency '427' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1a	; Set frequency '428' for channel PSG 1
; Pattern $0a, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1a	; Set frequency '429' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1a	; Set frequency '430' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1a	; Set frequency '431' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1b	; Set frequency '432' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1b	; Set frequency '433' for channel PSG 1
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1b	; Set frequency '434' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1b	; Set frequency '435' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1b	; Set frequency '436' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1b	; Set frequency '437' for channel PSG 1
; Pattern $0a, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1b	; Set frequency '438' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1b	; Set frequency '439' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1b	; Set frequency '440' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1b	; Set frequency '441' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1b	; Set frequency '442' for channel PSG 1
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1b	; Set frequency '443' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1b	; Set frequency '444' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1b	; Set frequency '445' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1b	; Set frequency '446' for channel PSG 1
; Pattern $0a, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1b	; Set frequency '447' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1c	; Set frequency '448' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1c	; Set frequency '449' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1c	; Set frequency '450' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1c	; Set frequency '451' for channel PSG 1
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1c	; Set frequency '452' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1c	; Set frequency '453' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1c	; Set frequency '454' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1c	; Set frequency '455' for channel PSG 1
; Pattern $0a, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1c	; Set frequency '456' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1c	; Set frequency '457' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1c	; Set frequency '458' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1c	; Set frequency '459' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1c	; Set frequency '460' for channel PSG 1
; Pattern $0a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1c	; Set frequency '461' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1c	; Set frequency '462' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1c	; Set frequency '463' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1d	; Set frequency '464' for channel PSG 1
; Pattern $0a, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1d	; Set frequency '465' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1d	; Set frequency '466' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1d	; Set frequency '467' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1d	; Set frequency '468' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1d	; Set frequency '469' for channel PSG 1
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1d	; Set frequency '470' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1d	; Set frequency '471' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1d	; Set frequency '472' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1d	; Set frequency '473' for channel PSG 1
; Pattern $0a, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1d	; Set frequency '474' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1d	; Set frequency '475' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1d	; Set frequency '476' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1d	; Set frequency '477' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1d	; Set frequency '478' for channel PSG 1
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1d	; Set frequency '479' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1e	; Set frequency '480' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1e	; Set frequency '481' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1e	; Set frequency '482' for channel PSG 1
; Pattern $0a, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1e	; Set frequency '483' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1e	; Set frequency '484' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1e	; Set frequency '485' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1e	; Set frequency '486' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1e	; Set frequency '487' for channel PSG 1
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1e	; Set frequency '488' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1e	; Set frequency '489' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1e	; Set frequency '490' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1e	; Set frequency '491' for channel PSG 1
; Pattern $0a, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1e	; Set frequency '492' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1e	; Set frequency '493' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1e	; Set frequency '494' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1e	; Set frequency '495' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $1f	; Set frequency '496' for channel PSG 1
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $1f	; Set frequency '497' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $1f	; Set frequency '498' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $1f	; Set frequency '499' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $1f	; Set frequency '500' for channel PSG 1
; Pattern $0a, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $1f	; Set frequency '501' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $1f	; Set frequency '502' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $1f	; Set frequency '503' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $1f	; Set frequency '504' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $1f	; Set frequency '505' for channel PSG 1
; Pattern $0a, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $1f	; Set frequency '506' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $1f	; Set frequency '507' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $1f	; Set frequency '508' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $1f	; Set frequency '509' for channel PSG 1
; Pattern $0a, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $1f	; Set frequency '510' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $1f	; Set frequency '511' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $20	; Set frequency '512' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $20	; Set frequency '513' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $20	; Set frequency '514' for channel PSG 1
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $20	; Set frequency '515' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $20	; Set frequency '516' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $20	; Set frequency '517' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $20	; Set frequency '518' for channel PSG 1
; Pattern $0a, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $20	; Set frequency '519' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $20	; Set frequency '520' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $20	; Set frequency '521' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $20	; Set frequency '522' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $20	; Set frequency '523' for channel PSG 1
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $20	; Set frequency '524' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $20	; Set frequency '525' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $20	; Set frequency '526' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $20	; Set frequency '527' for channel PSG 1
; Pattern $0a, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $21	; Set frequency '528' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $21	; Set frequency '529' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $21	; Set frequency '530' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $21	; Set frequency '531' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $21	; Set frequency '532' for channel PSG 1
; Pattern $0a, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $21	; Set frequency '533' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $21	; Set frequency '534' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $21	; Set frequency '535' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $21	; Set frequency '536' for channel PSG 1
; Pattern $0b, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $38, $09, $21	; Set frequency '537' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $38, $0a, $21	; Set frequency '538' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $0b, $21	; Set frequency '539' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $38, $0c, $21	; Set frequency '540' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $38, $0d, $21	; Set frequency '541' for channel PSG 1
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 5
	dc.b $38, $0e, $21	; Set frequency '542' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $38, $0f, $21	; Set frequency '543' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $38, $00, $22	; Set frequency '544' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 5
	dc.b $38, $01, $22	; Set frequency '545' for channel PSG 1
; Pattern $0b, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $38, $02, $22	; Set frequency '546' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $38, $03, $22	; Set frequency '547' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 5
	dc.b $38, $04, $22	; Set frequency '548' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 5
	dc.b $38, $05, $22	; Set frequency '549' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $38, $06, $22	; Set frequency '550' for channel PSG 1
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $22	; Set frequency '551' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $22	; Set frequency '552' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $22	; Set frequency '553' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $22	; Set frequency '554' for channel PSG 1
; Pattern $0b, Row 4; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $22	; Set frequency '555' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $22	; Set frequency '556' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $22	; Set frequency '557' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $22	; Set frequency '558' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $22	; Set frequency '559' for channel PSG 1
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $23	; Set frequency '560' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $23	; Set frequency '561' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $23	; Set frequency '562' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $23	; Set frequency '563' for channel PSG 1
; Pattern $0b, Row 6; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $23	; Set frequency '564' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $23	; Set frequency '565' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $23	; Set frequency '566' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $23	; Set frequency '567' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $23	; Set frequency '568' for channel PSG 1
; Pattern $0b, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $23	; Set frequency '569' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $23	; Set frequency '570' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $23	; Set frequency '571' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $23	; Set frequency '572' for channel PSG 1
; Pattern $0b, Row 8; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $23	; Set frequency '573' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $23	; Set frequency '574' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $23	; Set frequency '575' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $24	; Set frequency '576' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $24	; Set frequency '577' for channel PSG 1
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $24	; Set frequency '578' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $24	; Set frequency '579' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $24	; Set frequency '580' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $24	; Set frequency '581' for channel PSG 1
; Pattern $0b, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $24	; Set frequency '582' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $24	; Set frequency '583' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $24	; Set frequency '584' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $24	; Set frequency '585' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $24	; Set frequency '586' for channel PSG 1
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $24	; Set frequency '587' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $24	; Set frequency '588' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $24	; Set frequency '589' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $24	; Set frequency '590' for channel PSG 1
; Pattern $0b, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b3	; Note A-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $24	; Set frequency '591' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $25	; Set frequency '592' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $25	; Set frequency '593' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $25	; Set frequency '594' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $25	; Set frequency '595' for channel PSG 1
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $25	; Set frequency '596' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $25	; Set frequency '597' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $25	; Set frequency '598' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $25	; Set frequency '599' for channel PSG 1
; Pattern $0b, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $25	; Set frequency '600' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $25	; Set frequency '601' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $25	; Set frequency '602' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $25	; Set frequency '603' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $25	; Set frequency '604' for channel PSG 1
; Pattern $0b, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $25	; Set frequency '605' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $25	; Set frequency '606' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $25	; Set frequency '607' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $26	; Set frequency '608' for channel PSG 1
; Pattern $0b, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $26	; Set frequency '609' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $26	; Set frequency '610' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $26	; Set frequency '611' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $26	; Set frequency '612' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $26	; Set frequency '613' for channel PSG 1
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $26	; Set frequency '614' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $26	; Set frequency '615' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $26	; Set frequency '616' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $26	; Set frequency '617' for channel PSG 1
; Pattern $0b, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $26	; Set frequency '618' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $26	; Set frequency '619' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $26	; Set frequency '620' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $26	; Set frequency '621' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $26	; Set frequency '622' for channel PSG 1
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $26	; Set frequency '623' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $27	; Set frequency '624' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $27	; Set frequency '625' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $27	; Set frequency '626' for channel PSG 1
; Pattern $0b, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $27	; Set frequency '627' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $27	; Set frequency '628' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $27	; Set frequency '629' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $27	; Set frequency '630' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $27	; Set frequency '631' for channel PSG 1
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $27	; Set frequency '632' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $27	; Set frequency '633' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $27	; Set frequency '634' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $27	; Set frequency '635' for channel PSG 1
; Pattern $0b, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $27	; Set frequency '636' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $27	; Set frequency '637' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $27	; Set frequency '638' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $27	; Set frequency '639' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $28	; Set frequency '640' for channel PSG 1
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $28	; Set frequency '641' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $28	; Set frequency '642' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $28	; Set frequency '643' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $28	; Set frequency '644' for channel PSG 1
; Pattern $0b, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $28	; Set frequency '645' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $28	; Set frequency '646' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $28	; Set frequency '647' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $28	; Set frequency '648' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $28	; Set frequency '649' for channel PSG 1
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $28	; Set frequency '650' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $28	; Set frequency '651' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $28	; Set frequency '652' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $28	; Set frequency '653' for channel PSG 1
; Pattern $0b, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $28	; Set frequency '654' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $28	; Set frequency '655' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $29	; Set frequency '656' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $29	; Set frequency '657' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $29	; Set frequency '658' for channel PSG 1
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $29	; Set frequency '659' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $29	; Set frequency '660' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $29	; Set frequency '661' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $29	; Set frequency '662' for channel PSG 1
; Pattern $0b, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $29	; Set frequency '663' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $29	; Set frequency '664' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $29	; Set frequency '665' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $29	; Set frequency '666' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $29	; Set frequency '667' for channel PSG 1
; Pattern $0b, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $29	; Set frequency '668' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $29	; Set frequency '669' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $29	; Set frequency '670' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $29	; Set frequency '671' for channel PSG 1
; Pattern $0b, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2a	; Set frequency '672' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2a	; Set frequency '673' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2a	; Set frequency '674' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2a	; Set frequency '675' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2a	; Set frequency '676' for channel PSG 1
; Pattern $0b, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2a	; Set frequency '677' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2a	; Set frequency '678' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2a	; Set frequency '679' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2a	; Set frequency '680' for channel PSG 1
; Pattern $0b, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2a	; Set frequency '681' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2a	; Set frequency '682' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2a	; Set frequency '683' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2a	; Set frequency '684' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2a	; Set frequency '685' for channel PSG 1
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2a	; Set frequency '686' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2a	; Set frequency '687' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2b	; Set frequency '688' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2b	; Set frequency '689' for channel PSG 1
; Pattern $0b, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2b	; Set frequency '690' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2b	; Set frequency '691' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2b	; Set frequency '692' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2b	; Set frequency '693' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2b	; Set frequency '694' for channel PSG 1
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2b	; Set frequency '695' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2b	; Set frequency '696' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2b	; Set frequency '697' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2b	; Set frequency '698' for channel PSG 1
; Pattern $0b, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2b	; Set frequency '699' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2b	; Set frequency '700' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2b	; Set frequency '701' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2b	; Set frequency '702' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2b	; Set frequency '703' for channel PSG 1
; Pattern $0b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2c	; Set frequency '704' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2c	; Set frequency '705' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2c	; Set frequency '706' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2c	; Set frequency '707' for channel PSG 1
; Pattern $0b, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2c	; Set frequency '708' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2c	; Set frequency '709' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2c	; Set frequency '710' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2c	; Set frequency '711' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2c	; Set frequency '712' for channel PSG 1
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2c	; Set frequency '713' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2c	; Set frequency '714' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2c	; Set frequency '715' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2c	; Set frequency '716' for channel PSG 1
; Pattern $0b, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2c	; Set frequency '717' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2c	; Set frequency '718' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2c	; Set frequency '719' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2d	; Set frequency '720' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2d	; Set frequency '721' for channel PSG 1
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2d	; Set frequency '722' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2d	; Set frequency '723' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2d	; Set frequency '724' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2d	; Set frequency '725' for channel PSG 1
; Pattern $0b, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2d	; Set frequency '726' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2d	; Set frequency '727' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2d	; Set frequency '728' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2d	; Set frequency '729' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2d	; Set frequency '730' for channel PSG 1
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2d	; Set frequency '731' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2d	; Set frequency '732' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2d	; Set frequency '733' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2d	; Set frequency '734' for channel PSG 1
; Pattern $0b, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2d	; Set frequency '735' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2e	; Set frequency '736' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2e	; Set frequency '737' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2e	; Set frequency '738' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2e	; Set frequency '739' for channel PSG 1
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2e	; Set frequency '740' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2e	; Set frequency '741' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2e	; Set frequency '742' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2e	; Set frequency '743' for channel PSG 1
; Pattern $0b, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2e	; Set frequency '744' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2e	; Set frequency '745' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2e	; Set frequency '746' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2e	; Set frequency '747' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2e	; Set frequency '748' for channel PSG 1
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2e	; Set frequency '749' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2e	; Set frequency '750' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2e	; Set frequency '751' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $2f	; Set frequency '752' for channel PSG 1
; Pattern $0b, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $2f	; Set frequency '753' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $2f	; Set frequency '754' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $2f	; Set frequency '755' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $2f	; Set frequency '756' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $2f	; Set frequency '757' for channel PSG 1
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $2f	; Set frequency '758' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $2f	; Set frequency '759' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $2f	; Set frequency '760' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $2f	; Set frequency '761' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $2f	; Set frequency '762' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $2f	; Set frequency '763' for channel PSG 1
; Pattern $0b, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $2f	; Set frequency '764' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $2f	; Set frequency '765' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $2f	; Set frequency '766' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $2f	; Set frequency '767' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $30	; Set frequency '768' for channel PSG 1
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $30	; Set frequency '769' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $30	; Set frequency '770' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $30	; Set frequency '771' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $30	; Set frequency '772' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $30	; Set frequency '773' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $30	; Set frequency '774' for channel PSG 1
; Pattern $0b, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $30	; Set frequency '775' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $30	; Set frequency '776' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $30	; Set frequency '777' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $30	; Set frequency '778' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $30	; Set frequency '779' for channel PSG 1
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $30	; Set frequency '780' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $30	; Set frequency '781' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $30	; Set frequency '782' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $30	; Set frequency '783' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $31	; Set frequency '784' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $31	; Set frequency '785' for channel PSG 1
; Pattern $0b, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $31	; Set frequency '786' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $31	; Set frequency '787' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $31	; Set frequency '788' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $31	; Set frequency '789' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $31	; Set frequency '790' for channel PSG 1
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $31	; Set frequency '791' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $31	; Set frequency '792' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $31	; Set frequency '793' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $31	; Set frequency '794' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $31	; Set frequency '795' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $31	; Set frequency '796' for channel PSG 1
; Pattern $0b, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $31	; Set frequency '797' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $31	; Set frequency '798' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $31	; Set frequency '799' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $32	; Set frequency '800' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $32	; Set frequency '801' for channel PSG 1
; Pattern $0b, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $32	; Set frequency '802' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $32	; Set frequency '803' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $32	; Set frequency '804' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $32	; Set frequency '805' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $32	; Set frequency '806' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $32	; Set frequency '807' for channel PSG 1
; Pattern $0b, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $32	; Set frequency '808' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $32	; Set frequency '809' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $32	; Set frequency '810' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $32	; Set frequency '811' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $32	; Set frequency '812' for channel PSG 1
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $32	; Set frequency '813' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $32	; Set frequency '814' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $32	; Set frequency '815' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $33	; Set frequency '816' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $33	; Set frequency '817' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $33	; Set frequency '818' for channel PSG 1
; Pattern $0b, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $33	; Set frequency '819' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $33	; Set frequency '820' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $33	; Set frequency '821' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $33	; Set frequency '822' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $33	; Set frequency '823' for channel PSG 1
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $33	; Set frequency '824' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $33	; Set frequency '825' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $33	; Set frequency '826' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $33	; Set frequency '827' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $33	; Set frequency '828' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $33	; Set frequency '829' for channel PSG 1
; Pattern $0b, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $33	; Set frequency '830' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $33	; Set frequency '831' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $34	; Set frequency '832' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $34	; Set frequency '833' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $34	; Set frequency '834' for channel PSG 1
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $34	; Set frequency '835' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $34	; Set frequency '836' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $34	; Set frequency '837' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $34	; Set frequency '838' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $34	; Set frequency '839' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $34	; Set frequency '840' for channel PSG 1
; Pattern $0c, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $b3	; Note A-5 on channel FM 2
	dc.b $45, $05	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $2b	; Note F-1 on channel FM 5
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $eb	; Note F-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $34	; Set frequency '841' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $34	; Set frequency '842' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $34	; Set frequency '843' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $34	; Set frequency '844' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $34	; Set frequency '845' for channel PSG 1
; Pattern $0c, Row 1; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $34	; Set frequency '846' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $34	; Set frequency '847' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $35	; Set frequency '848' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $35	; Set frequency '849' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $35	; Set frequency '850' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $35	; Set frequency '851' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $35	; Set frequency '852' for channel PSG 1
; Pattern $0c, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $35	; Set frequency '853' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $35	; Set frequency '854' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $35	; Set frequency '855' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $35	; Set frequency '856' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $35	; Set frequency '857' for channel PSG 1
; Pattern $0c, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $35	; Set frequency '858' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $35	; Set frequency '859' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $35	; Set frequency '860' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $35	; Set frequency '861' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $35	; Set frequency '862' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $35	; Set frequency '863' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $36	; Set frequency '864' for channel PSG 1
; Pattern $0c, Row 4; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $ab	; Note F-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $36	; Set frequency '865' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $36	; Set frequency '866' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $36	; Set frequency '867' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $36	; Set frequency '868' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $36	; Set frequency '869' for channel PSG 1
; Pattern $0c, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $36	; Set frequency '870' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $36	; Set frequency '871' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $36	; Set frequency '872' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $36	; Set frequency '873' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $36	; Set frequency '874' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $36	; Set frequency '875' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $36	; Set frequency '876' for channel PSG 1
; Pattern $0c, Row 6; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $36	; Set frequency '877' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $36	; Set frequency '878' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $36	; Set frequency '879' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $37	; Set frequency '880' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $37	; Set frequency '881' for channel PSG 1
; Pattern $0c, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $37	; Set frequency '882' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $37	; Set frequency '883' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $37	; Set frequency '884' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $37	; Set frequency '885' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $37	; Set frequency '886' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $37	; Set frequency '887' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $37	; Set frequency '888' for channel PSG 1
; Pattern $0c, Row 8; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $37	; Set frequency '889' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $37	; Set frequency '890' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $37	; Set frequency '891' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $37	; Set frequency '892' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $37	; Set frequency '893' for channel PSG 1
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $37	; Set frequency '894' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $37	; Set frequency '895' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $38	; Set frequency '896' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $38	; Set frequency '897' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $38	; Set frequency '898' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $38	; Set frequency '899' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $38	; Set frequency '900' for channel PSG 1
; Pattern $0c, Row 10; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $38	; Set frequency '901' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $38	; Set frequency '902' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $38	; Set frequency '903' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $38	; Set frequency '904' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $38	; Set frequency '905' for channel PSG 1
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $38	; Set frequency '906' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $38	; Set frequency '907' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $38	; Set frequency '908' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $38	; Set frequency '909' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $38	; Set frequency '910' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $38	; Set frequency '911' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $39	; Set frequency '912' for channel PSG 1
; Pattern $0c, Row 12; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $39	; Set frequency '913' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $39	; Set frequency '914' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $39	; Set frequency '915' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $39	; Set frequency '916' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $39	; Set frequency '917' for channel PSG 1
; Pattern $0c, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $39	; Set frequency '918' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $39	; Set frequency '919' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $39	; Set frequency '920' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $39	; Set frequency '921' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $39	; Set frequency '922' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $39	; Set frequency '923' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $39	; Set frequency '924' for channel PSG 1
; Pattern $0c, Row 14; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $39	; Set frequency '925' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $39	; Set frequency '926' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $39	; Set frequency '927' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3a	; Set frequency '928' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3a	; Set frequency '929' for channel PSG 1
; Pattern $0c, Row 15; 
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3a	; Set frequency '930' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3a	; Set frequency '931' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3a	; Set frequency '932' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3a	; Set frequency '933' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3a	; Set frequency '934' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3a	; Set frequency '935' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3a	; Set frequency '936' for channel PSG 1
; Pattern $0c, Row 16; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3a	; Set frequency '937' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3a	; Set frequency '938' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3a	; Set frequency '939' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3a	; Set frequency '940' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3a	; Set frequency '941' for channel PSG 1
; Pattern $0c, Row 17; 
	dc.b $45, $00	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3a	; Set frequency '942' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3a	; Set frequency '943' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3b	; Set frequency '944' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3b	; Set frequency '945' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3b	; Set frequency '946' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3b	; Set frequency '947' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3b	; Set frequency '948' for channel PSG 1
; Pattern $0c, Row 18; 
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3b	; Set frequency '949' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3b	; Set frequency '950' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3b	; Set frequency '951' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3b	; Set frequency '952' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3b	; Set frequency '953' for channel PSG 1
; Pattern $0c, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3b	; Set frequency '954' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3b	; Set frequency '955' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3b	; Set frequency '956' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3b	; Set frequency '957' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3b	; Set frequency '958' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3b	; Set frequency '959' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3c	; Set frequency '960' for channel PSG 1
; Pattern $0c, Row 20; 
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3c	; Set frequency '961' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3c	; Set frequency '962' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3c	; Set frequency '963' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3c	; Set frequency '964' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3c	; Set frequency '965' for channel PSG 1
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3c	; Set frequency '966' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3c	; Set frequency '967' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3c	; Set frequency '968' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3c	; Set frequency '969' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3c	; Set frequency '970' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3c	; Set frequency '971' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3c	; Set frequency '972' for channel PSG 1
; Pattern $0c, Row 22; 
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3c	; Set frequency '973' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3c	; Set frequency '974' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3c	; Set frequency '975' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3d	; Set frequency '976' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3d	; Set frequency '977' for channel PSG 1
; Pattern $0c, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3d	; Set frequency '978' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3d	; Set frequency '979' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3d	; Set frequency '980' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3d	; Set frequency '981' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3d	; Set frequency '982' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3d	; Set frequency '983' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3d	; Set frequency '984' for channel PSG 1
; Pattern $0c, Row 24; 
	dc.b $20, $10	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3d	; Set frequency '985' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3d	; Set frequency '986' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3d	; Set frequency '987' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3d	; Set frequency '988' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3d	; Set frequency '989' for channel PSG 1
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3d	; Set frequency '990' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3d	; Set frequency '991' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3e	; Set frequency '992' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3e	; Set frequency '993' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3e	; Set frequency '994' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3e	; Set frequency '995' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3e	; Set frequency '996' for channel PSG 1
; Pattern $0c, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3e	; Set frequency '997' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3e	; Set frequency '998' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3e	; Set frequency '999' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3e	; Set frequency '1000' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3e	; Set frequency '1001' for channel PSG 1
; Pattern $0c, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3e	; Set frequency '1002' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3e	; Set frequency '1003' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3e	; Set frequency '1004' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3e	; Set frequency '1005' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3e	; Set frequency '1006' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3e	; Set frequency '1007' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $3f	; Set frequency '1008' for channel PSG 1
; Pattern $0c, Row 28; 
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $3f	; Set frequency '1009' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $3f	; Set frequency '1010' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $3f	; Set frequency '1011' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $3f	; Set frequency '1012' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $3f	; Set frequency '1013' for channel PSG 1
; Pattern $0c, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $3f	; Set frequency '1014' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $3f	; Set frequency '1015' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $3f	; Set frequency '1016' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $3f	; Set frequency '1017' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $3f	; Set frequency '1018' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $3f	; Set frequency '1019' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $3f	; Set frequency '1020' for channel PSG 1
; Pattern $0c, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $3f	; Set frequency '1021' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $3f	; Set frequency '1022' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $3f	; Set frequency '1023' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $40	; Set frequency '1024' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $40	; Set frequency '1025' for channel PSG 1
; Pattern $0c, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $40	; Set frequency '1026' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $40	; Set frequency '1027' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $40	; Set frequency '1028' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $40	; Set frequency '1029' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $40	; Set frequency '1030' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $40	; Set frequency '1031' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $40	; Set frequency '1032' for channel PSG 1
; Pattern $0c, Row 32; 
	dc.b $20, $37	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $40	; Set frequency '1033' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $40	; Set frequency '1034' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $40	; Set frequency '1035' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $40	; Set frequency '1036' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $40	; Set frequency '1037' for channel PSG 1
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $40	; Set frequency '1038' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $40	; Set frequency '1039' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $41	; Set frequency '1040' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $41	; Set frequency '1041' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $41	; Set frequency '1042' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $41	; Set frequency '1043' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $41	; Set frequency '1044' for channel PSG 1
; Pattern $0c, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $41	; Set frequency '1045' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $41	; Set frequency '1046' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $41	; Set frequency '1047' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $41	; Set frequency '1048' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $41	; Set frequency '1049' for channel PSG 1
; Pattern $0c, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $41	; Set frequency '1050' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $41	; Set frequency '1051' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $41	; Set frequency '1052' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $41	; Set frequency '1053' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $41	; Set frequency '1054' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $41	; Set frequency '1055' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $42	; Set frequency '1056' for channel PSG 1
; Pattern $0c, Row 36; 
	dc.b $20, $47	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $42	; Set frequency '1057' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $42	; Set frequency '1058' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $42	; Set frequency '1059' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $42	; Set frequency '1060' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $42	; Set frequency '1061' for channel PSG 1
; Pattern $0c, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $42	; Set frequency '1062' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $42	; Set frequency '1063' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $42	; Set frequency '1064' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $42	; Set frequency '1065' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $42	; Set frequency '1066' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $42	; Set frequency '1067' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $42	; Set frequency '1068' for channel PSG 1
; Pattern $0c, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $42	; Set frequency '1069' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $42	; Set frequency '1070' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $42	; Set frequency '1071' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $43	; Set frequency '1072' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $43	; Set frequency '1073' for channel PSG 1
; Pattern $0c, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $43	; Set frequency '1074' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $43	; Set frequency '1075' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $43	; Set frequency '1076' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $43	; Set frequency '1077' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $43	; Set frequency '1078' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $43	; Set frequency '1079' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $43	; Set frequency '1080' for channel PSG 1
; Pattern $0c, Row 40; 
	dc.b $20, $57	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $43	; Set frequency '1081' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $43	; Set frequency '1082' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $43	; Set frequency '1083' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $43	; Set frequency '1084' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $43	; Set frequency '1085' for channel PSG 1
; Pattern $0c, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $43	; Set frequency '1086' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $43	; Set frequency '1087' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $44	; Set frequency '1088' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $44	; Set frequency '1089' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $44	; Set frequency '1090' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $44	; Set frequency '1091' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $44	; Set frequency '1092' for channel PSG 1
; Pattern $0c, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $44	; Set frequency '1093' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $44	; Set frequency '1094' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $44	; Set frequency '1095' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $44	; Set frequency '1096' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $44	; Set frequency '1097' for channel PSG 1
; Pattern $0c, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $44	; Set frequency '1098' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $44	; Set frequency '1099' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $44	; Set frequency '1100' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $44	; Set frequency '1101' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $44	; Set frequency '1102' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $44	; Set frequency '1103' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $45	; Set frequency '1104' for channel PSG 1
; Pattern $0c, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $45	; Set frequency '1105' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $45	; Set frequency '1106' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $45	; Set frequency '1107' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $45	; Set frequency '1108' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $45	; Set frequency '1109' for channel PSG 1
; Pattern $0c, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $45	; Set frequency '1110' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $45	; Set frequency '1111' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $45	; Set frequency '1112' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $45	; Set frequency '1113' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $45	; Set frequency '1114' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $45	; Set frequency '1115' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $45	; Set frequency '1116' for channel PSG 1
; Pattern $0c, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $45	; Set frequency '1117' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $45	; Set frequency '1118' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $45	; Set frequency '1119' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $46	; Set frequency '1120' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $46	; Set frequency '1121' for channel PSG 1
; Pattern $0c, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $46	; Set frequency '1122' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $46	; Set frequency '1123' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $46	; Set frequency '1124' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $46	; Set frequency '1125' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $46	; Set frequency '1126' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $46	; Set frequency '1127' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $46	; Set frequency '1128' for channel PSG 1
; Pattern $0c, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $46	; Set frequency '1129' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $46	; Set frequency '1130' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $46	; Set frequency '1131' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $46	; Set frequency '1132' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $46	; Set frequency '1133' for channel PSG 1
; Pattern $0c, Row 49; 
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
	dc.b $24, $11	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $46	; Set frequency '1134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $46	; Set frequency '1135' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $47	; Set frequency '1136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $47	; Set frequency '1137' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $47	; Set frequency '1138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $47	; Set frequency '1139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $47	; Set frequency '1140' for channel PSG 1
; Pattern $0c, Row 50; 
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $16	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $47	; Set frequency '1141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $47	; Set frequency '1142' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $47	; Set frequency '1143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $47	; Set frequency '1144' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $47	; Set frequency '1145' for channel PSG 1
; Pattern $0c, Row 51; 
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $47	; Set frequency '1146' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $47	; Set frequency '1147' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $47	; Set frequency '1148' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $47	; Set frequency '1149' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $47	; Set frequency '1150' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $47	; Set frequency '1151' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $48	; Set frequency '1152' for channel PSG 1
; Pattern $0c, Row 52; 
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
	dc.b $24, $1c	; Set volume for channel FM 4
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $48	; Set frequency '1153' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $48	; Set frequency '1154' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $48	; Set frequency '1155' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $48	; Set frequency '1156' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $48	; Set frequency '1157' for channel PSG 1
; Pattern $0c, Row 53; 
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $48	; Set frequency '1158' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $48	; Set frequency '1159' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $48	; Set frequency '1160' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $48	; Set frequency '1161' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $48	; Set frequency '1162' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $48	; Set frequency '1163' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $48	; Set frequency '1164' for channel PSG 1
; Pattern $0c, Row 54; 
	dc.b $21, $23	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
	dc.b $24, $23	; Set volume for channel FM 4
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $48	; Set frequency '1165' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $48	; Set frequency '1166' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $48	; Set frequency '1167' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $49	; Set frequency '1168' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $49	; Set frequency '1169' for channel PSG 1
; Pattern $0c, Row 55; 
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
	dc.b $24, $26	; Set volume for channel FM 4
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $28	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $49	; Set frequency '1170' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $49	; Set frequency '1171' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $49	; Set frequency '1172' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $49	; Set frequency '1173' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $49	; Set frequency '1174' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $49	; Set frequency '1175' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $49	; Set frequency '1176' for channel PSG 1
; Pattern $0c, Row 56; 
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $2a	; Set volume for channel FM 4
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $49	; Set frequency '1177' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $49	; Set frequency '1178' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $49	; Set frequency '1179' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $49	; Set frequency '1180' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $49	; Set frequency '1181' for channel PSG 1
; Pattern $0c, Row 57; 
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
	dc.b $24, $2e	; Set volume for channel FM 4
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $2e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $49	; Set frequency '1182' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $49	; Set frequency '1183' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $4a	; Set frequency '1184' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $4a	; Set frequency '1185' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $4a	; Set frequency '1186' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $4a	; Set frequency '1187' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $4a	; Set frequency '1188' for channel PSG 1
; Pattern $0c, Row 58; 
	dc.b $21, $31	; Set volume for channel FM 2
	dc.b $22, $32	; Set volume for channel FM 3
	dc.b $24, $31	; Set volume for channel FM 4
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $26, $32	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $4a	; Set frequency '1189' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $4a	; Set frequency '1190' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $4a	; Set frequency '1191' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $4a	; Set frequency '1192' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $4a	; Set frequency '1193' for channel PSG 1
; Pattern $0c, Row 59; 
	dc.b $21, $35	; Set volume for channel FM 2
	dc.b $22, $35	; Set volume for channel FM 3
	dc.b $24, $35	; Set volume for channel FM 4
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $4a	; Set frequency '1194' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $4a	; Set frequency '1195' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $4a	; Set frequency '1196' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $4a	; Set frequency '1197' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $4a	; Set frequency '1198' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $4a	; Set frequency '1199' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $4b	; Set frequency '1200' for channel PSG 1
; Pattern $0c, Row 60; 
	dc.b $21, $38	; Set volume for channel FM 2
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $38	; Set volume for channel FM 4
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $26, $39	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $4b	; Set frequency '1201' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $4b	; Set frequency '1202' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $4b	; Set frequency '1203' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $4b	; Set frequency '1204' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $4b	; Set frequency '1205' for channel PSG 1
; Pattern $0c, Row 61; 
	dc.b $21, $3c	; Set volume for channel FM 2
	dc.b $22, $3c	; Set volume for channel FM 3
	dc.b $24, $3c	; Set volume for channel FM 4
	dc.b $25, $3c	; Set volume for channel FM 5
	dc.b $26, $3c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $4b	; Set frequency '1206' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $4b	; Set frequency '1207' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $4b	; Set frequency '1208' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $4b	; Set frequency '1209' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $4b	; Set frequency '1210' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $4b	; Set frequency '1211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $4b	; Set frequency '1212' for channel PSG 1
; Pattern $0c, Row 62; 
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $3f	; Set volume for channel FM 3
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $4b	; Set frequency '1213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $4b	; Set frequency '1214' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $4b	; Set frequency '1215' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $4c	; Set frequency '1216' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $4c	; Set frequency '1217' for channel PSG 1
; Pattern $0c, Row 63; 
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $4c	; Set frequency '1218' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $4c	; Set frequency '1219' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $4c	; Set frequency '1220' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $4c	; Set frequency '1221' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $4c	; Set frequency '1222' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $4c	; Set frequency '1223' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $4c	; Set frequency '1224' for channel PSG 1
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $20, $5f	; Set volume for channel FM 1
	dc.b $40, $04	; Set instrument for channel FM 1
	dc.b $20, $5f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $46, $00	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
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
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $5b	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $42, $00	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $00, Row 7; 
	dc.b $fe, $05	; Delay
	dc.b $20, $5a	; Set volume for channel FM 1
; Pattern $00, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $59	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
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
	dc.b $25, $00	; Set volume for channel FM 5
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
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $02, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $02, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $02, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $02, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $02, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $02, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $02, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $02, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $02, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $02, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $02, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $02, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $02, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $03, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $03, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $03, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $03, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $03, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $03, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $03, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $03, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $03, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $03, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $03, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $03, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $03, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $47	; Note D#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $03, Row 59; 
; Pattern $03, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $03, Row 63; 
; Pattern $04, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 27; 
; Pattern $04, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
; Pattern $04, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $04, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $04, Row 59; 
; Pattern $04, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b3	; Note A-5 on channel FM 6
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $05, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $05, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $04, $35	; Note A#1 on channel FM 4
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $00	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $a7	; Note D#5 on channel FM 6
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a5	; Note D-5 on channel FM 3
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $06, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $06, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2f	; Note G-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $48, $03	; Set instrument for channel PSG 1
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $48	; Note C-3 on channel PSG 1
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $49, $07	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $4a, $07	; Set instrument for channel PSG 3
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $fe, $05	; Delay
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $06	; Set frequency '107' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $06	; Set frequency '107' for channel PSG 1
; Pattern $07, Row 8; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $38, $0b, $06	; Set frequency '107' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $38, $09, $06	; Set frequency '105' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $38, $09, $06	; Set frequency '105' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
	dc.b $38, $08, $06	; Set frequency '104' for channel PSG 1
; Pattern $07, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $05	; Delay
	dc.b $38, $0c, $06	; Set frequency '108' for channel PSG 1
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 27; 
; Pattern $07, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $07, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $07, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $18	; Note C-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $09	; Delay
; Pattern $07, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $07, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 59; 
; Pattern $07, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $07, Row 61; 
; Pattern $07, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $44	; Note A#2 on channel PSG 1
; Pattern $07, Row 63; 
; Pattern $08, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $08, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $08, Row 21; 
; Pattern $08, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $08, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 27; 
; Pattern $08, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $08, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $08, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $08, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 43; 
; Pattern $08, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $08, Row 45; 
; Pattern $08, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 49; 
; Pattern $08, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $08, Row 51; 
; Pattern $08, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $08, Row 53; 
; Pattern $08, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $08, Row 55; 
; Pattern $08, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $08, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $08, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $38, $00, $0a	; Set frequency '160' for channel PSG 1
; Pattern $08, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $0a	; Set frequency '161' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0a	; Set frequency '162' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0a	; Set frequency '163' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $0a	; Set frequency '164' for channel PSG 1
	dc.b $fe, $01	; Delay
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
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $09, $12	; Note A-0 on channel PSG 2
	dc.b $0a, $18	; Note C-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
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
	dc.b $fe, $05	; Delay
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 6; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b7	; Note B-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 8; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $09, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0d	; Set frequency '210' for channel PSG 1
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0d	; Set frequency '210' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
; Pattern $09, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
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
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $09, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $01	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
; Pattern $09, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $38, $07, $0d	; Set frequency '215' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $38, $08, $0d	; Set frequency '216' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $38, $09, $0d	; Set frequency '217' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
	dc.b $38, $0a, $0d	; Set frequency '218' for channel PSG 1
; Pattern $09, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $38, $0b, $0d	; Set frequency '219' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $38, $0c, $0d	; Set frequency '220' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $38, $0d, $0d	; Set frequency '221' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
	dc.b $38, $0e, $0d	; Set frequency '222' for channel PSG 1
; Pattern $09, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $47	; Note D#2 on channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $c1	; Note C-6 on channel FM 5
	dc.b $38, $0f, $0d	; Set frequency '223' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 5
	dc.b $38, $00, $0e	; Set frequency '224' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 5
	dc.b $38, $01, $0e	; Set frequency '225' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 5
	dc.b $38, $02, $0e	; Set frequency '226' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 5
	dc.b $38, $03, $0e	; Set frequency '227' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
	dc.b $38, $04, $0e	; Set frequency '228' for channel PSG 1
; Pattern $09, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 5
	dc.b $38, $05, $0e	; Set frequency '229' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 5
	dc.b $38, $06, $0e	; Set frequency '230' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 5
	dc.b $38, $07, $0e	; Set frequency '231' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 5
	dc.b $38, $08, $0e	; Set frequency '232' for channel PSG 1
; Pattern $09, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $0e	; Set frequency '233' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $0e	; Set frequency '234' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $0e	; Set frequency '235' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $0e	; Set frequency '236' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $0e	; Set frequency '237' for channel PSG 1
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $0e	; Set frequency '238' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $0e	; Set frequency '239' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $00, $0f	; Set frequency '240' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $01, $0f	; Set frequency '241' for channel PSG 1
; Pattern $09, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $0f	; Set frequency '242' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $0f	; Set frequency '243' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $0f	; Set frequency '244' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $0f	; Set frequency '245' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $0f	; Set frequency '246' for channel PSG 1
; Pattern $09, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $0f	; Set frequency '247' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $0f	; Set frequency '248' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $0f	; Set frequency '249' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $0f	; Set frequency '250' for channel PSG 1
; Pattern $0a, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $02	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0a, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $27	; Note D#1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 5
; Pattern $0a, Row 4; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $0a, Row 5; 
; Pattern $0a, Row 6; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0a, Row 9; 
; Pattern $0a, Row 10; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 11; 
; Pattern $0a, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $0a, Row 13; 
; Pattern $0a, Row 14; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 15; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $0a, Row 17; 
; Pattern $0a, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $0a, Row 19; 
; Pattern $0a, Row 20; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0a, Row 21; 
; Pattern $0a, Row 22; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 23; 
; Pattern $0a, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $0a, Row 25; 
; Pattern $0a, Row 26; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 27; 
; Pattern $0a, Row 28; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
; Pattern $0a, Row 29; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0a, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $35	; Note A#1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 5
; Pattern $0a, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $15		; Note off channel FM 5
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0a, Row 41; 
; Pattern $0a, Row 42; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 43; 
; Pattern $0a, Row 44; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $0a, Row 45; 
; Pattern $0a, Row 46; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 47; 
; Pattern $0a, Row 48; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b3	; Note A-5 on channel FM 4
; Pattern $0a, Row 49; 
; Pattern $0a, Row 50; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $0a, Row 51; 
; Pattern $0a, Row 52; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
; Pattern $0a, Row 53; 
; Pattern $0a, Row 54; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 55; 
; Pattern $0a, Row 56; 
	dc.b $fe, $09	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 57; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0a, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $0a, Row 59; 
; Pattern $0a, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
; Pattern $0a, Row 61; 
; Pattern $0a, Row 62; 
	dc.b $fe, $09	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $0a, Row 63; 
; Pattern $0b, Row 0; 
	dc.b $fe, $09	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $c1	; Note C-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0b, Row 2; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $04, $2b	; Note F-1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 5
; Pattern $0b, Row 4; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 6; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 8; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 10; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 12; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $b3	; Note A-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 14; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 15; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 16; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 18; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 20; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 22; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $06, $b5	; Note A#5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 26; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 28; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 29; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 30; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 34; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 36; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 38; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 42; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 44; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 46; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $93	; Note A-4 on channel FM 2
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 50; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 54; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 57; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 58; 
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $05	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 60; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $97	; Note B-4 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 62; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 0; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $01, $b3	; Note A-5 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $05	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $2b	; Note F-1 on channel FM 5
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $eb	; Note F-7 on channel FM 6
; Pattern $0c, Row 1; 
	dc.b $fe, $05	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
; Pattern $0c, Row 2; 
	dc.b $fe, $07	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 3; 
; Pattern $0c, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $44, $00	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $ab	; Note F-5 on channel FM 4
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
; Pattern $0c, Row 7; 
; Pattern $0c, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $0c, Row 9; 
; Pattern $0c, Row 10; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 11; 
; Pattern $0c, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 15; 
	dc.b $fe, $05	; Delay
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 16; 
	dc.b $fe, $07	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $0c, Row 17; 
	dc.b $fe, $05	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $00	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $0c, Row 18; 
	dc.b $fe, $07	; Delay
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $c1	; Note C-6 on channel FM 6
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 21; 
; Pattern $0c, Row 22; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $b7	; Note B-5 on channel FM 1
; Pattern $0c, Row 23; 
; Pattern $0c, Row 24; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $10	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
; Pattern $0c, Row 25; 
; Pattern $0c, Row 26; 
; Pattern $0c, Row 27; 
; Pattern $0c, Row 28; 
	dc.b $fe, $18	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
; Pattern $0c, Row 31; 
; Pattern $0c, Row 32; 
	dc.b $fe, $18	; Delay
	dc.b $20, $37	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
; Pattern $0c, Row 33; 
; Pattern $0c, Row 34; 
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $18	; Delay
	dc.b $20, $47	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $18	; Delay
	dc.b $20, $57	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
; Pattern $0c, Row 41; 
; Pattern $0c, Row 42; 
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
; Pattern $0c, Row 47; 
; Pattern $0c, Row 48; 
; Pattern $0c, Row 49; 
	dc.b $fe, $35	; Delay
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
	dc.b $24, $11	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $13	; Set volume for channel FM 6
; Pattern $0c, Row 50; 
	dc.b $fe, $07	; Delay
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $16	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $26, $16	; Set volume for channel FM 6
; Pattern $0c, Row 51; 
	dc.b $fe, $05	; Delay
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $26, $1a	; Set volume for channel FM 6
; Pattern $0c, Row 52; 
	dc.b $fe, $07	; Delay
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
	dc.b $24, $1c	; Set volume for channel FM 4
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $26, $1d	; Set volume for channel FM 6
; Pattern $0c, Row 53; 
	dc.b $fe, $05	; Delay
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
; Pattern $0c, Row 54; 
	dc.b $fe, $07	; Delay
	dc.b $21, $23	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
	dc.b $24, $23	; Set volume for channel FM 4
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $26, $24	; Set volume for channel FM 6
; Pattern $0c, Row 55; 
	dc.b $fe, $05	; Delay
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
	dc.b $24, $26	; Set volume for channel FM 4
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $28	; Set volume for channel FM 6
; Pattern $0c, Row 56; 
	dc.b $fe, $07	; Delay
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $2a	; Set volume for channel FM 4
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $2b	; Set volume for channel FM 6
; Pattern $0c, Row 57; 
	dc.b $fe, $05	; Delay
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
	dc.b $24, $2e	; Set volume for channel FM 4
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $2e	; Set volume for channel FM 6
; Pattern $0c, Row 58; 
	dc.b $fe, $07	; Delay
	dc.b $21, $31	; Set volume for channel FM 2
	dc.b $22, $32	; Set volume for channel FM 3
	dc.b $24, $31	; Set volume for channel FM 4
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $26, $32	; Set volume for channel FM 6
; Pattern $0c, Row 59; 
	dc.b $fe, $05	; Delay
	dc.b $21, $35	; Set volume for channel FM 2
	dc.b $22, $35	; Set volume for channel FM 3
	dc.b $24, $35	; Set volume for channel FM 4
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
; Pattern $0c, Row 60; 
	dc.b $fe, $07	; Delay
	dc.b $21, $38	; Set volume for channel FM 2
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $38	; Set volume for channel FM 4
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $26, $39	; Set volume for channel FM 6
; Pattern $0c, Row 61; 
	dc.b $fe, $05	; Delay
	dc.b $21, $3c	; Set volume for channel FM 2
	dc.b $22, $3c	; Set volume for channel FM 3
	dc.b $24, $3c	; Set volume for channel FM 4
	dc.b $25, $3c	; Set volume for channel FM 5
	dc.b $26, $3c	; Set volume for channel FM 6
; Pattern $0c, Row 62; 
	dc.b $fe, $07	; Delay
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $3f	; Set volume for channel FM 3
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $0c, Row 63; 
	dc.b $fe, $05	; Delay
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
	dc.b $fe, $07	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

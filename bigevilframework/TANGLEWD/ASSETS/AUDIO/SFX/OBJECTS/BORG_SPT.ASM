	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $a3	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $4b, $5c	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $0d, $0b	; Set frequency '189' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $09, $1a	; Set frequency '425' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $3a, $09, $1b	; Set frequency '441' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $3a, $09, $1c	; Set frequency '457' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
	dc.b $3a, $09, $1d	; Set frequency '473' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $3a, $09, $1e	; Set frequency '489' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
	dc.b $3a, $09, $1f	; Set frequency '505' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $09, $20	; Set frequency '521' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $3a, $09, $21	; Set frequency '537' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3f	; Set frequency '4927' (octave 2 semitone 831) for channel FM 6
	dc.b $3a, $09, $22	; Set frequency '553' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $09, $23	; Set frequency '569' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $3a, $09, $24	; Set frequency '585' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
	dc.b $3a, $09, $25	; Set frequency '601' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $09, $26	; Set frequency '617' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
	dc.b $3a, $09, $27	; Set frequency '633' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 6
	dc.b $3a, $09, $28	; Set frequency '649' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $09, $29	; Set frequency '665' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $26, $37	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2a	; Set frequency '681' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2b	; Set frequency '697' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2c	; Set frequency '713' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2d	; Set frequency '729' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2e	; Set frequency '745' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2f	; Set frequency '761' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $30	; Set frequency '777' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $31	; Set frequency '793' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $32	; Set frequency '809' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $33	; Set frequency '825' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $34	; Set frequency '841' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $35	; Set frequency '857' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $36	; Set frequency '873' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $37	; Set frequency '889' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $38	; Set frequency '905' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $39	; Set frequency '921' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3a	; Set frequency '937' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3b	; Set frequency '953' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3c	; Set frequency '969' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3d	; Set frequency '985' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3e	; Set frequency '1001' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3f	; Set frequency '1017' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $40	; Set frequency '1033' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $41	; Set frequency '1049' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $42	; Set frequency '1065' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $43	; Set frequency '1081' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $44	; Set frequency '1097' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $45	; Set frequency '1113' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $46	; Set frequency '1129' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $47	; Set frequency '1145' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $48	; Set frequency '1161' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $49	; Set frequency '1177' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4a	; Set frequency '1193' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4b	; Set frequency '1209' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4c	; Set frequency '1225' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4d	; Set frequency '1241' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4e	; Set frequency '1257' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $4f	; Set frequency '1273' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $50	; Set frequency '1289' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $51	; Set frequency '1305' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $52	; Set frequency '1321' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $53	; Set frequency '1337' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $54	; Set frequency '1353' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $55	; Set frequency '1369' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $56	; Set frequency '1385' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $57	; Set frequency '1401' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $58	; Set frequency '1417' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $59	; Set frequency '1433' for channel PSG 3
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $ff	; The End

	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $c8	; Set instrument for channel FM 4
	dc.b $04, $13	; Note A-0 on channel FM 4
	dc.b $45, $c6	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $0c, $c9	; Sample 201 on channel PCM
	dc.b $4b, $c6	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $00	; Set frequency '23' (octave 0 semitone 23) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $9e	; Set frequency '9374' (octave 4 semitone 1182) for channel FM 5
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 5
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $5e	; Set frequency '9310' (octave 4 semitone 1118) for channel FM 5
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 5
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 5
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 5
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 5
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 5
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 5
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 5
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 5
; Pattern $00, Row 14; 
	dc.b $04, $25	; Note D-1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 5
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $1e	; Set frequency '8990' (octave 4 semitone 798) for channel FM 5
; Pattern $00, Row 16; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $00, Row 17; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 5
; Pattern $00, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 5
; Pattern $00, Row 19; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 5
; Pattern $00, Row 20; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $00, Row 21; 
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
; Pattern $00, Row 22; 
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $00, Row 23; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 5
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 5
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 5
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 5
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $00, Row 31; 
	dc.b $04, $0b	; Note F-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $5e	; Set frequency '7006' (octave 3 semitone 862) for channel FM 5
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 5
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 5
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 5
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $00, Row 39; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 5
; Pattern $00, Row 40; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7e	; Set frequency '5246' (octave 2 semitone 1150) for channel FM 5
; Pattern $00, Row 41; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 5
; Pattern $00, Row 42; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 5
; Pattern $00, Row 43; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 5
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 5
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $de	; Set frequency '5086' (octave 2 semitone 990) for channel FM 5
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 5
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 5
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 5
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5e	; Set frequency '4958' (octave 2 semitone 862) for channel FM 5
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 5
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 5
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $fe	; Set frequency '4862' (octave 2 semitone 766) for channel FM 5
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 5
; Pattern $00, Row 54; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 5
; Pattern $00, Row 55; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9e	; Set frequency '4766' (octave 2 semitone 670) for channel FM 5
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 5
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 5
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 5
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 5
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 5
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 5
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $de	; Set frequency '3038' (octave 1 semitone 990) for channel FM 5
; Pattern $01, Row 0; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 5
; Pattern $01, Row 1; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9e	; Set frequency '2974' (octave 1 semitone 926) for channel FM 5
; Pattern $01, Row 2; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 5
; Pattern $01, Row 3; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $5e	; Set frequency '2910' (octave 1 semitone 862) for channel FM 5
; Pattern $01, Row 4; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 5
; Pattern $01, Row 5; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
; Pattern $01, Row 6; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $fe	; Set frequency '2814' (octave 1 semitone 766) for channel FM 5
; Pattern $01, Row 7; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 5
; Pattern $01, Row 8; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 5
; Pattern $01, Row 9; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9e	; Set frequency '2718' (octave 1 semitone 670) for channel FM 5
; Pattern $01, Row 10; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
; Pattern $01, Row 11; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 5
; Pattern $01, Row 12; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 5
; Pattern $01, Row 13; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $5e	; Set frequency '1118' (octave 0 semitone 1118) for channel FM 5
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 5
; Pattern $01, Row 15; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 5
; Pattern $01, Row 16; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $fe	; Set frequency '1022' (octave 0 semitone 1022) for channel FM 5
; Pattern $01, Row 17; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $de	; Set frequency '990' (octave 0 semitone 990) for channel FM 5
; Pattern $01, Row 18; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 5
; Pattern $01, Row 19; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $9e	; Set frequency '926' (octave 0 semitone 926) for channel FM 5
; Pattern $01, Row 20; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 5
; Pattern $01, Row 21; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $5e	; Set frequency '862' (octave 0 semitone 862) for channel FM 5
; Pattern $01, Row 22; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 5
; Pattern $01, Row 23; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $1e	; Set frequency '798' (octave 0 semitone 798) for channel FM 5
; Pattern $01, Row 24; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $fe	; Set frequency '766' (octave 0 semitone 766) for channel FM 5
; Pattern $01, Row 25; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 5
; Pattern $01, Row 26; 
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 5
; Pattern $01, Row 27; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $9e	; Set frequency '670' (octave 0 semitone 670) for channel FM 5
; Pattern $01, Row 28; 
	dc.b $25, $40	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $01, Row 29; 
	dc.b $25, $42	; Set volume for channel FM 5
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $25, $44	; Set volume for channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $25, $46	; Set volume for channel FM 5
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $25, $47	; Set volume for channel FM 5
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $25, $49	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $25, $4b	; Set volume for channel FM 5
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $25, $4d	; Set volume for channel FM 5
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $25, $4f	; Set volume for channel FM 5
	dc.b $2b, $06	; Set volume for channel PSG 4
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $25, $50	; Set volume for channel FM 5
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $25, $52	; Set volume for channel FM 5
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $25, $54	; Set volume for channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $25, $56	; Set volume for channel FM 5
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $25, $58	; Set volume for channel FM 5
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $25, $5a	; Set volume for channel FM 5
	dc.b $2b, $08	; Set volume for channel PSG 4
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $25, $5b	; Set volume for channel FM 5
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $25, $5d	; Set volume for channel FM 5
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $25, $5f	; Set volume for channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $25, $61	; Set volume for channel FM 5
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $25, $63	; Set volume for channel FM 5
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $25, $64	; Set volume for channel FM 5
	dc.b $2b, $0a	; Set volume for channel PSG 4
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $25, $66	; Set volume for channel FM 5
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $25, $68	; Set volume for channel FM 5
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $25, $6a	; Set volume for channel FM 5
	dc.b $2b, $0b	; Set volume for channel PSG 4
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $25, $6c	; Set volume for channel FM 5
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $25, $6d	; Set volume for channel FM 5
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $25, $6f	; Set volume for channel FM 5
	dc.b $2b, $0c	; Set volume for channel PSG 4
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $25, $71	; Set volume for channel FM 5
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $25, $73	; Set volume for channel FM 5
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $25, $75	; Set volume for channel FM 5
	dc.b $2b, $0d	; Set volume for channel PSG 4
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $25, $76	; Set volume for channel FM 5
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $25, $78	; Set volume for channel FM 5
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $25, $7a	; Set volume for channel FM 5
	dc.b $2b, $0e	; Set volume for channel PSG 4
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $25, $7c	; Set volume for channel FM 5
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $25, $7e	; Set volume for channel FM 5
; Pattern $01, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

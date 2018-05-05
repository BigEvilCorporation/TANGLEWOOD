	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $96	; Set instrument for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $13	; Note A-0 on channel FM 4
	dc.b $45, $bb	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $46, $c4	; Set instrument for channel FM 6
	dc.b $f6, $c0	; Set pan/AMS/FMS for channel FM 6
	dc.b $f8, $24, $fe, $f8, $25, $03	; Set PCM rate to value 4
	dc.b $0c, $c4	; Sample 196 on channel PCM
	dc.b $4b, $bb	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $9e	; Set frequency '9374' (octave 4 semitone 1182) for channel FM 5
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 5
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $5e	; Set frequency '9310' (octave 4 semitone 1118) for channel FM 5
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 5
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 5
	dc.b $3a, $0b, $03	; Set frequency '59' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 5
	dc.b $3a, $0c, $03	; Set frequency '60' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 5
	dc.b $3a, $0d, $03	; Set frequency '61' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 5
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 5
	dc.b $3a, $0f, $03	; Set frequency '63' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 5
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 5
	dc.b $3a, $01, $04	; Set frequency '65' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 5
	dc.b $3a, $02, $04	; Set frequency '66' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $04, $25	; Note D-1 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $1e	; Set frequency '8990' (octave 4 semitone 798) for channel FM 5
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 5
	dc.b $3a, $05, $04	; Set frequency '69' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 5
	dc.b $3a, $06, $04	; Set frequency '70' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 5
	dc.b $3a, $07, $04	; Set frequency '71' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $3a, $09, $04	; Set frequency '73' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $3a, $0a, $04	; Set frequency '74' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 5
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 5
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 5
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 5
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
	dc.b $3a, $0f, $04	; Set frequency '79' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $3a, $01, $05	; Set frequency '81' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $5e	; Set frequency '7006' (octave 3 semitone 862) for channel FM 5
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $04, $0b	; Note F-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 5
	dc.b $3a, $04, $05	; Set frequency '84' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
	dc.b $3a, $06, $05	; Set frequency '86' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 5
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 5
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $3a, $09, $05	; Set frequency '89' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $3a, $0a, $05	; Set frequency '90' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 5
	dc.b $3a, $0b, $05	; Set frequency '91' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7e	; Set frequency '5246' (octave 2 semitone 1150) for channel FM 5
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 5
	dc.b $3a, $0d, $05	; Set frequency '93' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 5
	dc.b $3a, $0e, $05	; Set frequency '94' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 5
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 5
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $de	; Set frequency '5086' (octave 2 semitone 990) for channel FM 5
	dc.b $3a, $01, $06	; Set frequency '97' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 5
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 5
	dc.b $3a, $03, $06	; Set frequency '99' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 5
	dc.b $3a, $04, $06	; Set frequency '100' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5e	; Set frequency '4958' (octave 2 semitone 862) for channel FM 5
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 5
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 5
	dc.b $3a, $07, $06	; Set frequency '103' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $fe	; Set frequency '4862' (octave 2 semitone 766) for channel FM 5
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 5
	dc.b $3a, $09, $06	; Set frequency '105' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 5
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9e	; Set frequency '4766' (octave 2 semitone 670) for channel FM 5
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $07, $01	; Set frequency '23' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 5
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 5
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 5
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 5
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 5
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 5
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $de	; Set frequency '3038' (octave 1 semitone 990) for channel FM 5
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 5
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
; Pattern $01, Row 0; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9e	; Set frequency '2974' (octave 1 semitone 926) for channel FM 5
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
; Pattern $01, Row 1; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 5
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
; Pattern $01, Row 2; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $5e	; Set frequency '2910' (octave 1 semitone 862) for channel FM 5
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
; Pattern $01, Row 3; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 5
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
; Pattern $01, Row 4; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
; Pattern $01, Row 5; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $fe	; Set frequency '2814' (octave 1 semitone 766) for channel FM 5
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
; Pattern $01, Row 6; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 5
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
; Pattern $01, Row 7; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 5
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
; Pattern $01, Row 8; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9e	; Set frequency '2718' (octave 1 semitone 670) for channel FM 5
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
; Pattern $01, Row 9; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $01, Row 10; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 5
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
; Pattern $01, Row 11; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 5
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
; Pattern $01, Row 12; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $5e	; Set frequency '1118' (octave 0 semitone 1118) for channel FM 5
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
; Pattern $01, Row 13; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 5
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 5
	dc.b $3a, $03, $08	; Set frequency '131' for channel PSG 3
; Pattern $01, Row 15; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $fe	; Set frequency '1022' (octave 0 semitone 1022) for channel FM 5
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
; Pattern $01, Row 16; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $de	; Set frequency '990' (octave 0 semitone 990) for channel FM 5
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
; Pattern $01, Row 17; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 5
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
; Pattern $01, Row 18; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $9e	; Set frequency '926' (octave 0 semitone 926) for channel FM 5
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
; Pattern $01, Row 19; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 5
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
; Pattern $01, Row 20; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $5e	; Set frequency '862' (octave 0 semitone 862) for channel FM 5
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
; Pattern $01, Row 21; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 5
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
; Pattern $01, Row 22; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $1e	; Set frequency '798' (octave 0 semitone 798) for channel FM 5
	dc.b $3a, $0b, $08	; Set frequency '139' for channel PSG 3
; Pattern $01, Row 23; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $fe	; Set frequency '766' (octave 0 semitone 766) for channel FM 5
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $01, Row 24; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 5
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
; Pattern $01, Row 25; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 5
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
; Pattern $01, Row 26; 
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $9e	; Set frequency '670' (octave 0 semitone 670) for channel FM 5
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $01, Row 27; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
; Pattern $01, Row 28; 
	dc.b $25, $40	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $01, Row 29; 
	dc.b $25, $42	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
; Pattern $01, Row 30; 
	dc.b $25, $44	; Set volume for channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $01, Row 31; 
	dc.b $25, $46	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $01, Row 32; 
	dc.b $25, $47	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
; Pattern $01, Row 33; 
	dc.b $25, $49	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $01, Row 34; 
	dc.b $25, $4b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $09	; Set frequency '151' for channel PSG 3
; Pattern $01, Row 35; 
	dc.b $25, $4d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $01, Row 36; 
	dc.b $25, $4f	; Set volume for channel FM 5
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
; Pattern $01, Row 37; 
	dc.b $25, $50	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
; Pattern $01, Row 38; 
	dc.b $25, $52	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
; Pattern $01, Row 39; 
	dc.b $25, $54	; Set volume for channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
; Pattern $01, Row 40; 
	dc.b $25, $56	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
; Pattern $01, Row 41; 
	dc.b $25, $58	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
; Pattern $01, Row 42; 
	dc.b $25, $5a	; Set volume for channel FM 5
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
; Pattern $01, Row 43; 
	dc.b $25, $5b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
; Pattern $01, Row 44; 
	dc.b $25, $5d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
; Pattern $01, Row 45; 
	dc.b $25, $5f	; Set volume for channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
; Pattern $01, Row 46; 
	dc.b $25, $61	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
; Pattern $01, Row 47; 
	dc.b $25, $63	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
; Pattern $01, Row 48; 
	dc.b $25, $64	; Set volume for channel FM 5
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
; Pattern $01, Row 49; 
	dc.b $25, $66	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0a	; Set frequency '166' for channel PSG 3
; Pattern $01, Row 50; 
	dc.b $25, $68	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0a	; Set frequency '167' for channel PSG 3
; Pattern $01, Row 51; 
	dc.b $25, $6a	; Set volume for channel FM 5
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
; Pattern $01, Row 52; 
	dc.b $25, $6c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0a	; Set frequency '169' for channel PSG 3
; Pattern $01, Row 53; 
	dc.b $25, $6d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $0a	; Set frequency '170' for channel PSG 3
; Pattern $01, Row 54; 
	dc.b $25, $6f	; Set volume for channel FM 5
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $0a	; Set frequency '171' for channel PSG 3
; Pattern $01, Row 55; 
	dc.b $25, $71	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $0a	; Set frequency '172' for channel PSG 3
; Pattern $01, Row 56; 
	dc.b $25, $73	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $0a	; Set frequency '173' for channel PSG 3
; Pattern $01, Row 57; 
	dc.b $25, $75	; Set volume for channel FM 5
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $0a	; Set frequency '174' for channel PSG 3
; Pattern $01, Row 58; 
	dc.b $25, $76	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $0a	; Set frequency '175' for channel PSG 3
; Pattern $01, Row 59; 
	dc.b $25, $78	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0b	; Set frequency '176' for channel PSG 3
; Pattern $01, Row 60; 
	dc.b $25, $7a	; Set volume for channel FM 5
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0b	; Set frequency '177' for channel PSG 3
; Pattern $01, Row 61; 
	dc.b $25, $7c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0b	; Set frequency '178' for channel PSG 3
; Pattern $01, Row 62; 
	dc.b $25, $7e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0b	; Set frequency '179' for channel PSG 3
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0b	; Set frequency '180' for channel PSG 3
	dc.b $24, $7f	; Set volume for channel FM 4
	dc.b $25, $7f	; Set volume for channel FM 5
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $ff	; The End

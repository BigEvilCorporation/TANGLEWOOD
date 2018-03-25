	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $db	; Set instrument for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $45, $d9	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $21	; Note C-1 on channel FM 5
	dc.b $46, $d8	; Set instrument for channel FM 6
	dc.b $f6, $f4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $4b, $da	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $06, $03	; Set frequency '54' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
	dc.b $3a, $07, $03	; Set frequency '55' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 6
	dc.b $3a, $08, $03	; Set frequency '56' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 6
	dc.b $3a, $0a, $03	; Set frequency '58' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $0f, $03	; Set frequency '63' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 6
	dc.b $3a, $04, $04	; Set frequency '68' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 6
	dc.b $3a, $09, $04	; Set frequency '73' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
	dc.b $3a, $0e, $04	; Set frequency '78' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 6
	dc.b $3a, $03, $05	; Set frequency '83' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 6
	dc.b $3a, $08, $05	; Set frequency '88' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 6
	dc.b $3a, $0d, $05	; Set frequency '93' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $02, $06	; Set frequency '98' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 6
	dc.b $3a, $07, $06	; Set frequency '103' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 6
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 6
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $3a, $0d, $0a	; Set frequency '173' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $02, $0b	; Set frequency '178' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0b	; Set frequency '183' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $02	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
	dc.b $3a, $0c, $0b	; Set frequency '188' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $01, $0c	; Set frequency '193' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 6
	dc.b $3a, $06, $0c	; Set frequency '198' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
	dc.b $3a, $0b, $0c	; Set frequency '203' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $00, $0d	; Set frequency '208' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 6
	dc.b $3a, $05, $0d	; Set frequency '213' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
	dc.b $3a, $0a, $0d	; Set frequency '218' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $0f, $0d	; Set frequency '223' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 6
	dc.b $3a, $04, $0e	; Set frequency '228' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 6
	dc.b $3a, $09, $0e	; Set frequency '233' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $0e, $0e	; Set frequency '238' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0f	; Set frequency '243' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $0f	; Set frequency '248' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $0f	; Set frequency '253' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $10	; Set frequency '258' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $10	; Set frequency '263' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $10	; Set frequency '268' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $11	; Set frequency '273' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $11	; Set frequency '278' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $11	; Set frequency '283' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $12	; Set frequency '288' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $12	; Set frequency '293' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $12	; Set frequency '298' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $12	; Set frequency '303' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $13	; Set frequency '308' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $13	; Set frequency '313' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $02	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
	dc.b $3a, $0e, $13	; Set frequency '318' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $39	; Set frequency '6969' (octave 3 semitone 825) for channel FM 6
	dc.b $3a, $03, $14	; Set frequency '323' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b9	; Set frequency '6841' (octave 3 semitone 697) for channel FM 6
	dc.b $3a, $08, $14	; Set frequency '328' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $0d, $14	; Set frequency '333' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $3a, $02, $15	; Set frequency '338' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $3a, $07, $15	; Set frequency '343' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $3a, $0c, $15	; Set frequency '348' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $3a, $01, $16	; Set frequency '353' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $06, $16	; Set frequency '358' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $3a, $0b, $16	; Set frequency '363' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
	dc.b $3a, $00, $17	; Set frequency '368' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $3a, $05, $17	; Set frequency '373' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
	dc.b $3a, $0a, $17	; Set frequency '378' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $0f, $17	; Set frequency '383' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $3a, $04, $18	; Set frequency '388' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $3a, $09, $18	; Set frequency '393' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $3a, $0e, $18	; Set frequency '398' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $3a, $03, $19	; Set frequency '403' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $08, $19	; Set frequency '408' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $19	; Set frequency '413' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $1a	; Set frequency '418' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $1a	; Set frequency '423' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $1a	; Set frequency '428' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $36, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 6
	dc.b $3a, $01, $1b	; Set frequency '433' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $39	; Set frequency '6969' (octave 3 semitone 825) for channel FM 6
	dc.b $3a, $06, $1b	; Set frequency '438' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b9	; Set frequency '6841' (octave 3 semitone 697) for channel FM 6
	dc.b $3a, $0b, $1b	; Set frequency '443' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $3a, $00, $1c	; Set frequency '448' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $3a, $05, $1c	; Set frequency '453' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $3a, $0a, $1c	; Set frequency '458' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $3a, $0f, $1c	; Set frequency '463' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $3a, $04, $1d	; Set frequency '468' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $3a, $09, $1d	; Set frequency '473' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $3a, $0e, $1d	; Set frequency '478' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
	dc.b $3a, $03, $1e	; Set frequency '483' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $3a, $08, $1e	; Set frequency '488' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
	dc.b $3a, $0d, $1e	; Set frequency '493' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $3a, $02, $1f	; Set frequency '498' for channel PSG 3
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $3a, $07, $1f	; Set frequency '503' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $3a, $0c, $1f	; Set frequency '508' for channel PSG 3
; Pattern $01, Row 1; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $3a, $01, $20	; Set frequency '513' for channel PSG 3
; Pattern $01, Row 2; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $3a, $06, $20	; Set frequency '518' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $0b, $20	; Set frequency '523' for channel PSG 3
; Pattern $01, Row 3; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $21	; Set frequency '528' for channel PSG 3
; Pattern $01, Row 4; 
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $26, $06	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $21	; Set frequency '533' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $21	; Set frequency '538' for channel PSG 3
; Pattern $01, Row 5; 
	dc.b $26, $08	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $21	; Set frequency '543' for channel PSG 3
; Pattern $01, Row 6; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $22	; Set frequency '548' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $22	; Set frequency '553' for channel PSG 3
; Pattern $01, Row 7; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $22	; Set frequency '558' for channel PSG 3
; Pattern $01, Row 8; 
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $26, $0c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $23	; Set frequency '563' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $23	; Set frequency '568' for channel PSG 3
; Pattern $01, Row 9; 
	dc.b $26, $0e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $23	; Set frequency '573' for channel PSG 3
; Pattern $01, Row 10; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $24	; Set frequency '578' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $24	; Set frequency '583' for channel PSG 3
; Pattern $01, Row 11; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $24	; Set frequency '588' for channel PSG 3
; Pattern $01, Row 12; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $25	; Set frequency '593' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $25	; Set frequency '598' for channel PSG 3
; Pattern $01, Row 13; 
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $25	; Set frequency '603' for channel PSG 3
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $26	; Set frequency '608' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $26	; Set frequency '613' for channel PSG 3
; Pattern $01, Row 15; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $26	; Set frequency '618' for channel PSG 3
; Pattern $01, Row 16; 
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $26	; Set frequency '623' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $27	; Set frequency '628' for channel PSG 3
; Pattern $01, Row 17; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $27	; Set frequency '633' for channel PSG 3
; Pattern $01, Row 18; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $27	; Set frequency '638' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $28	; Set frequency '643' for channel PSG 3
; Pattern $01, Row 19; 
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $28	; Set frequency '648' for channel PSG 3
; Pattern $01, Row 20; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $28	; Set frequency '653' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $29	; Set frequency '658' for channel PSG 3
; Pattern $01, Row 21; 
	dc.b $26, $20	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $29	; Set frequency '663' for channel PSG 3
; Pattern $01, Row 22; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $29	; Set frequency '668' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $2a	; Set frequency '673' for channel PSG 3
; Pattern $01, Row 23; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $2a	; Set frequency '678' for channel PSG 3
; Pattern $01, Row 24; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $2a	; Set frequency '683' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2b	; Set frequency '688' for channel PSG 3
; Pattern $01, Row 25; 
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $2b	; Set frequency '693' for channel PSG 3
; Pattern $01, Row 26; 
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $2b	; Set frequency '698' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $2b	; Set frequency '703' for channel PSG 3
; Pattern $01, Row 27; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $2c	; Set frequency '708' for channel PSG 3
; Pattern $01, Row 28; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2c	; Set frequency '713' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $2c	; Set frequency '718' for channel PSG 3
; Pattern $01, Row 29; 
	dc.b $26, $2c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $2d	; Set frequency '723' for channel PSG 3
; Pattern $01, Row 30; 
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $26, $2d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $2d	; Set frequency '728' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $2d	; Set frequency '733' for channel PSG 3
; Pattern $01, Row 31; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $2e	; Set frequency '738' for channel PSG 3
; Pattern $01, Row 32; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $2e	; Set frequency '743' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $2e	; Set frequency '748' for channel PSG 3
; Pattern $01, Row 33; 
	dc.b $25, $31	; Set volume for channel FM 5
	dc.b $26, $32	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $2f	; Set frequency '753' for channel PSG 3
; Pattern $01, Row 34; 
	dc.b $26, $33	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $2f	; Set frequency '758' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $2f	; Set frequency '763' for channel PSG 3
; Pattern $01, Row 35; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $30	; Set frequency '768' for channel PSG 3
; Pattern $01, Row 36; 
	dc.b $26, $36	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $30	; Set frequency '773' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $30	; Set frequency '778' for channel PSG 3
; Pattern $01, Row 37; 
	dc.b $25, $33	; Set volume for channel FM 5
	dc.b $26, $38	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $30	; Set frequency '783' for channel PSG 3
; Pattern $01, Row 38; 
	dc.b $26, $39	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $31	; Set frequency '788' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $31	; Set frequency '793' for channel PSG 3
; Pattern $01, Row 39; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $26, $3b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $31	; Set frequency '798' for channel PSG 3
; Pattern $01, Row 40; 
	dc.b $26, $3c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $32	; Set frequency '803' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $32	; Set frequency '808' for channel PSG 3
; Pattern $01, Row 41; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $32	; Set frequency '813' for channel PSG 3
; Pattern $01, Row 42; 
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $33	; Set frequency '818' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $33	; Set frequency '823' for channel PSG 3
; Pattern $01, Row 43; 
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $33	; Set frequency '828' for channel PSG 3
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $34	; Set frequency '833' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $34	; Set frequency '838' for channel PSG 3
; Pattern $01, Row 45; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $34	; Set frequency '843' for channel PSG 3
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $35	; Set frequency '848' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $35	; Set frequency '853' for channel PSG 3
; Pattern $01, Row 47; 
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $35	; Set frequency '858' for channel PSG 3
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $35	; Set frequency '863' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $36	; Set frequency '868' for channel PSG 3
; Pattern $01, Row 49; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $36	; Set frequency '873' for channel PSG 3
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $36	; Set frequency '878' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $37	; Set frequency '883' for channel PSG 3
; Pattern $01, Row 51; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $37	; Set frequency '888' for channel PSG 3
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $37	; Set frequency '893' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $38	; Set frequency '898' for channel PSG 3
; Pattern $01, Row 53; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $38	; Set frequency '903' for channel PSG 3
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $38	; Set frequency '908' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $39	; Set frequency '913' for channel PSG 3
; Pattern $01, Row 55; 
	dc.b $25, $3c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $39	; Set frequency '918' for channel PSG 3
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $39	; Set frequency '923' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $3a	; Set frequency '928' for channel PSG 3
; Pattern $01, Row 57; 
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $3a	; Set frequency '933' for channel PSG 3
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $3a	; Set frequency '938' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $3a	; Set frequency '943' for channel PSG 3
; Pattern $01, Row 59; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $3b	; Set frequency '948' for channel PSG 3
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $3b	; Set frequency '953' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $3b	; Set frequency '958' for channel PSG 3
; Pattern $01, Row 61; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $3c	; Set frequency '963' for channel PSG 3
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $3c	; Set frequency '968' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $3c	; Set frequency '973' for channel PSG 3
; Pattern $01, Row 63; 
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $3d	; Set frequency '978' for channel PSG 3
	dc.b $ff	; The End

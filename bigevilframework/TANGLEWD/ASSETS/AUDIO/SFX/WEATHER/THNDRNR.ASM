	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $d5	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $d4	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $21	; Note C-1 on channel FM 5
	dc.b $46, $d3	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $f4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $4b, $39	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
	dc.b $3a, $03, $00	; Set frequency '3' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 6
	dc.b $3a, $04, $00	; Set frequency '4' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1b	; Set frequency '6939' (octave 3 semitone 795) for channel FM 6
	dc.b $3a, $05, $00	; Set frequency '5' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 6
	dc.b $3a, $06, $00	; Set frequency '6' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 6
	dc.b $3a, $07, $00	; Set frequency '7' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $0c, $00	; Set frequency '12' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
	dc.b $3a, $01, $01	; Set frequency '17' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 6
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 6
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 6
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 6
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $de	; Set frequency '5086' (octave 2 semitone 990) for channel FM 6
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 6
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e2	; Set frequency '3298' (octave 1 semitone 1250) for channel FM 6
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $63	; Set frequency '3171' (octave 1 semitone 1123) for channel FM 6
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $e4	; Set frequency '3044' (octave 1 semitone 996) for channel FM 6
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $65	; Set frequency '2917' (octave 1 semitone 869) for channel FM 6
	dc.b $3a, $0c, $05	; Set frequency '92' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $e6	; Set frequency '2790' (octave 1 semitone 742) for channel FM 6
	dc.b $3a, $01, $06	; Set frequency '97' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $eb	; Set frequency '1259' (octave 0 semitone 1259) for channel FM 6
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $6c	; Set frequency '1132' (octave 0 semitone 1132) for channel FM 6
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $ed	; Set frequency '1005' (octave 0 semitone 1005) for channel FM 6
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $6e	; Set frequency '878' (octave 0 semitone 878) for channel FM 6
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $ef	; Set frequency '751' (octave 0 semitone 751) for channel FM 6
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0a	; Set frequency '167' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $0a	; Set frequency '172' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $0b	; Set frequency '177' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $0b	; Set frequency '182' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $0b	; Set frequency '187' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $0c	; Set frequency '192' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $0c	; Set frequency '197' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $0c	; Set frequency '202' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $0c	; Set frequency '207' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $0d	; Set frequency '212' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $0d	; Set frequency '217' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $0d	; Set frequency '222' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $0e	; Set frequency '227' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $0e	; Set frequency '232' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $0e	; Set frequency '237' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $0f	; Set frequency '242' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $0f	; Set frequency '247' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $0f	; Set frequency '252' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $10	; Set frequency '257' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $10	; Set frequency '262' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $10	; Set frequency '267' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $11	; Set frequency '272' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $11	; Set frequency '277' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $11	; Set frequency '282' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $11	; Set frequency '287' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $12	; Set frequency '292' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $12	; Set frequency '297' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $12	; Set frequency '302' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $13	; Set frequency '307' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $13	; Set frequency '312' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $13	; Set frequency '317' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $14	; Set frequency '322' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $14	; Set frequency '327' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $14	; Set frequency '332' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $15	; Set frequency '337' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $15	; Set frequency '342' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $15	; Set frequency '347' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $16	; Set frequency '352' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $16	; Set frequency '357' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $16	; Set frequency '362' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $16	; Set frequency '367' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $17	; Set frequency '372' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $17	; Set frequency '377' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $17	; Set frequency '382' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $18	; Set frequency '387' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $18	; Set frequency '392' for channel PSG 3
; Pattern $00, Row 54; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $18	; Set frequency '397' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $19	; Set frequency '402' for channel PSG 3
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $19	; Set frequency '407' for channel PSG 3
; Pattern $00, Row 56; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $19	; Set frequency '412' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $1a	; Set frequency '417' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $1a	; Set frequency '422' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $1a	; Set frequency '427' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1b	; Set frequency '432' for channel PSG 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $1b	; Set frequency '437' for channel PSG 3
; Pattern $00, Row 60; 
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $1b	; Set frequency '442' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $1b	; Set frequency '447' for channel PSG 3
; Pattern $00, Row 61; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $1c	; Set frequency '452' for channel PSG 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $1c	; Set frequency '457' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $1c	; Set frequency '462' for channel PSG 3
; Pattern $00, Row 63; 
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $1d	; Set frequency '467' for channel PSG 3
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $1d	; Set frequency '472' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $1d	; Set frequency '477' for channel PSG 3
; Pattern $01, Row 1; 
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $1e	; Set frequency '482' for channel PSG 3
; Pattern $01, Row 2; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $1e	; Set frequency '487' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $1e	; Set frequency '492' for channel PSG 3
; Pattern $01, Row 3; 
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $1f	; Set frequency '497' for channel PSG 3
; Pattern $01, Row 4; 
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $26, $06	; Set volume for channel FM 6
	dc.b $2b, $08	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $1f	; Set frequency '502' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $1f	; Set frequency '507' for channel PSG 3
; Pattern $01, Row 5; 
	dc.b $26, $08	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $20	; Set frequency '512' for channel PSG 3
; Pattern $01, Row 6; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $20	; Set frequency '517' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $20	; Set frequency '522' for channel PSG 3
; Pattern $01, Row 7; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $20	; Set frequency '527' for channel PSG 3
; Pattern $01, Row 8; 
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $26, $0c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $21	; Set frequency '532' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $21	; Set frequency '537' for channel PSG 3
; Pattern $01, Row 9; 
	dc.b $26, $0e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $21	; Set frequency '542' for channel PSG 3
; Pattern $01, Row 10; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $2b, $0a	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $22	; Set frequency '547' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $22	; Set frequency '552' for channel PSG 3
; Pattern $01, Row 11; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $22	; Set frequency '557' for channel PSG 3
; Pattern $01, Row 12; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $23	; Set frequency '562' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $23	; Set frequency '567' for channel PSG 3
; Pattern $01, Row 13; 
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $2b, $0b	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $23	; Set frequency '572' for channel PSG 3
; Pattern $01, Row 14; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $24	; Set frequency '577' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $24	; Set frequency '582' for channel PSG 3
; Pattern $01, Row 15; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $24	; Set frequency '587' for channel PSG 3
; Pattern $01, Row 16; 
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $25	; Set frequency '592' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $25	; Set frequency '597' for channel PSG 3
; Pattern $01, Row 17; 
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $25	; Set frequency '602' for channel PSG 3
; Pattern $01, Row 18; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $25	; Set frequency '607' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $26	; Set frequency '612' for channel PSG 3
; Pattern $01, Row 19; 
	dc.b $26, $1d	; Set volume for channel FM 6
	dc.b $2b, $0d	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $26	; Set frequency '617' for channel PSG 3
; Pattern $01, Row 20; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $26	; Set frequency '622' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $27	; Set frequency '627' for channel PSG 3
; Pattern $01, Row 21; 
	dc.b $26, $20	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $27	; Set frequency '632' for channel PSG 3
; Pattern $01, Row 22; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $2b, $0e	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $27	; Set frequency '637' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $28	; Set frequency '642' for channel PSG 3
; Pattern $01, Row 23; 
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $28	; Set frequency '647' for channel PSG 3
; Pattern $01, Row 24; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $28	; Set frequency '652' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $29	; Set frequency '657' for channel PSG 3
; Pattern $01, Row 25; 
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $29	; Set frequency '662' for channel PSG 3
; Pattern $01, Row 26; 
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $26, $27	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $29	; Set frequency '667' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2a	; Set frequency '672' for channel PSG 3
; Pattern $01, Row 27; 
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $2a	; Set frequency '677' for channel PSG 3
; Pattern $01, Row 28; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $2a	; Set frequency '682' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $2a	; Set frequency '687' for channel PSG 3
; Pattern $01, Row 29; 
	dc.b $26, $2c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $2b	; Set frequency '692' for channel PSG 3
; Pattern $01, Row 30; 
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $26, $2d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $2b	; Set frequency '697' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $2b	; Set frequency '702' for channel PSG 3
; Pattern $01, Row 31; 
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $2c	; Set frequency '707' for channel PSG 3
; Pattern $01, Row 32; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $2c	; Set frequency '712' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $2c	; Set frequency '717' for channel PSG 3
; Pattern $01, Row 33; 
	dc.b $25, $31	; Set volume for channel FM 5
	dc.b $26, $32	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $2d	; Set frequency '722' for channel PSG 3
; Pattern $01, Row 34; 
	dc.b $26, $33	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $2d	; Set frequency '727' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $2d	; Set frequency '732' for channel PSG 3
; Pattern $01, Row 35; 
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $2e	; Set frequency '737' for channel PSG 3
; Pattern $01, Row 36; 
	dc.b $26, $36	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $2e	; Set frequency '742' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $2e	; Set frequency '747' for channel PSG 3
; Pattern $01, Row 37; 
	dc.b $25, $33	; Set volume for channel FM 5
	dc.b $26, $38	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2f	; Set frequency '752' for channel PSG 3
; Pattern $01, Row 38; 
	dc.b $26, $39	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $2f	; Set frequency '757' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $2f	; Set frequency '762' for channel PSG 3
; Pattern $01, Row 39; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $26, $3b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $2f	; Set frequency '767' for channel PSG 3
; Pattern $01, Row 40; 
	dc.b $26, $3c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $30	; Set frequency '772' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $09, $30	; Set frequency '777' for channel PSG 3
; Pattern $01, Row 41; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $30	; Set frequency '782' for channel PSG 3
; Pattern $01, Row 42; 
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $31	; Set frequency '787' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $08, $31	; Set frequency '792' for channel PSG 3
; Pattern $01, Row 43; 
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $31	; Set frequency '797' for channel PSG 3
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $32	; Set frequency '802' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $07, $32	; Set frequency '807' for channel PSG 3
; Pattern $01, Row 45; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $32	; Set frequency '812' for channel PSG 3
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $33	; Set frequency '817' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $06, $33	; Set frequency '822' for channel PSG 3
; Pattern $01, Row 47; 
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $33	; Set frequency '827' for channel PSG 3
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $34	; Set frequency '832' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $34	; Set frequency '837' for channel PSG 3
; Pattern $01, Row 49; 
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $3a, $0a, $34	; Set frequency '842' for channel PSG 3
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $34	; Set frequency '847' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
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

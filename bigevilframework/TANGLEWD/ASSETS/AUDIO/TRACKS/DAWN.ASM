	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $0e	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $53	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $46, $10	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $77	; Note B-3 on channel FM 6
	dc.b $28, $02	; Set volume for channel PSG 1
	dc.b $48, $0f	; Set instrument for channel PSG 1
	dc.b $28, $02	; Set volume for channel PSG 1
	dc.b $08, $32	; Note C#2 on channel PSG 1
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $29, $02	; Set volume for channel PSG 2
	dc.b $49, $0f	; Set instrument for channel PSG 2
	dc.b $29, $02	; Set volume for channel PSG 2
	dc.b $09, $42	; Note A-2 on channel PSG 2
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $4a, $0f	; Set instrument for channel PSG 3
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $41, $0e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $93	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
; Pattern $00, Row 5; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 6; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $38, $09, $0c	; Set frequency '201' for channel PSG 1
; Pattern $00, Row 8; 
	dc.b $42, $0e	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $0a, $4c	; Note D-3 on channel PSG 3
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $44, $0e	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $53	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8d	; Note F#4 on channel FM 4
; Pattern $00, Row 13; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $38, $0e, $0b	; Set frequency '190' for channel PSG 1
; Pattern $00, Row 16; 
	dc.b $45, $0e	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $93	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $00, Row 19; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $00, $a3	; Note C#5 on channel FM 1
; Pattern $00, Row 21; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 22; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $03	; Delay
	dc.b $38, $0e, $0f	; Set frequency '254' for channel PSG 1
; Pattern $00, Row 24; 
	dc.b $f1, $53	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $06, $6f	; Note G-3 on channel FM 6
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f2, $93	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $93	; Note A-4 on channel FM 3
; Pattern $00, Row 29; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 30; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 31; 
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $03	; Delay
	dc.b $38, $09, $0c	; Set frequency '201' for channel PSG 1
; Pattern $00, Row 32; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $0a, $4c	; Note D-3 on channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $03	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $00, Row 36; 
	dc.b $fe, $03	; Delay
	dc.b $f5, $53	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $8d	; Note F#4 on channel FM 5
; Pattern $00, Row 37; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 38; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 39; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $03	; Delay
	dc.b $38, $0e, $0b	; Set frequency '190' for channel PSG 1
; Pattern $00, Row 40; 
	dc.b $f1, $93	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $08, $2a	; Note A-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $05	; Set frequency '95' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $0a, $50	; Note E-3 on channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $02, $8d	; Note F#4 on channel FM 3
; Pattern $00, Row 45; 
	dc.b $fe, $06	; Delay
; Pattern $00, Row 46; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 47; 
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $03	; Delay
	dc.b $38, $0e, $0f	; Set frequency '254' for channel PSG 1
; Pattern $00, Row 48; 
	dc.b $f0, $53	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6d	; Note F#3 on channel FM 1
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $06, $65	; Note D-3 on channel FM 6
	dc.b $08, $1c	; Note D-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $f4, $93	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a5	; Note D-5 on channel FM 4
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $05	; Set frequency '85' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $05, $a9	; Note E-5 on channel FM 5
	dc.b $0a, $54	; Note F#3 on channel PSG 3
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
	dc.b $fe, $0c	; Delay
; Pattern $00, Row 54; 
	dc.b $fe, $03	; Delay
; Pattern $00, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $38, $0c, $17	; Set frequency '380' for channel PSG 1
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $17	; Set frequency '379' for channel PSG 1
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $39, $0e, $07	; Set frequency '126' for channel PSG 2
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $04	; Set frequency '76' for channel PSG 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0b, $04	; Set frequency '75' for channel PSG 3
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $00, Row 64; 
; Pattern $00, Row 65; 
; Pattern $00, Row 66; 
; Pattern $00, Row 67; 
; Pattern $00, Row 68; 
; Pattern $00, Row 69; 
; Pattern $00, Row 70; 
; Pattern $00, Row 71; 
; Pattern $00, Row 72; 
; Pattern $00, Row 73; 
; Pattern $00, Row 74; 
; Pattern $00, Row 75; 
	dc.b $fe, $32	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 76; 
; Pattern $00, Row 77; 
; Pattern $00, Row 78; 
; Pattern $00, Row 79; 
; Pattern $00, Row 80; 
; Pattern $00, Row 81; 
; Pattern $00, Row 82; 
; Pattern $00, Row 83; 
; Pattern $00, Row 84; 
; Pattern $00, Row 85; 
; Pattern $00, Row 86; 
; Pattern $00, Row 87; 
; Pattern $00, Row 88; 
; Pattern $00, Row 89; 
; Pattern $00, Row 90; 
; Pattern $00, Row 91; 
; Pattern $00, Row 92; 
; Pattern $00, Row 93; 
; Pattern $00, Row 94; 
; Pattern $00, Row 95; 
; Pattern $00, Row 96; 
; Pattern $00, Row 97; 
; Pattern $00, Row 98; 
; Pattern $00, Row 99; 
; Pattern $00, Row 100; 
	dc.b $fe, $4b	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

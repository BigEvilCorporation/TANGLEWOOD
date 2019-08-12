	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $42, $7c	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $c4	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a5	; Note D-5 on channel FM 3
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $44, $7c	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $c4	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $46, $7c	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $c4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $af	; Note G-5 on channel FM 6
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $24	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $c1	; Note C-6 on channel FM 3
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $af	; Note G-5 on channel FM 6
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $24	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $c1	; Note C-6 on channel FM 3
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $24	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $24	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
; Pattern $03, Row 57; 
; Pattern $03, Row 58; 
; Pattern $03, Row 59; 
; Pattern $03, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
; Pattern $03, Row 63; 
; Pattern $04, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $48, $7d	; Set instrument for channel PSG 1
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $04, Row 1; 
; Pattern $04, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $49, $7d	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $4a, $7d	; Set instrument for channel PSG 3
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $04, Row 27; 
; Pattern $04, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $04, Row 33; 
; Pattern $04, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $04, Row 57; 
; Pattern $04, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $04, Row 59; 
; Pattern $04, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 1; 
; Pattern $05, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $06, $af	; Note G-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $05, Row 57; 
; Pattern $05, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 63; 
; Pattern $06, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $09, $48	; Note C-3 on channel PSG 2
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $42	; Note A-2 on channel PSG 2
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $07, Row 27; 
; Pattern $07, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $09, $48	; Note C-3 on channel PSG 2
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $07, Row 57; 
; Pattern $07, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $07, Row 59; 
; Pattern $07, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 61; 
; Pattern $07, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $07, Row 63; 
; Pattern $08, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 1; 
; Pattern $08, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $12	; Delay
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $12	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $08, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 1
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 1
; Pattern $08, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 26; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $30, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 1
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 1
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 1
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 1
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 1
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 28; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 30; 
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $08, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 5
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 5
; Pattern $08, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 0; 
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $46, $7e	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $c0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 5; 
; Pattern $09, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $09, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 13; 
; Pattern $09, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $09, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $09, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 17; 
; Pattern $09, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $09, Row 19; 
; Pattern $09, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 29; 
; Pattern $09, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $09, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $09, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $09, Row 49; 
; Pattern $09, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 54; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $09, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $09, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $09, Row 59; 
; Pattern $09, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 61; 
; Pattern $09, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0a, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $55	; Note A#2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0a, Row 5; 
; Pattern $0a, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0a, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 13; 
; Pattern $0a, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $0a, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $0a, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 17; 
; Pattern $0a, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0a, Row 19; 
; Pattern $0a, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 29; 
; Pattern $0a, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0a, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0a, Row 35; 
; Pattern $0a, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0a, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 45; 
; Pattern $0a, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0a, Row 49; 
; Pattern $0a, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0a, Row 51; 
; Pattern $0a, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 1
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 1
; Pattern $0a, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0a, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0a, Row 59; 
; Pattern $0a, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 61; 
; Pattern $0a, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0b, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $4f	; Note G-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0b, Row 5; 
; Pattern $0b, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0b, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 13; 
; Pattern $0b, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $0b, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $0b, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 17; 
; Pattern $0b, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0b, Row 19; 
; Pattern $0b, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 29; 
; Pattern $0b, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $48	; Note C-3 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0b, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0b, Row 35; 
; Pattern $0b, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0b, Row 37; 
; Pattern $0b, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 39; 
; Pattern $0b, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0b, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 45; 
; Pattern $0b, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0b, Row 49; 
; Pattern $0b, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0b, Row 51; 
; Pattern $0b, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 54; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0b, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0b, Row 59; 
; Pattern $0b, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 61; 
; Pattern $0b, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0c, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $35	; Note A#1 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 7; 
; Pattern $0c, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0c, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $0c, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $0c, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 17; 
; Pattern $0c, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $48	; Note C-3 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0c, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $4b	; Note F-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 42; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0c, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0c, Row 49; 
; Pattern $0c, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0c, Row 51; 
; Pattern $0c, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 1
; Pattern $0c, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 1
; Pattern $0c, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0c, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0c, Row 59; 
; Pattern $0c, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 61; 
; Pattern $0c, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0d, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $4f	; Note G-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 5; 
; Pattern $0d, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 7; 
; Pattern $0d, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0d, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0d, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 13; 
; Pattern $0d, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $0d, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $0d, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 17; 
; Pattern $0d, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 29; 
; Pattern $0d, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0d, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0d, Row 35; 
; Pattern $0d, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 39; 
; Pattern $0d, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0d, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0d, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 45; 
; Pattern $0d, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0d, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0d, Row 49; 
; Pattern $0d, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0d, Row 51; 
; Pattern $0d, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 54; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0d, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0d, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0d, Row 59; 
; Pattern $0d, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 61; 
; Pattern $0d, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0e, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $55	; Note A#2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0e, Row 5; 
; Pattern $0e, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 7; 
; Pattern $0e, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0e, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 13; 
; Pattern $0e, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 2
; Pattern $0e, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
; Pattern $0e, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 17; 
; Pattern $0e, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0e, Row 19; 
; Pattern $0e, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 29; 
; Pattern $0e, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0e, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0e, Row 35; 
; Pattern $0e, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0e, Row 37; 
; Pattern $0e, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 39; 
; Pattern $0e, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0e, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 45; 
; Pattern $0e, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0e, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0e, Row 49; 
; Pattern $0e, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0e, Row 51; 
; Pattern $0e, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 1
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 1
; Pattern $0e, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0e, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0e, Row 58; 
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0e, Row 59; 
; Pattern $0e, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 61; 
; Pattern $0e, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0f, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $4f	; Note G-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0f, Row 5; 
; Pattern $0f, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 7; 
; Pattern $0f, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0f, Row 12; 
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 13; 
; Pattern $0f, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7f	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
; Pattern $0f, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $0f, Row 16; 
	dc.b $41, $81	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 17; 
; Pattern $0f, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0f, Row 19; 
; Pattern $0f, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 22; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 26; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $4b, $82	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 29; 
; Pattern $0f, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $48	; Note C-3 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $0f, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 34; 
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0f, Row 35; 
; Pattern $0f, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $41, $7c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c4	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $0f, Row 37; 
; Pattern $0f, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 39; 
; Pattern $0f, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $45, $80	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 42; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $0f, Row 44; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $45, $81	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 45; 
; Pattern $0f, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $0f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 48; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 49; 
; Pattern $0f, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $40, $81	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $0f, Row 51; 
; Pattern $0f, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $40, $7f	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 54; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $80	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 58; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 60; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $0f, Row 62; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
; Pattern $0f, Row 63; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 1
; Pattern $10, Row 0; 
	dc.b $40, $7c	; Set instrument for channel FM 1
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $f0, $c4	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $42, $80	; Set instrument for channel FM 3
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $45, $7f	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $06, $35	; Note A#1 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $35, $14, $e8	; Set frequency '5352' (octave 2 semitone 1256) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 3
	dc.b $35, $14, $d8	; Set frequency '5336' (octave 2 semitone 1240) for channel FM 5
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 3
	dc.b $35, $14, $c8	; Set frequency '5320' (octave 2 semitone 1224) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 3
	dc.b $35, $14, $a8	; Set frequency '5288' (octave 2 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 3
	dc.b $35, $14, $98	; Set frequency '5272' (octave 2 semitone 1176) for channel FM 5
; Pattern $10, Row 2; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $35, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $35, $14, $78	; Set frequency '5240' (octave 2 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $35, $14, $68	; Set frequency '5224' (octave 2 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 3
	dc.b $35, $14, $58	; Set frequency '5208' (octave 2 semitone 1112) for channel FM 5
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 3
	dc.b $35, $14, $48	; Set frequency '5192' (octave 2 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 3
	dc.b $35, $14, $38	; Set frequency '5176' (octave 2 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 3
	dc.b $35, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 3
	dc.b $35, $14, $18	; Set frequency '5144' (octave 2 semitone 1048) for channel FM 5
; Pattern $10, Row 4; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $35, $14, $08	; Set frequency '5128' (octave 2 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $35, $13, $f8	; Set frequency '5112' (octave 2 semitone 1016) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $35, $13, $e8	; Set frequency '5096' (octave 2 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 3
	dc.b $35, $13, $d8	; Set frequency '5080' (octave 2 semitone 984) for channel FM 5
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 3
	dc.b $35, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 3
	dc.b $35, $13, $b8	; Set frequency '5048' (octave 2 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 3
	dc.b $35, $13, $a8	; Set frequency '5032' (octave 2 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 3
	dc.b $35, $13, $98	; Set frequency '5016' (octave 2 semitone 920) for channel FM 5
; Pattern $10, Row 6; 
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $35, $13, $88	; Set frequency '5000' (octave 2 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $35, $13, $78	; Set frequency '4984' (octave 2 semitone 888) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $35, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 3
	dc.b $35, $13, $58	; Set frequency '4952' (octave 2 semitone 856) for channel FM 5
; Pattern $10, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 3
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 3
	dc.b $35, $13, $38	; Set frequency '4920' (octave 2 semitone 824) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 3
	dc.b $35, $13, $28	; Set frequency '4904' (octave 2 semitone 808) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 3
	dc.b $35, $13, $18	; Set frequency '4888' (octave 2 semitone 792) for channel FM 5
; Pattern $10, Row 8; 
	dc.b $42, $7c	; Set instrument for channel FM 3
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $f2, $c4	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $44, $80	; Set instrument for channel FM 4
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $35, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 4
	dc.b $35, $12, $f8	; Set frequency '4856' (octave 2 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 4
	dc.b $35, $12, $e8	; Set frequency '4840' (octave 2 semitone 744) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 4
	dc.b $35, $12, $d8	; Set frequency '4824' (octave 2 semitone 728) for channel FM 5
; Pattern $10, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 4
	dc.b $35, $12, $c8	; Set frequency '4808' (octave 2 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 4
	dc.b $35, $12, $b8	; Set frequency '4792' (octave 2 semitone 696) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 4
	dc.b $35, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 4
	dc.b $35, $12, $98	; Set frequency '4760' (octave 2 semitone 664) for channel FM 5
; Pattern $10, Row 10; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 4
	dc.b $35, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 4
	dc.b $35, $0c, $fc	; Set frequency '3324' (octave 1 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 4
	dc.b $35, $0c, $ec	; Set frequency '3308' (octave 1 semitone 1260) for channel FM 5
; Pattern $10, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $34, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 4
	dc.b $35, $0c, $dc	; Set frequency '3292' (octave 1 semitone 1244) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 4
	dc.b $35, $0c, $cc	; Set frequency '3276' (octave 1 semitone 1228) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 4
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 4
	dc.b $35, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 5
; Pattern $10, Row 12; 
	dc.b $44, $7c	; Set instrument for channel FM 4
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $f4, $c4	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9c	; Set frequency '3228' (octave 1 semitone 1180) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $7c	; Set frequency '3196' (octave 1 semitone 1148) for channel FM 5
; Pattern $10, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $6c	; Set frequency '3180' (octave 1 semitone 1132) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $5c	; Set frequency '3164' (octave 1 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $3c	; Set frequency '3132' (octave 1 semitone 1084) for channel FM 5
; Pattern $10, Row 14; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2c	; Set frequency '3116' (octave 1 semitone 1068) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $0c	; Set frequency '3084' (octave 1 semitone 1036) for channel FM 5
; Pattern $10, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $fc	; Set frequency '3068' (octave 1 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ec	; Set frequency '3052' (octave 1 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $dc	; Set frequency '3036' (octave 1 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
; Pattern $10, Row 16; 
	dc.b $45, $7c	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $f5, $c4	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 17; 
; Pattern $10, Row 18; 
	dc.b $fe, $07	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $10, Row 19; 
; Pattern $10, Row 20; 
	dc.b $fe, $07	; Delay
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $10, Row 21; 
; Pattern $10, Row 22; 
	dc.b $fe, $07	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $10, Row 23; 
; Pattern $10, Row 24; 
	dc.b $fe, $07	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
	dc.b $fe, $07	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $10, Row 27; 
; Pattern $10, Row 28; 
	dc.b $fe, $07	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $10, Row 29; 
; Pattern $10, Row 30; 
	dc.b $fe, $07	; Delay
	dc.b $09, $48	; Note C-3 on channel PSG 2
; Pattern $10, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $10, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $06, $4b	; Note F-2 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $10, Row 33; 
; Pattern $10, Row 34; 
	dc.b $fe, $08	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $10, Row 35; 
; Pattern $10, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $10, Row 37; 
; Pattern $10, Row 38; 
	dc.b $fe, $08	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $10, Row 39; 
; Pattern $10, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
	dc.b $fe, $08	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $10, Row 43; 
; Pattern $10, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $10, Row 45; 
; Pattern $10, Row 46; 
	dc.b $fe, $08	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $10, Row 47; 
; Pattern $10, Row 48; 
	dc.b $fe, $08	; Delay
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $10, Row 49; 
; Pattern $10, Row 50; 
	dc.b $fe, $08	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $10, Row 51; 
; Pattern $10, Row 52; 
	dc.b $fe, $08	; Delay
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $10, Row 53; 
; Pattern $10, Row 54; 
	dc.b $fe, $08	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $10, Row 55; 
; Pattern $10, Row 56; 
	dc.b $fe, $08	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 57; 
; Pattern $10, Row 58; 
	dc.b $fe, $09	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $10, Row 59; 
; Pattern $10, Row 60; 
	dc.b $fe, $09	; Delay
	dc.b $04, $b5	; Note A#5 on channel FM 4
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $10, Row 61; 
; Pattern $10, Row 62; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $10, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $11, Row 0; 
	dc.b $fe, $07	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $75	; Note A#3 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $35	; Note A#1 on channel FM 6
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
; Pattern $11, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $11, Row 3; 
; Pattern $11, Row 4; 
	dc.b $fe, $07	; Delay
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $11, Row 5; 
; Pattern $11, Row 6; 
	dc.b $fe, $07	; Delay
	dc.b $28, $08	; Set volume for channel PSG 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $11, Row 7; 
; Pattern $11, Row 8; 
	dc.b $fe, $07	; Delay
	dc.b $29, $08	; Set volume for channel PSG 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 9; 
; Pattern $11, Row 10; 
	dc.b $fe, $07	; Delay
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $11, Row 11; 
; Pattern $11, Row 12; 
	dc.b $fe, $07	; Delay
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $42	; Note A-2 on channel PSG 1
; Pattern $11, Row 13; 
; Pattern $11, Row 14; 
	dc.b $fe, $07	; Delay
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 15; 
; Pattern $11, Row 16; 
	dc.b $fe, $07	; Delay
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $11, Row 17; 
	dc.b $fe, $03	; Delay
	dc.b $20, $02	; Set volume for channel FM 1
	dc.b $22, $02	; Set volume for channel FM 3
	dc.b $25, $02	; Set volume for channel FM 5
	dc.b $26, $09	; Set volume for channel FM 6
; Pattern $11, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $04	; Set volume for channel FM 1
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $22, $04	; Set volume for channel FM 3
	dc.b $25, $04	; Set volume for channel FM 5
	dc.b $26, $0a	; Set volume for channel FM 6
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
; Pattern $11, Row 19; 
	dc.b $fe, $03	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $04	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $02	; Set volume for channel FM 4
	dc.b $25, $05	; Set volume for channel FM 5
	dc.b $26, $0c	; Set volume for channel FM 6
; Pattern $11, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $24, $04	; Set volume for channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $09, $42	; Note A-2 on channel PSG 2
; Pattern $11, Row 21; 
	dc.b $fe, $03	; Delay
	dc.b $20, $08	; Set volume for channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $22, $08	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $26, $0e	; Set volume for channel FM 6
; Pattern $11, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0a	; Set volume for channel FM 1
	dc.b $21, $08	; Set volume for channel FM 2
	dc.b $22, $0a	; Set volume for channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $26, $10	; Set volume for channel FM 6
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $11, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $0a	; Set volume for channel FM 2
	dc.b $22, $0c	; Set volume for channel FM 3
	dc.b $24, $08	; Set volume for channel FM 4
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $26, $11	; Set volume for channel FM 6
; Pattern $11, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $24, $0a	; Set volume for channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 25; 
	dc.b $fe, $03	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $24, $0c	; Set volume for channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $26, $14	; Set volume for channel FM 6
; Pattern $11, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $10	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $29, $0b	; Set volume for channel PSG 2
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $11, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $10	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $26, $17	; Set volume for channel FM 6
; Pattern $11, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $2a, $0b	; Set volume for channel PSG 3
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $11, Row 29; 
	dc.b $fe, $03	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $26, $1a	; Set volume for channel FM 6
; Pattern $11, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $13	; Set volume for channel FM 4
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $26, $1b	; Set volume for channel FM 6
	dc.b $29, $0c	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 31; 
	dc.b $fe, $03	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $26, $1c	; Set volume for channel FM 6
; Pattern $11, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $28, $0c	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 33; 
	dc.b $fe, $03	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $26, $1f	; Set volume for channel FM 6
; Pattern $11, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
	dc.b $24, $1a	; Set volume for channel FM 4
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $11, Row 35; 
	dc.b $fe, $03	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $26, $22	; Set volume for channel FM 6
; Pattern $11, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
	dc.b $24, $1d	; Set volume for channel FM 4
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $26, $23	; Set volume for channel FM 6
	dc.b $2a, $0d	; Set volume for channel PSG 3
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $11, Row 37; 
	dc.b $fe, $03	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
	dc.b $24, $1e	; Set volume for channel FM 4
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $26, $25	; Set volume for channel FM 6
; Pattern $11, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $20, $23	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $23	; Set volume for channel FM 3
	dc.b $24, $20	; Set volume for channel FM 4
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $29, $0d	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $23	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
	dc.b $24, $22	; Set volume for channel FM 4
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $26, $28	; Set volume for channel FM 6
; Pattern $11, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
	dc.b $24, $23	; Set volume for channel FM 4
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $29	; Set volume for channel FM 6
	dc.b $28, $0d	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 41; 
	dc.b $fe, $03	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
	dc.b $24, $25	; Set volume for channel FM 4
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
; Pattern $11, Row 42; 
	dc.b $fe, $04	; Delay
	dc.b $20, $29	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $29	; Set volume for channel FM 3
	dc.b $24, $26	; Set volume for channel FM 4
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $26, $2c	; Set volume for channel FM 6
	dc.b $29, $0e	; Set volume for channel PSG 2
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $11, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $21, $29	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $28	; Set volume for channel FM 4
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $2d	; Set volume for channel FM 6
; Pattern $11, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
	dc.b $24, $29	; Set volume for channel FM 4
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $11, Row 45; 
	dc.b $fe, $03	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
; Pattern $11, Row 46; 
	dc.b $fe, $04	; Delay
	dc.b $20, $30	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $24, $2d	; Set volume for channel FM 4
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $31	; Set volume for channel FM 6
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 47; 
	dc.b $fe, $03	; Delay
	dc.b $20, $31	; Set volume for channel FM 1
	dc.b $21, $30	; Set volume for channel FM 2
	dc.b $22, $31	; Set volume for channel FM 3
	dc.b $24, $2e	; Set volume for channel FM 4
	dc.b $25, $31	; Set volume for channel FM 5
	dc.b $26, $33	; Set volume for channel FM 6
; Pattern $11, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $33	; Set volume for channel FM 1
	dc.b $21, $31	; Set volume for channel FM 2
	dc.b $22, $33	; Set volume for channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $25, $33	; Set volume for channel FM 5
	dc.b $26, $34	; Set volume for channel FM 6
	dc.b $28, $0e	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 49; 
	dc.b $fe, $03	; Delay
	dc.b $20, $34	; Set volume for channel FM 1
	dc.b $21, $33	; Set volume for channel FM 2
	dc.b $22, $34	; Set volume for channel FM 3
	dc.b $24, $31	; Set volume for channel FM 4
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $26, $36	; Set volume for channel FM 6
; Pattern $11, Row 50; 
	dc.b $fe, $04	; Delay
	dc.b $20, $36	; Set volume for channel FM 1
	dc.b $21, $34	; Set volume for channel FM 2
	dc.b $22, $36	; Set volume for channel FM 3
	dc.b $24, $33	; Set volume for channel FM 4
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $26, $37	; Set volume for channel FM 6
	dc.b $29, $0f	; Set volume for channel PSG 2
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $11, Row 51; 
	dc.b $fe, $03	; Delay
	dc.b $20, $38	; Set volume for channel FM 1
	dc.b $21, $36	; Set volume for channel FM 2
	dc.b $22, $38	; Set volume for channel FM 3
	dc.b $24, $34	; Set volume for channel FM 4
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $26, $38	; Set volume for channel FM 6
; Pattern $11, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $20, $39	; Set volume for channel FM 1
	dc.b $21, $38	; Set volume for channel FM 2
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $36	; Set volume for channel FM 4
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $26, $3a	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $11, Row 53; 
	dc.b $fe, $03	; Delay
	dc.b $20, $3b	; Set volume for channel FM 1
	dc.b $21, $39	; Set volume for channel FM 2
	dc.b $22, $3b	; Set volume for channel FM 3
	dc.b $24, $38	; Set volume for channel FM 4
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $26, $3b	; Set volume for channel FM 6
; Pattern $11, Row 54; 
	dc.b $fe, $04	; Delay
	dc.b $20, $3c	; Set volume for channel FM 1
	dc.b $21, $3b	; Set volume for channel FM 2
	dc.b $22, $3c	; Set volume for channel FM 3
	dc.b $24, $39	; Set volume for channel FM 4
	dc.b $25, $3c	; Set volume for channel FM 5
	dc.b $26, $3d	; Set volume for channel FM 6
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $20, $3e	; Set volume for channel FM 1
	dc.b $21, $3c	; Set volume for channel FM 2
	dc.b $22, $3e	; Set volume for channel FM 3
	dc.b $24, $3b	; Set volume for channel FM 4
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $26, $3e	; Set volume for channel FM 6
; Pattern $11, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3e	; Set volume for channel FM 2
	dc.b $22, $3f	; Set volume for channel FM 3
	dc.b $24, $3c	; Set volume for channel FM 4
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $28, $0f	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 57; 
	dc.b $fe, $03	; Delay
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $24, $3e	; Set volume for channel FM 4
; Pattern $11, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $24, $3f	; Set volume for channel FM 4
; Pattern $11, Row 59; 
; Pattern $11, Row 60; 
; Pattern $11, Row 61; 
; Pattern $11, Row 62; 
; Pattern $11, Row 63; 
; Pattern $12, Row 0; 
; Pattern $12, Row 1; 
; Pattern $12, Row 2; 
; Pattern $12, Row 3; 
; Pattern $12, Row 4; 
; Pattern $12, Row 5; 
; Pattern $12, Row 6; 
; Pattern $12, Row 7; 
; Pattern $12, Row 8; 
; Pattern $12, Row 9; 
; Pattern $12, Row 10; 
; Pattern $12, Row 11; 
; Pattern $12, Row 12; 
; Pattern $12, Row 13; 
; Pattern $12, Row 14; 
; Pattern $12, Row 15; 
; Pattern $12, Row 16; 
; Pattern $12, Row 17; 
; Pattern $12, Row 18; 
; Pattern $12, Row 19; 
; Pattern $12, Row 20; 
; Pattern $12, Row 21; 
; Pattern $12, Row 22; 
; Pattern $12, Row 23; 
; Pattern $12, Row 24; 
	dc.b $fe, $69	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
; Pattern $12, Row 27; 
; Pattern $12, Row 28; 
; Pattern $12, Row 29; 
; Pattern $12, Row 30; 
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
; Pattern $12, Row 33; 
; Pattern $12, Row 34; 
; Pattern $12, Row 35; 
; Pattern $12, Row 36; 
; Pattern $12, Row 37; 
; Pattern $12, Row 38; 
; Pattern $12, Row 39; 
; Pattern $12, Row 40; 
; Pattern $12, Row 41; 
; Pattern $12, Row 42; 
; Pattern $12, Row 43; 
; Pattern $12, Row 44; 
; Pattern $12, Row 45; 
; Pattern $12, Row 46; 
; Pattern $12, Row 47; 
; Pattern $12, Row 48; 
; Pattern $12, Row 49; 
; Pattern $12, Row 50; 
; Pattern $12, Row 51; 
; Pattern $12, Row 52; 
; Pattern $12, Row 53; 
; Pattern $12, Row 54; 
; Pattern $12, Row 55; 
; Pattern $12, Row 56; 
; Pattern $12, Row 57; 
; Pattern $12, Row 58; 
; Pattern $12, Row 59; 
; Pattern $12, Row 60; 
; Pattern $12, Row 61; 
; Pattern $12, Row 62; 
; Pattern $12, Row 63; 
	dc.b $fe, $88	; Delay
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
	dc.b $fe, $04	; Delay
	dc.b $ff	; The End

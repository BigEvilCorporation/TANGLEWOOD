	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $fd	; Set loop
	dc.b $40, $46	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $8f	; Note G-4 on channel FM 1
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $48, $47	; Set instrument for channel PSG 1
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $49, $47	; Set instrument for channel PSG 2
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $4a, $47	; Set instrument for channel PSG 3
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $10	; Delay
	dc.b $45, $46	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $10	; Delay
	dc.b $41, $46	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $93	; Note A-4 on channel FM 2
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $20	; Delay
	dc.b $42, $46	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $20	; Delay
	dc.b $44, $46	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $c2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $10	; Delay
	dc.b $05, $89	; Note E-4 on channel FM 5
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $70	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $20	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $10	; Delay
	dc.b $05, $93	; Note A-4 on channel FM 5
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $10	; Delay
	dc.b $01, $8f	; Note G-4 on channel FM 2
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $20	; Delay
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $20	; Delay
	dc.b $04, $73	; Note A-3 on channel FM 4
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $10	; Delay
	dc.b $05, $6b	; Note F-3 on channel FM 5
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $70	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $20	; Delay
	dc.b $00, $8f	; Note G-4 on channel FM 1
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $10	; Delay
	dc.b $05, $97	; Note B-4 on channel FM 5
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $10	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $20	; Delay
	dc.b $02, $77	; Note B-3 on channel FM 3
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $20	; Delay
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $10	; Delay
	dc.b $05, $69	; Note E-3 on channel FM 5
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $70	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $20	; Delay
	dc.b $00, $85	; Note D-4 on channel FM 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $10	; Delay
	dc.b $05, $93	; Note A-4 on channel FM 5
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $10	; Delay
	dc.b $01, $77	; Note B-3 on channel FM 2
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $20	; Delay
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $20	; Delay
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $10	; Delay
	dc.b $05, $69	; Note E-3 on channel FM 5
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $70	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $03, Row 57; 
; Pattern $03, Row 58; 
; Pattern $03, Row 59; 
; Pattern $03, Row 60; 
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
; Pattern $03, Row 63; 
	dc.b $fe, $20	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

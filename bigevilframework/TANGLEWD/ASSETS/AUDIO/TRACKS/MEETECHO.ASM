	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $28, $0e	; Set volume for channel PSG 1
	dc.b $48, $8e	; Set instrument for channel PSG 1
	dc.b $28, $0e	; Set volume for channel PSG 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $4a, $8e	; Set instrument for channel PSG 3
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $29, $0e	; Set volume for channel PSG 2
	dc.b $49, $8e	; Set instrument for channel PSG 2
	dc.b $29, $0e	; Set volume for channel PSG 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $28, $0d	; Set volume for channel PSG 1
; Pattern $00, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $0d	; Set volume for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $28, $0c	; Set volume for channel PSG 1
	dc.b $29, $0d	; Set volume for channel PSG 2
; Pattern $00, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $0c	; Set volume for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $29, $0c	; Set volume for channel PSG 2
; Pattern $00, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $2a, $0b	; Set volume for channel PSG 3
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $29, $0b	; Set volume for channel PSG 2
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2a, $09	; Set volume for channel PSG 3
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $28, $08	; Set volume for channel PSG 1
; Pattern $00, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $08	; Set volume for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $29, $08	; Set volume for channel PSG 2
; Pattern $00, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $07	; Set volume for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $28, $06	; Set volume for channel PSG 1
	dc.b $29, $07	; Set volume for channel PSG 2
; Pattern $00, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $06	; Set volume for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $29, $06	; Set volume for channel PSG 2
; Pattern $00, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $2a, $05	; Set volume for channel PSG 3
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $2a, $04	; Set volume for channel PSG 3
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $06	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $90	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $37	; Note B-1 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $92	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $03, Row 57; 
; Pattern $03, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $03, Row 59; 
; Pattern $03, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $03, Row 63; 
; Pattern $04, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $25, $2d	; Set volume for channel FM 5
; Pattern $04, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $25, $2c	; Set volume for channel FM 5
; Pattern $04, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $25, $2a	; Set volume for channel FM 5
; Pattern $04, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $25, $26	; Set volume for channel FM 5
; Pattern $04, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $25, $22	; Set volume for channel FM 5
; Pattern $04, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
; Pattern $04, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1f	; Set volume for channel FM 5
; Pattern $04, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1c	; Set volume for channel FM 5
; Pattern $04, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $25, $19	; Set volume for channel FM 5
; Pattern $04, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $25, $16	; Set volume for channel FM 5
; Pattern $04, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $25, $15	; Set volume for channel FM 5
; Pattern $04, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
; Pattern $04, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0e	; Set volume for channel FM 5
; Pattern $04, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
; Pattern $04, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $25, $08	; Set volume for channel FM 5
; Pattern $04, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $04, Row 59; 
; Pattern $04, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
; Pattern $05, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $90	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $69	; Note E-3 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $05, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $05, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
; Pattern $06, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $44, $92	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
; Pattern $07, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $95	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $f0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $25	; Note D-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $e2	; Set frequency '2786' (octave 1 semitone 738) for channel FM 2
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $f2	; Set frequency '2802' (octave 1 semitone 754) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $02	; Set frequency '2818' (octave 1 semitone 770) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $12	; Set frequency '2834' (octave 1 semitone 786) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $22	; Set frequency '2850' (octave 1 semitone 802) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $32	; Set frequency '2866' (octave 1 semitone 818) for channel FM 2
; Pattern $07, Row 22; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $42	; Set frequency '2882' (octave 1 semitone 834) for channel FM 2
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $52	; Set frequency '2898' (octave 1 semitone 850) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $62	; Set frequency '2914' (octave 1 semitone 866) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $72	; Set frequency '2930' (octave 1 semitone 882) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $82	; Set frequency '2946' (octave 1 semitone 898) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $92	; Set frequency '2962' (octave 1 semitone 914) for channel FM 2
; Pattern $07, Row 24; 
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $37	; Note B-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $44, $90	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $49	; Note E-2 on channel FM 4
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $21, $08	; Set volume for channel FM 2
; Pattern $07, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $07, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $21, $10	; Set volume for channel FM 2
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $21, $12	; Set volume for channel FM 2
; Pattern $07, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $21, $17	; Set volume for channel FM 2
; Pattern $07, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $21, $1a	; Set volume for channel FM 2
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $21, $1c	; Set volume for channel FM 2
; Pattern $07, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $1f	; Set volume for channel FM 2
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $21, $21	; Set volume for channel FM 2
; Pattern $07, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $24	; Set volume for channel FM 2
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $21, $26	; Set volume for channel FM 2
; Pattern $07, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $21, $29	; Set volume for channel FM 2
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $21, $2b	; Set volume for channel FM 2
; Pattern $07, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $2e	; Set volume for channel FM 2
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $21, $30	; Set volume for channel FM 2
; Pattern $07, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $33	; Set volume for channel FM 2
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $21, $35	; Set volume for channel FM 2
; Pattern $07, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $21, $38	; Set volume for channel FM 2
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $21, $3a	; Set volume for channel FM 2
; Pattern $07, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $21, $3d	; Set volume for channel FM 2
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $21, $3f	; Set volume for channel FM 2
; Pattern $07, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $37	; Note B-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $07, Row 50; 
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $07, Row 52; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $07, Row 54; 
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $07, Row 56; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $07, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $07, Row 60; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $31, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 2
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $8e	; Set frequency '3214' (octave 1 semitone 1166) for channel FM 2
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 2
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $6e	; Set frequency '3182' (octave 1 semitone 1134) for channel FM 2
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 2
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $4e	; Set frequency '3150' (octave 1 semitone 1102) for channel FM 2
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $07, Row 62; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $07, Row 63; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $2e	; Set frequency '3118' (octave 1 semitone 1070) for channel FM 2
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $0e	; Set frequency '3086' (octave 1 semitone 1038) for channel FM 2
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 2
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $ee	; Set frequency '3054' (octave 1 semitone 1006) for channel FM 2
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $08, Row 0; 
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 4; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $08, Row 6; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 14; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 16; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $08, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $08, Row 20; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 6
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 6
; Pattern $08, Row 22; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 6
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 24; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 28; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $08, Row 30; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $08, Row 35; 
; Pattern $08, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 44; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 46; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 48; 
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $08, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $08, Row 52; 
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $08, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $08, Row 56; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $08, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $08, Row 59; 
; Pattern $08, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $08, Row 62; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $08, Row 63; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $09, Row 0; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 4; 
	dc.b $01, $25	; Note D-1 on channel FM 2
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $09, Row 6; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $09, Row 11; 
; Pattern $09, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 14; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 16; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $09, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $09, Row 20; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 6
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 6
; Pattern $09, Row 22; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 6
; Pattern $09, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 24; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 28; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $09, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $09, Row 30; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 44; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 46; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 48; 
	dc.b $01, $37	; Note B-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $04, $69	; Note E-3 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $09, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $09, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $09, Row 52; 
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $09, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $09, Row 56; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $09, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $09, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $09, Row 59; 
; Pattern $09, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $31, $0c, $ce	; Set frequency '3278' (octave 1 semitone 1230) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $de	; Set frequency '3294' (octave 1 semitone 1246) for channel FM 2
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 2
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $fe	; Set frequency '3326' (octave 1 semitone 1278) for channel FM 2
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 2
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 2
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $aa	; Set frequency '4778' (octave 2 semitone 682) for channel FM 2
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $09, Row 62; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 2
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $09, Row 63; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ca	; Set frequency '4810' (octave 2 semitone 714) for channel FM 2
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $da	; Set frequency '4826' (octave 2 semitone 730) for channel FM 2
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ea	; Set frequency '4842' (octave 2 semitone 746) for channel FM 2
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $fa	; Set frequency '4858' (octave 2 semitone 762) for channel FM 2
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $0a	; Set frequency '4874' (octave 2 semitone 778) for channel FM 2
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0a, Row 0; 
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 4; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $0a, Row 6; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0a, Row 11; 
; Pattern $0a, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 14; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 16; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0a, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0a, Row 20; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 6
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 6
; Pattern $0a, Row 22; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 6
; Pattern $0a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 24; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 28; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $0a, Row 30; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0a, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0a, Row 35; 
; Pattern $0a, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 44; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 46; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 48; 
	dc.b $01, $29	; Note E-1 on channel FM 2
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $44, $92	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0a, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0a, Row 52; 
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0a, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0a, Row 56; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0a, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0a, Row 59; 
; Pattern $0a, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0a, Row 62; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0a, Row 63; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0b, Row 0; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $25	; Note D-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 4; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $0b, Row 6; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0b, Row 11; 
; Pattern $0b, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 14; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 16; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0b, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0b, Row 20; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $e2	; Set frequency '2786' (octave 1 semitone 738) for channel FM 2
	dc.b $36, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 6
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $f2	; Set frequency '2802' (octave 1 semitone 754) for channel FM 2
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $02	; Set frequency '2818' (octave 1 semitone 770) for channel FM 2
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $12	; Set frequency '2834' (octave 1 semitone 786) for channel FM 2
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $22	; Set frequency '2850' (octave 1 semitone 802) for channel FM 2
	dc.b $36, $04, $25	; Set frequency '1061' (octave 0 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $32	; Set frequency '2866' (octave 1 semitone 818) for channel FM 2
	dc.b $36, $03, $a6	; Set frequency '934' (octave 0 semitone 934) for channel FM 6
; Pattern $0b, Row 22; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $42	; Set frequency '2882' (octave 1 semitone 834) for channel FM 2
	dc.b $36, $03, $27	; Set frequency '807' (octave 0 semitone 807) for channel FM 6
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $52	; Set frequency '2898' (octave 1 semitone 850) for channel FM 2
	dc.b $36, $02, $a8	; Set frequency '680' (octave 0 semitone 680) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $62	; Set frequency '2914' (octave 1 semitone 866) for channel FM 2
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $72	; Set frequency '2930' (octave 1 semitone 882) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $82	; Set frequency '2946' (octave 1 semitone 898) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $92	; Set frequency '2962' (octave 1 semitone 914) for channel FM 2
; Pattern $0b, Row 24; 
	dc.b $01, $37	; Note B-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $44, $90	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $49	; Note E-2 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 28; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $9d	; Set frequency '5021' (octave 2 semitone 925) for channel FM 6
; Pattern $0b, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $25	; Set frequency '3109' (octave 1 semitone 1061) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 6
; Pattern $0b, Row 30; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0b, Row 31; 
; Pattern $0b, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0b, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0b, Row 35; 
; Pattern $0b, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0b, Row 37; 
; Pattern $0b, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0b, Row 39; 
; Pattern $0b, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 44; 
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $05	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 46; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 48; 
	dc.b $00, $37	; Note B-1 on channel FM 1
	dc.b $01, $29	; Note E-1 on channel FM 2
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $02	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0b, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0b, Row 52; 
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $46, $93	; Set instrument for channel FM 6
	dc.b $26, $03	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $36, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 6
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $36, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $36, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $36, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $36, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $36, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 6
; Pattern $0b, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9b	; Set frequency '5275' (octave 2 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 6
; Pattern $0b, Row 56; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0b, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0b, Row 59; 
; Pattern $0b, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $80	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $31, $0b, $1a	; Set frequency '2842' (octave 1 semitone 794) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $0a	; Set frequency '2826' (octave 1 semitone 778) for channel FM 2
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $fa	; Set frequency '2810' (octave 1 semitone 762) for channel FM 2
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $ea	; Set frequency '2794' (octave 1 semitone 746) for channel FM 2
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $da	; Set frequency '2778' (octave 1 semitone 730) for channel FM 2
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $ca	; Set frequency '2762' (octave 1 semitone 714) for channel FM 2
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $ba	; Set frequency '2746' (octave 1 semitone 698) for channel FM 2
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
; Pattern $0b, Row 62; 
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $aa	; Set frequency '2730' (octave 1 semitone 682) for channel FM 2
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
; Pattern $0b, Row 63; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $9a	; Set frequency '2714' (octave 1 semitone 666) for channel FM 2
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 2
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $fe	; Set frequency '1278' (octave 0 semitone 1278) for channel FM 2
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $ee	; Set frequency '1262' (octave 0 semitone 1262) for channel FM 2
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $de	; Set frequency '1246' (octave 0 semitone 1246) for channel FM 2
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
; Pattern $0c, Row 0; 
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0c, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0c, Row 2; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0c, Row 3; 
; Pattern $0c, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0c, Row 7; 
; Pattern $0c, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0c, Row 11; 
; Pattern $0c, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $0c, Row 15; 
; Pattern $0c, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0c, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0c, Row 18; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $0c, Row 21; 
; Pattern $0c, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $0c, Row 23; 
; Pattern $0c, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 26; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $0c, Row 27; 
; Pattern $0c, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 31; 
; Pattern $0c, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0c, Row 34; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0c, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 42; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $0c, Row 47; 
; Pattern $0c, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0c, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0c, Row 50; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0c, Row 51; 
; Pattern $0c, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0c, Row 54; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0c, Row 55; 
; Pattern $0c, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0c, Row 58; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 59; 
; Pattern $0c, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0c, Row 61; 
; Pattern $0c, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $0c, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
; Pattern $0d, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0d, Row 1; 
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0d, Row 2; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0d, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0a	; Set volume for channel FM 5
; Pattern $0d, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $01, $25	; Note D-1 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0d, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0c	; Set volume for channel FM 5
; Pattern $0d, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $25, $0e	; Set volume for channel FM 5
; Pattern $0d, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0d, Row 9; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 10; 
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0d, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $25, $11	; Set volume for channel FM 5
; Pattern $0d, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0d, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $25, $13	; Set volume for channel FM 5
; Pattern $0d, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $0d, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $25, $15	; Set volume for channel FM 5
; Pattern $0d, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0d, Row 17; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0d, Row 18; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0d, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1a	; Set volume for channel FM 5
; Pattern $0d, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $0d, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1c	; Set volume for channel FM 5
; Pattern $0d, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0d, Row 25; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 26; 
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0d, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
; Pattern $0d, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $25, $21	; Set volume for channel FM 5
; Pattern $0d, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0d, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $25, $23	; Set volume for channel FM 5
; Pattern $0d, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0d, Row 33; 
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0d, Row 34; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0d, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $25, $27	; Set volume for channel FM 5
; Pattern $0d, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $25, $2a	; Set volume for channel FM 5
; Pattern $0d, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0d, Row 41; 
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 42; 
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0d, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $25, $2e	; Set volume for channel FM 5
; Pattern $0d, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0d, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $25, $30	; Set volume for channel FM 5
; Pattern $0d, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $0d, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $25, $31	; Set volume for channel FM 5
; Pattern $0d, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $01, $37	; Note B-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $04, $69	; Note E-3 on channel FM 4
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $32	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0d, Row 49; 
	dc.b $25, $33	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0d, Row 50; 
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $34	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0d, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $25, $35	; Set volume for channel FM 5
; Pattern $0d, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $36	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
; Pattern $0d, Row 53; 
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
; Pattern $0d, Row 54; 
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $38	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $0d, Row 55; 
; Pattern $0d, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $45, $8f	; Set instrument for channel FM 5
	dc.b $25, $39	; Set volume for channel FM 5
	dc.b $f5, $f7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
; Pattern $0d, Row 57; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0d, Row 58; 
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $45, $94	; Set instrument for channel FM 5
	dc.b $25, $3b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0d, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $25, $3c	; Set volume for channel FM 5
; Pattern $0d, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $25, $3d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $ce	; Set frequency '3278' (octave 1 semitone 1230) for channel FM 2
; Pattern $0d, Row 61; 
	dc.b $25, $3e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $de	; Set frequency '3294' (octave 1 semitone 1246) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $fe	; Set frequency '3326' (octave 1 semitone 1278) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 2
; Pattern $0d, Row 62; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $aa	; Set frequency '4778' (octave 2 semitone 682) for channel FM 2
; Pattern $0d, Row 63; 
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ca	; Set frequency '4810' (octave 2 semitone 714) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $da	; Set frequency '4826' (octave 2 semitone 730) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $ea	; Set frequency '4842' (octave 2 semitone 746) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $fa	; Set frequency '4858' (octave 2 semitone 762) for channel FM 2
; Pattern $0e, Row 0; 
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0e, Row 1; 
; Pattern $0e, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0e, Row 3; 
; Pattern $0e, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $0e, Row 5; 
; Pattern $0e, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0e, Row 7; 
; Pattern $0e, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $0e, Row 9; 
; Pattern $0e, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 11; 
; Pattern $0e, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0e, Row 13; 
; Pattern $0e, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $0e, Row 15; 
; Pattern $0e, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $0e, Row 17; 
; Pattern $0e, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 19; 
; Pattern $0e, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $0e, Row 21; 
; Pattern $0e, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $0e, Row 23; 
; Pattern $0e, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $0e, Row 25; 
; Pattern $0e, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $0e, Row 27; 
; Pattern $0e, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $0e, Row 29; 
; Pattern $0e, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 31; 
; Pattern $0e, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0e, Row 33; 
; Pattern $0e, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 35; 
; Pattern $0e, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0e, Row 37; 
; Pattern $0e, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $0e, Row 39; 
; Pattern $0e, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 41; 
; Pattern $0e, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 43; 
; Pattern $0e, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0e, Row 45; 
; Pattern $0e, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $0e, Row 47; 
; Pattern $0e, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $01, $29	; Note E-1 on channel FM 2
	dc.b $02, $c5	; Note D-6 on channel FM 3
	dc.b $44, $92	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $d2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 49; 
; Pattern $0e, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0e, Row 51; 
; Pattern $0e, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 53; 
; Pattern $0e, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0e, Row 55; 
; Pattern $0e, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $0e, Row 57; 
; Pattern $0e, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 59; 
; Pattern $0e, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0e, Row 61; 
; Pattern $0e, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $0e, Row 63; 
; Pattern $0f, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 1; 
; Pattern $0f, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0f, Row 3; 
; Pattern $0f, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0f, Row 5; 
; Pattern $0f, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 7; 
; Pattern $0f, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0f, Row 9; 
; Pattern $0f, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0f, Row 11; 
; Pattern $0f, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 13; 
; Pattern $0f, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $0f, Row 15; 
; Pattern $0f, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0f, Row 17; 
; Pattern $0f, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 19; 
; Pattern $0f, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0f, Row 21; 
; Pattern $0f, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $0f, Row 23; 
; Pattern $0f, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $44, $90	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $c0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $49	; Note E-2 on channel FM 4
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $0f, Row 25; 
; Pattern $0f, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0f, Row 27; 
; Pattern $0f, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 29; 
; Pattern $0f, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $0f, Row 31; 
; Pattern $0f, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 33; 
; Pattern $0f, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $0f, Row 35; 
; Pattern $0f, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0f, Row 37; 
; Pattern $0f, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 39; 
; Pattern $0f, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0f, Row 41; 
; Pattern $0f, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0f, Row 43; 
; Pattern $0f, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 45; 
; Pattern $0f, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $0f, Row 47; 
; Pattern $0f, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $37	; Note B-1 on channel FM 1
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 49; 
; Pattern $0f, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0f, Row 51; 
; Pattern $0f, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0f, Row 53; 
; Pattern $0f, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $0f, Row 55; 
; Pattern $0f, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $0f, Row 57; 
; Pattern $0f, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $0f, Row 59; 
; Pattern $0f, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $0f, Row 61; 
; Pattern $0f, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0f, Row 63; 
; Pattern $10, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $28, $04	; Set volume for channel PSG 1
; Pattern $10, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $2a, $04	; Set volume for channel PSG 3
; Pattern $10, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $29, $04	; Set volume for channel PSG 2
; Pattern $10, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $10, Row 7; 
; Pattern $10, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $10, Row 9; 
; Pattern $10, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $10, Row 11; 
; Pattern $10, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 13; 
; Pattern $10, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 15; 
; Pattern $10, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $10, Row 17; 
; Pattern $10, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $10, Row 19; 
; Pattern $10, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $10, Row 21; 
; Pattern $10, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $2a, $05	; Set volume for channel PSG 3
; Pattern $10, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $29, $05	; Set volume for channel PSG 2
; Pattern $10, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $10, Row 27; 
; Pattern $10, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $10, Row 29; 
; Pattern $10, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $10, Row 31; 
; Pattern $10, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $10, Row 33; 
; Pattern $10, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 35; 
; Pattern $10, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $10, Row 37; 
; Pattern $10, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $28, $06	; Set volume for channel PSG 1
; Pattern $10, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $29, $06	; Set volume for channel PSG 2
	dc.b $2a, $06	; Set volume for channel PSG 3
; Pattern $10, Row 43; 
; Pattern $10, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $10, Row 45; 
; Pattern $10, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $10, Row 47; 
; Pattern $10, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 49; 
; Pattern $10, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $10, Row 51; 
; Pattern $10, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 53; 
; Pattern $10, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 55; 
; Pattern $10, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $10, Row 57; 
; Pattern $10, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $10, Row 59; 
; Pattern $10, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $10, Row 61; 
; Pattern $10, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $10, Row 63; 
; Pattern $11, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $22, $08	; Set volume for channel FM 3
	dc.b $24, $08	; Set volume for channel FM 4
	dc.b $28, $07	; Set volume for channel PSG 1
; Pattern $11, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $11, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $22, $0a	; Set volume for channel FM 3
	dc.b $24, $0a	; Set volume for channel FM 4
	dc.b $2a, $07	; Set volume for channel PSG 3
; Pattern $11, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $11, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
	dc.b $24, $0c	; Set volume for channel FM 4
	dc.b $29, $07	; Set volume for channel PSG 2
; Pattern $11, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
; Pattern $11, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $11, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
; Pattern $11, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $22, $11	; Set volume for channel FM 3
	dc.b $24, $11	; Set volume for channel FM 4
; Pattern $11, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $22, $13	; Set volume for channel FM 3
	dc.b $24, $13	; Set volume for channel FM 4
; Pattern $11, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $22, $14	; Set volume for channel FM 3
	dc.b $24, $14	; Set volume for channel FM 4
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $11, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $22, $15	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
; Pattern $11, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $22, $16	; Set volume for channel FM 3
	dc.b $24, $16	; Set volume for channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $11, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
; Pattern $11, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $22, $18	; Set volume for channel FM 3
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $28, $08	; Set volume for channel PSG 1
; Pattern $11, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $22, $19	; Set volume for channel FM 3
	dc.b $24, $19	; Set volume for channel FM 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $11, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $22, $1a	; Set volume for channel FM 3
	dc.b $24, $1a	; Set volume for channel FM 4
; Pattern $11, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $09, $24	; Note F#1 on channel PSG 2
	dc.b $2a, $08	; Set volume for channel PSG 3
; Pattern $11, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $22, $1c	; Set volume for channel FM 3
	dc.b $24, $1c	; Set volume for channel FM 4
; Pattern $11, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $22, $1d	; Set volume for channel FM 3
	dc.b $24, $1d	; Set volume for channel FM 4
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $29, $08	; Set volume for channel PSG 2
; Pattern $11, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $22, $1e	; Set volume for channel FM 3
	dc.b $24, $1e	; Set volume for channel FM 4
; Pattern $11, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $11, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $22, $20	; Set volume for channel FM 3
	dc.b $24, $20	; Set volume for channel FM 4
; Pattern $11, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $22, $21	; Set volume for channel FM 3
	dc.b $24, $21	; Set volume for channel FM 4
; Pattern $11, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $22, $22	; Set volume for channel FM 3
	dc.b $24, $22	; Set volume for channel FM 4
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $11, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $22, $23	; Set volume for channel FM 3
	dc.b $24, $23	; Set volume for channel FM 4
; Pattern $11, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $22, $24	; Set volume for channel FM 3
	dc.b $24, $24	; Set volume for channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $22, $25	; Set volume for channel FM 3
	dc.b $24, $25	; Set volume for channel FM 4
; Pattern $11, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $22, $26	; Set volume for channel FM 3
	dc.b $24, $26	; Set volume for channel FM 4
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $11, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $22, $27	; Set volume for channel FM 3
	dc.b $24, $27	; Set volume for channel FM 4
; Pattern $11, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $22, $28	; Set volume for channel FM 3
	dc.b $24, $28	; Set volume for channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $11, Row 37; 
; Pattern $11, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $22, $29	; Set volume for channel FM 3
	dc.b $24, $29	; Set volume for channel FM 4
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $22, $2a	; Set volume for channel FM 3
	dc.b $24, $2a	; Set volume for channel FM 4
; Pattern $11, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $11, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $22, $2c	; Set volume for channel FM 3
	dc.b $24, $2c	; Set volume for channel FM 4
	dc.b $2a, $09	; Set volume for channel PSG 3
; Pattern $11, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $22, $2d	; Set volume for channel FM 3
	dc.b $24, $2d	; Set volume for channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $22, $2e	; Set volume for channel FM 3
	dc.b $24, $2e	; Set volume for channel FM 4
	dc.b $29, $09	; Set volume for channel PSG 2
; Pattern $11, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $24, $2f	; Set volume for channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
; Pattern $11, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $11, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $22, $31	; Set volume for channel FM 3
	dc.b $24, $31	; Set volume for channel FM 4
; Pattern $11, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $22, $32	; Set volume for channel FM 3
	dc.b $24, $32	; Set volume for channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $22, $33	; Set volume for channel FM 3
	dc.b $24, $33	; Set volume for channel FM 4
; Pattern $11, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $22, $34	; Set volume for channel FM 3
	dc.b $24, $34	; Set volume for channel FM 4
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $11, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $22, $35	; Set volume for channel FM 3
	dc.b $24, $35	; Set volume for channel FM 4
; Pattern $11, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $22, $36	; Set volume for channel FM 3
	dc.b $24, $36	; Set volume for channel FM 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $11, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $22, $37	; Set volume for channel FM 3
	dc.b $24, $37	; Set volume for channel FM 4
; Pattern $11, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $22, $38	; Set volume for channel FM 3
	dc.b $24, $38	; Set volume for channel FM 4
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $11, Row 55; 
; Pattern $11, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $39	; Set volume for channel FM 4
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $11, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $22, $3a	; Set volume for channel FM 3
	dc.b $24, $3a	; Set volume for channel FM 4
; Pattern $11, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $22, $3b	; Set volume for channel FM 3
	dc.b $24, $3b	; Set volume for channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $11, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $22, $3c	; Set volume for channel FM 3
	dc.b $24, $3c	; Set volume for channel FM 4
; Pattern $11, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $22, $3d	; Set volume for channel FM 3
	dc.b $24, $3d	; Set volume for channel FM 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $11, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $22, $3e	; Set volume for channel FM 3
	dc.b $24, $3e	; Set volume for channel FM 4
; Pattern $11, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $22, $3f	; Set volume for channel FM 3
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $11, Row 63; 
; Pattern $12, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $21	; Note C-1 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $12, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $28, $0a	; Set volume for channel PSG 1
; Pattern $12, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $12, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $2a, $0a	; Set volume for channel PSG 3
; Pattern $12, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $12, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $29, $0a	; Set volume for channel PSG 2
; Pattern $12, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $12, Row 7; 
; Pattern $12, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $12, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
; Pattern $12, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
; Pattern $12, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $12, Row 13; 
; Pattern $12, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $2a, $0b	; Set volume for channel PSG 3
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
; Pattern $12, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $29, $0b	; Set volume for channel PSG 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $12, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $20, $23	; Set volume for channel FM 1
; Pattern $12, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 19; 
; Pattern $12, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $12, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
; Pattern $12, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $12, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
; Pattern $12, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $28, $0c	; Set volume for channel PSG 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $20, $29	; Set volume for channel FM 1
	dc.b $2a, $0c	; Set volume for channel PSG 3
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $12, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $29, $0c	; Set volume for channel PSG 2
; Pattern $12, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
; Pattern $12, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
; Pattern $12, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $12, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
; Pattern $12, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $28, $0d	; Set volume for channel PSG 1
; Pattern $12, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $20, $30	; Set volume for channel FM 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $12, Row 37; 
; Pattern $12, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $20, $31	; Set volume for channel FM 1
	dc.b $29, $0d	; Set volume for channel PSG 2
	dc.b $2a, $0d	; Set volume for channel PSG 3
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $20, $32	; Set volume for channel FM 1
; Pattern $12, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $20, $33	; Set volume for channel FM 1
; Pattern $12, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $20, $34	; Set volume for channel FM 1
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 43; 
; Pattern $12, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $20, $35	; Set volume for channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $12, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $20, $36	; Set volume for channel FM 1
; Pattern $12, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $12, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $20, $37	; Set volume for channel FM 1
	dc.b $28, $0e	; Set volume for channel PSG 1
; Pattern $12, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $20, $38	; Set volume for channel FM 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $12, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $29, $0e	; Set volume for channel PSG 2
; Pattern $12, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $20, $39	; Set volume for channel FM 1
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $0a, $2e	; Note B-1 on channel PSG 3
; Pattern $12, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $20, $3a	; Set volume for channel FM 1
; Pattern $12, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $20, $3b	; Set volume for channel FM 1
; Pattern $12, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $20, $3c	; Set volume for channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $12, Row 55; 
; Pattern $12, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $20, $3d	; Set volume for channel FM 1
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $12, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $20, $3e	; Set volume for channel FM 1
; Pattern $12, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $20, $3f	; Set volume for channel FM 1
; Pattern $12, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $12, Row 61; 
; Pattern $12, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $12, Row 63; 
; Pattern $13, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $13, Row 1; 
; Pattern $13, Row 2; 
; Pattern $13, Row 3; 
; Pattern $13, Row 4; 
; Pattern $13, Row 5; 
; Pattern $13, Row 6; 
; Pattern $13, Row 7; 
; Pattern $13, Row 8; 
; Pattern $13, Row 9; 
; Pattern $13, Row 10; 
; Pattern $13, Row 11; 
; Pattern $13, Row 12; 
; Pattern $13, Row 13; 
; Pattern $13, Row 14; 
; Pattern $13, Row 15; 
; Pattern $13, Row 16; 
; Pattern $13, Row 17; 
; Pattern $13, Row 18; 
; Pattern $13, Row 19; 
; Pattern $13, Row 20; 
; Pattern $13, Row 21; 
; Pattern $13, Row 22; 
; Pattern $13, Row 23; 
; Pattern $13, Row 24; 
; Pattern $13, Row 25; 
; Pattern $13, Row 26; 
; Pattern $13, Row 27; 
; Pattern $13, Row 28; 
; Pattern $13, Row 29; 
; Pattern $13, Row 30; 
; Pattern $13, Row 31; 
; Pattern $13, Row 32; 
; Pattern $13, Row 33; 
; Pattern $13, Row 34; 
; Pattern $13, Row 35; 
; Pattern $13, Row 36; 
; Pattern $13, Row 37; 
; Pattern $13, Row 38; 
; Pattern $13, Row 39; 
; Pattern $13, Row 40; 
; Pattern $13, Row 41; 
; Pattern $13, Row 42; 
; Pattern $13, Row 43; 
; Pattern $13, Row 44; 
; Pattern $13, Row 45; 
; Pattern $13, Row 46; 
; Pattern $13, Row 47; 
; Pattern $13, Row 48; 
; Pattern $13, Row 49; 
; Pattern $13, Row 50; 
; Pattern $13, Row 51; 
; Pattern $13, Row 52; 
; Pattern $13, Row 53; 
; Pattern $13, Row 54; 
; Pattern $13, Row 55; 
; Pattern $13, Row 56; 
; Pattern $13, Row 57; 
; Pattern $13, Row 58; 
; Pattern $13, Row 59; 
; Pattern $13, Row 60; 
; Pattern $13, Row 61; 
; Pattern $13, Row 62; 
; Pattern $13, Row 63; 
	dc.b $fe, $c0	; Delay
	dc.b $ff	; The End

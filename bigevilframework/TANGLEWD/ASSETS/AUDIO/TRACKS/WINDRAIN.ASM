	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $fd	; Set loop
	dc.b $40, $69	; Set instrument for channel FM 1
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $f0, $40	; Set params for channel FM 1
	dc.b $41, $69	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $01, $21	; Note C-1 on channel FM 2
	dc.b $f1, $80	; Set params for channel FM 2
	dc.b $0a, $78	; Note C-5 on channel PSG 3
	dc.b $4b, $68	; Set instrument for channel PSG 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' (octave 0 semitone 2) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $0a	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $01, Row 0; 
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $4b	; Delay
	dc.b $3a, $0a, $01	; Set frequency '106' (octave 0 semitone 106) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
; Pattern $01, Row 13; 
	dc.b $fe, $2d	; Delay
	dc.b $01, $0f	; Note G-0 on channel FM 2
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
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
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $ff	; Delay
	dc.b $3a, $0a, $00	; Set frequency '26' (octave 0 semitone 26) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $78	; Delay
	dc.b $00, $21	; Note C-1 on channel FM 1
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
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
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
	dc.b $fe, $be	; Delay
	dc.b $2b, $06	; Set volume for channel PSG 4
; Pattern $02, Row 63; 
	dc.b $fe, $0a	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

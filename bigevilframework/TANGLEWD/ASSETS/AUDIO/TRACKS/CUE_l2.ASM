	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $52	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $d0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6b	; Note F-3 on channel FM 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $44, $54	; Set instrument for channel FM 4
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $f4, $90	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $af	; Note G-5 on channel FM 4
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $41, $52	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $50	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $42, $54	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $d0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $00, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $00, Row 64; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
; Pattern $00, Row 65; 
; Pattern $00, Row 66; 
; Pattern $00, Row 67; 
; Pattern $00, Row 68; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
; Pattern $00, Row 69; 
; Pattern $00, Row 70; 
; Pattern $00, Row 71; 
; Pattern $00, Row 72; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
; Pattern $00, Row 73; 
; Pattern $00, Row 74; 
; Pattern $00, Row 75; 
; Pattern $00, Row 76; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $00, Row 77; 
; Pattern $00, Row 78; 
; Pattern $00, Row 79; 
; Pattern $00, Row 80; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $00, Row 81; 
; Pattern $00, Row 82; 
; Pattern $00, Row 83; 
; Pattern $00, Row 84; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $00, Row 85; 
; Pattern $00, Row 86; 
; Pattern $00, Row 87; 
; Pattern $00, Row 88; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 89; 
; Pattern $00, Row 90; 
; Pattern $00, Row 91; 
; Pattern $00, Row 92; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $00, Row 93; 
; Pattern $00, Row 94; 
; Pattern $00, Row 95; 
; Pattern $01, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $af	; Note G-5 on channel FM 4
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $01, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $01, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
; Pattern $01, Row 64; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
; Pattern $01, Row 65; 
; Pattern $01, Row 66; 
; Pattern $01, Row 67; 
; Pattern $01, Row 68; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
; Pattern $01, Row 69; 
; Pattern $01, Row 70; 
; Pattern $01, Row 71; 
; Pattern $01, Row 72; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
; Pattern $01, Row 73; 
; Pattern $01, Row 74; 
; Pattern $01, Row 75; 
; Pattern $01, Row 76; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $01, Row 77; 
; Pattern $01, Row 78; 
; Pattern $01, Row 79; 
; Pattern $01, Row 80; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
; Pattern $01, Row 81; 
; Pattern $01, Row 82; 
; Pattern $01, Row 83; 
; Pattern $01, Row 84; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $01, Row 85; 
; Pattern $01, Row 86; 
; Pattern $01, Row 87; 
; Pattern $01, Row 88; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 89; 
; Pattern $01, Row 90; 
; Pattern $01, Row 91; 
; Pattern $01, Row 92; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $01, Row 93; 
; Pattern $01, Row 94; 
; Pattern $01, Row 95; 
; Pattern $02, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $02, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $02, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $02, Row 64; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $02, Row 65; 
; Pattern $02, Row 66; 
; Pattern $02, Row 67; 
; Pattern $02, Row 68; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $02, Row 69; 
; Pattern $02, Row 70; 
; Pattern $02, Row 71; 
; Pattern $02, Row 72; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 73; 
; Pattern $02, Row 74; 
; Pattern $02, Row 75; 
; Pattern $02, Row 76; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $02, Row 77; 
; Pattern $02, Row 78; 
; Pattern $02, Row 79; 
; Pattern $02, Row 80; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $02, Row 81; 
; Pattern $02, Row 82; 
; Pattern $02, Row 83; 
; Pattern $02, Row 84; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $02, Row 85; 
; Pattern $02, Row 86; 
; Pattern $02, Row 87; 
; Pattern $02, Row 88; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b5	; Note A#5 on channel FM 2
; Pattern $02, Row 89; 
; Pattern $02, Row 90; 
; Pattern $02, Row 91; 
; Pattern $02, Row 92; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $02, Row 93; 
; Pattern $02, Row 94; 
; Pattern $02, Row 95; 
; Pattern $03, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $03, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $03, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $03, Row 57; 
; Pattern $03, Row 58; 
; Pattern $03, Row 59; 
; Pattern $03, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
; Pattern $03, Row 63; 
; Pattern $03, Row 64; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $03, Row 65; 
; Pattern $03, Row 66; 
; Pattern $03, Row 67; 
; Pattern $03, Row 68; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $03, Row 69; 
; Pattern $03, Row 70; 
; Pattern $03, Row 71; 
; Pattern $03, Row 72; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 73; 
; Pattern $03, Row 74; 
; Pattern $03, Row 75; 
; Pattern $03, Row 76; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $03, Row 77; 
; Pattern $03, Row 78; 
; Pattern $03, Row 79; 
; Pattern $03, Row 80; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $03, Row 81; 
; Pattern $03, Row 82; 
; Pattern $03, Row 83; 
; Pattern $03, Row 84; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $03, Row 85; 
; Pattern $03, Row 86; 
; Pattern $03, Row 87; 
; Pattern $03, Row 88; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 89; 
; Pattern $03, Row 90; 
; Pattern $03, Row 91; 
; Pattern $03, Row 92; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $03, Row 93; 
; Pattern $03, Row 94; 
; Pattern $03, Row 95; 
; Pattern $04, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $28, $08	; Set volume for channel PSG 1
	dc.b $48, $59	; Set instrument for channel PSG 1
	dc.b $28, $08	; Set volume for channel PSG 1
	dc.b $08, $40	; Note G#2 on channel PSG 1
; Pattern $04, Row 1; 
; Pattern $04, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $29, $08	; Set volume for channel PSG 2
	dc.b $49, $59	; Set instrument for channel PSG 2
	dc.b $29, $08	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $4a, $59	; Set instrument for channel PSG 3
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $04, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $04, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $04, Row 27; 
; Pattern $04, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $5a	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $04, Row 33; 
; Pattern $04, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 57; 
; Pattern $04, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 59; 
; Pattern $04, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 63; 
; Pattern $04, Row 64; 
	dc.b $fe, $06	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 65; 
; Pattern $04, Row 66; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 67; 
; Pattern $04, Row 68; 
	dc.b $fe, $06	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 69; 
; Pattern $04, Row 70; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 71; 
; Pattern $04, Row 72; 
	dc.b $fe, $06	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 73; 
; Pattern $04, Row 74; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 75; 
; Pattern $04, Row 76; 
	dc.b $fe, $06	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 77; 
; Pattern $04, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 79; 
; Pattern $04, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $04, Row 81; 
; Pattern $04, Row 82; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 83; 
; Pattern $04, Row 84; 
	dc.b $fe, $06	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 85; 
; Pattern $04, Row 86; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 87; 
; Pattern $04, Row 88; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $04, Row 89; 
; Pattern $04, Row 90; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $04, Row 91; 
; Pattern $04, Row 92; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $04, Row 93; 
; Pattern $04, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $04, Row 95; 
; Pattern $05, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $08, $40	; Note G#2 on channel PSG 1
; Pattern $05, Row 1; 
; Pattern $05, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $05, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $05, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 57; 
; Pattern $05, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 63; 
; Pattern $05, Row 64; 
	dc.b $fe, $06	; Delay
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 65; 
; Pattern $05, Row 66; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 67; 
; Pattern $05, Row 68; 
	dc.b $fe, $06	; Delay
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 69; 
; Pattern $05, Row 70; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 71; 
; Pattern $05, Row 72; 
	dc.b $fe, $06	; Delay
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 73; 
; Pattern $05, Row 74; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 75; 
; Pattern $05, Row 76; 
	dc.b $fe, $06	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 77; 
; Pattern $05, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 79; 
; Pattern $05, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 81; 
; Pattern $05, Row 82; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 83; 
; Pattern $05, Row 84; 
	dc.b $fe, $06	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 85; 
; Pattern $05, Row 86; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 87; 
; Pattern $05, Row 88; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $05, Row 89; 
; Pattern $05, Row 90; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $05, Row 91; 
; Pattern $05, Row 92; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $05, Row 93; 
; Pattern $05, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $05, Row 95; 
; Pattern $06, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $06, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $06, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 63; 
; Pattern $06, Row 64; 
	dc.b $fe, $06	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $06, Row 65; 
; Pattern $06, Row 66; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 67; 
; Pattern $06, Row 68; 
	dc.b $fe, $06	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 69; 
; Pattern $06, Row 70; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 71; 
; Pattern $06, Row 72; 
	dc.b $fe, $06	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $06, Row 73; 
; Pattern $06, Row 74; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 75; 
; Pattern $06, Row 76; 
	dc.b $fe, $06	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 77; 
; Pattern $06, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 79; 
; Pattern $06, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 81; 
; Pattern $06, Row 82; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 83; 
; Pattern $06, Row 84; 
	dc.b $fe, $06	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 85; 
; Pattern $06, Row 86; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 87; 
; Pattern $06, Row 88; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $06, Row 89; 
; Pattern $06, Row 90; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $06, Row 91; 
; Pattern $06, Row 92; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $06, Row 93; 
; Pattern $06, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $06, Row 95; 
; Pattern $07, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $07, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $07, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 27; 
; Pattern $07, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $07, Row 57; 
; Pattern $07, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 59; 
; Pattern $07, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 61; 
; Pattern $07, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 63; 
; Pattern $07, Row 64; 
	dc.b $fe, $06	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $07, Row 65; 
; Pattern $07, Row 66; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 67; 
; Pattern $07, Row 68; 
	dc.b $fe, $06	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 69; 
; Pattern $07, Row 70; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 71; 
; Pattern $07, Row 72; 
	dc.b $fe, $06	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $07, Row 73; 
; Pattern $07, Row 74; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 75; 
; Pattern $07, Row 76; 
	dc.b $fe, $06	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 77; 
; Pattern $07, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 79; 
; Pattern $07, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 81; 
; Pattern $07, Row 82; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 83; 
; Pattern $07, Row 84; 
	dc.b $fe, $06	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 85; 
; Pattern $07, Row 86; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 87; 
; Pattern $07, Row 88; 
	dc.b $fe, $06	; Delay
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $07, Row 89; 
; Pattern $07, Row 90; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
; Pattern $07, Row 91; 
; Pattern $07, Row 92; 
	dc.b $fe, $06	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $07, Row 93; 
; Pattern $07, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $07, Row 95; 
; Pattern $08, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $08, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $08, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
	dc.b $fe, $03	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $52	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $d0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $c7	; Note D#6 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $08, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $08, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $08, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $08, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $52	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $d0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $cb	; Note F-6 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
; Pattern $08, Row 27; 
; Pattern $08, Row 28; 
	dc.b $fe, $06	; Delay
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $08, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $08, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $08, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $08, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $08, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $08, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $08, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $08, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $08, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $08, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $08, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $08, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $08, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $52	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $d0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b5	; Note A#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
; Pattern $08, Row 57; 
; Pattern $08, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $44	; Note A#2 on channel PSG 3
; Pattern $08, Row 59; 
; Pattern $08, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $08, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $08, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $08, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $08, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $08, Row 77; 
; Pattern $08, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $08, Row 79; 
; Pattern $08, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $08, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $08, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $08, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $08, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $08, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $08, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $08, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $08, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $08, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $08, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $08, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $08, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $08, Row 93; 
; Pattern $08, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $08, Row 95; 
; Pattern $09, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $09, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $09, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 8; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 10; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 12; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $09, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $09, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $09, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $09, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 26; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $09, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $09, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $09, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $09, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $09, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $09, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $09, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $09, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $09, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $09, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $09, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $09, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $09, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $09, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $09, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $09, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $09, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $09, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 60; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $09, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $09, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $09, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $09, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $09, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $09, Row 77; 
; Pattern $09, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $09, Row 79; 
; Pattern $09, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $09, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $09, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $09, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $09, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $09, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $09, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $09, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $09, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $09, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $09, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $09, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $09, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $09, Row 93; 
; Pattern $09, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $09, Row 95; 
; Pattern $0a, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0a, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0a, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0a, Row 6; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0a, Row 14; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0a, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0a, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0a, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 22; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0a, Row 30; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0a, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0a, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0a, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0a, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0a, Row 38; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0a, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0a, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0a, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0a, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0a, Row 46; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0a, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0a, Row 50; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0a, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0a, Row 54; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 58; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0a, Row 62; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0a, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0a, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0a, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0a, Row 66; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 70; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 74; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $0a, Row 77; 
; Pattern $0a, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0a, Row 79; 
; Pattern $0a, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0a, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0a, Row 82; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0a, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0a, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0a, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0a, Row 86; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0a, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0a, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0a, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0a, Row 90; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0a, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0a, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $0a, Row 93; 
; Pattern $0a, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0a, Row 95; 
; Pattern $0b, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0b, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0b, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0b, Row 6; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0b, Row 14; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0b, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0b, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0b, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 22; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0b, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0b, Row 30; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0b, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0b, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0b, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0b, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0b, Row 38; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0b, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0b, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0b, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0b, Row 46; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0b, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0b, Row 50; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0b, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0b, Row 54; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 58; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0b, Row 62; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0b, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0b, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0b, Row 66; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 70; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 74; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $0b, Row 77; 
; Pattern $0b, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0b, Row 79; 
; Pattern $0b, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0b, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0b, Row 82; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0b, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0b, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0b, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0b, Row 86; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0b, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0b, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0b, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0b, Row 90; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0b, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0b, Row 92; 
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
; Pattern $0b, Row 93; 
; Pattern $0b, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $30	; Note C-2 on channel PSG 1
; Pattern $0b, Row 95; 
; Pattern $0c, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $63	; Note C#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0c, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0c, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0c, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0c, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0c, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0c, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 8; 
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 10; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 12; 
	dc.b $02, $83	; Note C#4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0c, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0c, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0c, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0c, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0c, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0c, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 20; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 26; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0c, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0c, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0c, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0c, Row 32; 
	dc.b $00, $a3	; Note C#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0c, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0c, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0c, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0c, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0c, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0c, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0c, Row 40; 
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0c, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0c, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0c, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0c, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0c, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0c, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0c, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0c, Row 48; 
	dc.b $00, $63	; Note C#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0c, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0c, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0c, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0c, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0c, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 56; 
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 60; 
	dc.b $02, $83	; Note C#4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0c, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0c, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0c, Row 63; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0c, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0c, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0c, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 68; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 71; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0c, Row 77; 
; Pattern $0c, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0c, Row 79; 
; Pattern $0c, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a3	; Note C#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0c, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0c, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0c, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0c, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0c, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0c, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0c, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0c, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0c, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0c, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0c, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0c, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0c, Row 93; 
; Pattern $0c, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0c, Row 95; 
; Pattern $0d, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0d, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0d, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0d, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0d, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0d, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0d, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 12; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0d, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0d, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0d, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0d, Row 16; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0d, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0d, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 20; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0d, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0d, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0d, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0d, Row 32; 
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0d, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0d, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0d, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0d, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0d, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0d, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0d, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0d, Row 40; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0d, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0d, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0d, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0d, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0d, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0d, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0d, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0d, Row 48; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0d, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0d, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0d, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0d, Row 52; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0d, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0d, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 60; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0d, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0d, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0d, Row 63; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0d, Row 64; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0d, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0d, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 68; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 71; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $0d, Row 77; 
; Pattern $0d, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0d, Row 79; 
; Pattern $0d, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0d, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0d, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0d, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0d, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0d, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0d, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0d, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0d, Row 88; 
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0d, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0d, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0d, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0d, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
; Pattern $0d, Row 93; 
; Pattern $0d, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0d, Row 95; 
; Pattern $0e, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $63	; Note C#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0e, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0e, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0e, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 8; 
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 10; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 12; 
	dc.b $02, $83	; Note C#4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0e, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0e, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0e, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0e, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 20; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 26; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0e, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0e, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0e, Row 32; 
	dc.b $00, $a3	; Note C#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0e, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0e, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0e, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0e, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0e, Row 40; 
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0e, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0e, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0e, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0e, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0e, Row 48; 
	dc.b $00, $63	; Note C#3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0e, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0e, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0e, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 56; 
	dc.b $01, $8b	; Note F-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 60; 
	dc.b $02, $83	; Note C#4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0e, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0e, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0e, Row 63; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0e, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0e, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0e, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 68; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 71; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0e, Row 77; 
; Pattern $0e, Row 78; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0e, Row 79; 
; Pattern $0e, Row 80; 
	dc.b $fe, $06	; Delay
	dc.b $00, $a3	; Note C#5 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0e, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0e, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0e, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0e, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0e, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0e, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0e, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0e, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0e, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0e, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0e, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0e, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0e, Row 93; 
; Pattern $0e, Row 94; 
	dc.b $fe, $06	; Delay
	dc.b $08, $36	; Note D#2 on channel PSG 1
; Pattern $0e, Row 95; 
; Pattern $0f, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0f, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0f, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0f, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 12; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0f, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0f, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0f, Row 16; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0f, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 20; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $57	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $f0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $ad	; Note F#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $0f	; Set frequency '11023' (octave 5 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $95	; Set frequency '9365' (octave 4 semitone 1173) for channel FM 5
; Pattern $0f, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $97	; Set frequency '9111' (octave 4 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
; Pattern $0f, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
; Pattern $0f, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $0f, Row 32; 
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $56	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0f, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0f, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $b1	; Note G#5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7e	; Set frequency '11134' (octave 5 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $ff	; Set frequency '11007' (octave 5 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $04	; Set frequency '9476' (octave 4 semitone 1284) for channel FM 5
; Pattern $0f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $85	; Set frequency '9349' (octave 4 semitone 1157) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $87	; Set frequency '9095' (octave 4 semitone 903) for channel FM 5
; Pattern $0f, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0f, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $0f, Row 40; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0f, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0f, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $db	; Set frequency '10971' (octave 5 semitone 731) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $61	; Set frequency '9313' (octave 4 semitone 1121) for channel FM 5
; Pattern $0f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $63	; Set frequency '9059' (octave 4 semitone 867) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $0f, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
; Pattern $0f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 5
; Pattern $0f, Row 48; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $45, $55	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 5
; Pattern $0f, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c5	; Set frequency '4805' (octave 2 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 5
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4b	; Set frequency '3147' (octave 1 semitone 1099) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4d	; Set frequency '2893' (octave 1 semitone 845) for channel FM 5
; Pattern $0f, Row 52; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d3	; Set frequency '1235' (octave 0 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d5	; Set frequency '981' (octave 0 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $56	; Set frequency '854' (octave 0 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d7	; Set frequency '727' (octave 0 semitone 727) for channel FM 5
; Pattern $0f, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 60; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 63; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 64; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 68; 
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 71; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 78; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 80; 
	dc.b $00, $87	; Note D#4 on channel FM 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 82; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 86; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 88; 
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 90; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 94; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 0; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 8; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 10; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 12; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 26; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 60; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 78; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 80; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 94; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 0; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 2; 
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 6; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 8; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 10; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 12; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 14; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 18; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 22; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 26; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 30; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 34; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 38; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 42; 
	dc.b $0a, $3e	; Note G-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 46; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 50; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 54; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 58; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 60; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 62; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 66; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 70; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 74; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 78; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 80; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 82; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 86; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 90; 
	dc.b $0a, $44	; Note A#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 94; 
	dc.b $08, $36	; Note D#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 0; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 6; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 14; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 22; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 30; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 38; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 46; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 50; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 54; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 58; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 62; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 66; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 70; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 74; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 78; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 80; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 82; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 86; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 90; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 94; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $12, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 0; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 2; 
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 6; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 10; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 14; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 18; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 22; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 26; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 30; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 34; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 38; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 42; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 46; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 50; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 54; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 58; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 62; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 66; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 70; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 74; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 78; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 80; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 82; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 86; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 90; 
	dc.b $0a, $3a	; Note F-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 94; 
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $13, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 0; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 8; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 12; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 60; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 70; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 74; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 78; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 80; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 82; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 86; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 90; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 94; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $14, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 0; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 4; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 8; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 12; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 16; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 20; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 24; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 28; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 32; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 36; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 44; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 48; 
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 56; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 60; 
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 64; 
	dc.b $00, $8b	; Note F-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 68; 
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 70; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 72; 
	dc.b $01, $91	; Note G#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 74; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 76; 
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 78; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 80; 
	dc.b $00, $a1	; Note C-5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 82; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 84; 
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 86; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 88; 
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 90; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 92; 
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 94; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $15, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 0; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 70; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 74; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 78; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 80; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 82; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 84; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 86; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 88; 
	dc.b $01, $b5	; Note A#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 90; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 92; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 94; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $16, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 0; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 4; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 8; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 12; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 15; 
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 16; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 20; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 23; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 24; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 28; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 32; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 36; 
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 40; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 44; 
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 48; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 52; 
	dc.b $04, $b1	; Note G#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 56; 
	dc.b $01, $87	; Note D#4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 60; 
	dc.b $02, $71	; Note G#3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 64; 
	dc.b $00, $91	; Note G#4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 68; 
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 70; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 71; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 72; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 73; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 74; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 75; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 76; 
	dc.b $02, $91	; Note G#4 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 77; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 78; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 79; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 80; 
	dc.b $00, $a7	; Note D#5 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 81; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 82; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 83; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 84; 
	dc.b $44, $52	; Set instrument for channel FM 4
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 85; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 86; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 87; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 88; 
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 89; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 90; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 91; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 92; 
	dc.b $42, $52	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $a7	; Note D#5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 93; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 94; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $17, Row 95; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $18, Row 0; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $45, $54	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $d0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $91	; Note G#4 on channel FM 5
; Pattern $18, Row 1; 
; Pattern $18, Row 2; 
; Pattern $18, Row 3; 
; Pattern $18, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $44, $54	; Set instrument for channel FM 4
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $18, Row 5; 
; Pattern $18, Row 6; 
; Pattern $18, Row 7; 
; Pattern $18, Row 8; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $18, Row 9; 
; Pattern $18, Row 10; 
; Pattern $18, Row 11; 
; Pattern $18, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $42, $54	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $18, Row 13; 
; Pattern $18, Row 14; 
; Pattern $18, Row 15; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $18, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $18, Row 17; 
; Pattern $18, Row 18; 
; Pattern $18, Row 19; 
; Pattern $18, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $18, Row 21; 
; Pattern $18, Row 22; 
; Pattern $18, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $18, Row 25; 
; Pattern $18, Row 26; 
; Pattern $18, Row 27; 
; Pattern $18, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $18, Row 29; 
; Pattern $18, Row 30; 
; Pattern $18, Row 31; 
; Pattern $18, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $18, Row 33; 
; Pattern $18, Row 34; 
; Pattern $18, Row 35; 
; Pattern $18, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $18, Row 37; 
; Pattern $18, Row 38; 
; Pattern $18, Row 39; 
; Pattern $18, Row 40; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
; Pattern $18, Row 41; 
; Pattern $18, Row 42; 
; Pattern $18, Row 43; 
; Pattern $18, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $18, Row 45; 
; Pattern $18, Row 46; 
; Pattern $18, Row 47; 
; Pattern $18, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $71	; Note G#3 on channel FM 1
; Pattern $18, Row 49; 
; Pattern $18, Row 50; 
; Pattern $18, Row 51; 
; Pattern $18, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $b1	; Note G#5 on channel FM 4
; Pattern $18, Row 53; 
; Pattern $18, Row 54; 
; Pattern $18, Row 55; 
; Pattern $18, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $87	; Note D#4 on channel FM 2
; Pattern $18, Row 57; 
; Pattern $18, Row 58; 
; Pattern $18, Row 59; 
; Pattern $18, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $71	; Note G#3 on channel FM 3
; Pattern $18, Row 61; 
; Pattern $18, Row 62; 
; Pattern $18, Row 63; 
; Pattern $18, Row 64; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $91	; Note G#4 on channel FM 1
; Pattern $18, Row 65; 
; Pattern $18, Row 66; 
; Pattern $18, Row 67; 
; Pattern $18, Row 68; 
	dc.b $fe, $0c	; Delay
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $18, Row 69; 
; Pattern $18, Row 70; 
; Pattern $18, Row 71; 
; Pattern $18, Row 72; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $18, Row 73; 
; Pattern $18, Row 74; 
; Pattern $18, Row 75; 
; Pattern $18, Row 76; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $91	; Note G#4 on channel FM 3
; Pattern $18, Row 77; 
; Pattern $18, Row 78; 
; Pattern $18, Row 79; 
; Pattern $18, Row 80; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $a7	; Note D#5 on channel FM 1
; Pattern $18, Row 81; 
; Pattern $18, Row 82; 
; Pattern $18, Row 83; 
; Pattern $18, Row 84; 
	dc.b $fe, $0c	; Delay
	dc.b $44, $52	; Set instrument for channel FM 4
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $18, Row 85; 
; Pattern $18, Row 86; 
; Pattern $18, Row 87; 
; Pattern $18, Row 88; 
	dc.b $fe, $0c	; Delay
	dc.b $01, $b1	; Note G#5 on channel FM 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 89; 
; Pattern $18, Row 90; 
; Pattern $18, Row 91; 
; Pattern $18, Row 92; 
	dc.b $fe, $0c	; Delay
	dc.b $42, $52	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $a7	; Note D#5 on channel FM 3
; Pattern $18, Row 93; 
; Pattern $18, Row 94; 
; Pattern $18, Row 95; 
; Pattern $19, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $91	; Note G#4 on channel FM 5
; Pattern $19, Row 1; 
; Pattern $19, Row 2; 
; Pattern $19, Row 3; 
; Pattern $19, Row 4; 
; Pattern $19, Row 5; 
; Pattern $19, Row 6; 
	dc.b $fe, $12	; Delay
	dc.b $20, $06	; Set volume for channel FM 1
	dc.b $21, $10	; Set volume for channel FM 2
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
	dc.b $25, $10	; Set volume for channel FM 5
; Pattern $19, Row 7; 
; Pattern $19, Row 8; 
; Pattern $19, Row 9; 
	dc.b $fe, $09	; Delay
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $25, $15	; Set volume for channel FM 5
; Pattern $19, Row 10; 
	dc.b $fe, $03	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
; Pattern $19, Row 11; 
; Pattern $19, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
	dc.b $24, $19	; Set volume for channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
; Pattern $19, Row 13; 
; Pattern $19, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $20, $10	; Set volume for channel FM 1
; Pattern $19, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
	dc.b $24, $1e	; Set volume for channel FM 4
	dc.b $25, $1e	; Set volume for channel FM 5
; Pattern $19, Row 16; 
; Pattern $19, Row 17; 
; Pattern $19, Row 18; 
	dc.b $fe, $09	; Delay
	dc.b $20, $16	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
	dc.b $24, $22	; Set volume for channel FM 4
	dc.b $25, $22	; Set volume for channel FM 5
; Pattern $19, Row 19; 
; Pattern $19, Row 20; 
; Pattern $19, Row 21; 
	dc.b $fe, $09	; Delay
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $25, $27	; Set volume for channel FM 5
; Pattern $19, Row 22; 
	dc.b $fe, $03	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
; Pattern $19, Row 23; 
; Pattern $19, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $25, $2b	; Set volume for channel FM 5
; Pattern $19, Row 25; 
; Pattern $19, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
; Pattern $19, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $21, $30	; Set volume for channel FM 2
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $25, $30	; Set volume for channel FM 5
; Pattern $19, Row 28; 
; Pattern $19, Row 29; 
; Pattern $19, Row 30; 
	dc.b $fe, $09	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $34	; Set volume for channel FM 2
	dc.b $22, $34	; Set volume for channel FM 3
	dc.b $24, $34	; Set volume for channel FM 4
	dc.b $25, $34	; Set volume for channel FM 5
; Pattern $19, Row 31; 
; Pattern $19, Row 32; 
; Pattern $19, Row 33; 
	dc.b $fe, $09	; Delay
	dc.b $21, $39	; Set volume for channel FM 2
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $39	; Set volume for channel FM 4
	dc.b $25, $39	; Set volume for channel FM 5
; Pattern $19, Row 34; 
	dc.b $fe, $03	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
; Pattern $19, Row 35; 
; Pattern $19, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $21, $3d	; Set volume for channel FM 2
	dc.b $22, $3d	; Set volume for channel FM 3
	dc.b $24, $3d	; Set volume for channel FM 4
	dc.b $25, $3d	; Set volume for channel FM 5
; Pattern $19, Row 37; 
; Pattern $19, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $20, $30	; Set volume for channel FM 1
; Pattern $19, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $21, $42	; Set volume for channel FM 2
	dc.b $22, $42	; Set volume for channel FM 3
	dc.b $24, $42	; Set volume for channel FM 4
	dc.b $25, $42	; Set volume for channel FM 5
; Pattern $19, Row 40; 
; Pattern $19, Row 41; 
; Pattern $19, Row 42; 
	dc.b $fe, $09	; Delay
	dc.b $20, $35	; Set volume for channel FM 1
	dc.b $21, $46	; Set volume for channel FM 2
	dc.b $22, $46	; Set volume for channel FM 3
	dc.b $24, $46	; Set volume for channel FM 4
	dc.b $25, $46	; Set volume for channel FM 5
; Pattern $19, Row 43; 
; Pattern $19, Row 44; 
; Pattern $19, Row 45; 
	dc.b $fe, $09	; Delay
	dc.b $21, $4b	; Set volume for channel FM 2
	dc.b $22, $4b	; Set volume for channel FM 3
	dc.b $24, $4b	; Set volume for channel FM 4
	dc.b $25, $4b	; Set volume for channel FM 5
; Pattern $19, Row 46; 
	dc.b $fe, $03	; Delay
	dc.b $20, $3a	; Set volume for channel FM 1
; Pattern $19, Row 47; 
; Pattern $19, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $21, $4f	; Set volume for channel FM 2
	dc.b $22, $4f	; Set volume for channel FM 3
	dc.b $24, $4f	; Set volume for channel FM 4
	dc.b $25, $4f	; Set volume for channel FM 5
; Pattern $19, Row 49; 
; Pattern $19, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $20, $40	; Set volume for channel FM 1
; Pattern $19, Row 51; 
; Pattern $19, Row 52; 
; Pattern $19, Row 53; 
; Pattern $19, Row 54; 
; Pattern $19, Row 55; 
	dc.b $fe, $0f	; Delay
	dc.b $20, $45	; Set volume for channel FM 1
; Pattern $19, Row 56; 
; Pattern $19, Row 57; 
; Pattern $19, Row 58; 
; Pattern $19, Row 59; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $4a	; Set volume for channel FM 1
; Pattern $19, Row 60; 
; Pattern $19, Row 61; 
; Pattern $19, Row 62; 
; Pattern $19, Row 63; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $4f	; Set volume for channel FM 1
; Pattern $19, Row 64; 
; Pattern $19, Row 65; 
; Pattern $19, Row 66; 
; Pattern $19, Row 67; 
; Pattern $19, Row 68; 
; Pattern $19, Row 69; 
; Pattern $19, Row 70; 
; Pattern $19, Row 71; 
; Pattern $19, Row 72; 
; Pattern $19, Row 73; 
; Pattern $19, Row 74; 
; Pattern $19, Row 75; 
; Pattern $19, Row 76; 
; Pattern $19, Row 77; 
; Pattern $19, Row 78; 
; Pattern $19, Row 79; 
; Pattern $19, Row 80; 
; Pattern $19, Row 81; 
; Pattern $19, Row 82; 
; Pattern $19, Row 83; 
; Pattern $19, Row 84; 
; Pattern $19, Row 85; 
; Pattern $19, Row 86; 
; Pattern $19, Row 87; 
; Pattern $19, Row 88; 
; Pattern $19, Row 89; 
; Pattern $19, Row 90; 
; Pattern $19, Row 91; 
; Pattern $19, Row 92; 
; Pattern $19, Row 93; 
; Pattern $19, Row 94; 
; Pattern $19, Row 95; 
	dc.b $fe, $60	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

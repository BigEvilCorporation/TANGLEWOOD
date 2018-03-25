	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $bd	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $00, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $4b, $c4	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $00, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $00, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $00, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $00, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $00, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $00, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $00, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $01, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $01, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $01, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $01, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $01, Row 36; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $02	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $01, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $01, Row 60; 
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $02, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $02, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $02, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $02, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $02, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $02, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $02, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $02, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $02, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $02, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $02, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $02, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $03, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $03, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $03, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $03, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $03, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $03, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $03, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $03, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $03, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $40, $bf	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 6
; Pattern $03, Row 33; 
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $03, Row 34; 
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $03, Row 35; 
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $03, Row 36; 
	dc.b $20, $29	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $03, Row 37; 
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $03, Row 38; 
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $03, Row 39; 
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $03, Row 40; 
	dc.b $20, $23	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $03, Row 41; 
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
; Pattern $03, Row 42; 
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
; Pattern $03, Row 43; 
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $03, Row 44; 
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $03, Row 45; 
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $03, Row 46; 
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $03, Row 47; 
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $03, Row 48; 
	dc.b $20, $16	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 49; 
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $03, Row 50; 
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $03, Row 51; 
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
; Pattern $03, Row 52; 
	dc.b $20, $10	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 53; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $03, Row 54; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $03, Row 55; 
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
; Pattern $03, Row 56; 
	dc.b $20, $0a	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $03, Row 57; 
	dc.b $20, $08	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $03, Row 58; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $03, Row 59; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $03, Row 60; 
	dc.b $20, $04	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $03, Row 61; 
	dc.b $20, $02	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $03, Row 62; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 1
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 1
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $04, Row 0; 
	dc.b $40, $bd	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $42, $c0	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $44, $c0	; Set instrument for channel FM 4
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $45, $c3	; Set instrument for channel FM 5
	dc.b $05, $69	; Note E-3 on channel FM 5
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $4a, $c5	; Set instrument for channel PSG 3
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $0a, $40	; Note G#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 6
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $04, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $49, $c5	; Set instrument for channel PSG 2
	dc.b $29, $06	; Set volume for channel PSG 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $04, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $c1	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $04, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $48, $c5	; Set instrument for channel PSG 1
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $04, Row 8; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $04, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $04, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $04, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $04, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $04, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $04, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $04, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $04, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $22	; Set frequency '6946' (octave 3 semitone 802) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $04, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $09, $32	; Note C#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $04, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $04, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $04, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $04, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $04, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $71	; Note G#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $40	; Note G#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $04, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $04, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $04, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $04, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $04, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $04, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $05, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $05, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $05, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $05, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $05, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $05, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $35	; Set frequency '7221' (octave 3 semitone 1077) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $31	; Set frequency '7217' (octave 3 semitone 1073) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $2d	; Set frequency '7213' (octave 3 semitone 1069) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $29	; Set frequency '7209' (octave 3 semitone 1065) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $25	; Set frequency '7205' (octave 3 semitone 1061) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $21	; Set frequency '7201' (octave 3 semitone 1057) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1d	; Set frequency '7197' (octave 3 semitone 1053) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $05, Row 36; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $02	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $05, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $0a, $42	; Note A-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $4a	; Note C#3 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $05, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $4a	; Note C#3 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $05, Row 60; 
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $05, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $06, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $77	; Note B-3 on channel FM 5
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $40	; Note G#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $06, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $06, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $46	; Note B-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $06, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $06, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $06, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $06, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $06, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $06, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 5
; Pattern $06, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $05, $71	; Note G#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $06, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $06, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $06, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $06, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $06, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $69	; Note E-3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $32	; Note C#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $06, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $06, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $06, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $06, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $06, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $07, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $07, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $07, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $07, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $07, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $07, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $07, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 5
; Pattern $07, Row 32; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $05, $69	; Note E-3 on channel FM 5
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $42	; Note A-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $07, Row 36; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $02	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $07, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $32	; Note C#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $07, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $07, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $07, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $08, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $69	; Note E-3 on channel FM 5
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $40	; Note G#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $08, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $08, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $08, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $08, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $08, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $08, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $08, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $08, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 5
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $22	; Set frequency '6946' (octave 3 semitone 802) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
; Pattern $08, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
; Pattern $08, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
; Pattern $08, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $09, $32	; Note C#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $08, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $08, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $08, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $08, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
; Pattern $08, Row 47; 
; Pattern $08, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $4a	; Note C#3 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $08, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $08, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $4a	; Note C#3 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $08, Row 55; 
; Pattern $08, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $08, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $08, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $08, Row 63; 
; Pattern $09, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $77	; Note B-3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $09, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $09, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $46	; Note B-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $09, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $09, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
; Pattern $09, Row 15; 
; Pattern $09, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $09, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 23; 
; Pattern $09, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $09, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 5
; Pattern $09, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 5
; Pattern $09, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
; Pattern $09, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 5
; Pattern $09, Row 32; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $05, $73	; Note A-3 on channel FM 5
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $09, $42	; Note A-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $09, Row 36; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 43; 
; Pattern $09, Row 44; 
	dc.b $fe, $02	; Delay
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $09, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $71	; Note G#3 on channel FM 5
	dc.b $0a, $46	; Note B-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
	dc.b $fe, $02	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $09, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $09, Row 55; 
; Pattern $09, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $09, Row 60; 
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $09, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $09, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0a, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $40	; Note G#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $32	; Note C#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0a, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $0a, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0a, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0a, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $0a, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $0a, Row 15; 
; Pattern $0a, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0a, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 23; 
; Pattern $0a, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0a, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0a, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $0a, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
; Pattern $0a, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $91	; Set frequency '6801' (octave 3 semitone 657) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $05, $71	; Note G#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $09, $40	; Note G#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0a, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $0a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $0a, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $08, $40	; Note G#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0a, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0a, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $0a, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
; Pattern $0a, Row 47; 
; Pattern $0a, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $05, $69	; Note E-3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $32	; Note C#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0a, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0a, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0a, Row 55; 
; Pattern $0a, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0a, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0a, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $0a, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
; Pattern $0a, Row 63; 
; Pattern $0b, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0b, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0b, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $0b, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $3c	; Note F#2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0b, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0b, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
; Pattern $0b, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
; Pattern $0b, Row 15; 
; Pattern $0b, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0b, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
; Pattern $0b, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
; Pattern $0b, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
; Pattern $0b, Row 23; 
; Pattern $0b, Row 24; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0b, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
; Pattern $0b, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $0b, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $0b, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
; Pattern $0b, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 5
; Pattern $0b, Row 32; 
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $46, $be	; Set instrument for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $50	; Note E-3 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $0b, Row 34; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $09, $4a	; Note C#3 on channel PSG 2
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $0b, Row 36; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $0b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $0b, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $08, $4a	; Note C#3 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $0b, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
; Pattern $0b, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $0b, Row 43; 
; Pattern $0b, Row 44; 
	dc.b $fe, $02	; Delay
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $0b, Row 46; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $0b, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $05, $77	; Note B-3 on channel FM 5
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $0b, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $09, $46	; Note B-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $0b, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
; Pattern $0b, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $08, $46	; Note B-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $0b, Row 55; 
; Pattern $0b, Row 56; 
	dc.b $fe, $02	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0b, Row 58; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
; Pattern $0b, Row 60; 
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $46, $be	; Set instrument for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $0b, Row 62; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $0c, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $36, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 6
; Pattern $0c, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $36, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $0c, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
; Pattern $0c, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
; Pattern $0c, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $c1	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
; Pattern $0c, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
; Pattern $0c, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $0c, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
; Pattern $0c, Row 8; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $bd	; Set frequency '7357' (octave 3 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 5
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $bb	; Set frequency '7355' (octave 3 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 5
; Pattern $0c, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 5
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $b7	; Set frequency '7351' (octave 3 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 5
; Pattern $0c, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $b5	; Set frequency '7349' (octave 3 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 5
; Pattern $0c, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $b3	; Set frequency '7347' (octave 3 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 5
; Pattern $0c, Row 14; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b1	; Set frequency '7345' (octave 3 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 5
; Pattern $0c, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 5
; Pattern $0c, Row 16; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $ad	; Set frequency '7341' (octave 3 semitone 1197) for channel FM 5
	dc.b $3a, $05, $06	; Set frequency '101' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 5
	dc.b $3a, $06, $06	; Set frequency '102' for channel PSG 3
; Pattern $0c, Row 17; 
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $ab	; Set frequency '7339' (octave 3 semitone 1195) for channel FM 5
	dc.b $3a, $07, $06	; Set frequency '103' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
	dc.b $3a, $08, $06	; Set frequency '104' for channel PSG 3
; Pattern $0c, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $02	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $a9	; Set frequency '7337' (octave 3 semitone 1193) for channel FM 5
	dc.b $39, $01, $07	; Set frequency '113' for channel PSG 2
	dc.b $3a, $09, $06	; Set frequency '105' for channel PSG 3
; Pattern $0c, Row 19; 
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 5
	dc.b $39, $02, $07	; Set frequency '114' for channel PSG 2
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $a7	; Set frequency '7335' (octave 3 semitone 1191) for channel FM 5
	dc.b $39, $03, $07	; Set frequency '115' for channel PSG 2
	dc.b $3a, $0b, $06	; Set frequency '107' for channel PSG 3
; Pattern $0c, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 5
	dc.b $39, $04, $07	; Set frequency '116' for channel PSG 2
	dc.b $3a, $0c, $06	; Set frequency '108' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 5
	dc.b $39, $05, $07	; Set frequency '117' for channel PSG 2
	dc.b $3a, $0d, $06	; Set frequency '109' for channel PSG 3
; Pattern $0c, Row 21; 
	dc.b $2a, $06	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 5
	dc.b $39, $06, $07	; Set frequency '118' for channel PSG 2
	dc.b $3a, $0e, $06	; Set frequency '110' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $a3	; Set frequency '7331' (octave 3 semitone 1187) for channel FM 5
	dc.b $39, $07, $07	; Set frequency '119' for channel PSG 2
	dc.b $3a, $0f, $06	; Set frequency '111' for channel PSG 3
; Pattern $0c, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $02	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 5
	dc.b $38, $01, $07	; Set frequency '113' for channel PSG 1
	dc.b $39, $08, $07	; Set frequency '120' for channel PSG 2
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
; Pattern $0c, Row 23; 
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a1	; Set frequency '7329' (octave 3 semitone 1185) for channel FM 5
	dc.b $38, $02, $07	; Set frequency '114' for channel PSG 1
	dc.b $39, $09, $07	; Set frequency '121' for channel PSG 2
	dc.b $3a, $01, $07	; Set frequency '113' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 5
	dc.b $38, $03, $07	; Set frequency '115' for channel PSG 1
	dc.b $39, $0a, $07	; Set frequency '122' for channel PSG 2
	dc.b $3a, $02, $07	; Set frequency '114' for channel PSG 3
; Pattern $0c, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $29, $08	; Set volume for channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $9f	; Set frequency '7327' (octave 3 semitone 1183) for channel FM 5
	dc.b $38, $04, $07	; Set frequency '116' for channel PSG 1
	dc.b $39, $0b, $07	; Set frequency '123' for channel PSG 2
	dc.b $3a, $03, $07	; Set frequency '115' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
	dc.b $38, $05, $07	; Set frequency '117' for channel PSG 1
	dc.b $39, $0c, $07	; Set frequency '124' for channel PSG 2
	dc.b $3a, $04, $07	; Set frequency '116' for channel PSG 3
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $9d	; Set frequency '7325' (octave 3 semitone 1181) for channel FM 5
	dc.b $38, $06, $07	; Set frequency '118' for channel PSG 1
	dc.b $39, $0d, $07	; Set frequency '125' for channel PSG 2
	dc.b $3a, $05, $07	; Set frequency '117' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 5
	dc.b $38, $07, $07	; Set frequency '119' for channel PSG 1
	dc.b $39, $0e, $07	; Set frequency '126' for channel PSG 2
	dc.b $3a, $06, $07	; Set frequency '118' for channel PSG 3
; Pattern $0c, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 5
	dc.b $38, $08, $07	; Set frequency '120' for channel PSG 1
	dc.b $39, $0f, $07	; Set frequency '127' for channel PSG 2
	dc.b $3a, $07, $07	; Set frequency '119' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 5
	dc.b $38, $09, $07	; Set frequency '121' for channel PSG 1
	dc.b $39, $00, $08	; Set frequency '128' for channel PSG 2
	dc.b $3a, $08, $07	; Set frequency '120' for channel PSG 3
; Pattern $0c, Row 27; 
	dc.b $28, $06	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $99	; Set frequency '7321' (octave 3 semitone 1177) for channel FM 5
	dc.b $38, $0a, $07	; Set frequency '122' for channel PSG 1
	dc.b $39, $01, $08	; Set frequency '129' for channel PSG 2
	dc.b $3a, $09, $07	; Set frequency '121' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 5
	dc.b $38, $0b, $07	; Set frequency '123' for channel PSG 1
	dc.b $39, $02, $08	; Set frequency '130' for channel PSG 2
	dc.b $3a, $0a, $07	; Set frequency '122' for channel PSG 3
; Pattern $0c, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $97	; Set frequency '7319' (octave 3 semitone 1175) for channel FM 5
	dc.b $38, $0c, $07	; Set frequency '124' for channel PSG 1
	dc.b $39, $03, $08	; Set frequency '131' for channel PSG 2
	dc.b $3a, $0b, $07	; Set frequency '123' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 5
	dc.b $38, $0d, $07	; Set frequency '125' for channel PSG 1
	dc.b $39, $04, $08	; Set frequency '132' for channel PSG 2
	dc.b $3a, $0c, $07	; Set frequency '124' for channel PSG 3
; Pattern $0c, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 5
	dc.b $38, $0e, $07	; Set frequency '126' for channel PSG 1
	dc.b $39, $05, $08	; Set frequency '133' for channel PSG 2
	dc.b $3a, $0d, $07	; Set frequency '125' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 5
	dc.b $38, $0f, $07	; Set frequency '127' for channel PSG 1
	dc.b $39, $06, $08	; Set frequency '134' for channel PSG 2
	dc.b $3a, $0e, $07	; Set frequency '126' for channel PSG 3
; Pattern $0c, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $93	; Set frequency '7315' (octave 3 semitone 1171) for channel FM 5
	dc.b $38, $00, $08	; Set frequency '128' for channel PSG 1
	dc.b $39, $07, $08	; Set frequency '135' for channel PSG 2
	dc.b $3a, $0f, $07	; Set frequency '127' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 5
	dc.b $38, $01, $08	; Set frequency '129' for channel PSG 1
	dc.b $39, $08, $08	; Set frequency '136' for channel PSG 2
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
; Pattern $0c, Row 31; 
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 5
	dc.b $38, $02, $08	; Set frequency '130' for channel PSG 1
	dc.b $39, $09, $08	; Set frequency '137' for channel PSG 2
	dc.b $3a, $01, $08	; Set frequency '129' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 5
	dc.b $38, $03, $08	; Set frequency '131' for channel PSG 1
	dc.b $39, $0a, $08	; Set frequency '138' for channel PSG 2
	dc.b $3a, $02, $08	; Set frequency '130' for channel PSG 3
; Pattern $0c, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $8f	; Set frequency '7311' (octave 3 semitone 1167) for channel FM 5
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
	dc.b $39, $0b, $08	; Set frequency '139' for channel PSG 2
	dc.b $3a, $03, $08	; Set frequency '131' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $39, $0c, $08	; Set frequency '140' for channel PSG 2
	dc.b $3a, $04, $08	; Set frequency '132' for channel PSG 3
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $8d	; Set frequency '7309' (octave 3 semitone 1165) for channel FM 5
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $39, $0d, $08	; Set frequency '141' for channel PSG 2
	dc.b $3a, $05, $08	; Set frequency '133' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
	dc.b $39, $0e, $08	; Set frequency '142' for channel PSG 2
	dc.b $3a, $06, $08	; Set frequency '134' for channel PSG 3
; Pattern $0c, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $8b	; Set frequency '7307' (octave 3 semitone 1163) for channel FM 5
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $39, $0f, $08	; Set frequency '143' for channel PSG 2
	dc.b $3a, $07, $08	; Set frequency '135' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 5
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
	dc.b $39, $00, $09	; Set frequency '144' for channel PSG 2
	dc.b $3a, $08, $08	; Set frequency '136' for channel PSG 3
; Pattern $0c, Row 35; 
	dc.b $28, $08	; Set volume for channel PSG 1
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $39, $01, $09	; Set frequency '145' for channel PSG 2
	dc.b $3a, $09, $08	; Set frequency '137' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 5
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $39, $02, $09	; Set frequency '146' for channel PSG 2
	dc.b $3a, $0a, $08	; Set frequency '138' for channel PSG 3
; Pattern $0c, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $35, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 5
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
	dc.b $39, $03, $09	; Set frequency '147' for channel PSG 2
	dc.b $3a, $0b, $08	; Set frequency '139' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
	dc.b $35, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $04, $09	; Set frequency '148' for channel PSG 2
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $0c, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $35, $1c, $85	; Set frequency '7301' (octave 3 semitone 1157) for channel FM 5
	dc.b $38, $0e, $08	; Set frequency '142' for channel PSG 1
	dc.b $39, $05, $09	; Set frequency '149' for channel PSG 2
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $06, $09	; Set frequency '150' for channel PSG 2
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
; Pattern $0c, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $35, $1c, $83	; Set frequency '7299' (octave 3 semitone 1155) for channel FM 5
	dc.b $38, $00, $09	; Set frequency '144' for channel PSG 1
	dc.b $39, $07, $09	; Set frequency '151' for channel PSG 2
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
	dc.b $35, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 5
	dc.b $38, $01, $09	; Set frequency '145' for channel PSG 1
	dc.b $39, $08, $09	; Set frequency '152' for channel PSG 2
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
; Pattern $0c, Row 39; 
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $81	; Set frequency '7297' (octave 3 semitone 1153) for channel FM 5
	dc.b $38, $02, $09	; Set frequency '146' for channel PSG 1
	dc.b $39, $09, $09	; Set frequency '153' for channel PSG 2
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 5
	dc.b $38, $03, $09	; Set frequency '147' for channel PSG 1
	dc.b $39, $0a, $09	; Set frequency '154' for channel PSG 2
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
; Pattern $0c, Row 40; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $38, $04, $09	; Set frequency '148' for channel PSG 1
	dc.b $39, $0b, $09	; Set frequency '155' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $38, $05, $09	; Set frequency '149' for channel PSG 1
	dc.b $39, $0c, $09	; Set frequency '156' for channel PSG 2
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $0c, Row 41; 
	dc.b $29, $0b	; Set volume for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $38, $06, $09	; Set frequency '150' for channel PSG 1
	dc.b $39, $0d, $09	; Set frequency '157' for channel PSG 2
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $38, $07, $09	; Set frequency '151' for channel PSG 1
	dc.b $39, $0e, $09	; Set frequency '158' for channel PSG 2
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $0c, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $38, $08, $09	; Set frequency '152' for channel PSG 1
	dc.b $39, $0f, $09	; Set frequency '159' for channel PSG 2
	dc.b $3a, $07, $09	; Set frequency '151' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 5
	dc.b $38, $09, $09	; Set frequency '153' for channel PSG 1
	dc.b $39, $00, $0a	; Set frequency '160' for channel PSG 2
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $0c, Row 43; 
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $38, $0a, $09	; Set frequency '154' for channel PSG 1
	dc.b $39, $01, $0a	; Set frequency '161' for channel PSG 2
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $38, $0b, $09	; Set frequency '155' for channel PSG 1
	dc.b $39, $02, $0a	; Set frequency '162' for channel PSG 2
	dc.b $3a, $0a, $09	; Set frequency '154' for channel PSG 3
; Pattern $0c, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $38, $0c, $09	; Set frequency '156' for channel PSG 1
	dc.b $39, $03, $0a	; Set frequency '163' for channel PSG 2
	dc.b $3a, $0b, $09	; Set frequency '155' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $38, $0d, $09	; Set frequency '157' for channel PSG 1
	dc.b $39, $04, $0a	; Set frequency '164' for channel PSG 2
	dc.b $3a, $0c, $09	; Set frequency '156' for channel PSG 3
; Pattern $0c, Row 45; 
	dc.b $2a, $0b	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $38, $0e, $09	; Set frequency '158' for channel PSG 1
	dc.b $39, $05, $0a	; Set frequency '165' for channel PSG 2
	dc.b $3a, $0d, $09	; Set frequency '157' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 5
	dc.b $38, $0f, $09	; Set frequency '159' for channel PSG 1
	dc.b $39, $06, $0a	; Set frequency '166' for channel PSG 2
	dc.b $3a, $0e, $09	; Set frequency '158' for channel PSG 3
; Pattern $0c, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 5
	dc.b $38, $00, $0a	; Set frequency '160' for channel PSG 1
	dc.b $39, $07, $0a	; Set frequency '167' for channel PSG 2
	dc.b $3a, $0f, $09	; Set frequency '159' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 5
	dc.b $38, $01, $0a	; Set frequency '161' for channel PSG 1
	dc.b $39, $08, $0a	; Set frequency '168' for channel PSG 2
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
; Pattern $0c, Row 47; 
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $29, $0c	; Set volume for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 5
	dc.b $38, $02, $0a	; Set frequency '162' for channel PSG 1
	dc.b $39, $09, $0a	; Set frequency '169' for channel PSG 2
	dc.b $3a, $01, $0a	; Set frequency '161' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 5
	dc.b $38, $03, $0a	; Set frequency '163' for channel PSG 1
	dc.b $39, $0a, $0a	; Set frequency '170' for channel PSG 2
	dc.b $3a, $02, $0a	; Set frequency '162' for channel PSG 3
; Pattern $0c, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 5
	dc.b $38, $04, $0a	; Set frequency '164' for channel PSG 1
	dc.b $39, $0b, $0a	; Set frequency '171' for channel PSG 2
	dc.b $3a, $03, $0a	; Set frequency '163' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 5
	dc.b $38, $05, $0a	; Set frequency '165' for channel PSG 1
	dc.b $39, $0c, $0a	; Set frequency '172' for channel PSG 2
	dc.b $3a, $04, $0a	; Set frequency '164' for channel PSG 3
; Pattern $0c, Row 49; 
	dc.b $2a, $0c	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 5
	dc.b $38, $06, $0a	; Set frequency '166' for channel PSG 1
	dc.b $39, $0d, $0a	; Set frequency '173' for channel PSG 2
	dc.b $3a, $05, $0a	; Set frequency '165' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 5
	dc.b $38, $07, $0a	; Set frequency '167' for channel PSG 1
	dc.b $39, $0e, $0a	; Set frequency '174' for channel PSG 2
	dc.b $3a, $06, $0a	; Set frequency '166' for channel PSG 3
; Pattern $0c, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 5
	dc.b $38, $08, $0a	; Set frequency '168' for channel PSG 1
	dc.b $39, $0f, $0a	; Set frequency '175' for channel PSG 2
	dc.b $3a, $07, $0a	; Set frequency '167' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $38, $09, $0a	; Set frequency '169' for channel PSG 1
	dc.b $39, $00, $0b	; Set frequency '176' for channel PSG 2
	dc.b $3a, $08, $0a	; Set frequency '168' for channel PSG 3
; Pattern $0c, Row 51; 
	dc.b $28, $0c	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 5
	dc.b $38, $0a, $0a	; Set frequency '170' for channel PSG 1
	dc.b $39, $01, $0b	; Set frequency '177' for channel PSG 2
	dc.b $3a, $09, $0a	; Set frequency '169' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 5
	dc.b $38, $0b, $0a	; Set frequency '171' for channel PSG 1
	dc.b $39, $02, $0b	; Set frequency '178' for channel PSG 2
	dc.b $3a, $0a, $0a	; Set frequency '170' for channel PSG 3
; Pattern $0c, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $29, $0d	; Set volume for channel PSG 2
	dc.b $35, $1c, $67	; Set frequency '7271' (octave 3 semitone 1127) for channel FM 5
	dc.b $38, $0c, $0a	; Set frequency '172' for channel PSG 1
	dc.b $39, $03, $0b	; Set frequency '179' for channel PSG 2
	dc.b $3a, $0b, $0a	; Set frequency '171' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $66	; Set frequency '7270' (octave 3 semitone 1126) for channel FM 5
	dc.b $38, $0d, $0a	; Set frequency '173' for channel PSG 1
	dc.b $39, $04, $0b	; Set frequency '180' for channel PSG 2
	dc.b $3a, $0c, $0a	; Set frequency '172' for channel PSG 3
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $65	; Set frequency '7269' (octave 3 semitone 1125) for channel FM 5
	dc.b $38, $0e, $0a	; Set frequency '174' for channel PSG 1
	dc.b $39, $05, $0b	; Set frequency '181' for channel PSG 2
	dc.b $3a, $0d, $0a	; Set frequency '173' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 5
	dc.b $38, $0f, $0a	; Set frequency '175' for channel PSG 1
	dc.b $39, $06, $0b	; Set frequency '182' for channel PSG 2
	dc.b $3a, $0e, $0a	; Set frequency '174' for channel PSG 3
; Pattern $0c, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $2a, $0d	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $63	; Set frequency '7267' (octave 3 semitone 1123) for channel FM 5
	dc.b $38, $00, $0b	; Set frequency '176' for channel PSG 1
	dc.b $39, $07, $0b	; Set frequency '183' for channel PSG 2
	dc.b $3a, $0f, $0a	; Set frequency '175' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $62	; Set frequency '7266' (octave 3 semitone 1122) for channel FM 5
	dc.b $38, $01, $0b	; Set frequency '177' for channel PSG 1
	dc.b $39, $08, $0b	; Set frequency '184' for channel PSG 2
	dc.b $3a, $00, $0b	; Set frequency '176' for channel PSG 3
; Pattern $0c, Row 55; 
	dc.b $28, $0d	; Set volume for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $61	; Set frequency '7265' (octave 3 semitone 1121) for channel FM 5
	dc.b $38, $02, $0b	; Set frequency '178' for channel PSG 1
	dc.b $39, $09, $0b	; Set frequency '185' for channel PSG 2
	dc.b $3a, $01, $0b	; Set frequency '177' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $60	; Set frequency '7264' (octave 3 semitone 1120) for channel FM 5
	dc.b $38, $03, $0b	; Set frequency '179' for channel PSG 1
	dc.b $39, $0a, $0b	; Set frequency '186' for channel PSG 2
	dc.b $3a, $02, $0b	; Set frequency '178' for channel PSG 3
; Pattern $0c, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $5f	; Set frequency '7263' (octave 3 semitone 1119) for channel FM 5
	dc.b $38, $04, $0b	; Set frequency '180' for channel PSG 1
	dc.b $39, $0b, $0b	; Set frequency '187' for channel PSG 2
	dc.b $3a, $03, $0b	; Set frequency '179' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 5
	dc.b $38, $05, $0b	; Set frequency '181' for channel PSG 1
	dc.b $39, $0c, $0b	; Set frequency '188' for channel PSG 2
	dc.b $3a, $04, $0b	; Set frequency '180' for channel PSG 3
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $5d	; Set frequency '7261' (octave 3 semitone 1117) for channel FM 5
	dc.b $38, $06, $0b	; Set frequency '182' for channel PSG 1
	dc.b $39, $0d, $0b	; Set frequency '189' for channel PSG 2
	dc.b $3a, $05, $0b	; Set frequency '181' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $5c	; Set frequency '7260' (octave 3 semitone 1116) for channel FM 5
	dc.b $38, $07, $0b	; Set frequency '183' for channel PSG 1
	dc.b $39, $0e, $0b	; Set frequency '190' for channel PSG 2
	dc.b $3a, $06, $0b	; Set frequency '182' for channel PSG 3
; Pattern $0c, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $29, $0e	; Set volume for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $5b	; Set frequency '7259' (octave 3 semitone 1115) for channel FM 5
	dc.b $38, $08, $0b	; Set frequency '184' for channel PSG 1
	dc.b $39, $0f, $0b	; Set frequency '191' for channel PSG 2
	dc.b $3a, $07, $0b	; Set frequency '183' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $5a	; Set frequency '7258' (octave 3 semitone 1114) for channel FM 5
	dc.b $38, $09, $0b	; Set frequency '185' for channel PSG 1
	dc.b $39, $00, $0c	; Set frequency '192' for channel PSG 2
	dc.b $3a, $08, $0b	; Set frequency '184' for channel PSG 3
; Pattern $0c, Row 59; 
	dc.b $28, $0e	; Set volume for channel PSG 1
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $59	; Set frequency '7257' (octave 3 semitone 1113) for channel FM 5
	dc.b $38, $0a, $0b	; Set frequency '186' for channel PSG 1
	dc.b $39, $01, $0c	; Set frequency '193' for channel PSG 2
	dc.b $3a, $09, $0b	; Set frequency '185' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 5
	dc.b $38, $0b, $0b	; Set frequency '187' for channel PSG 1
	dc.b $39, $02, $0c	; Set frequency '194' for channel PSG 2
	dc.b $3a, $0a, $0b	; Set frequency '186' for channel PSG 3
; Pattern $0c, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $25, $01	; Set volume for channel FM 5
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $57	; Set frequency '7255' (octave 3 semitone 1111) for channel FM 5
	dc.b $38, $0c, $0b	; Set frequency '188' for channel PSG 1
	dc.b $39, $03, $0c	; Set frequency '195' for channel PSG 2
	dc.b $3a, $0b, $0b	; Set frequency '187' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $56	; Set frequency '7254' (octave 3 semitone 1110) for channel FM 5
	dc.b $38, $0d, $0b	; Set frequency '189' for channel PSG 1
	dc.b $39, $04, $0c	; Set frequency '196' for channel PSG 2
	dc.b $3a, $0c, $0b	; Set frequency '188' for channel PSG 3
; Pattern $0c, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $55	; Set frequency '7253' (octave 3 semitone 1109) for channel FM 5
	dc.b $38, $0e, $0b	; Set frequency '190' for channel PSG 1
	dc.b $39, $05, $0c	; Set frequency '197' for channel PSG 2
	dc.b $3a, $0d, $0b	; Set frequency '189' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $54	; Set frequency '7252' (octave 3 semitone 1108) for channel FM 5
	dc.b $38, $0f, $0b	; Set frequency '191' for channel PSG 1
	dc.b $39, $06, $0c	; Set frequency '198' for channel PSG 2
	dc.b $3a, $0e, $0b	; Set frequency '190' for channel PSG 3
; Pattern $0c, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $53	; Set frequency '7251' (octave 3 semitone 1107) for channel FM 5
	dc.b $38, $00, $0c	; Set frequency '192' for channel PSG 1
	dc.b $39, $07, $0c	; Set frequency '199' for channel PSG 2
	dc.b $3a, $0f, $0b	; Set frequency '191' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $52	; Set frequency '7250' (octave 3 semitone 1106) for channel FM 5
	dc.b $38, $01, $0c	; Set frequency '193' for channel PSG 1
	dc.b $39, $08, $0c	; Set frequency '200' for channel PSG 2
	dc.b $3a, $00, $0c	; Set frequency '192' for channel PSG 3
; Pattern $0c, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $51	; Set frequency '7249' (octave 3 semitone 1105) for channel FM 5
	dc.b $38, $02, $0c	; Set frequency '194' for channel PSG 1
	dc.b $39, $09, $0c	; Set frequency '201' for channel PSG 2
	dc.b $3a, $01, $0c	; Set frequency '193' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 5
	dc.b $38, $03, $0c	; Set frequency '195' for channel PSG 1
	dc.b $39, $0a, $0c	; Set frequency '202' for channel PSG 2
	dc.b $3a, $02, $0c	; Set frequency '194' for channel PSG 3
; Pattern $0d, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $4f	; Set frequency '7247' (octave 3 semitone 1103) for channel FM 5
	dc.b $38, $04, $0c	; Set frequency '196' for channel PSG 1
	dc.b $39, $0b, $0c	; Set frequency '203' for channel PSG 2
	dc.b $3a, $03, $0c	; Set frequency '195' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 5
	dc.b $38, $05, $0c	; Set frequency '197' for channel PSG 1
	dc.b $39, $0c, $0c	; Set frequency '204' for channel PSG 2
	dc.b $3a, $04, $0c	; Set frequency '196' for channel PSG 3
; Pattern $0d, Row 1; 
	dc.b $25, $02	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $4d	; Set frequency '7245' (octave 3 semitone 1101) for channel FM 5
	dc.b $38, $06, $0c	; Set frequency '198' for channel PSG 1
	dc.b $39, $0d, $0c	; Set frequency '205' for channel PSG 2
	dc.b $3a, $05, $0c	; Set frequency '197' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 5
	dc.b $38, $07, $0c	; Set frequency '199' for channel PSG 1
	dc.b $39, $0e, $0c	; Set frequency '206' for channel PSG 2
	dc.b $3a, $06, $0c	; Set frequency '198' for channel PSG 3
; Pattern $0d, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $03	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $4b	; Set frequency '7243' (octave 3 semitone 1099) for channel FM 5
	dc.b $38, $08, $0c	; Set frequency '200' for channel PSG 1
	dc.b $39, $0f, $0c	; Set frequency '207' for channel PSG 2
	dc.b $3a, $07, $0c	; Set frequency '199' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $4a	; Set frequency '7242' (octave 3 semitone 1098) for channel FM 5
	dc.b $38, $09, $0c	; Set frequency '201' for channel PSG 1
	dc.b $39, $00, $0d	; Set frequency '208' for channel PSG 2
	dc.b $3a, $08, $0c	; Set frequency '200' for channel PSG 3
; Pattern $0d, Row 3; 
	dc.b $25, $04	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $49	; Set frequency '7241' (octave 3 semitone 1097) for channel FM 5
	dc.b $38, $0a, $0c	; Set frequency '202' for channel PSG 1
	dc.b $39, $01, $0d	; Set frequency '209' for channel PSG 2
	dc.b $3a, $09, $0c	; Set frequency '201' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 5
	dc.b $38, $0b, $0c	; Set frequency '203' for channel PSG 1
	dc.b $39, $02, $0d	; Set frequency '210' for channel PSG 2
	dc.b $3a, $0a, $0c	; Set frequency '202' for channel PSG 3
; Pattern $0d, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $35, $1c, $47	; Set frequency '7239' (octave 3 semitone 1095) for channel FM 5
	dc.b $38, $0c, $0c	; Set frequency '204' for channel PSG 1
	dc.b $39, $03, $0d	; Set frequency '211' for channel PSG 2
	dc.b $3a, $0b, $0c	; Set frequency '203' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
	dc.b $35, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 5
	dc.b $38, $0d, $0c	; Set frequency '205' for channel PSG 1
	dc.b $39, $04, $0d	; Set frequency '212' for channel PSG 2
	dc.b $3a, $0c, $0c	; Set frequency '204' for channel PSG 3
; Pattern $0d, Row 5; 
	dc.b $25, $05	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $35, $1c, $45	; Set frequency '7237' (octave 3 semitone 1093) for channel FM 5
	dc.b $38, $0e, $0c	; Set frequency '206' for channel PSG 1
	dc.b $39, $05, $0d	; Set frequency '213' for channel PSG 2
	dc.b $3a, $0d, $0c	; Set frequency '205' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 5
	dc.b $38, $0f, $0c	; Set frequency '207' for channel PSG 1
	dc.b $39, $06, $0d	; Set frequency '214' for channel PSG 2
	dc.b $3a, $0e, $0c	; Set frequency '206' for channel PSG 3
; Pattern $0d, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $06	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $35, $1c, $43	; Set frequency '7235' (octave 3 semitone 1091) for channel FM 5
	dc.b $38, $00, $0d	; Set frequency '208' for channel PSG 1
	dc.b $39, $07, $0d	; Set frequency '215' for channel PSG 2
	dc.b $3a, $0f, $0c	; Set frequency '207' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
	dc.b $35, $1c, $42	; Set frequency '7234' (octave 3 semitone 1090) for channel FM 5
	dc.b $38, $01, $0d	; Set frequency '209' for channel PSG 1
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
	dc.b $3a, $00, $0d	; Set frequency '208' for channel PSG 3
; Pattern $0d, Row 7; 
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $41	; Set frequency '7233' (octave 3 semitone 1089) for channel FM 5
	dc.b $38, $02, $0d	; Set frequency '210' for channel PSG 1
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $3a, $01, $0d	; Set frequency '209' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 5
	dc.b $38, $03, $0d	; Set frequency '211' for channel PSG 1
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
	dc.b $3a, $02, $0d	; Set frequency '210' for channel PSG 3
; Pattern $0d, Row 8; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $3f	; Set frequency '7231' (octave 3 semitone 1087) for channel FM 5
	dc.b $38, $04, $0d	; Set frequency '212' for channel PSG 1
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
	dc.b $3a, $03, $0d	; Set frequency '211' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 5
	dc.b $38, $05, $0d	; Set frequency '213' for channel PSG 1
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
	dc.b $3a, $04, $0d	; Set frequency '212' for channel PSG 3
; Pattern $0d, Row 9; 
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $3d	; Set frequency '7229' (octave 3 semitone 1085) for channel FM 5
	dc.b $38, $06, $0d	; Set frequency '214' for channel PSG 1
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $3a, $05, $0d	; Set frequency '213' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $3c	; Set frequency '7228' (octave 3 semitone 1084) for channel FM 5
	dc.b $38, $07, $0d	; Set frequency '215' for channel PSG 1
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $3a, $06, $0d	; Set frequency '214' for channel PSG 3
; Pattern $0d, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $3b	; Set frequency '7227' (octave 3 semitone 1083) for channel FM 5
	dc.b $38, $08, $0d	; Set frequency '216' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
	dc.b $3a, $07, $0d	; Set frequency '215' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $3a	; Set frequency '7226' (octave 3 semitone 1082) for channel FM 5
	dc.b $38, $09, $0d	; Set frequency '217' for channel PSG 1
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $3a, $08, $0d	; Set frequency '216' for channel PSG 3
; Pattern $0d, Row 11; 
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $39	; Set frequency '7225' (octave 3 semitone 1081) for channel FM 5
	dc.b $38, $0a, $0d	; Set frequency '218' for channel PSG 1
	dc.b $39, $01, $0e	; Set frequency '225' for channel PSG 2
	dc.b $3a, $09, $0d	; Set frequency '217' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 5
	dc.b $38, $0b, $0d	; Set frequency '219' for channel PSG 1
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $3a, $0a, $0d	; Set frequency '218' for channel PSG 3
; Pattern $0d, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $37	; Set frequency '7223' (octave 3 semitone 1079) for channel FM 5
	dc.b $38, $0c, $0d	; Set frequency '220' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $0b, $0d	; Set frequency '219' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $36	; Set frequency '7222' (octave 3 semitone 1078) for channel FM 5
	dc.b $38, $0d, $0d	; Set frequency '221' for channel PSG 1
	dc.b $39, $04, $0e	; Set frequency '228' for channel PSG 2
	dc.b $3a, $0c, $0d	; Set frequency '220' for channel PSG 3
; Pattern $0d, Row 13; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $35	; Set frequency '7221' (octave 3 semitone 1077) for channel FM 5
	dc.b $38, $0e, $0d	; Set frequency '222' for channel PSG 1
	dc.b $39, $05, $0e	; Set frequency '229' for channel PSG 2
	dc.b $3a, $0d, $0d	; Set frequency '221' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $34	; Set frequency '7220' (octave 3 semitone 1076) for channel FM 5
	dc.b $38, $0f, $0d	; Set frequency '223' for channel PSG 1
	dc.b $39, $06, $0e	; Set frequency '230' for channel PSG 2
	dc.b $3a, $0e, $0d	; Set frequency '222' for channel PSG 3
; Pattern $0d, Row 14; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $33	; Set frequency '7219' (octave 3 semitone 1075) for channel FM 5
	dc.b $38, $00, $0e	; Set frequency '224' for channel PSG 1
	dc.b $39, $07, $0e	; Set frequency '231' for channel PSG 2
	dc.b $3a, $0f, $0d	; Set frequency '223' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $32	; Set frequency '7218' (octave 3 semitone 1074) for channel FM 5
	dc.b $38, $01, $0e	; Set frequency '225' for channel PSG 1
	dc.b $39, $08, $0e	; Set frequency '232' for channel PSG 2
	dc.b $3a, $00, $0e	; Set frequency '224' for channel PSG 3
; Pattern $0d, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $31	; Set frequency '7217' (octave 3 semitone 1073) for channel FM 5
	dc.b $38, $02, $0e	; Set frequency '226' for channel PSG 1
	dc.b $39, $09, $0e	; Set frequency '233' for channel PSG 2
	dc.b $3a, $01, $0e	; Set frequency '225' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $30	; Set frequency '7216' (octave 3 semitone 1072) for channel FM 5
	dc.b $38, $03, $0e	; Set frequency '227' for channel PSG 1
	dc.b $39, $0a, $0e	; Set frequency '234' for channel PSG 2
	dc.b $3a, $02, $0e	; Set frequency '226' for channel PSG 3
; Pattern $0d, Row 16; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $2f	; Set frequency '7215' (octave 3 semitone 1071) for channel FM 5
	dc.b $38, $04, $0e	; Set frequency '228' for channel PSG 1
	dc.b $39, $0b, $0e	; Set frequency '235' for channel PSG 2
	dc.b $3a, $03, $0e	; Set frequency '227' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 5
	dc.b $38, $05, $0e	; Set frequency '229' for channel PSG 1
	dc.b $39, $0c, $0e	; Set frequency '236' for channel PSG 2
	dc.b $3a, $04, $0e	; Set frequency '228' for channel PSG 3
; Pattern $0d, Row 17; 
	dc.b $25, $0e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $2d	; Set frequency '7213' (octave 3 semitone 1069) for channel FM 5
	dc.b $38, $06, $0e	; Set frequency '230' for channel PSG 1
	dc.b $39, $0d, $0e	; Set frequency '237' for channel PSG 2
	dc.b $3a, $05, $0e	; Set frequency '229' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 5
	dc.b $38, $07, $0e	; Set frequency '231' for channel PSG 1
	dc.b $39, $0e, $0e	; Set frequency '238' for channel PSG 2
	dc.b $3a, $06, $0e	; Set frequency '230' for channel PSG 3
; Pattern $0d, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $2b	; Set frequency '7211' (octave 3 semitone 1067) for channel FM 5
	dc.b $38, $08, $0e	; Set frequency '232' for channel PSG 1
	dc.b $39, $0f, $0e	; Set frequency '239' for channel PSG 2
	dc.b $3a, $07, $0e	; Set frequency '231' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $2a	; Set frequency '7210' (octave 3 semitone 1066) for channel FM 5
	dc.b $38, $09, $0e	; Set frequency '233' for channel PSG 1
	dc.b $39, $00, $0f	; Set frequency '240' for channel PSG 2
	dc.b $3a, $08, $0e	; Set frequency '232' for channel PSG 3
; Pattern $0d, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $29	; Set frequency '7209' (octave 3 semitone 1065) for channel FM 5
	dc.b $38, $0a, $0e	; Set frequency '234' for channel PSG 1
	dc.b $39, $01, $0f	; Set frequency '241' for channel PSG 2
	dc.b $3a, $09, $0e	; Set frequency '233' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 5
	dc.b $38, $0b, $0e	; Set frequency '235' for channel PSG 1
	dc.b $39, $02, $0f	; Set frequency '242' for channel PSG 2
	dc.b $3a, $0a, $0e	; Set frequency '234' for channel PSG 3
; Pattern $0d, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1c, $27	; Set frequency '7207' (octave 3 semitone 1063) for channel FM 5
	dc.b $38, $0c, $0e	; Set frequency '236' for channel PSG 1
	dc.b $39, $03, $0f	; Set frequency '243' for channel PSG 2
	dc.b $3a, $0b, $0e	; Set frequency '235' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $26	; Set frequency '7206' (octave 3 semitone 1062) for channel FM 5
	dc.b $38, $0d, $0e	; Set frequency '237' for channel PSG 1
	dc.b $39, $04, $0f	; Set frequency '244' for channel PSG 2
	dc.b $3a, $0c, $0e	; Set frequency '236' for channel PSG 3
; Pattern $0d, Row 21; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $25	; Set frequency '7205' (octave 3 semitone 1061) for channel FM 5
	dc.b $38, $0e, $0e	; Set frequency '238' for channel PSG 1
	dc.b $39, $05, $0f	; Set frequency '245' for channel PSG 2
	dc.b $3a, $0d, $0e	; Set frequency '237' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 5
	dc.b $38, $0f, $0e	; Set frequency '239' for channel PSG 1
	dc.b $39, $06, $0f	; Set frequency '246' for channel PSG 2
	dc.b $3a, $0e, $0e	; Set frequency '238' for channel PSG 3
; Pattern $0d, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $23	; Set frequency '7203' (octave 3 semitone 1059) for channel FM 5
	dc.b $38, $00, $0f	; Set frequency '240' for channel PSG 1
	dc.b $39, $07, $0f	; Set frequency '247' for channel PSG 2
	dc.b $3a, $0f, $0e	; Set frequency '239' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 5
	dc.b $38, $01, $0f	; Set frequency '241' for channel PSG 1
	dc.b $39, $08, $0f	; Set frequency '248' for channel PSG 2
	dc.b $3a, $00, $0f	; Set frequency '240' for channel PSG 3
; Pattern $0d, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $21	; Set frequency '7201' (octave 3 semitone 1057) for channel FM 5
	dc.b $38, $02, $0f	; Set frequency '242' for channel PSG 1
	dc.b $39, $09, $0f	; Set frequency '249' for channel PSG 2
	dc.b $3a, $01, $0f	; Set frequency '241' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $20	; Set frequency '7200' (octave 3 semitone 1056) for channel FM 5
	dc.b $38, $03, $0f	; Set frequency '243' for channel PSG 1
	dc.b $39, $0a, $0f	; Set frequency '250' for channel PSG 2
	dc.b $3a, $02, $0f	; Set frequency '242' for channel PSG 3
; Pattern $0d, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $1f	; Set frequency '7199' (octave 3 semitone 1055) for channel FM 5
	dc.b $38, $04, $0f	; Set frequency '244' for channel PSG 1
	dc.b $39, $0b, $0f	; Set frequency '251' for channel PSG 2
	dc.b $3a, $03, $0f	; Set frequency '243' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 5
	dc.b $38, $05, $0f	; Set frequency '245' for channel PSG 1
	dc.b $39, $0c, $0f	; Set frequency '252' for channel PSG 2
	dc.b $3a, $04, $0f	; Set frequency '244' for channel PSG 3
; Pattern $0d, Row 25; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $1d	; Set frequency '7197' (octave 3 semitone 1053) for channel FM 5
	dc.b $38, $06, $0f	; Set frequency '246' for channel PSG 1
	dc.b $39, $0d, $0f	; Set frequency '253' for channel PSG 2
	dc.b $3a, $05, $0f	; Set frequency '245' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $1c	; Set frequency '7196' (octave 3 semitone 1052) for channel FM 5
	dc.b $38, $07, $0f	; Set frequency '247' for channel PSG 1
	dc.b $39, $0e, $0f	; Set frequency '254' for channel PSG 2
	dc.b $3a, $06, $0f	; Set frequency '246' for channel PSG 3
; Pattern $0d, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $1b	; Set frequency '7195' (octave 3 semitone 1051) for channel FM 5
	dc.b $38, $08, $0f	; Set frequency '248' for channel PSG 1
	dc.b $39, $0f, $0f	; Set frequency '255' for channel PSG 2
	dc.b $3a, $07, $0f	; Set frequency '247' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $1a	; Set frequency '7194' (octave 3 semitone 1050) for channel FM 5
	dc.b $38, $09, $0f	; Set frequency '249' for channel PSG 1
	dc.b $39, $00, $10	; Set frequency '256' for channel PSG 2
	dc.b $3a, $08, $0f	; Set frequency '248' for channel PSG 3
; Pattern $0d, Row 27; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 5
	dc.b $38, $0a, $0f	; Set frequency '250' for channel PSG 1
	dc.b $39, $01, $10	; Set frequency '257' for channel PSG 2
	dc.b $3a, $09, $0f	; Set frequency '249' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 5
	dc.b $38, $0b, $0f	; Set frequency '251' for channel PSG 1
	dc.b $39, $02, $10	; Set frequency '258' for channel PSG 2
	dc.b $3a, $0a, $0f	; Set frequency '250' for channel PSG 3
; Pattern $0d, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1c, $17	; Set frequency '7191' (octave 3 semitone 1047) for channel FM 5
	dc.b $38, $0c, $0f	; Set frequency '252' for channel PSG 1
	dc.b $39, $03, $10	; Set frequency '259' for channel PSG 2
	dc.b $3a, $0b, $0f	; Set frequency '251' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 5
	dc.b $38, $0d, $0f	; Set frequency '253' for channel PSG 1
	dc.b $39, $04, $10	; Set frequency '260' for channel PSG 2
	dc.b $3a, $0c, $0f	; Set frequency '252' for channel PSG 3
; Pattern $0d, Row 29; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1c, $15	; Set frequency '7189' (octave 3 semitone 1045) for channel FM 5
	dc.b $38, $0e, $0f	; Set frequency '254' for channel PSG 1
	dc.b $39, $05, $10	; Set frequency '261' for channel PSG 2
	dc.b $3a, $0d, $0f	; Set frequency '253' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
	dc.b $38, $0f, $0f	; Set frequency '255' for channel PSG 1
	dc.b $39, $06, $10	; Set frequency '262' for channel PSG 2
	dc.b $3a, $0e, $0f	; Set frequency '254' for channel PSG 3
; Pattern $0d, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 5
	dc.b $38, $00, $10	; Set frequency '256' for channel PSG 1
	dc.b $39, $07, $10	; Set frequency '263' for channel PSG 2
	dc.b $3a, $0f, $0f	; Set frequency '255' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $12	; Set frequency '7186' (octave 3 semitone 1042) for channel FM 5
	dc.b $38, $01, $10	; Set frequency '257' for channel PSG 1
	dc.b $39, $08, $10	; Set frequency '264' for channel PSG 2
	dc.b $3a, $00, $10	; Set frequency '256' for channel PSG 3
; Pattern $0d, Row 31; 
	dc.b $25, $18	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $11	; Set frequency '7185' (octave 3 semitone 1041) for channel FM 5
	dc.b $38, $02, $10	; Set frequency '258' for channel PSG 1
	dc.b $39, $09, $10	; Set frequency '265' for channel PSG 2
	dc.b $3a, $01, $10	; Set frequency '257' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 5
	dc.b $38, $03, $10	; Set frequency '259' for channel PSG 1
	dc.b $39, $0a, $10	; Set frequency '266' for channel PSG 2
	dc.b $3a, $02, $10	; Set frequency '258' for channel PSG 3
; Pattern $0d, Row 32; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1c, $0f	; Set frequency '7183' (octave 3 semitone 1039) for channel FM 5
	dc.b $38, $04, $10	; Set frequency '260' for channel PSG 1
	dc.b $39, $0b, $10	; Set frequency '267' for channel PSG 2
	dc.b $3a, $03, $10	; Set frequency '259' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 5
	dc.b $38, $05, $10	; Set frequency '261' for channel PSG 1
	dc.b $39, $0c, $10	; Set frequency '268' for channel PSG 2
	dc.b $3a, $04, $10	; Set frequency '260' for channel PSG 3
; Pattern $0d, Row 33; 
	dc.b $25, $1a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1c, $0d	; Set frequency '7181' (octave 3 semitone 1037) for channel FM 5
	dc.b $38, $06, $10	; Set frequency '262' for channel PSG 1
	dc.b $39, $0d, $10	; Set frequency '269' for channel PSG 2
	dc.b $3a, $05, $10	; Set frequency '261' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 5
	dc.b $38, $07, $10	; Set frequency '263' for channel PSG 1
	dc.b $39, $0e, $10	; Set frequency '270' for channel PSG 2
	dc.b $3a, $06, $10	; Set frequency '262' for channel PSG 3
; Pattern $0d, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1c, $0b	; Set frequency '7179' (octave 3 semitone 1035) for channel FM 5
	dc.b $38, $08, $10	; Set frequency '264' for channel PSG 1
	dc.b $39, $0f, $10	; Set frequency '271' for channel PSG 2
	dc.b $3a, $07, $10	; Set frequency '263' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $38, $09, $10	; Set frequency '265' for channel PSG 1
	dc.b $39, $00, $11	; Set frequency '272' for channel PSG 2
	dc.b $3a, $08, $10	; Set frequency '264' for channel PSG 3
; Pattern $0d, Row 35; 
	dc.b $25, $1b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1c, $09	; Set frequency '7177' (octave 3 semitone 1033) for channel FM 5
	dc.b $38, $0a, $10	; Set frequency '266' for channel PSG 1
	dc.b $39, $01, $11	; Set frequency '273' for channel PSG 2
	dc.b $3a, $09, $10	; Set frequency '265' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 5
	dc.b $38, $0b, $10	; Set frequency '267' for channel PSG 1
	dc.b $39, $02, $11	; Set frequency '274' for channel PSG 2
	dc.b $3a, $0a, $10	; Set frequency '266' for channel PSG 3
; Pattern $0d, Row 36; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $35, $1c, $07	; Set frequency '7175' (octave 3 semitone 1031) for channel FM 5
	dc.b $38, $0c, $10	; Set frequency '268' for channel PSG 1
	dc.b $39, $03, $11	; Set frequency '275' for channel PSG 2
	dc.b $3a, $0b, $10	; Set frequency '267' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1c, $06	; Set frequency '7174' (octave 3 semitone 1030) for channel FM 5
	dc.b $38, $0d, $10	; Set frequency '269' for channel PSG 1
	dc.b $39, $04, $11	; Set frequency '276' for channel PSG 2
	dc.b $3a, $0c, $10	; Set frequency '268' for channel PSG 3
; Pattern $0d, Row 37; 
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1c, $05	; Set frequency '7173' (octave 3 semitone 1029) for channel FM 5
	dc.b $38, $0e, $10	; Set frequency '270' for channel PSG 1
	dc.b $39, $05, $11	; Set frequency '277' for channel PSG 2
	dc.b $3a, $0d, $10	; Set frequency '269' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 5
	dc.b $38, $0f, $10	; Set frequency '271' for channel PSG 1
	dc.b $39, $06, $11	; Set frequency '278' for channel PSG 2
	dc.b $3a, $0e, $10	; Set frequency '270' for channel PSG 3
; Pattern $0d, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1c, $03	; Set frequency '7171' (octave 3 semitone 1027) for channel FM 5
	dc.b $38, $00, $11	; Set frequency '272' for channel PSG 1
	dc.b $39, $07, $11	; Set frequency '279' for channel PSG 2
	dc.b $3a, $0f, $10	; Set frequency '271' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1c, $02	; Set frequency '7170' (octave 3 semitone 1026) for channel FM 5
	dc.b $38, $01, $11	; Set frequency '273' for channel PSG 1
	dc.b $39, $08, $11	; Set frequency '280' for channel PSG 2
	dc.b $3a, $00, $11	; Set frequency '272' for channel PSG 3
; Pattern $0d, Row 39; 
	dc.b $25, $1e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 5
	dc.b $38, $02, $11	; Set frequency '274' for channel PSG 1
	dc.b $39, $09, $11	; Set frequency '281' for channel PSG 2
	dc.b $3a, $01, $11	; Set frequency '273' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $00	; Set frequency '7168' (octave 3 semitone 1024) for channel FM 5
	dc.b $38, $03, $11	; Set frequency '275' for channel PSG 1
	dc.b $39, $0a, $11	; Set frequency '282' for channel PSG 2
	dc.b $3a, $02, $11	; Set frequency '274' for channel PSG 3
; Pattern $0d, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $35, $1b, $ff	; Set frequency '7167' (octave 3 semitone 1023) for channel FM 5
	dc.b $38, $04, $11	; Set frequency '276' for channel PSG 1
	dc.b $39, $0b, $11	; Set frequency '283' for channel PSG 2
	dc.b $3a, $03, $11	; Set frequency '275' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 5
	dc.b $38, $05, $11	; Set frequency '277' for channel PSG 1
	dc.b $39, $0c, $11	; Set frequency '284' for channel PSG 2
	dc.b $3a, $04, $11	; Set frequency '276' for channel PSG 3
; Pattern $0d, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 5
	dc.b $38, $06, $11	; Set frequency '278' for channel PSG 1
	dc.b $39, $0d, $11	; Set frequency '285' for channel PSG 2
	dc.b $3a, $05, $11	; Set frequency '277' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 5
	dc.b $38, $07, $11	; Set frequency '279' for channel PSG 1
	dc.b $39, $0e, $11	; Set frequency '286' for channel PSG 2
	dc.b $3a, $06, $11	; Set frequency '278' for channel PSG 3
; Pattern $0d, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 5
	dc.b $38, $08, $11	; Set frequency '280' for channel PSG 1
	dc.b $39, $0f, $11	; Set frequency '287' for channel PSG 2
	dc.b $3a, $07, $11	; Set frequency '279' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 5
	dc.b $38, $09, $11	; Set frequency '281' for channel PSG 1
	dc.b $39, $00, $12	; Set frequency '288' for channel PSG 2
	dc.b $3a, $08, $11	; Set frequency '280' for channel PSG 3
; Pattern $0d, Row 43; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 5
	dc.b $38, $0a, $11	; Set frequency '282' for channel PSG 1
	dc.b $39, $01, $12	; Set frequency '289' for channel PSG 2
	dc.b $3a, $09, $11	; Set frequency '281' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 5
	dc.b $38, $0b, $11	; Set frequency '283' for channel PSG 1
	dc.b $39, $02, $12	; Set frequency '290' for channel PSG 2
	dc.b $3a, $0a, $11	; Set frequency '282' for channel PSG 3
; Pattern $0d, Row 44; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $22	; Set volume for channel FM 5
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 5
	dc.b $38, $0c, $11	; Set frequency '284' for channel PSG 1
	dc.b $39, $03, $12	; Set frequency '291' for channel PSG 2
	dc.b $3a, $0b, $11	; Set frequency '283' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 5
	dc.b $38, $0d, $11	; Set frequency '285' for channel PSG 1
	dc.b $39, $04, $12	; Set frequency '292' for channel PSG 2
	dc.b $3a, $0c, $11	; Set frequency '284' for channel PSG 3
; Pattern $0d, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 5
	dc.b $38, $0e, $11	; Set frequency '286' for channel PSG 1
	dc.b $39, $05, $12	; Set frequency '293' for channel PSG 2
	dc.b $3a, $0d, $11	; Set frequency '285' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 5
	dc.b $38, $0f, $11	; Set frequency '287' for channel PSG 1
	dc.b $39, $06, $12	; Set frequency '294' for channel PSG 2
	dc.b $3a, $0e, $11	; Set frequency '286' for channel PSG 3
; Pattern $0d, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $23	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 5
	dc.b $38, $00, $12	; Set frequency '288' for channel PSG 1
	dc.b $39, $07, $12	; Set frequency '295' for channel PSG 2
	dc.b $3a, $0f, $11	; Set frequency '287' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 5
	dc.b $38, $01, $12	; Set frequency '289' for channel PSG 1
	dc.b $39, $08, $12	; Set frequency '296' for channel PSG 2
	dc.b $3a, $00, $12	; Set frequency '288' for channel PSG 3
; Pattern $0d, Row 47; 
	dc.b $25, $24	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 5
	dc.b $38, $02, $12	; Set frequency '290' for channel PSG 1
	dc.b $39, $09, $12	; Set frequency '297' for channel PSG 2
	dc.b $3a, $01, $12	; Set frequency '289' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 5
	dc.b $38, $03, $12	; Set frequency '291' for channel PSG 1
	dc.b $39, $0a, $12	; Set frequency '298' for channel PSG 2
	dc.b $3a, $02, $12	; Set frequency '290' for channel PSG 3
; Pattern $0d, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $25	; Set volume for channel FM 5
	dc.b $35, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 5
	dc.b $38, $04, $12	; Set frequency '292' for channel PSG 1
	dc.b $39, $0b, $12	; Set frequency '299' for channel PSG 2
	dc.b $3a, $03, $12	; Set frequency '291' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 5
	dc.b $38, $05, $12	; Set frequency '293' for channel PSG 1
	dc.b $39, $0c, $12	; Set frequency '300' for channel PSG 2
	dc.b $3a, $04, $12	; Set frequency '292' for channel PSG 3
; Pattern $0d, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 5
	dc.b $38, $06, $12	; Set frequency '294' for channel PSG 1
	dc.b $39, $0d, $12	; Set frequency '301' for channel PSG 2
	dc.b $3a, $05, $12	; Set frequency '293' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 5
	dc.b $38, $07, $12	; Set frequency '295' for channel PSG 1
	dc.b $39, $0e, $12	; Set frequency '302' for channel PSG 2
	dc.b $3a, $06, $12	; Set frequency '294' for channel PSG 3
; Pattern $0d, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 5
	dc.b $38, $08, $12	; Set frequency '296' for channel PSG 1
	dc.b $39, $0f, $12	; Set frequency '303' for channel PSG 2
	dc.b $3a, $07, $12	; Set frequency '295' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 5
	dc.b $38, $09, $12	; Set frequency '297' for channel PSG 1
	dc.b $39, $00, $13	; Set frequency '304' for channel PSG 2
	dc.b $3a, $08, $12	; Set frequency '296' for channel PSG 3
; Pattern $0d, Row 51; 
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 5
	dc.b $38, $0a, $12	; Set frequency '298' for channel PSG 1
	dc.b $39, $01, $13	; Set frequency '305' for channel PSG 2
	dc.b $3a, $09, $12	; Set frequency '297' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 5
	dc.b $38, $0b, $12	; Set frequency '299' for channel PSG 1
	dc.b $39, $02, $13	; Set frequency '306' for channel PSG 2
	dc.b $3a, $0a, $12	; Set frequency '298' for channel PSG 3
; Pattern $0d, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 5
	dc.b $38, $0c, $12	; Set frequency '300' for channel PSG 1
	dc.b $39, $03, $13	; Set frequency '307' for channel PSG 2
	dc.b $3a, $0b, $12	; Set frequency '299' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 5
	dc.b $38, $0d, $12	; Set frequency '301' for channel PSG 1
	dc.b $39, $04, $13	; Set frequency '308' for channel PSG 2
	dc.b $3a, $0c, $12	; Set frequency '300' for channel PSG 3
; Pattern $0d, Row 53; 
	dc.b $25, $28	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 5
	dc.b $38, $0e, $12	; Set frequency '302' for channel PSG 1
	dc.b $39, $05, $13	; Set frequency '309' for channel PSG 2
	dc.b $3a, $0d, $12	; Set frequency '301' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
	dc.b $38, $0f, $12	; Set frequency '303' for channel PSG 1
	dc.b $39, $06, $13	; Set frequency '310' for channel PSG 2
	dc.b $3a, $0e, $12	; Set frequency '302' for channel PSG 3
; Pattern $0d, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $25, $29	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $e3	; Set frequency '7139' (octave 3 semitone 995) for channel FM 5
	dc.b $38, $00, $13	; Set frequency '304' for channel PSG 1
	dc.b $39, $07, $13	; Set frequency '311' for channel PSG 2
	dc.b $3a, $0f, $12	; Set frequency '303' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $e2	; Set frequency '7138' (octave 3 semitone 994) for channel FM 5
	dc.b $38, $01, $13	; Set frequency '305' for channel PSG 1
	dc.b $39, $08, $13	; Set frequency '312' for channel PSG 2
	dc.b $3a, $00, $13	; Set frequency '304' for channel PSG 3
; Pattern $0d, Row 55; 
	dc.b $25, $2a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e1	; Set frequency '7137' (octave 3 semitone 993) for channel FM 5
	dc.b $38, $02, $13	; Set frequency '306' for channel PSG 1
	dc.b $39, $09, $13	; Set frequency '313' for channel PSG 2
	dc.b $3a, $01, $13	; Set frequency '305' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e0	; Set frequency '7136' (octave 3 semitone 992) for channel FM 5
	dc.b $38, $03, $13	; Set frequency '307' for channel PSG 1
	dc.b $39, $0a, $13	; Set frequency '314' for channel PSG 2
	dc.b $3a, $02, $13	; Set frequency '306' for channel PSG 3
; Pattern $0d, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $df	; Set frequency '7135' (octave 3 semitone 991) for channel FM 5
	dc.b $38, $04, $13	; Set frequency '308' for channel PSG 1
	dc.b $39, $0b, $13	; Set frequency '315' for channel PSG 2
	dc.b $3a, $03, $13	; Set frequency '307' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
	dc.b $38, $05, $13	; Set frequency '309' for channel PSG 1
	dc.b $39, $0c, $13	; Set frequency '316' for channel PSG 2
	dc.b $3a, $04, $13	; Set frequency '308' for channel PSG 3
; Pattern $0d, Row 57; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 5
	dc.b $38, $06, $13	; Set frequency '310' for channel PSG 1
	dc.b $39, $0d, $13	; Set frequency '317' for channel PSG 2
	dc.b $3a, $05, $13	; Set frequency '309' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $38, $07, $13	; Set frequency '311' for channel PSG 1
	dc.b $39, $0e, $13	; Set frequency '318' for channel PSG 2
	dc.b $3a, $06, $13	; Set frequency '310' for channel PSG 3
; Pattern $0d, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $25, $2c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 5
	dc.b $38, $08, $13	; Set frequency '312' for channel PSG 1
	dc.b $39, $0f, $13	; Set frequency '319' for channel PSG 2
	dc.b $3a, $07, $13	; Set frequency '311' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
	dc.b $38, $09, $13	; Set frequency '313' for channel PSG 1
	dc.b $39, $00, $14	; Set frequency '320' for channel PSG 2
	dc.b $3a, $08, $13	; Set frequency '312' for channel PSG 3
; Pattern $0d, Row 59; 
	dc.b $25, $2d	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $d9	; Set frequency '7129' (octave 3 semitone 985) for channel FM 5
	dc.b $38, $0a, $13	; Set frequency '314' for channel PSG 1
	dc.b $39, $01, $14	; Set frequency '321' for channel PSG 2
	dc.b $3a, $09, $13	; Set frequency '313' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
	dc.b $38, $0b, $13	; Set frequency '315' for channel PSG 1
	dc.b $39, $02, $14	; Set frequency '322' for channel PSG 2
	dc.b $3a, $0a, $13	; Set frequency '314' for channel PSG 3
; Pattern $0d, Row 60; 
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 5
	dc.b $38, $0c, $13	; Set frequency '316' for channel PSG 1
	dc.b $39, $03, $14	; Set frequency '323' for channel PSG 2
	dc.b $3a, $0b, $13	; Set frequency '315' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
	dc.b $38, $0d, $13	; Set frequency '317' for channel PSG 1
	dc.b $39, $04, $14	; Set frequency '324' for channel PSG 2
	dc.b $3a, $0c, $13	; Set frequency '316' for channel PSG 3
; Pattern $0d, Row 61; 
	dc.b $25, $2e	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 5
	dc.b $38, $0e, $13	; Set frequency '318' for channel PSG 1
	dc.b $39, $05, $14	; Set frequency '325' for channel PSG 2
	dc.b $3a, $0d, $13	; Set frequency '317' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
	dc.b $38, $0f, $13	; Set frequency '319' for channel PSG 1
	dc.b $39, $06, $14	; Set frequency '326' for channel PSG 2
	dc.b $3a, $0e, $13	; Set frequency '318' for channel PSG 3
; Pattern $0d, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $d3	; Set frequency '7123' (octave 3 semitone 979) for channel FM 5
	dc.b $38, $00, $14	; Set frequency '320' for channel PSG 1
	dc.b $39, $07, $14	; Set frequency '327' for channel PSG 2
	dc.b $3a, $0f, $13	; Set frequency '319' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 5
	dc.b $38, $01, $14	; Set frequency '321' for channel PSG 1
	dc.b $39, $08, $14	; Set frequency '328' for channel PSG 2
	dc.b $3a, $00, $14	; Set frequency '320' for channel PSG 3
; Pattern $0d, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $d1	; Set frequency '7121' (octave 3 semitone 977) for channel FM 5
	dc.b $38, $02, $14	; Set frequency '322' for channel PSG 1
	dc.b $39, $09, $14	; Set frequency '329' for channel PSG 2
	dc.b $3a, $01, $14	; Set frequency '321' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $38, $03, $14	; Set frequency '323' for channel PSG 1
	dc.b $39, $0a, $14	; Set frequency '330' for channel PSG 2
	dc.b $3a, $02, $14	; Set frequency '322' for channel PSG 3
; Pattern $0e, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $46, $c1	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 5
	dc.b $38, $04, $14	; Set frequency '324' for channel PSG 1
	dc.b $39, $0b, $14	; Set frequency '331' for channel PSG 2
	dc.b $3a, $03, $14	; Set frequency '323' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
	dc.b $38, $05, $14	; Set frequency '325' for channel PSG 1
	dc.b $39, $0c, $14	; Set frequency '332' for channel PSG 2
	dc.b $3a, $04, $14	; Set frequency '324' for channel PSG 3
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 5
	dc.b $38, $06, $14	; Set frequency '326' for channel PSG 1
	dc.b $39, $0d, $14	; Set frequency '333' for channel PSG 2
	dc.b $3a, $05, $14	; Set frequency '325' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $38, $07, $14	; Set frequency '327' for channel PSG 1
	dc.b $39, $0e, $14	; Set frequency '334' for channel PSG 2
	dc.b $3a, $06, $14	; Set frequency '326' for channel PSG 3
; Pattern $0e, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 5
	dc.b $38, $08, $14	; Set frequency '328' for channel PSG 1
	dc.b $39, $0f, $14	; Set frequency '335' for channel PSG 2
	dc.b $3a, $07, $14	; Set frequency '327' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $38, $09, $14	; Set frequency '329' for channel PSG 1
	dc.b $39, $00, $15	; Set frequency '336' for channel PSG 2
	dc.b $3a, $08, $14	; Set frequency '328' for channel PSG 3
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 5
	dc.b $38, $0a, $14	; Set frequency '330' for channel PSG 1
	dc.b $39, $01, $15	; Set frequency '337' for channel PSG 2
	dc.b $3a, $09, $14	; Set frequency '329' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $38, $0b, $14	; Set frequency '331' for channel PSG 1
	dc.b $39, $02, $15	; Set frequency '338' for channel PSG 2
	dc.b $3a, $0a, $14	; Set frequency '330' for channel PSG 3
; Pattern $0e, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $35, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 5
	dc.b $38, $0c, $14	; Set frequency '332' for channel PSG 1
	dc.b $39, $03, $15	; Set frequency '339' for channel PSG 2
	dc.b $3a, $0b, $14	; Set frequency '331' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
	dc.b $38, $0d, $14	; Set frequency '333' for channel PSG 1
	dc.b $39, $04, $15	; Set frequency '340' for channel PSG 2
	dc.b $3a, $0c, $14	; Set frequency '332' for channel PSG 3
; Pattern $0e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
	dc.b $38, $0e, $14	; Set frequency '334' for channel PSG 1
	dc.b $39, $05, $15	; Set frequency '341' for channel PSG 2
	dc.b $3a, $0d, $14	; Set frequency '333' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $38, $0f, $14	; Set frequency '335' for channel PSG 1
	dc.b $39, $06, $15	; Set frequency '342' for channel PSG 2
	dc.b $3a, $0e, $14	; Set frequency '334' for channel PSG 3
; Pattern $0e, Row 6; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $38, $00, $15	; Set frequency '336' for channel PSG 1
	dc.b $39, $07, $15	; Set frequency '343' for channel PSG 2
	dc.b $3a, $0f, $14	; Set frequency '335' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $38, $01, $15	; Set frequency '337' for channel PSG 1
	dc.b $39, $08, $15	; Set frequency '344' for channel PSG 2
	dc.b $3a, $00, $15	; Set frequency '336' for channel PSG 3
; Pattern $0e, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $38, $02, $15	; Set frequency '338' for channel PSG 1
	dc.b $39, $09, $15	; Set frequency '345' for channel PSG 2
	dc.b $3a, $01, $15	; Set frequency '337' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $38, $03, $15	; Set frequency '339' for channel PSG 1
	dc.b $39, $0a, $15	; Set frequency '346' for channel PSG 2
	dc.b $3a, $02, $15	; Set frequency '338' for channel PSG 3
; Pattern $0e, Row 8; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $38, $04, $15	; Set frequency '340' for channel PSG 1
	dc.b $39, $0b, $15	; Set frequency '347' for channel PSG 2
	dc.b $3a, $03, $15	; Set frequency '339' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $38, $05, $15	; Set frequency '341' for channel PSG 1
	dc.b $39, $0c, $15	; Set frequency '348' for channel PSG 2
	dc.b $3a, $04, $15	; Set frequency '340' for channel PSG 3
; Pattern $0e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $38, $06, $15	; Set frequency '342' for channel PSG 1
	dc.b $39, $0d, $15	; Set frequency '349' for channel PSG 2
	dc.b $3a, $05, $15	; Set frequency '341' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $38, $07, $15	; Set frequency '343' for channel PSG 1
	dc.b $39, $0e, $15	; Set frequency '350' for channel PSG 2
	dc.b $3a, $06, $15	; Set frequency '342' for channel PSG 3
; Pattern $0e, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $38, $08, $15	; Set frequency '344' for channel PSG 1
	dc.b $39, $0f, $15	; Set frequency '351' for channel PSG 2
	dc.b $3a, $07, $15	; Set frequency '343' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $38, $09, $15	; Set frequency '345' for channel PSG 1
	dc.b $39, $00, $16	; Set frequency '352' for channel PSG 2
	dc.b $3a, $08, $15	; Set frequency '344' for channel PSG 3
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $38, $0a, $15	; Set frequency '346' for channel PSG 1
	dc.b $39, $01, $16	; Set frequency '353' for channel PSG 2
	dc.b $3a, $09, $15	; Set frequency '345' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $38, $0b, $15	; Set frequency '347' for channel PSG 1
	dc.b $39, $02, $16	; Set frequency '354' for channel PSG 2
	dc.b $3a, $0a, $15	; Set frequency '346' for channel PSG 3
; Pattern $0e, Row 12; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $38, $0c, $15	; Set frequency '348' for channel PSG 1
	dc.b $39, $03, $16	; Set frequency '355' for channel PSG 2
	dc.b $3a, $0b, $15	; Set frequency '347' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $38, $0d, $15	; Set frequency '349' for channel PSG 1
	dc.b $39, $04, $16	; Set frequency '356' for channel PSG 2
	dc.b $3a, $0c, $15	; Set frequency '348' for channel PSG 3
; Pattern $0e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $38, $0e, $15	; Set frequency '350' for channel PSG 1
	dc.b $39, $05, $16	; Set frequency '357' for channel PSG 2
	dc.b $3a, $0d, $15	; Set frequency '349' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $38, $0f, $15	; Set frequency '351' for channel PSG 1
	dc.b $39, $06, $16	; Set frequency '358' for channel PSG 2
	dc.b $3a, $0e, $15	; Set frequency '350' for channel PSG 3
; Pattern $0e, Row 14; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $38, $00, $16	; Set frequency '352' for channel PSG 1
	dc.b $39, $07, $16	; Set frequency '359' for channel PSG 2
	dc.b $3a, $0f, $15	; Set frequency '351' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $38, $01, $16	; Set frequency '353' for channel PSG 1
	dc.b $39, $08, $16	; Set frequency '360' for channel PSG 2
	dc.b $3a, $00, $16	; Set frequency '352' for channel PSG 3
; Pattern $0e, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 5
	dc.b $38, $02, $16	; Set frequency '354' for channel PSG 1
	dc.b $39, $09, $16	; Set frequency '361' for channel PSG 2
	dc.b $3a, $01, $16	; Set frequency '353' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 5
	dc.b $38, $03, $16	; Set frequency '355' for channel PSG 1
	dc.b $39, $0a, $16	; Set frequency '362' for channel PSG 2
	dc.b $3a, $02, $16	; Set frequency '354' for channel PSG 3
; Pattern $0e, Row 16; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 5
	dc.b $38, $04, $16	; Set frequency '356' for channel PSG 1
	dc.b $39, $0b, $16	; Set frequency '363' for channel PSG 2
	dc.b $3a, $03, $16	; Set frequency '355' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 5
	dc.b $38, $05, $16	; Set frequency '357' for channel PSG 1
	dc.b $39, $0c, $16	; Set frequency '364' for channel PSG 2
	dc.b $3a, $04, $16	; Set frequency '356' for channel PSG 3
; Pattern $0e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 5
	dc.b $38, $06, $16	; Set frequency '358' for channel PSG 1
	dc.b $39, $0d, $16	; Set frequency '365' for channel PSG 2
	dc.b $3a, $05, $16	; Set frequency '357' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 5
	dc.b $38, $07, $16	; Set frequency '359' for channel PSG 1
	dc.b $39, $0e, $16	; Set frequency '366' for channel PSG 2
	dc.b $3a, $06, $16	; Set frequency '358' for channel PSG 3
; Pattern $0e, Row 18; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 5
	dc.b $38, $08, $16	; Set frequency '360' for channel PSG 1
	dc.b $39, $0f, $16	; Set frequency '367' for channel PSG 2
	dc.b $3a, $07, $16	; Set frequency '359' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $aa	; Set frequency '7082' (octave 3 semitone 938) for channel FM 5
	dc.b $38, $09, $16	; Set frequency '361' for channel PSG 1
	dc.b $39, $00, $17	; Set frequency '368' for channel PSG 2
	dc.b $3a, $08, $16	; Set frequency '360' for channel PSG 3
; Pattern $0e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $a9	; Set frequency '7081' (octave 3 semitone 937) for channel FM 5
	dc.b $38, $0a, $16	; Set frequency '362' for channel PSG 1
	dc.b $39, $01, $17	; Set frequency '369' for channel PSG 2
	dc.b $3a, $09, $16	; Set frequency '361' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $a8	; Set frequency '7080' (octave 3 semitone 936) for channel FM 5
	dc.b $38, $0b, $16	; Set frequency '363' for channel PSG 1
	dc.b $39, $02, $17	; Set frequency '370' for channel PSG 2
	dc.b $3a, $0a, $16	; Set frequency '362' for channel PSG 3
; Pattern $0e, Row 20; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 5
	dc.b $38, $0c, $16	; Set frequency '364' for channel PSG 1
	dc.b $39, $03, $17	; Set frequency '371' for channel PSG 2
	dc.b $3a, $0b, $16	; Set frequency '363' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
	dc.b $38, $0d, $16	; Set frequency '365' for channel PSG 1
	dc.b $39, $04, $17	; Set frequency '372' for channel PSG 2
	dc.b $3a, $0c, $16	; Set frequency '364' for channel PSG 3
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 5
	dc.b $38, $0e, $16	; Set frequency '366' for channel PSG 1
	dc.b $39, $05, $17	; Set frequency '373' for channel PSG 2
	dc.b $3a, $0d, $16	; Set frequency '365' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $38, $0f, $16	; Set frequency '367' for channel PSG 1
	dc.b $39, $06, $17	; Set frequency '374' for channel PSG 2
	dc.b $3a, $0e, $16	; Set frequency '366' for channel PSG 3
; Pattern $0e, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $a3	; Set frequency '7075' (octave 3 semitone 931) for channel FM 5
	dc.b $38, $00, $17	; Set frequency '368' for channel PSG 1
	dc.b $39, $07, $17	; Set frequency '375' for channel PSG 2
	dc.b $3a, $0f, $16	; Set frequency '367' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $38, $01, $17	; Set frequency '369' for channel PSG 1
	dc.b $39, $08, $17	; Set frequency '376' for channel PSG 2
	dc.b $3a, $00, $17	; Set frequency '368' for channel PSG 3
; Pattern $0e, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 5
	dc.b $38, $02, $17	; Set frequency '370' for channel PSG 1
	dc.b $39, $09, $17	; Set frequency '377' for channel PSG 2
	dc.b $3a, $01, $17	; Set frequency '369' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $38, $03, $17	; Set frequency '371' for channel PSG 1
	dc.b $39, $0a, $17	; Set frequency '378' for channel PSG 2
	dc.b $3a, $02, $17	; Set frequency '370' for channel PSG 3
; Pattern $0e, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 5
	dc.b $38, $04, $17	; Set frequency '372' for channel PSG 1
	dc.b $39, $0b, $17	; Set frequency '379' for channel PSG 2
	dc.b $3a, $03, $17	; Set frequency '371' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $38, $05, $17	; Set frequency '373' for channel PSG 1
	dc.b $39, $0c, $17	; Set frequency '380' for channel PSG 2
	dc.b $3a, $04, $17	; Set frequency '372' for channel PSG 3
; Pattern $0e, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $9d	; Set frequency '7069' (octave 3 semitone 925) for channel FM 5
	dc.b $38, $06, $17	; Set frequency '374' for channel PSG 1
	dc.b $39, $0d, $17	; Set frequency '381' for channel PSG 2
	dc.b $3a, $05, $17	; Set frequency '373' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $38, $07, $17	; Set frequency '375' for channel PSG 1
	dc.b $39, $0e, $17	; Set frequency '382' for channel PSG 2
	dc.b $3a, $06, $17	; Set frequency '374' for channel PSG 3
; Pattern $0e, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 5
	dc.b $38, $08, $17	; Set frequency '376' for channel PSG 1
	dc.b $39, $0f, $17	; Set frequency '383' for channel PSG 2
	dc.b $3a, $07, $17	; Set frequency '375' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $38, $09, $17	; Set frequency '377' for channel PSG 1
	dc.b $39, $00, $18	; Set frequency '384' for channel PSG 2
	dc.b $3a, $08, $17	; Set frequency '376' for channel PSG 3
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $38, $0a, $17	; Set frequency '378' for channel PSG 1
	dc.b $39, $01, $18	; Set frequency '385' for channel PSG 2
	dc.b $3a, $09, $17	; Set frequency '377' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $38, $0b, $17	; Set frequency '379' for channel PSG 1
	dc.b $39, $02, $18	; Set frequency '386' for channel PSG 2
	dc.b $3a, $0a, $17	; Set frequency '378' for channel PSG 3
; Pattern $0e, Row 28; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 5
	dc.b $38, $0c, $17	; Set frequency '380' for channel PSG 1
	dc.b $39, $03, $18	; Set frequency '387' for channel PSG 2
	dc.b $3a, $0b, $17	; Set frequency '379' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
	dc.b $38, $0d, $17	; Set frequency '381' for channel PSG 1
	dc.b $39, $04, $18	; Set frequency '388' for channel PSG 2
	dc.b $3a, $0c, $17	; Set frequency '380' for channel PSG 3
; Pattern $0e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 5
	dc.b $38, $0e, $17	; Set frequency '382' for channel PSG 1
	dc.b $39, $05, $18	; Set frequency '389' for channel PSG 2
	dc.b $3a, $0d, $17	; Set frequency '381' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
	dc.b $38, $0f, $17	; Set frequency '383' for channel PSG 1
	dc.b $39, $06, $18	; Set frequency '390' for channel PSG 2
	dc.b $3a, $0e, $17	; Set frequency '382' for channel PSG 3
; Pattern $0e, Row 30; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 5
	dc.b $38, $00, $18	; Set frequency '384' for channel PSG 1
	dc.b $39, $07, $18	; Set frequency '391' for channel PSG 2
	dc.b $3a, $0f, $17	; Set frequency '383' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $38, $01, $18	; Set frequency '385' for channel PSG 1
	dc.b $39, $08, $18	; Set frequency '392' for channel PSG 2
	dc.b $3a, $00, $18	; Set frequency '384' for channel PSG 3
; Pattern $0e, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $91	; Set frequency '7057' (octave 3 semitone 913) for channel FM 5
	dc.b $38, $02, $18	; Set frequency '386' for channel PSG 1
	dc.b $39, $09, $18	; Set frequency '393' for channel PSG 2
	dc.b $3a, $01, $18	; Set frequency '385' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $38, $03, $18	; Set frequency '387' for channel PSG 1
	dc.b $39, $0a, $18	; Set frequency '394' for channel PSG 2
	dc.b $3a, $02, $18	; Set frequency '386' for channel PSG 3
; Pattern $0e, Row 32; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
	dc.b $38, $04, $18	; Set frequency '388' for channel PSG 1
	dc.b $39, $0b, $18	; Set frequency '395' for channel PSG 2
	dc.b $3a, $03, $18	; Set frequency '387' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $38, $05, $18	; Set frequency '389' for channel PSG 1
	dc.b $39, $0c, $18	; Set frequency '396' for channel PSG 2
	dc.b $3a, $04, $18	; Set frequency '388' for channel PSG 3
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $38, $06, $18	; Set frequency '390' for channel PSG 1
	dc.b $39, $0d, $18	; Set frequency '397' for channel PSG 2
	dc.b $3a, $05, $18	; Set frequency '389' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $38, $07, $18	; Set frequency '391' for channel PSG 1
	dc.b $39, $0e, $18	; Set frequency '398' for channel PSG 2
	dc.b $3a, $06, $18	; Set frequency '390' for channel PSG 3
; Pattern $0e, Row 34; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $38, $08, $18	; Set frequency '392' for channel PSG 1
	dc.b $39, $0f, $18	; Set frequency '399' for channel PSG 2
	dc.b $3a, $07, $18	; Set frequency '391' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $38, $09, $18	; Set frequency '393' for channel PSG 1
	dc.b $39, $00, $19	; Set frequency '400' for channel PSG 2
	dc.b $3a, $08, $18	; Set frequency '392' for channel PSG 3
; Pattern $0e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $38, $0a, $18	; Set frequency '394' for channel PSG 1
	dc.b $39, $01, $19	; Set frequency '401' for channel PSG 2
	dc.b $3a, $09, $18	; Set frequency '393' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $38, $0b, $18	; Set frequency '395' for channel PSG 1
	dc.b $39, $02, $19	; Set frequency '402' for channel PSG 2
	dc.b $3a, $0a, $18	; Set frequency '394' for channel PSG 3
; Pattern $0e, Row 36; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $38, $0c, $18	; Set frequency '396' for channel PSG 1
	dc.b $39, $03, $19	; Set frequency '403' for channel PSG 2
	dc.b $3a, $0b, $18	; Set frequency '395' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $38, $0d, $18	; Set frequency '397' for channel PSG 1
	dc.b $39, $04, $19	; Set frequency '404' for channel PSG 2
	dc.b $3a, $0c, $18	; Set frequency '396' for channel PSG 3
; Pattern $0e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $38, $0e, $18	; Set frequency '398' for channel PSG 1
	dc.b $39, $05, $19	; Set frequency '405' for channel PSG 2
	dc.b $3a, $0d, $18	; Set frequency '397' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $38, $0f, $18	; Set frequency '399' for channel PSG 1
	dc.b $39, $06, $19	; Set frequency '406' for channel PSG 2
	dc.b $3a, $0e, $18	; Set frequency '398' for channel PSG 3
; Pattern $0e, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $38, $00, $19	; Set frequency '400' for channel PSG 1
	dc.b $39, $07, $19	; Set frequency '407' for channel PSG 2
	dc.b $3a, $0f, $18	; Set frequency '399' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $38, $01, $19	; Set frequency '401' for channel PSG 1
	dc.b $39, $08, $19	; Set frequency '408' for channel PSG 2
	dc.b $3a, $00, $19	; Set frequency '400' for channel PSG 3
; Pattern $0e, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $38, $02, $19	; Set frequency '402' for channel PSG 1
	dc.b $39, $09, $19	; Set frequency '409' for channel PSG 2
	dc.b $3a, $01, $19	; Set frequency '401' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $38, $03, $19	; Set frequency '403' for channel PSG 1
	dc.b $39, $0a, $19	; Set frequency '410' for channel PSG 2
	dc.b $3a, $02, $19	; Set frequency '402' for channel PSG 3
; Pattern $0e, Row 40; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $38, $04, $19	; Set frequency '404' for channel PSG 1
	dc.b $39, $0b, $19	; Set frequency '411' for channel PSG 2
	dc.b $3a, $03, $19	; Set frequency '403' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $38, $05, $19	; Set frequency '405' for channel PSG 1
	dc.b $39, $0c, $19	; Set frequency '412' for channel PSG 2
	dc.b $3a, $04, $19	; Set frequency '404' for channel PSG 3
; Pattern $0e, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $38, $06, $19	; Set frequency '406' for channel PSG 1
	dc.b $39, $0d, $19	; Set frequency '413' for channel PSG 2
	dc.b $3a, $05, $19	; Set frequency '405' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $38, $07, $19	; Set frequency '407' for channel PSG 1
	dc.b $39, $0e, $19	; Set frequency '414' for channel PSG 2
	dc.b $3a, $06, $19	; Set frequency '406' for channel PSG 3
; Pattern $0e, Row 42; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
	dc.b $38, $08, $19	; Set frequency '408' for channel PSG 1
	dc.b $39, $0f, $19	; Set frequency '415' for channel PSG 2
	dc.b $3a, $07, $19	; Set frequency '407' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
	dc.b $38, $09, $19	; Set frequency '409' for channel PSG 1
	dc.b $39, $00, $1a	; Set frequency '416' for channel PSG 2
	dc.b $3a, $08, $19	; Set frequency '408' for channel PSG 3
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $79	; Set frequency '7033' (octave 3 semitone 889) for channel FM 5
	dc.b $38, $0a, $19	; Set frequency '410' for channel PSG 1
	dc.b $39, $01, $1a	; Set frequency '417' for channel PSG 2
	dc.b $3a, $09, $19	; Set frequency '409' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $78	; Set frequency '7032' (octave 3 semitone 888) for channel FM 5
	dc.b $38, $0b, $19	; Set frequency '411' for channel PSG 1
	dc.b $39, $02, $1a	; Set frequency '418' for channel PSG 2
	dc.b $3a, $0a, $19	; Set frequency '410' for channel PSG 3
; Pattern $0e, Row 44; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $77	; Set frequency '7031' (octave 3 semitone 887) for channel FM 5
	dc.b $38, $0c, $19	; Set frequency '412' for channel PSG 1
	dc.b $39, $03, $1a	; Set frequency '419' for channel PSG 2
	dc.b $3a, $0b, $19	; Set frequency '411' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 5
	dc.b $38, $0d, $19	; Set frequency '413' for channel PSG 1
	dc.b $39, $04, $1a	; Set frequency '420' for channel PSG 2
	dc.b $3a, $0c, $19	; Set frequency '412' for channel PSG 3
; Pattern $0e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $75	; Set frequency '7029' (octave 3 semitone 885) for channel FM 5
	dc.b $38, $0e, $19	; Set frequency '414' for channel PSG 1
	dc.b $39, $05, $1a	; Set frequency '421' for channel PSG 2
	dc.b $3a, $0d, $19	; Set frequency '413' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $74	; Set frequency '7028' (octave 3 semitone 884) for channel FM 5
	dc.b $38, $0f, $19	; Set frequency '415' for channel PSG 1
	dc.b $39, $06, $1a	; Set frequency '422' for channel PSG 2
	dc.b $3a, $0e, $19	; Set frequency '414' for channel PSG 3
; Pattern $0e, Row 46; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $73	; Set frequency '7027' (octave 3 semitone 883) for channel FM 5
	dc.b $38, $00, $1a	; Set frequency '416' for channel PSG 1
	dc.b $39, $07, $1a	; Set frequency '423' for channel PSG 2
	dc.b $3a, $0f, $19	; Set frequency '415' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 5
	dc.b $38, $01, $1a	; Set frequency '417' for channel PSG 1
	dc.b $39, $08, $1a	; Set frequency '424' for channel PSG 2
	dc.b $3a, $00, $1a	; Set frequency '416' for channel PSG 3
; Pattern $0e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $71	; Set frequency '7025' (octave 3 semitone 881) for channel FM 5
	dc.b $38, $02, $1a	; Set frequency '418' for channel PSG 1
	dc.b $39, $09, $1a	; Set frequency '425' for channel PSG 2
	dc.b $3a, $01, $1a	; Set frequency '417' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $70	; Set frequency '7024' (octave 3 semitone 880) for channel FM 5
	dc.b $38, $03, $1a	; Set frequency '419' for channel PSG 1
	dc.b $39, $0a, $1a	; Set frequency '426' for channel PSG 2
	dc.b $3a, $02, $1a	; Set frequency '418' for channel PSG 3
; Pattern $0e, Row 48; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $6f	; Set frequency '7023' (octave 3 semitone 879) for channel FM 5
	dc.b $38, $04, $1a	; Set frequency '420' for channel PSG 1
	dc.b $39, $0b, $1a	; Set frequency '427' for channel PSG 2
	dc.b $3a, $03, $1a	; Set frequency '419' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $6e	; Set frequency '7022' (octave 3 semitone 878) for channel FM 5
	dc.b $38, $05, $1a	; Set frequency '421' for channel PSG 1
	dc.b $39, $0c, $1a	; Set frequency '428' for channel PSG 2
	dc.b $3a, $04, $1a	; Set frequency '420' for channel PSG 3
; Pattern $0e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $6d	; Set frequency '7021' (octave 3 semitone 877) for channel FM 5
	dc.b $38, $06, $1a	; Set frequency '422' for channel PSG 1
	dc.b $39, $0d, $1a	; Set frequency '429' for channel PSG 2
	dc.b $3a, $05, $1a	; Set frequency '421' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $38, $07, $1a	; Set frequency '423' for channel PSG 1
	dc.b $39, $0e, $1a	; Set frequency '430' for channel PSG 2
	dc.b $3a, $06, $1a	; Set frequency '422' for channel PSG 3
; Pattern $0e, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $6b	; Set frequency '7019' (octave 3 semitone 875) for channel FM 5
	dc.b $38, $08, $1a	; Set frequency '424' for channel PSG 1
	dc.b $39, $0f, $1a	; Set frequency '431' for channel PSG 2
	dc.b $3a, $07, $1a	; Set frequency '423' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $6a	; Set frequency '7018' (octave 3 semitone 874) for channel FM 5
	dc.b $38, $09, $1a	; Set frequency '425' for channel PSG 1
	dc.b $39, $00, $1b	; Set frequency '432' for channel PSG 2
	dc.b $3a, $08, $1a	; Set frequency '424' for channel PSG 3
; Pattern $0e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $69	; Set frequency '7017' (octave 3 semitone 873) for channel FM 5
	dc.b $38, $0a, $1a	; Set frequency '426' for channel PSG 1
	dc.b $39, $01, $1b	; Set frequency '433' for channel PSG 2
	dc.b $3a, $09, $1a	; Set frequency '425' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $68	; Set frequency '7016' (octave 3 semitone 872) for channel FM 5
	dc.b $38, $0b, $1a	; Set frequency '427' for channel PSG 1
	dc.b $39, $02, $1b	; Set frequency '434' for channel PSG 2
	dc.b $3a, $0a, $1a	; Set frequency '426' for channel PSG 3
; Pattern $0e, Row 52; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $67	; Set frequency '7015' (octave 3 semitone 871) for channel FM 5
	dc.b $38, $0c, $1a	; Set frequency '428' for channel PSG 1
	dc.b $39, $03, $1b	; Set frequency '435' for channel PSG 2
	dc.b $3a, $0b, $1a	; Set frequency '427' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $66	; Set frequency '7014' (octave 3 semitone 870) for channel FM 5
	dc.b $38, $0d, $1a	; Set frequency '429' for channel PSG 1
	dc.b $39, $04, $1b	; Set frequency '436' for channel PSG 2
	dc.b $3a, $0c, $1a	; Set frequency '428' for channel PSG 3
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $65	; Set frequency '7013' (octave 3 semitone 869) for channel FM 5
	dc.b $38, $0e, $1a	; Set frequency '430' for channel PSG 1
	dc.b $39, $05, $1b	; Set frequency '437' for channel PSG 2
	dc.b $3a, $0d, $1a	; Set frequency '429' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 5
	dc.b $38, $0f, $1a	; Set frequency '431' for channel PSG 1
	dc.b $39, $06, $1b	; Set frequency '438' for channel PSG 2
	dc.b $3a, $0e, $1a	; Set frequency '430' for channel PSG 3
; Pattern $0e, Row 54; 
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $63	; Set frequency '7011' (octave 3 semitone 867) for channel FM 5
	dc.b $38, $00, $1b	; Set frequency '432' for channel PSG 1
	dc.b $39, $07, $1b	; Set frequency '439' for channel PSG 2
	dc.b $3a, $0f, $1a	; Set frequency '431' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $62	; Set frequency '7010' (octave 3 semitone 866) for channel FM 5
	dc.b $38, $01, $1b	; Set frequency '433' for channel PSG 1
	dc.b $39, $08, $1b	; Set frequency '440' for channel PSG 2
	dc.b $3a, $00, $1b	; Set frequency '432' for channel PSG 3
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $61	; Set frequency '7009' (octave 3 semitone 865) for channel FM 5
	dc.b $38, $02, $1b	; Set frequency '434' for channel PSG 1
	dc.b $39, $09, $1b	; Set frequency '441' for channel PSG 2
	dc.b $3a, $01, $1b	; Set frequency '433' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $60	; Set frequency '7008' (octave 3 semitone 864) for channel FM 5
	dc.b $38, $03, $1b	; Set frequency '435' for channel PSG 1
	dc.b $39, $0a, $1b	; Set frequency '442' for channel PSG 2
	dc.b $3a, $02, $1b	; Set frequency '434' for channel PSG 3
; Pattern $0e, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $5f	; Set frequency '7007' (octave 3 semitone 863) for channel FM 5
	dc.b $38, $04, $1b	; Set frequency '436' for channel PSG 1
	dc.b $39, $0b, $1b	; Set frequency '443' for channel PSG 2
	dc.b $3a, $03, $1b	; Set frequency '435' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $5e	; Set frequency '7006' (octave 3 semitone 862) for channel FM 5
	dc.b $38, $05, $1b	; Set frequency '437' for channel PSG 1
	dc.b $39, $0c, $1b	; Set frequency '444' for channel PSG 2
	dc.b $3a, $04, $1b	; Set frequency '436' for channel PSG 3
; Pattern $0e, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $5d	; Set frequency '7005' (octave 3 semitone 861) for channel FM 5
	dc.b $38, $06, $1b	; Set frequency '438' for channel PSG 1
	dc.b $39, $0d, $1b	; Set frequency '445' for channel PSG 2
	dc.b $3a, $05, $1b	; Set frequency '437' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $5c	; Set frequency '7004' (octave 3 semitone 860) for channel FM 5
	dc.b $38, $07, $1b	; Set frequency '439' for channel PSG 1
	dc.b $39, $0e, $1b	; Set frequency '446' for channel PSG 2
	dc.b $3a, $06, $1b	; Set frequency '438' for channel PSG 3
; Pattern $0e, Row 58; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $c9	; Note E-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $5b	; Set frequency '7003' (octave 3 semitone 859) for channel FM 5
	dc.b $38, $08, $1b	; Set frequency '440' for channel PSG 1
	dc.b $39, $0f, $1b	; Set frequency '447' for channel PSG 2
	dc.b $3a, $07, $1b	; Set frequency '439' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $5a	; Set frequency '7002' (octave 3 semitone 858) for channel FM 5
	dc.b $38, $09, $1b	; Set frequency '441' for channel PSG 1
	dc.b $39, $00, $1c	; Set frequency '448' for channel PSG 2
	dc.b $3a, $08, $1b	; Set frequency '440' for channel PSG 3
; Pattern $0e, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 5
	dc.b $38, $0a, $1b	; Set frequency '442' for channel PSG 1
	dc.b $39, $01, $1c	; Set frequency '449' for channel PSG 2
	dc.b $3a, $09, $1b	; Set frequency '441' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 5
	dc.b $38, $0b, $1b	; Set frequency '443' for channel PSG 1
	dc.b $39, $02, $1c	; Set frequency '450' for channel PSG 2
	dc.b $3a, $0a, $1b	; Set frequency '442' for channel PSG 3
; Pattern $0e, Row 60; 
	dc.b $00, $23	; Note C#1 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d1	; Note G#6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e3	; Note C#7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 5
	dc.b $38, $0c, $1b	; Set frequency '444' for channel PSG 1
	dc.b $39, $03, $1c	; Set frequency '451' for channel PSG 2
	dc.b $3a, $0b, $1b	; Set frequency '443' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 5
	dc.b $38, $0d, $1b	; Set frequency '445' for channel PSG 1
	dc.b $39, $04, $1c	; Set frequency '452' for channel PSG 2
	dc.b $3a, $0c, $1b	; Set frequency '444' for channel PSG 3
; Pattern $0e, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 5
	dc.b $38, $0e, $1b	; Set frequency '446' for channel PSG 1
	dc.b $39, $05, $1c	; Set frequency '453' for channel PSG 2
	dc.b $3a, $0d, $1b	; Set frequency '445' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 5
	dc.b $38, $0f, $1b	; Set frequency '447' for channel PSG 1
	dc.b $39, $06, $1c	; Set frequency '454' for channel PSG 2
	dc.b $3a, $0e, $1b	; Set frequency '446' for channel PSG 3
; Pattern $0e, Row 62; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d1	; Note G#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 5
	dc.b $38, $00, $1c	; Set frequency '448' for channel PSG 1
	dc.b $39, $07, $1c	; Set frequency '455' for channel PSG 2
	dc.b $3a, $0f, $1b	; Set frequency '447' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 5
	dc.b $38, $01, $1c	; Set frequency '449' for channel PSG 1
	dc.b $39, $08, $1c	; Set frequency '456' for channel PSG 2
	dc.b $3a, $00, $1c	; Set frequency '448' for channel PSG 3
; Pattern $0e, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 5
	dc.b $38, $02, $1c	; Set frequency '450' for channel PSG 1
	dc.b $39, $09, $1c	; Set frequency '457' for channel PSG 2
	dc.b $3a, $01, $1c	; Set frequency '449' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 5
	dc.b $38, $03, $1c	; Set frequency '451' for channel PSG 1
	dc.b $39, $0a, $1c	; Set frequency '458' for channel PSG 2
	dc.b $3a, $02, $1c	; Set frequency '450' for channel PSG 3
; Pattern $0f, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 5
	dc.b $38, $04, $1c	; Set frequency '452' for channel PSG 1
	dc.b $39, $0b, $1c	; Set frequency '459' for channel PSG 2
	dc.b $3a, $03, $1c	; Set frequency '451' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 5
	dc.b $38, $05, $1c	; Set frequency '453' for channel PSG 1
	dc.b $39, $0c, $1c	; Set frequency '460' for channel PSG 2
	dc.b $3a, $04, $1c	; Set frequency '452' for channel PSG 3
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 5
	dc.b $38, $06, $1c	; Set frequency '454' for channel PSG 1
	dc.b $39, $0d, $1c	; Set frequency '461' for channel PSG 2
	dc.b $3a, $05, $1c	; Set frequency '453' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 5
	dc.b $38, $07, $1c	; Set frequency '455' for channel PSG 1
	dc.b $39, $0e, $1c	; Set frequency '462' for channel PSG 2
	dc.b $3a, $06, $1c	; Set frequency '454' for channel PSG 3
; Pattern $0f, Row 2; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 5
	dc.b $38, $08, $1c	; Set frequency '456' for channel PSG 1
	dc.b $39, $0f, $1c	; Set frequency '463' for channel PSG 2
	dc.b $3a, $07, $1c	; Set frequency '455' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 5
	dc.b $38, $09, $1c	; Set frequency '457' for channel PSG 1
	dc.b $39, $00, $1d	; Set frequency '464' for channel PSG 2
	dc.b $3a, $08, $1c	; Set frequency '456' for channel PSG 3
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 5
	dc.b $38, $0a, $1c	; Set frequency '458' for channel PSG 1
	dc.b $39, $01, $1d	; Set frequency '465' for channel PSG 2
	dc.b $3a, $09, $1c	; Set frequency '457' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 5
	dc.b $38, $0b, $1c	; Set frequency '459' for channel PSG 1
	dc.b $39, $02, $1d	; Set frequency '466' for channel PSG 2
	dc.b $3a, $0a, $1c	; Set frequency '458' for channel PSG 3
; Pattern $0f, Row 4; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $35, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 5
	dc.b $38, $0c, $1c	; Set frequency '460' for channel PSG 1
	dc.b $39, $03, $1d	; Set frequency '467' for channel PSG 2
	dc.b $3a, $0b, $1c	; Set frequency '459' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
	dc.b $35, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 5
	dc.b $38, $0d, $1c	; Set frequency '461' for channel PSG 1
	dc.b $39, $04, $1d	; Set frequency '468' for channel PSG 2
	dc.b $3a, $0c, $1c	; Set frequency '460' for channel PSG 3
; Pattern $0f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $35, $1b, $45	; Set frequency '6981' (octave 3 semitone 837) for channel FM 5
	dc.b $38, $0e, $1c	; Set frequency '462' for channel PSG 1
	dc.b $39, $05, $1d	; Set frequency '469' for channel PSG 2
	dc.b $3a, $0d, $1c	; Set frequency '461' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
	dc.b $38, $0f, $1c	; Set frequency '463' for channel PSG 1
	dc.b $39, $06, $1d	; Set frequency '470' for channel PSG 2
	dc.b $3a, $0e, $1c	; Set frequency '462' for channel PSG 3
; Pattern $0f, Row 6; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 2
	dc.b $35, $1b, $43	; Set frequency '6979' (octave 3 semitone 835) for channel FM 5
	dc.b $38, $00, $1d	; Set frequency '464' for channel PSG 1
	dc.b $39, $07, $1d	; Set frequency '471' for channel PSG 2
	dc.b $3a, $0f, $1c	; Set frequency '463' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 2
	dc.b $35, $1b, $42	; Set frequency '6978' (octave 3 semitone 834) for channel FM 5
	dc.b $38, $01, $1d	; Set frequency '465' for channel PSG 1
	dc.b $39, $08, $1d	; Set frequency '472' for channel PSG 2
	dc.b $3a, $00, $1d	; Set frequency '464' for channel PSG 3
; Pattern $0f, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 5
	dc.b $38, $02, $1d	; Set frequency '466' for channel PSG 1
	dc.b $39, $09, $1d	; Set frequency '473' for channel PSG 2
	dc.b $3a, $01, $1d	; Set frequency '465' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $40	; Set frequency '6976' (octave 3 semitone 832) for channel FM 5
	dc.b $38, $03, $1d	; Set frequency '467' for channel PSG 1
	dc.b $39, $0a, $1d	; Set frequency '474' for channel PSG 2
	dc.b $3a, $02, $1d	; Set frequency '466' for channel PSG 3
; Pattern $0f, Row 8; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $3f	; Set frequency '6975' (octave 3 semitone 831) for channel FM 5
	dc.b $38, $04, $1d	; Set frequency '468' for channel PSG 1
	dc.b $39, $0b, $1d	; Set frequency '475' for channel PSG 2
	dc.b $3a, $03, $1d	; Set frequency '467' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 5
	dc.b $38, $05, $1d	; Set frequency '469' for channel PSG 1
	dc.b $39, $0c, $1d	; Set frequency '476' for channel PSG 2
	dc.b $3a, $04, $1d	; Set frequency '468' for channel PSG 3
; Pattern $0f, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $3d	; Set frequency '6973' (octave 3 semitone 829) for channel FM 5
	dc.b $38, $06, $1d	; Set frequency '470' for channel PSG 1
	dc.b $39, $0d, $1d	; Set frequency '477' for channel PSG 2
	dc.b $3a, $05, $1d	; Set frequency '469' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $3c	; Set frequency '6972' (octave 3 semitone 828) for channel FM 5
	dc.b $38, $07, $1d	; Set frequency '471' for channel PSG 1
	dc.b $39, $0e, $1d	; Set frequency '478' for channel PSG 2
	dc.b $3a, $06, $1d	; Set frequency '470' for channel PSG 3
; Pattern $0f, Row 10; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 5
	dc.b $38, $08, $1d	; Set frequency '472' for channel PSG 1
	dc.b $39, $0f, $1d	; Set frequency '479' for channel PSG 2
	dc.b $3a, $07, $1d	; Set frequency '471' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 5
	dc.b $38, $09, $1d	; Set frequency '473' for channel PSG 1
	dc.b $39, $00, $1e	; Set frequency '480' for channel PSG 2
	dc.b $3a, $08, $1d	; Set frequency '472' for channel PSG 3
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $39	; Set frequency '6969' (octave 3 semitone 825) for channel FM 5
	dc.b $38, $0a, $1d	; Set frequency '474' for channel PSG 1
	dc.b $39, $01, $1e	; Set frequency '481' for channel PSG 2
	dc.b $3a, $09, $1d	; Set frequency '473' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 5
	dc.b $38, $0b, $1d	; Set frequency '475' for channel PSG 1
	dc.b $39, $02, $1e	; Set frequency '482' for channel PSG 2
	dc.b $3a, $0a, $1d	; Set frequency '474' for channel PSG 3
; Pattern $0f, Row 12; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $37	; Set frequency '6967' (octave 3 semitone 823) for channel FM 5
	dc.b $38, $0c, $1d	; Set frequency '476' for channel PSG 1
	dc.b $39, $03, $1e	; Set frequency '483' for channel PSG 2
	dc.b $3a, $0b, $1d	; Set frequency '475' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $36	; Set frequency '6966' (octave 3 semitone 822) for channel FM 5
	dc.b $38, $0d, $1d	; Set frequency '477' for channel PSG 1
	dc.b $39, $04, $1e	; Set frequency '484' for channel PSG 2
	dc.b $3a, $0c, $1d	; Set frequency '476' for channel PSG 3
; Pattern $0f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $35	; Set frequency '6965' (octave 3 semitone 821) for channel FM 5
	dc.b $38, $0e, $1d	; Set frequency '478' for channel PSG 1
	dc.b $39, $05, $1e	; Set frequency '485' for channel PSG 2
	dc.b $3a, $0d, $1d	; Set frequency '477' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $34	; Set frequency '6964' (octave 3 semitone 820) for channel FM 5
	dc.b $38, $0f, $1d	; Set frequency '479' for channel PSG 1
	dc.b $39, $06, $1e	; Set frequency '486' for channel PSG 2
	dc.b $3a, $0e, $1d	; Set frequency '478' for channel PSG 3
; Pattern $0f, Row 14; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $33	; Set frequency '6963' (octave 3 semitone 819) for channel FM 5
	dc.b $38, $00, $1e	; Set frequency '480' for channel PSG 1
	dc.b $39, $07, $1e	; Set frequency '487' for channel PSG 2
	dc.b $3a, $0f, $1d	; Set frequency '479' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $32	; Set frequency '6962' (octave 3 semitone 818) for channel FM 5
	dc.b $38, $01, $1e	; Set frequency '481' for channel PSG 1
	dc.b $39, $08, $1e	; Set frequency '488' for channel PSG 2
	dc.b $3a, $00, $1e	; Set frequency '480' for channel PSG 3
; Pattern $0f, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $31	; Set frequency '6961' (octave 3 semitone 817) for channel FM 5
	dc.b $38, $02, $1e	; Set frequency '482' for channel PSG 1
	dc.b $39, $09, $1e	; Set frequency '489' for channel PSG 2
	dc.b $3a, $01, $1e	; Set frequency '481' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $30	; Set frequency '6960' (octave 3 semitone 816) for channel FM 5
	dc.b $38, $03, $1e	; Set frequency '483' for channel PSG 1
	dc.b $39, $0a, $1e	; Set frequency '490' for channel PSG 2
	dc.b $3a, $02, $1e	; Set frequency '482' for channel PSG 3
; Pattern $0f, Row 16; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $2f	; Set frequency '6959' (octave 3 semitone 815) for channel FM 5
	dc.b $38, $04, $1e	; Set frequency '484' for channel PSG 1
	dc.b $39, $0b, $1e	; Set frequency '491' for channel PSG 2
	dc.b $3a, $03, $1e	; Set frequency '483' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $2e	; Set frequency '6958' (octave 3 semitone 814) for channel FM 5
	dc.b $38, $05, $1e	; Set frequency '485' for channel PSG 1
	dc.b $39, $0c, $1e	; Set frequency '492' for channel PSG 2
	dc.b $3a, $04, $1e	; Set frequency '484' for channel PSG 3
; Pattern $0f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $2d	; Set frequency '6957' (octave 3 semitone 813) for channel FM 5
	dc.b $38, $06, $1e	; Set frequency '486' for channel PSG 1
	dc.b $39, $0d, $1e	; Set frequency '493' for channel PSG 2
	dc.b $3a, $05, $1e	; Set frequency '485' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 5
	dc.b $38, $07, $1e	; Set frequency '487' for channel PSG 1
	dc.b $39, $0e, $1e	; Set frequency '494' for channel PSG 2
	dc.b $3a, $06, $1e	; Set frequency '486' for channel PSG 3
; Pattern $0f, Row 18; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $2b	; Set frequency '6955' (octave 3 semitone 811) for channel FM 5
	dc.b $38, $08, $1e	; Set frequency '488' for channel PSG 1
	dc.b $39, $0f, $1e	; Set frequency '495' for channel PSG 2
	dc.b $3a, $07, $1e	; Set frequency '487' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $2a	; Set frequency '6954' (octave 3 semitone 810) for channel FM 5
	dc.b $38, $09, $1e	; Set frequency '489' for channel PSG 1
	dc.b $39, $00, $1f	; Set frequency '496' for channel PSG 2
	dc.b $3a, $08, $1e	; Set frequency '488' for channel PSG 3
; Pattern $0f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $29	; Set frequency '6953' (octave 3 semitone 809) for channel FM 5
	dc.b $38, $0a, $1e	; Set frequency '490' for channel PSG 1
	dc.b $39, $01, $1f	; Set frequency '497' for channel PSG 2
	dc.b $3a, $09, $1e	; Set frequency '489' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $35, $1b, $28	; Set frequency '6952' (octave 3 semitone 808) for channel FM 5
	dc.b $38, $0b, $1e	; Set frequency '491' for channel PSG 1
	dc.b $39, $02, $1f	; Set frequency '498' for channel PSG 2
	dc.b $3a, $0a, $1e	; Set frequency '490' for channel PSG 3
; Pattern $0f, Row 20; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $35, $1b, $27	; Set frequency '6951' (octave 3 semitone 807) for channel FM 5
	dc.b $38, $0c, $1e	; Set frequency '492' for channel PSG 1
	dc.b $39, $03, $1f	; Set frequency '499' for channel PSG 2
	dc.b $3a, $0b, $1e	; Set frequency '491' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 5
	dc.b $38, $0d, $1e	; Set frequency '493' for channel PSG 1
	dc.b $39, $04, $1f	; Set frequency '500' for channel PSG 2
	dc.b $3a, $0c, $1e	; Set frequency '492' for channel PSG 3
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $25	; Set frequency '6949' (octave 3 semitone 805) for channel FM 5
	dc.b $38, $0e, $1e	; Set frequency '494' for channel PSG 1
	dc.b $39, $05, $1f	; Set frequency '501' for channel PSG 2
	dc.b $3a, $0d, $1e	; Set frequency '493' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 5
	dc.b $38, $0f, $1e	; Set frequency '495' for channel PSG 1
	dc.b $39, $06, $1f	; Set frequency '502' for channel PSG 2
	dc.b $3a, $0e, $1e	; Set frequency '494' for channel PSG 3
; Pattern $0f, Row 22; 
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $23	; Set frequency '6947' (octave 3 semitone 803) for channel FM 5
	dc.b $38, $00, $1f	; Set frequency '496' for channel PSG 1
	dc.b $39, $07, $1f	; Set frequency '503' for channel PSG 2
	dc.b $3a, $0f, $1e	; Set frequency '495' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $22	; Set frequency '6946' (octave 3 semitone 802) for channel FM 5
	dc.b $38, $01, $1f	; Set frequency '497' for channel PSG 1
	dc.b $39, $08, $1f	; Set frequency '504' for channel PSG 2
	dc.b $3a, $00, $1f	; Set frequency '496' for channel PSG 3
; Pattern $0f, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $21	; Set frequency '6945' (octave 3 semitone 801) for channel FM 5
	dc.b $38, $02, $1f	; Set frequency '498' for channel PSG 1
	dc.b $39, $09, $1f	; Set frequency '505' for channel PSG 2
	dc.b $3a, $01, $1f	; Set frequency '497' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $38, $03, $1f	; Set frequency '499' for channel PSG 1
	dc.b $39, $0a, $1f	; Set frequency '506' for channel PSG 2
	dc.b $3a, $02, $1f	; Set frequency '498' for channel PSG 3
; Pattern $0f, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $1f	; Set frequency '6943' (octave 3 semitone 799) for channel FM 5
	dc.b $38, $04, $1f	; Set frequency '500' for channel PSG 1
	dc.b $39, $0b, $1f	; Set frequency '507' for channel PSG 2
	dc.b $3a, $03, $1f	; Set frequency '499' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
	dc.b $38, $05, $1f	; Set frequency '501' for channel PSG 1
	dc.b $39, $0c, $1f	; Set frequency '508' for channel PSG 2
	dc.b $3a, $04, $1f	; Set frequency '500' for channel PSG 3
; Pattern $0f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $1d	; Set frequency '6941' (octave 3 semitone 797) for channel FM 5
	dc.b $38, $06, $1f	; Set frequency '502' for channel PSG 1
	dc.b $39, $0d, $1f	; Set frequency '509' for channel PSG 2
	dc.b $3a, $05, $1f	; Set frequency '501' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $1c	; Set frequency '6940' (octave 3 semitone 796) for channel FM 5
	dc.b $38, $07, $1f	; Set frequency '503' for channel PSG 1
	dc.b $39, $0e, $1f	; Set frequency '510' for channel PSG 2
	dc.b $3a, $06, $1f	; Set frequency '502' for channel PSG 3
; Pattern $0f, Row 26; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $1b, $1b	; Set frequency '6939' (octave 3 semitone 795) for channel FM 5
	dc.b $38, $08, $1f	; Set frequency '504' for channel PSG 1
	dc.b $39, $0f, $1f	; Set frequency '511' for channel PSG 2
	dc.b $3a, $07, $1f	; Set frequency '503' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 2
	dc.b $35, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 5
	dc.b $38, $09, $1f	; Set frequency '505' for channel PSG 1
	dc.b $39, $00, $20	; Set frequency '512' for channel PSG 2
	dc.b $3a, $08, $1f	; Set frequency '504' for channel PSG 3
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 2
	dc.b $35, $1b, $19	; Set frequency '6937' (octave 3 semitone 793) for channel FM 5
	dc.b $38, $0a, $1f	; Set frequency '506' for channel PSG 1
	dc.b $39, $01, $20	; Set frequency '513' for channel PSG 2
	dc.b $3a, $09, $1f	; Set frequency '505' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 2
	dc.b $35, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 5
	dc.b $38, $0b, $1f	; Set frequency '507' for channel PSG 1
	dc.b $39, $02, $20	; Set frequency '514' for channel PSG 2
	dc.b $3a, $0a, $1f	; Set frequency '506' for channel PSG 3
; Pattern $0f, Row 28; 
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $31, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 2
	dc.b $35, $1b, $17	; Set frequency '6935' (octave 3 semitone 791) for channel FM 5
	dc.b $38, $0c, $1f	; Set frequency '508' for channel PSG 1
	dc.b $39, $03, $20	; Set frequency '515' for channel PSG 2
	dc.b $3a, $0b, $1f	; Set frequency '507' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 2
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
	dc.b $38, $0d, $1f	; Set frequency '509' for channel PSG 1
	dc.b $39, $04, $20	; Set frequency '516' for channel PSG 2
	dc.b $3a, $0c, $1f	; Set frequency '508' for channel PSG 3
; Pattern $0f, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 2
	dc.b $35, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 5
	dc.b $38, $0e, $1f	; Set frequency '510' for channel PSG 1
	dc.b $39, $05, $20	; Set frequency '517' for channel PSG 2
	dc.b $3a, $0d, $1f	; Set frequency '509' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 5
	dc.b $38, $0f, $1f	; Set frequency '511' for channel PSG 1
	dc.b $39, $06, $20	; Set frequency '518' for channel PSG 2
	dc.b $3a, $0e, $1f	; Set frequency '510' for channel PSG 3
; Pattern $0f, Row 30; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $13	; Set frequency '6931' (octave 3 semitone 787) for channel FM 5
	dc.b $38, $00, $20	; Set frequency '512' for channel PSG 1
	dc.b $39, $07, $20	; Set frequency '519' for channel PSG 2
	dc.b $3a, $0f, $1f	; Set frequency '511' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
	dc.b $38, $01, $20	; Set frequency '513' for channel PSG 1
	dc.b $39, $08, $20	; Set frequency '520' for channel PSG 2
	dc.b $3a, $00, $20	; Set frequency '512' for channel PSG 3
; Pattern $0f, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
	dc.b $38, $02, $20	; Set frequency '514' for channel PSG 1
	dc.b $39, $09, $20	; Set frequency '521' for channel PSG 2
	dc.b $3a, $01, $20	; Set frequency '513' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $10	; Set frequency '6928' (octave 3 semitone 784) for channel FM 5
	dc.b $38, $03, $20	; Set frequency '515' for channel PSG 1
	dc.b $39, $0a, $20	; Set frequency '522' for channel PSG 2
	dc.b $3a, $02, $20	; Set frequency '514' for channel PSG 3
; Pattern $0f, Row 32; 
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $46, $be	; Set instrument for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1b, $0f	; Set frequency '6927' (octave 3 semitone 783) for channel FM 5
	dc.b $38, $04, $20	; Set frequency '516' for channel PSG 1
	dc.b $39, $0b, $20	; Set frequency '523' for channel PSG 2
	dc.b $3a, $03, $20	; Set frequency '515' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $38, $05, $20	; Set frequency '517' for channel PSG 1
	dc.b $39, $0c, $20	; Set frequency '524' for channel PSG 2
	dc.b $3a, $04, $20	; Set frequency '516' for channel PSG 3
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $0d	; Set frequency '6925' (octave 3 semitone 781) for channel FM 5
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $38, $06, $20	; Set frequency '518' for channel PSG 1
	dc.b $39, $0d, $20	; Set frequency '525' for channel PSG 2
	dc.b $3a, $05, $20	; Set frequency '517' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
	dc.b $38, $07, $20	; Set frequency '519' for channel PSG 1
	dc.b $39, $0e, $20	; Set frequency '526' for channel PSG 2
	dc.b $3a, $06, $20	; Set frequency '518' for channel PSG 3
; Pattern $0f, Row 34; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1b, $0b	; Set frequency '6923' (octave 3 semitone 779) for channel FM 5
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $38, $08, $20	; Set frequency '520' for channel PSG 1
	dc.b $39, $0f, $20	; Set frequency '527' for channel PSG 2
	dc.b $3a, $07, $20	; Set frequency '519' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1b, $0a	; Set frequency '6922' (octave 3 semitone 778) for channel FM 5
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
	dc.b $38, $09, $20	; Set frequency '521' for channel PSG 1
	dc.b $39, $00, $21	; Set frequency '528' for channel PSG 2
	dc.b $3a, $08, $20	; Set frequency '520' for channel PSG 3
; Pattern $0f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1b, $09	; Set frequency '6921' (octave 3 semitone 777) for channel FM 5
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $38, $0a, $20	; Set frequency '522' for channel PSG 1
	dc.b $39, $01, $21	; Set frequency '529' for channel PSG 2
	dc.b $3a, $09, $20	; Set frequency '521' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $38, $0b, $20	; Set frequency '523' for channel PSG 1
	dc.b $39, $02, $21	; Set frequency '530' for channel PSG 2
	dc.b $3a, $0a, $20	; Set frequency '522' for channel PSG 3
; Pattern $0f, Row 36; 
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $35, $1b, $07	; Set frequency '6919' (octave 3 semitone 775) for channel FM 5
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $38, $0c, $20	; Set frequency '524' for channel PSG 1
	dc.b $39, $03, $21	; Set frequency '531' for channel PSG 2
	dc.b $3a, $0b, $20	; Set frequency '523' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 5
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $38, $0d, $20	; Set frequency '525' for channel PSG 1
	dc.b $39, $04, $21	; Set frequency '532' for channel PSG 2
	dc.b $3a, $0c, $20	; Set frequency '524' for channel PSG 3
; Pattern $0f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 5
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $38, $0e, $20	; Set frequency '526' for channel PSG 1
	dc.b $39, $05, $21	; Set frequency '533' for channel PSG 2
	dc.b $3a, $0d, $20	; Set frequency '525' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $38, $0f, $20	; Set frequency '527' for channel PSG 1
	dc.b $39, $06, $21	; Set frequency '534' for channel PSG 2
	dc.b $3a, $0e, $20	; Set frequency '526' for channel PSG 3
; Pattern $0f, Row 38; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 5
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $38, $00, $21	; Set frequency '528' for channel PSG 1
	dc.b $39, $07, $21	; Set frequency '535' for channel PSG 2
	dc.b $3a, $0f, $20	; Set frequency '527' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 5
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
	dc.b $38, $01, $21	; Set frequency '529' for channel PSG 1
	dc.b $39, $08, $21	; Set frequency '536' for channel PSG 2
	dc.b $3a, $00, $21	; Set frequency '528' for channel PSG 3
; Pattern $0f, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $01	; Set frequency '6913' (octave 3 semitone 769) for channel FM 5
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $38, $02, $21	; Set frequency '530' for channel PSG 1
	dc.b $39, $09, $21	; Set frequency '537' for channel PSG 2
	dc.b $3a, $01, $21	; Set frequency '529' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 5
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
	dc.b $38, $03, $21	; Set frequency '531' for channel PSG 1
	dc.b $39, $0a, $21	; Set frequency '538' for channel PSG 2
	dc.b $3a, $02, $21	; Set frequency '530' for channel PSG 3
; Pattern $0f, Row 40; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 5
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $38, $04, $21	; Set frequency '532' for channel PSG 1
	dc.b $39, $0b, $21	; Set frequency '539' for channel PSG 2
	dc.b $3a, $03, $21	; Set frequency '531' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $38, $05, $21	; Set frequency '533' for channel PSG 1
	dc.b $39, $0c, $21	; Set frequency '540' for channel PSG 2
	dc.b $3a, $04, $21	; Set frequency '532' for channel PSG 3
; Pattern $0f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $38, $06, $21	; Set frequency '534' for channel PSG 1
	dc.b $39, $0d, $21	; Set frequency '541' for channel PSG 2
	dc.b $3a, $05, $21	; Set frequency '533' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $38, $07, $21	; Set frequency '535' for channel PSG 1
	dc.b $39, $0e, $21	; Set frequency '542' for channel PSG 2
	dc.b $3a, $06, $21	; Set frequency '534' for channel PSG 3
; Pattern $0f, Row 42; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $38, $08, $21	; Set frequency '536' for channel PSG 1
	dc.b $39, $0f, $21	; Set frequency '543' for channel PSG 2
	dc.b $3a, $07, $21	; Set frequency '535' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $38, $09, $21	; Set frequency '537' for channel PSG 1
	dc.b $39, $00, $22	; Set frequency '544' for channel PSG 2
	dc.b $3a, $08, $21	; Set frequency '536' for channel PSG 3
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $38, $0a, $21	; Set frequency '538' for channel PSG 1
	dc.b $39, $01, $22	; Set frequency '545' for channel PSG 2
	dc.b $3a, $09, $21	; Set frequency '537' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
	dc.b $38, $0b, $21	; Set frequency '539' for channel PSG 1
	dc.b $39, $02, $22	; Set frequency '546' for channel PSG 2
	dc.b $3a, $0a, $21	; Set frequency '538' for channel PSG 3
; Pattern $0f, Row 44; 
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $38, $0c, $21	; Set frequency '540' for channel PSG 1
	dc.b $39, $03, $22	; Set frequency '547' for channel PSG 2
	dc.b $3a, $0b, $21	; Set frequency '539' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $38, $0d, $21	; Set frequency '541' for channel PSG 1
	dc.b $39, $04, $22	; Set frequency '548' for channel PSG 2
	dc.b $3a, $0c, $21	; Set frequency '540' for channel PSG 3
; Pattern $0f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $38, $0e, $21	; Set frequency '542' for channel PSG 1
	dc.b $39, $05, $22	; Set frequency '549' for channel PSG 2
	dc.b $3a, $0d, $21	; Set frequency '541' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
	dc.b $38, $0f, $21	; Set frequency '543' for channel PSG 1
	dc.b $39, $06, $22	; Set frequency '550' for channel PSG 2
	dc.b $3a, $0e, $21	; Set frequency '542' for channel PSG 3
; Pattern $0f, Row 46; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $38, $00, $22	; Set frequency '544' for channel PSG 1
	dc.b $39, $07, $22	; Set frequency '551' for channel PSG 2
	dc.b $3a, $0f, $21	; Set frequency '543' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
	dc.b $38, $01, $22	; Set frequency '545' for channel PSG 1
	dc.b $39, $08, $22	; Set frequency '552' for channel PSG 2
	dc.b $3a, $00, $22	; Set frequency '544' for channel PSG 3
; Pattern $0f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $38, $02, $22	; Set frequency '546' for channel PSG 1
	dc.b $39, $09, $22	; Set frequency '553' for channel PSG 2
	dc.b $3a, $01, $22	; Set frequency '545' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $38, $03, $22	; Set frequency '547' for channel PSG 1
	dc.b $39, $0a, $22	; Set frequency '554' for channel PSG 2
	dc.b $3a, $02, $22	; Set frequency '546' for channel PSG 3
; Pattern $0f, Row 48; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $45	; Note D-2 on channel FM 1
	dc.b $41, $be	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $36, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 6
	dc.b $38, $04, $22	; Set frequency '548' for channel PSG 1
	dc.b $39, $0b, $22	; Set frequency '555' for channel PSG 2
	dc.b $3a, $03, $22	; Set frequency '547' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $38, $05, $22	; Set frequency '549' for channel PSG 1
	dc.b $39, $0c, $22	; Set frequency '556' for channel PSG 2
	dc.b $3a, $04, $22	; Set frequency '548' for channel PSG 3
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $38, $06, $22	; Set frequency '550' for channel PSG 1
	dc.b $39, $0d, $22	; Set frequency '557' for channel PSG 2
	dc.b $3a, $05, $22	; Set frequency '549' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $38, $07, $22	; Set frequency '551' for channel PSG 1
	dc.b $39, $0e, $22	; Set frequency '558' for channel PSG 2
	dc.b $3a, $06, $22	; Set frequency '550' for channel PSG 3
; Pattern $0f, Row 50; 
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 5
	dc.b $36, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 6
	dc.b $38, $08, $22	; Set frequency '552' for channel PSG 1
	dc.b $39, $0f, $22	; Set frequency '559' for channel PSG 2
	dc.b $3a, $07, $22	; Set frequency '551' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 5
	dc.b $36, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 6
	dc.b $38, $09, $22	; Set frequency '553' for channel PSG 1
	dc.b $39, $00, $23	; Set frequency '560' for channel PSG 2
	dc.b $3a, $08, $22	; Set frequency '552' for channel PSG 3
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e9	; Set frequency '6889' (octave 3 semitone 745) for channel FM 5
	dc.b $36, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 6
	dc.b $38, $0a, $22	; Set frequency '554' for channel PSG 1
	dc.b $39, $01, $23	; Set frequency '561' for channel PSG 2
	dc.b $3a, $09, $22	; Set frequency '553' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e8	; Set frequency '6888' (octave 3 semitone 744) for channel FM 5
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
	dc.b $38, $0b, $22	; Set frequency '555' for channel PSG 1
	dc.b $39, $02, $23	; Set frequency '562' for channel PSG 2
	dc.b $3a, $0a, $22	; Set frequency '554' for channel PSG 3
; Pattern $0f, Row 52; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $25	; Note D-1 on channel FM 1
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1a, $e7	; Set frequency '6887' (octave 3 semitone 743) for channel FM 5
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $38, $0c, $22	; Set frequency '556' for channel PSG 1
	dc.b $39, $03, $23	; Set frequency '563' for channel PSG 2
	dc.b $3a, $0b, $22	; Set frequency '555' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $1a, $e6	; Set frequency '6886' (octave 3 semitone 742) for channel FM 5
	dc.b $36, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 6
	dc.b $38, $0d, $22	; Set frequency '557' for channel PSG 1
	dc.b $39, $04, $23	; Set frequency '564' for channel PSG 2
	dc.b $3a, $0c, $22	; Set frequency '556' for channel PSG 3
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $35, $1a, $e5	; Set frequency '6885' (octave 3 semitone 741) for channel FM 5
	dc.b $36, $03, $be	; Set frequency '958' (octave 0 semitone 958) for channel FM 6
	dc.b $38, $0e, $22	; Set frequency '558' for channel PSG 1
	dc.b $39, $05, $23	; Set frequency '565' for channel PSG 2
	dc.b $3a, $0d, $22	; Set frequency '557' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $35, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 5
	dc.b $36, $03, $3e	; Set frequency '830' (octave 0 semitone 830) for channel FM 6
	dc.b $38, $0f, $22	; Set frequency '559' for channel PSG 1
	dc.b $39, $06, $23	; Set frequency '566' for channel PSG 2
	dc.b $3a, $0e, $22	; Set frequency '558' for channel PSG 3
; Pattern $0f, Row 54; 
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $42	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $35, $1a, $e3	; Set frequency '6883' (octave 3 semitone 739) for channel FM 5
	dc.b $36, $02, $be	; Set frequency '702' (octave 0 semitone 702) for channel FM 6
	dc.b $38, $00, $23	; Set frequency '560' for channel PSG 1
	dc.b $39, $07, $23	; Set frequency '567' for channel PSG 2
	dc.b $3a, $0f, $22	; Set frequency '559' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1a, $e2	; Set frequency '6882' (octave 3 semitone 738) for channel FM 5
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $38, $01, $23	; Set frequency '561' for channel PSG 1
	dc.b $39, $08, $23	; Set frequency '568' for channel PSG 2
	dc.b $3a, $00, $23	; Set frequency '560' for channel PSG 3
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e1	; Set frequency '6881' (octave 3 semitone 737) for channel FM 5
	dc.b $38, $02, $23	; Set frequency '562' for channel PSG 1
	dc.b $39, $09, $23	; Set frequency '569' for channel PSG 2
	dc.b $3a, $01, $23	; Set frequency '561' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e0	; Set frequency '6880' (octave 3 semitone 736) for channel FM 5
	dc.b $38, $03, $23	; Set frequency '563' for channel PSG 1
	dc.b $39, $0a, $23	; Set frequency '570' for channel PSG 2
	dc.b $3a, $02, $23	; Set frequency '562' for channel PSG 3
; Pattern $0f, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $41, $bf	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $46, $c2	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1a, $df	; Set frequency '6879' (octave 3 semitone 735) for channel FM 5
	dc.b $38, $04, $23	; Set frequency '564' for channel PSG 1
	dc.b $39, $0b, $23	; Set frequency '571' for channel PSG 2
	dc.b $3a, $03, $23	; Set frequency '563' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 5
	dc.b $38, $05, $23	; Set frequency '565' for channel PSG 1
	dc.b $39, $0c, $23	; Set frequency '572' for channel PSG 2
	dc.b $3a, $04, $23	; Set frequency '564' for channel PSG 3
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $dd	; Set frequency '6877' (octave 3 semitone 733) for channel FM 5
	dc.b $38, $06, $23	; Set frequency '566' for channel PSG 1
	dc.b $39, $0d, $23	; Set frequency '573' for channel PSG 2
	dc.b $3a, $05, $23	; Set frequency '565' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $dc	; Set frequency '6876' (octave 3 semitone 732) for channel FM 5
	dc.b $38, $07, $23	; Set frequency '567' for channel PSG 1
	dc.b $39, $0e, $23	; Set frequency '574' for channel PSG 2
	dc.b $3a, $06, $23	; Set frequency '566' for channel PSG 3
; Pattern $0f, Row 58; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c3	; Note C#6 on channel FM 3
	dc.b $04, $cd	; Note F#6 on channel FM 4
	dc.b $35, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 5
	dc.b $38, $08, $23	; Set frequency '568' for channel PSG 1
	dc.b $39, $0f, $23	; Set frequency '575' for channel PSG 2
	dc.b $3a, $07, $23	; Set frequency '567' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 5
	dc.b $38, $09, $23	; Set frequency '569' for channel PSG 1
	dc.b $39, $00, $24	; Set frequency '576' for channel PSG 2
	dc.b $3a, $08, $23	; Set frequency '568' for channel PSG 3
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $d9	; Set frequency '6873' (octave 3 semitone 729) for channel FM 5
	dc.b $38, $0a, $23	; Set frequency '570' for channel PSG 1
	dc.b $39, $01, $24	; Set frequency '577' for channel PSG 2
	dc.b $3a, $09, $23	; Set frequency '569' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $d8	; Set frequency '6872' (octave 3 semitone 728) for channel FM 5
	dc.b $38, $0b, $23	; Set frequency '571' for channel PSG 1
	dc.b $39, $02, $24	; Set frequency '578' for channel PSG 2
	dc.b $3a, $0a, $23	; Set frequency '570' for channel PSG 3
; Pattern $0f, Row 60; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $d3	; Note A-6 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $e5	; Note D-7 on channel FM 4
	dc.b $46, $be	; Set instrument for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1a, $d7	; Set frequency '6871' (octave 3 semitone 727) for channel FM 5
	dc.b $38, $0c, $23	; Set frequency '572' for channel PSG 1
	dc.b $39, $03, $24	; Set frequency '579' for channel PSG 2
	dc.b $3a, $0b, $23	; Set frequency '571' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $d6	; Set frequency '6870' (octave 3 semitone 726) for channel FM 5
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $38, $0d, $23	; Set frequency '573' for channel PSG 1
	dc.b $39, $04, $24	; Set frequency '580' for channel PSG 2
	dc.b $3a, $0c, $23	; Set frequency '572' for channel PSG 3
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 5
	dc.b $36, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 6
	dc.b $38, $0e, $23	; Set frequency '574' for channel PSG 1
	dc.b $39, $05, $24	; Set frequency '581' for channel PSG 2
	dc.b $3a, $0d, $23	; Set frequency '573' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 5
	dc.b $36, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 6
	dc.b $38, $0f, $23	; Set frequency '575' for channel PSG 1
	dc.b $39, $06, $24	; Set frequency '582' for channel PSG 2
	dc.b $3a, $0e, $23	; Set frequency '574' for channel PSG 3
; Pattern $0f, Row 62; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $c9	; Note E-6 on channel FM 3
	dc.b $04, $d3	; Note A-6 on channel FM 4
	dc.b $35, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 5
	dc.b $36, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 6
	dc.b $38, $00, $24	; Set frequency '576' for channel PSG 1
	dc.b $39, $07, $24	; Set frequency '583' for channel PSG 2
	dc.b $3a, $0f, $23	; Set frequency '575' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $1a, $d2	; Set frequency '6866' (octave 3 semitone 722) for channel FM 5
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
	dc.b $38, $01, $24	; Set frequency '577' for channel PSG 1
	dc.b $39, $08, $24	; Set frequency '584' for channel PSG 2
	dc.b $3a, $00, $24	; Set frequency '576' for channel PSG 3
; Pattern $0f, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 2
	dc.b $35, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 5
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
	dc.b $38, $02, $24	; Set frequency '578' for channel PSG 1
	dc.b $39, $09, $24	; Set frequency '585' for channel PSG 2
	dc.b $3a, $01, $24	; Set frequency '577' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 2
	dc.b $35, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 5
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $38, $03, $24	; Set frequency '579' for channel PSG 1
	dc.b $39, $0a, $24	; Set frequency '586' for channel PSG 2
	dc.b $3a, $02, $24	; Set frequency '578' for channel PSG 3
	dc.b $ff	; The End

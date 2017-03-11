	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $40, $1e	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $41, $1f	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $45, $1e	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 2
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $00, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $21	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
; Pattern $00, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 41; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $01, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $01, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
; Pattern $01, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 41; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $02, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 2
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 2
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
; Pattern $02, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
; Pattern $02, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 41; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $77	; Note B-3 on channel FM 5
; Pattern $03, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
; Pattern $03, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
; Pattern $03, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $03, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $03, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $23	; Set instrument for channel FM 3
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 34; 
	dc.b $24, $37	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $03, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $3b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
; Pattern $03, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $37	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $20	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $03, Row 42; 
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
; Pattern $03, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 46; 
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $03, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 50; 
	dc.b $22, $27	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $03, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $03, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
; Pattern $03, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
; Pattern $03, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
; Pattern $04, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $26	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f2, $80	; Set params for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $45, $20	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $04, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
; Pattern $04, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
; Pattern $04, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $04, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $d1	; Set frequency '7121' (octave 3 semitone 977) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $d3	; Set frequency '7123' (octave 3 semitone 979) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $d9	; Set frequency '7129' (octave 3 semitone 985) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $04, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $04, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $91	; Set frequency '7057' (octave 3 semitone 913) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $9d	; Set frequency '7069' (octave 3 semitone 925) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $a3	; Set frequency '7075' (octave 3 semitone 931) for channel FM 5
; Pattern $04, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 5
; Pattern $05, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f2, $80	; Set params for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $05, $67	; Note D#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
; Pattern $05, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
; Pattern $05, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
; Pattern $05, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
; Pattern $05, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
; Pattern $05, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
; Pattern $05, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
; Pattern $05, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $01	; Set frequency '6913' (octave 3 semitone 769) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $07	; Set frequency '6919' (octave 3 semitone 775) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $09	; Set frequency '6921' (octave 3 semitone 777) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $0a	; Set frequency '6922' (octave 3 semitone 778) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $0b	; Set frequency '6923' (octave 3 semitone 779) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $0d	; Set frequency '6925' (octave 3 semitone 781) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $0f	; Set frequency '6927' (octave 3 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $10	; Set frequency '6928' (octave 3 semitone 784) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $13	; Set frequency '6931' (octave 3 semitone 787) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $57	; Note B-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
; Pattern $05, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
; Pattern $05, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
; Pattern $05, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
; Pattern $05, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
; Pattern $05, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
; Pattern $05, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
; Pattern $05, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 5
; Pattern $05, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $86	; Set frequency '6790' (octave 3 semitone 646) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $87	; Set frequency '6791' (octave 3 semitone 647) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $88	; Set frequency '6792' (octave 3 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $89	; Set frequency '6793' (octave 3 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $8a	; Set frequency '6794' (octave 3 semitone 650) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $8b	; Set frequency '6795' (octave 3 semitone 651) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $8c	; Set frequency '6796' (octave 3 semitone 652) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $8e	; Set frequency '6798' (octave 3 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $8f	; Set frequency '6799' (octave 3 semitone 655) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $90	; Set frequency '6800' (octave 3 semitone 656) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $91	; Set frequency '6801' (octave 3 semitone 657) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 5
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $05, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f2, $80	; Set params for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $06, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $06, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $06, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $d1	; Set frequency '7121' (octave 3 semitone 977) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $d3	; Set frequency '7123' (octave 3 semitone 979) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 5
; Pattern $06, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $d9	; Set frequency '7129' (octave 3 semitone 985) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 2
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 2
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 2
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 2
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $06, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 2
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $06, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $06, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
; Pattern $06, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $91	; Set frequency '7057' (octave 3 semitone 913) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $1b, $9d	; Set frequency '7069' (octave 3 semitone 925) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 5
; Pattern $06, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $1b, $a3	; Set frequency '7075' (octave 3 semitone 931) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f0, $c0	; Set params for channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f2, $80	; Set params for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 2
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 2
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 2
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 2
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 2
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $07, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $07, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $07, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $07, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $07, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $25	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $44, $23	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $0c, $af	; Set frequency '3247' (octave 1 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $b1	; Set frequency '3249' (octave 1 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
; Pattern $07, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $0c, $b5	; Set frequency '3253' (octave 1 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $0c, $b7	; Set frequency '3255' (octave 1 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
; Pattern $07, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $0c, $bd	; Set frequency '3261' (octave 1 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 5
; Pattern $07, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 3
	dc.b $35, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 3
	dc.b $35, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 3
	dc.b $35, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 3
	dc.b $35, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 3
	dc.b $35, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 3
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 3
	dc.b $35, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 3
	dc.b $35, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 3
	dc.b $35, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 3
	dc.b $35, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $4b, $24	; Set instrument for channel PSG 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $12, $92	; Set frequency '4754' (octave 2 semitone 658) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 3
	dc.b $35, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 3
	dc.b $35, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 3
	dc.b $35, $12, $95	; Set frequency '4757' (octave 2 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 3
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 3
	dc.b $35, $12, $97	; Set frequency '4759' (octave 2 semitone 663) for channel FM 5
; Pattern $07, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 3
	dc.b $35, $12, $98	; Set frequency '4760' (octave 2 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 3
	dc.b $35, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 5
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9b	; Set frequency '4763' (octave 2 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $9d	; Set frequency '4765' (octave 2 semitone 669) for channel FM 5
; Pattern $07, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $53	; Note A-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $35	; Set frequency '5173' (octave 2 semitone 1077) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $33	; Set frequency '5171' (octave 2 semitone 1075) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2f	; Set frequency '5167' (octave 2 semitone 1071) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2d	; Set frequency '5165' (octave 2 semitone 1069) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $29	; Set frequency '5161' (octave 2 semitone 1065) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $27	; Set frequency '5159' (octave 2 semitone 1063) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $23	; Set frequency '5155' (octave 2 semitone 1059) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $42, $21	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $f2, $40	; Set params for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $21	; Set frequency '5153' (octave 2 semitone 1057) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1d	; Set frequency '5149' (octave 2 semitone 1053) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1b	; Set frequency '5147' (octave 2 semitone 1051) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $17	; Set frequency '5143' (octave 2 semitone 1047) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $15	; Set frequency '5141' (octave 2 semitone 1045) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $11	; Set frequency '5137' (octave 2 semitone 1041) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0f	; Set frequency '5135' (octave 2 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0b	; Set frequency '5131' (octave 2 semitone 1035) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0f	; Set frequency '5135' (octave 2 semitone 1039) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $11	; Set frequency '5137' (octave 2 semitone 1041) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $15	; Set frequency '5141' (octave 2 semitone 1045) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $17	; Set frequency '5143' (octave 2 semitone 1047) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1b	; Set frequency '5147' (octave 2 semitone 1051) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1d	; Set frequency '5149' (octave 2 semitone 1053) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $21	; Set frequency '5153' (octave 2 semitone 1057) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $23	; Set frequency '5155' (octave 2 semitone 1059) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $27	; Set frequency '5159' (octave 2 semitone 1063) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $29	; Set frequency '5161' (octave 2 semitone 1065) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2d	; Set frequency '5165' (octave 2 semitone 1069) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2f	; Set frequency '5167' (octave 2 semitone 1071) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $33	; Set frequency '5171' (octave 2 semitone 1075) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $35	; Set frequency '5173' (octave 2 semitone 1077) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $39	; Set frequency '5177' (octave 2 semitone 1081) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3b	; Set frequency '5179' (octave 2 semitone 1083) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $40	; Set frequency '5184' (octave 2 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $45	; Set frequency '5189' (octave 2 semitone 1093) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $4a	; Set frequency '5194' (octave 2 semitone 1098) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $4f	; Set frequency '5199' (octave 2 semitone 1103) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $54	; Set frequency '5204' (octave 2 semitone 1108) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $59	; Set frequency '5209' (octave 2 semitone 1113) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $63	; Set frequency '5219' (octave 2 semitone 1123) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $68	; Set frequency '5224' (octave 2 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $6d	; Set frequency '5229' (octave 2 semitone 1133) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $72	; Set frequency '5234' (octave 2 semitone 1138) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $77	; Set frequency '5239' (octave 2 semitone 1143) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $44, $22	; Set instrument for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
	dc.b $f4, $40	; Set params for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7c	; Set frequency '5244' (octave 2 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $81	; Set frequency '5249' (octave 2 semitone 1153) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $86	; Set frequency '5254' (octave 2 semitone 1158) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8b	; Set frequency '5259' (octave 2 semitone 1163) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $90	; Set frequency '5264' (octave 2 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $95	; Set frequency '5269' (octave 2 semitone 1173) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $1e	; Set instrument for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $f4, $80	; Set params for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $9a	; Set frequency '5274' (octave 2 semitone 1178) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $9f	; Set frequency '5279' (octave 2 semitone 1183) for channel FM 5
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $45, $23	; Set instrument for channel FM 5
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $05, $41	; Note C-2 on channel FM 5
; Pattern $07, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
	dc.b $05, $41	; Note C-2 on channel FM 5
; Pattern $07, Row 59; 
	dc.b $fe, $02	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $05, $41	; Note C-2 on channel FM 5
; Pattern $07, Row 61; 
	dc.b $fe, $02	; Delay
	dc.b $15		; Note off channel FM 5
; Pattern $07, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $41	; Note C-2 on channel FM 5
; Pattern $07, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $04	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

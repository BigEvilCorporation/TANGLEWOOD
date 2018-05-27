	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $40, $2b	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $2c	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $45, $2b	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 2
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 2
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $13	; Set frequency '3091' (octave 1 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 2
; Pattern $00, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $2e	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
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
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $00, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
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
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
; Pattern $01, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $01, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
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
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $01, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
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
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 2
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 2
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $13	; Set frequency '3091' (octave 1 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 2
; Pattern $02, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $02, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
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
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $02, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
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
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
; Pattern $03, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
; Pattern $03, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
; Pattern $03, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
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
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
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
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $42, $30	; Set instrument for channel FM 3
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 34; 
	dc.b $24, $37	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $03, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $3b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $32, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $32, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $32, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
	dc.b $32, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 3
; Pattern $03, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $37	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $20	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $03, Row 42; 
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 3
; Pattern $03, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 46; 
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $03, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
	dc.b $04, $41	; Note C-2 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 50; 
	dc.b $22, $27	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $03, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $03, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 3
; Pattern $03, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $03, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $04, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $33	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $45, $2d	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $04, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
; Pattern $04, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
; Pattern $04, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $04, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $04, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $d3	; Set frequency '7123' (octave 3 semitone 979) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $d9	; Set frequency '7129' (octave 3 semitone 985) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
; Pattern $04, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $04, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $91	; Set frequency '7057' (octave 3 semitone 913) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $9d	; Set frequency '7069' (octave 3 semitone 925) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $a3	; Set frequency '7075' (octave 3 semitone 931) for channel FM 5
; Pattern $04, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 5
; Pattern $05, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $67	; Note D#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 5
; Pattern $05, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
; Pattern $05, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
; Pattern $05, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 5
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 5
; Pattern $05, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 5
; Pattern $05, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 5
; Pattern $05, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
; Pattern $05, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $01	; Set frequency '6913' (octave 3 semitone 769) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $05	; Set frequency '6917' (octave 3 semitone 773) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $07	; Set frequency '6919' (octave 3 semitone 775) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $09	; Set frequency '6921' (octave 3 semitone 777) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $0d	; Set frequency '6925' (octave 3 semitone 781) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $0f	; Set frequency '6927' (octave 3 semitone 783) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $10	; Set frequency '6928' (octave 3 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $11	; Set frequency '6929' (octave 3 semitone 785) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $13	; Set frequency '6931' (octave 3 semitone 787) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $15	; Set frequency '6933' (octave 3 semitone 789) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $17	; Set frequency '6935' (octave 3 semitone 791) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $57	; Note B-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $35, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
	dc.b $35, $14, $ab	; Set frequency '5291' (octave 2 semitone 1195) for channel FM 5
; Pattern $05, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $35, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
; Pattern $05, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
; Pattern $05, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ab	; Set frequency '5291' (octave 2 semitone 1195) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $aa	; Set frequency '5290' (octave 2 semitone 1194) for channel FM 5
; Pattern $05, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $ab	; Set frequency '5291' (octave 2 semitone 1195) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $ad	; Set frequency '5293' (octave 2 semitone 1197) for channel FM 5
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $af	; Set frequency '5295' (octave 2 semitone 1199) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $b1	; Set frequency '5297' (octave 2 semitone 1201) for channel FM 5
; Pattern $05, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $b3	; Set frequency '5299' (octave 2 semitone 1203) for channel FM 5
; Pattern $05, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b5	; Set frequency '5301' (octave 2 semitone 1205) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b7	; Set frequency '5303' (octave 2 semitone 1207) for channel FM 5
; Pattern $05, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $b9	; Set frequency '5305' (octave 2 semitone 1209) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $bb	; Set frequency '5307' (octave 2 semitone 1211) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $bd	; Set frequency '5309' (octave 2 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $bf	; Set frequency '5311' (octave 2 semitone 1215) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $c0	; Set frequency '5312' (octave 2 semitone 1216) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $14, $c1	; Set frequency '5313' (octave 2 semitone 1217) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $14, $c2	; Set frequency '5314' (octave 2 semitone 1218) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $14, $c3	; Set frequency '5315' (octave 2 semitone 1219) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $14, $c4	; Set frequency '5316' (octave 2 semitone 1220) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $c5	; Set frequency '5317' (octave 2 semitone 1221) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $c6	; Set frequency '5318' (octave 2 semitone 1222) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $c7	; Set frequency '5319' (octave 2 semitone 1223) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c8	; Set frequency '5320' (octave 2 semitone 1224) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c9	; Set frequency '5321' (octave 2 semitone 1225) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ca	; Set frequency '5322' (octave 2 semitone 1226) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $cb	; Set frequency '5323' (octave 2 semitone 1227) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $cc	; Set frequency '5324' (octave 2 semitone 1228) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $cd	; Set frequency '5325' (octave 2 semitone 1229) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $ce	; Set frequency '5326' (octave 2 semitone 1230) for channel FM 5
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $cf	; Set frequency '5327' (octave 2 semitone 1231) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $d0	; Set frequency '5328' (octave 2 semitone 1232) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $d1	; Set frequency '5329' (octave 2 semitone 1233) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $d2	; Set frequency '5330' (octave 2 semitone 1234) for channel FM 5
; Pattern $05, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $d3	; Set frequency '5331' (octave 2 semitone 1235) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $d5	; Set frequency '5333' (octave 2 semitone 1237) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $d6	; Set frequency '5334' (octave 2 semitone 1238) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $d7	; Set frequency '5335' (octave 2 semitone 1239) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $d8	; Set frequency '5336' (octave 2 semitone 1240) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $6f	; Note G-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
; Pattern $06, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $06, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
; Pattern $06, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $06, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 5
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 5
; Pattern $06, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $c7	; Set frequency '7111' (octave 3 semitone 967) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $cb	; Set frequency '7115' (octave 3 semitone 971) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $cf	; Set frequency '7119' (octave 3 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
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
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $d3	; Set frequency '7123' (octave 3 semitone 979) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $d5	; Set frequency '7125' (octave 3 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $d7	; Set frequency '7127' (octave 3 semitone 983) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
; Pattern $06, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $d9	; Set frequency '7129' (octave 3 semitone 985) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $db	; Set frequency '7131' (octave 3 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $dd	; Set frequency '7133' (octave 3 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $6d	; Note F#3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
; Pattern $06, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
; Pattern $06, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $06, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $7b	; Set frequency '7035' (octave 3 semitone 891) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $7d	; Set frequency '7037' (octave 3 semitone 893) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $81	; Set frequency '7041' (octave 3 semitone 897) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $83	; Set frequency '7043' (octave 3 semitone 899) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $85	; Set frequency '7045' (octave 3 semitone 901) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $87	; Set frequency '7047' (octave 3 semitone 903) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $89	; Set frequency '7049' (octave 3 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $8d	; Set frequency '7053' (octave 3 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
; Pattern $06, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $8f	; Set frequency '7055' (octave 3 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1b, $91	; Set frequency '7057' (octave 3 semitone 913) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1b, $93	; Set frequency '7059' (octave 3 semitone 915) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1b, $95	; Set frequency '7061' (octave 3 semitone 917) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $99	; Set frequency '7065' (octave 3 semitone 921) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1b, $9b	; Set frequency '7067' (octave 3 semitone 923) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1b, $9d	; Set frequency '7069' (octave 3 semitone 925) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1b, $9f	; Set frequency '7071' (octave 3 semitone 927) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1b, $a1	; Set frequency '7073' (octave 3 semitone 929) for channel FM 5
; Pattern $06, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1b, $a3	; Set frequency '7075' (octave 3 semitone 931) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a5	; Set frequency '7077' (octave 3 semitone 933) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a7	; Set frequency '7079' (octave 3 semitone 935) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $07, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $07, Row 5; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
; Pattern $07, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $07, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $07, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $30	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $07, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $07, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $85	; Set frequency '6789' (octave 3 semitone 645) for channel FM 5
; Pattern $07, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $86	; Set frequency '6790' (octave 3 semitone 646) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $87	; Set frequency '6791' (octave 3 semitone 647) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $1a, $88	; Set frequency '6792' (octave 3 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $1a, $89	; Set frequency '6793' (octave 3 semitone 649) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $1a, $8a	; Set frequency '6794' (octave 3 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $1a, $8b	; Set frequency '6795' (octave 3 semitone 651) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $1a, $8c	; Set frequency '6796' (octave 3 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8e	; Set frequency '6798' (octave 3 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8f	; Set frequency '6799' (octave 3 semitone 655) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $90	; Set frequency '6800' (octave 3 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $91	; Set frequency '6801' (octave 3 semitone 657) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $4b, $31	; Set instrument for channel PSG 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $53	; Note A-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $35	; Set frequency '5173' (octave 2 semitone 1077) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $33	; Set frequency '5171' (octave 2 semitone 1075) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2f	; Set frequency '5167' (octave 2 semitone 1071) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2d	; Set frequency '5165' (octave 2 semitone 1069) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $29	; Set frequency '5161' (octave 2 semitone 1065) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $27	; Set frequency '5159' (octave 2 semitone 1063) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $23	; Set frequency '5155' (octave 2 semitone 1059) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $21	; Set frequency '5153' (octave 2 semitone 1057) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $42, $2e	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1d	; Set frequency '5149' (octave 2 semitone 1053) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1b	; Set frequency '5147' (octave 2 semitone 1051) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $17	; Set frequency '5143' (octave 2 semitone 1047) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $15	; Set frequency '5141' (octave 2 semitone 1045) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $11	; Set frequency '5137' (octave 2 semitone 1041) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0f	; Set frequency '5135' (octave 2 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0b	; Set frequency '5131' (octave 2 semitone 1035) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $09	; Set frequency '5129' (octave 2 semitone 1033) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0b	; Set frequency '5131' (octave 2 semitone 1035) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0d	; Set frequency '5133' (octave 2 semitone 1037) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0f	; Set frequency '5135' (octave 2 semitone 1039) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $11	; Set frequency '5137' (octave 2 semitone 1041) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $15	; Set frequency '5141' (octave 2 semitone 1045) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $17	; Set frequency '5143' (octave 2 semitone 1047) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $19	; Set frequency '5145' (octave 2 semitone 1049) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1b	; Set frequency '5147' (octave 2 semitone 1051) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1d	; Set frequency '5149' (octave 2 semitone 1053) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $21	; Set frequency '5153' (octave 2 semitone 1057) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $02, $a1	; Note C-5 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $23	; Set frequency '5155' (octave 2 semitone 1059) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $25	; Set frequency '5157' (octave 2 semitone 1061) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $27	; Set frequency '5159' (octave 2 semitone 1063) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $29	; Set frequency '5161' (octave 2 semitone 1065) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2b	; Set frequency '5163' (octave 2 semitone 1067) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2d	; Set frequency '5165' (octave 2 semitone 1069) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2f	; Set frequency '5167' (octave 2 semitone 1071) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $31	; Set frequency '5169' (octave 2 semitone 1073) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $33	; Set frequency '5171' (octave 2 semitone 1075) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $35	; Set frequency '5173' (octave 2 semitone 1077) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $39	; Set frequency '5177' (octave 2 semitone 1081) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $43	; Set frequency '5187' (octave 2 semitone 1091) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $48	; Set frequency '5192' (octave 2 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $4d	; Set frequency '5197' (octave 2 semitone 1101) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $52	; Set frequency '5202' (octave 2 semitone 1106) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $57	; Set frequency '5207' (octave 2 semitone 1111) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5c	; Set frequency '5212' (octave 2 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $61	; Set frequency '5217' (octave 2 semitone 1121) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $66	; Set frequency '5222' (octave 2 semitone 1126) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $6b	; Set frequency '5227' (octave 2 semitone 1131) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $75	; Set frequency '5237' (octave 2 semitone 1141) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $44, $2f	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $ad	; Note F#5 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7a	; Set frequency '5242' (octave 2 semitone 1146) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7f	; Set frequency '5247' (octave 2 semitone 1151) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $84	; Set frequency '5252' (octave 2 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $93	; Set frequency '5267' (octave 2 semitone 1171) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $44, $2b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $98	; Set frequency '5272' (octave 2 semitone 1176) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $9d	; Set frequency '5277' (octave 2 semitone 1181) for channel FM 5
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $45, $30	; Set instrument for channel FM 5
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
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

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $86	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $86	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $45, $86	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $89	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
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
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $00, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $00, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $00, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 2
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 2
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $0c, $13	; Set frequency '3091' (octave 1 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 2
; Pattern $01, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
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
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $01, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $95	; Note A#4 on channel FM 4
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $01, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $95	; Note A#4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
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
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $02, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $02, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
; Pattern $03, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
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
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $03, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
; Pattern $03, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
	dc.b $fe, $08	; Delay
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $85	; Note D-4 on channel FM 5
; Pattern $03, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $42, $8b	; Set instrument for channel FM 3
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
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
	dc.b $00, $55	; Note A#2 on channel FM 1
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
	dc.b $00, $55	; Note A#2 on channel FM 1
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
	dc.b $00, $4f	; Note G-2 on channel FM 1
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
	dc.b $00, $4f	; Note G-2 on channel FM 1
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
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $25, $05	; Set volume for channel FM 5
	dc.b $45, $88	; Set instrument for channel FM 5
	dc.b $25, $05	; Set volume for channel FM 5
	dc.b $f5, $d2	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $04, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $04, Row 5; 
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a7	; Note D#5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $04, Row 11; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 15; 
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 17; 
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
; Pattern $04, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $04, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
; Pattern $04, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $04, Row 38; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $04, Row 43; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $2a, $d2	; Set frequency '10962' (octave 5 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a7	; Note D#5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $04, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $04, Row 59; 
	dc.b $12		; Note off channel FM 3
; Pattern $04, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $04, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $04, Row 63; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $05, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $05, Row 5; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $05, Row 11; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 15; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 17; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $04	; Delay
; Pattern $05, Row 22; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $05, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $05, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a7	; Note D#5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $05, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
; Pattern $05, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $05, Row 38; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $af	; Note G-5 on channel FM 5
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $05, Row 43; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 47; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 49; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 50; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 53; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 54; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $05, Row 58; 
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 59; 
	dc.b $12		; Note off channel FM 3
; Pattern $05, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $05, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $05, Row 63; 
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $06, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $06, Row 5; 
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a7	; Note D#5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $06, Row 11; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 15; 
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 17; 
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
; Pattern $06, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $06, Row 22; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $06, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 34; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $06, Row 36; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
	dc.b $32, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 3
; Pattern $06, Row 37; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 2
; Pattern $06, Row 38; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $31, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 40; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $06, Row 43; 
	dc.b $fe, $02	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $06, Row 46; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 47; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 49; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d3	; Set frequency '10963' (octave 5 semitone 723) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
	dc.b $35, $2a, $d1	; Set frequency '10961' (octave 5 semitone 721) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $35, $2a, $d2	; Set frequency '10962' (octave 5 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 56; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a7	; Note D#5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $06, Row 58; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $06, Row 59; 
	dc.b $12		; Note off channel FM 3
; Pattern $06, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $06, Row 62; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $06, Row 63; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $89	; Set frequency '9353' (octave 4 semitone 1161) for channel FM 2
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 2
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 2
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 2
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $8d	; Set frequency '8845' (octave 4 semitone 653) for channel FM 2
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 2
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 2; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 2
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 2
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $07, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $07, Row 5; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 8; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $02	; Delay
	dc.b $35, $2b, $bf	; Set frequency '11199' (octave 5 semitone 959) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $12		; Note off channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $ba	; Set frequency '11194' (octave 5 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $b5	; Set frequency '11189' (octave 5 semitone 949) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $b0	; Set frequency '11184' (octave 5 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $ab	; Set frequency '11179' (octave 5 semitone 939) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $87	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $8d	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $a7	; Note D#5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 14; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $07, Row 15; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $8c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 17; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $8b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $07, Row 21; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 24; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $05, $b5	; Note A#5 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 3
; Pattern $07, Row 26; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 3
; Pattern $07, Row 27; 
	dc.b $12		; Note off channel FM 3
; Pattern $07, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $00, $47	; Note D#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $4b, $31	; Set instrument for channel PSG 4
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 3
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 3
; Pattern $07, Row 30; 
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 3
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $44, $86	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $05, $b3	; Note A-5 on channel FM 5
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $42, $89	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $42, $89	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $05, $ab	; Note F-5 on channel FM 5
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $02, $b3	; Note A-5 on channel FM 3
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $42, $89	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $87	; Note D#4 on channel FM 4
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $06	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $42, $88	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $c1	; Note C-6 on channel FM 3
	dc.b $05, $c1	; Note C-6 on channel FM 5
; Pattern $07, Row 57; 
; Pattern $07, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $02, $c5	; Note D-6 on channel FM 3
; Pattern $07, Row 59; 
; Pattern $07, Row 60; 
	dc.b $fe, $06	; Delay
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $42, $89	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $b5	; Note A#5 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
; Pattern $07, Row 61; 
	dc.b $fe, $06	; Delay
	dc.b $35, $32, $89	; Set frequency '12937' (octave 6 semitone 649) for channel FM 5
; Pattern $07, Row 62; 
	dc.b $41, $88	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $8e	; Set frequency '12942' (octave 6 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $93	; Set frequency '12947' (octave 6 semitone 659) for channel FM 5
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $98	; Set frequency '12952' (octave 6 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $9d	; Set frequency '12957' (octave 6 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $a2	; Set frequency '12962' (octave 6 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $a7	; Set frequency '12967' (octave 6 semitone 679) for channel FM 5
; Pattern $08, Row 0; 
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $05, $b5	; Note A#5 on channel FM 5
; Pattern $08, Row 1; 
; Pattern $08, Row 2; 
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $08, Row 21; 
; Pattern $08, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $06	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
; Pattern $08, Row 27; 
; Pattern $08, Row 28; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 29; 
; Pattern $08, Row 30; 
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 33; 
; Pattern $08, Row 34; 
; Pattern $08, Row 35; 
; Pattern $08, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $06	; Delay
	dc.b $12		; Note off channel FM 3
; Pattern $08, Row 41; 
; Pattern $08, Row 42; 
; Pattern $08, Row 43; 
; Pattern $08, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $04, $75	; Note A#3 on channel FM 4
; Pattern $08, Row 45; 
; Pattern $08, Row 46; 
; Pattern $08, Row 47; 
; Pattern $08, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $35	; Note A#1 on channel FM 1
	dc.b $41, $86	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $75	; Note A#3 on channel FM 2
	dc.b $42, $86	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $8b	; Note F-4 on channel FM 3
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $08, Row 49; 
; Pattern $08, Row 50; 
; Pattern $08, Row 51; 
; Pattern $08, Row 52; 
; Pattern $08, Row 53; 
; Pattern $08, Row 54; 
; Pattern $08, Row 55; 
; Pattern $08, Row 56; 
; Pattern $08, Row 57; 
; Pattern $08, Row 58; 
; Pattern $08, Row 59; 
; Pattern $08, Row 60; 
; Pattern $08, Row 61; 
; Pattern $08, Row 62; 
; Pattern $08, Row 63; 
; Pattern $09, Row 0; 
; Pattern $09, Row 1; 
	dc.b $fe, $32	; Delay
	dc.b $25, $09	; Set volume for channel FM 5
; Pattern $09, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $25, $0d	; Set volume for channel FM 5
; Pattern $09, Row 3; 
	dc.b $fe, $02	; Delay
	dc.b $25, $11	; Set volume for channel FM 5
; Pattern $09, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $25, $14	; Set volume for channel FM 5
; Pattern $09, Row 5; 
	dc.b $fe, $02	; Delay
	dc.b $25, $18	; Set volume for channel FM 5
; Pattern $09, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $25, $1c	; Set volume for channel FM 5
; Pattern $09, Row 7; 
	dc.b $fe, $02	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
; Pattern $09, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $25, $23	; Set volume for channel FM 5
; Pattern $09, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $25, $27	; Set volume for channel FM 5
; Pattern $09, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $25, $2b	; Set volume for channel FM 5
; Pattern $09, Row 11; 
	dc.b $fe, $02	; Delay
	dc.b $25, $2f	; Set volume for channel FM 5
; Pattern $09, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $25, $32	; Set volume for channel FM 5
; Pattern $09, Row 13; 
	dc.b $fe, $02	; Delay
	dc.b $25, $36	; Set volume for channel FM 5
; Pattern $09, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $25, $3a	; Set volume for channel FM 5
; Pattern $09, Row 15; 
	dc.b $fe, $02	; Delay
	dc.b $25, $3e	; Set volume for channel FM 5
; Pattern $09, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $25, $41	; Set volume for channel FM 5
; Pattern $09, Row 17; 
	dc.b $fe, $02	; Delay
	dc.b $25, $45	; Set volume for channel FM 5
; Pattern $09, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $25, $49	; Set volume for channel FM 5
; Pattern $09, Row 19; 
	dc.b $fe, $02	; Delay
	dc.b $25, $4d	; Set volume for channel FM 5
; Pattern $09, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $25, $50	; Set volume for channel FM 5
; Pattern $09, Row 21; 
	dc.b $fe, $02	; Delay
	dc.b $25, $54	; Set volume for channel FM 5
; Pattern $09, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $25, $58	; Set volume for channel FM 5
; Pattern $09, Row 23; 
	dc.b $fe, $02	; Delay
	dc.b $25, $5c	; Set volume for channel FM 5
; Pattern $09, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $25, $5f	; Set volume for channel FM 5
; Pattern $09, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $09, Row 26; 
; Pattern $09, Row 27; 
; Pattern $09, Row 28; 
; Pattern $09, Row 29; 
; Pattern $09, Row 30; 
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
; Pattern $09, Row 33; 
; Pattern $09, Row 34; 
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
; Pattern $09, Row 41; 
; Pattern $09, Row 42; 
; Pattern $09, Row 43; 
; Pattern $09, Row 44; 
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
; Pattern $09, Row 47; 
; Pattern $09, Row 48; 
; Pattern $09, Row 49; 
; Pattern $09, Row 50; 
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
; Pattern $09, Row 53; 
; Pattern $09, Row 54; 
; Pattern $09, Row 55; 
; Pattern $09, Row 56; 
; Pattern $09, Row 57; 
; Pattern $09, Row 58; 
; Pattern $09, Row 59; 
; Pattern $09, Row 60; 
; Pattern $09, Row 61; 
; Pattern $09, Row 62; 
; Pattern $09, Row 63; 
	dc.b $fe, $76	; Delay
	dc.b $ff	; The End

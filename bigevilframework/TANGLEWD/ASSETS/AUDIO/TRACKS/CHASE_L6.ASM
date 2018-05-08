	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $42, $4a	; Set instrument for channel FM 3
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $f2, $60	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $44, $4a	; Set instrument for channel FM 4
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $f4, $a0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 7; 
; Pattern $01, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $01, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
; Pattern $01, Row 58; 
	dc.b $fe, $03	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
; Pattern $01, Row 59; 
	dc.b $fe, $02	; Delay
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
; Pattern $01, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
; Pattern $01, Row 61; 
	dc.b $fe, $02	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
; Pattern $01, Row 62; 
	dc.b $fe, $03	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
; Pattern $01, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
; Pattern $02, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $4b, $4e	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $03, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $40, $4a	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $e0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $65	; Note D-3 on channel FM 1
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $01, $6b	; Note F-3 on channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 1
	dc.b $31, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 1
	dc.b $31, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 2
; Pattern $03, Row 58; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $45, $4d	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 1
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 1
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $03, Row 59; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 1
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cb	; Set frequency '6859' (octave 3 semitone 715) for channel FM 1
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $03, Row 60; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 1
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
; Pattern $03, Row 61; 
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 1
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 1
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 1
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
; Pattern $03, Row 62; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 1
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $03, Row 63; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 1
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 1
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 0; 
	dc.b $fd	; Set loop
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $48, $47	; Set instrument for channel PSG 1
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $49, $47	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 57; 
; Pattern $04, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $07	; Set frequency '118' for channel PSG 1
	dc.b $39, $0d, $08	; Set frequency '141' for channel PSG 2
; Pattern $05, Row 57; 
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $07	; Set frequency '117' for channel PSG 1
	dc.b $39, $0c, $08	; Set frequency '140' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $07	; Set frequency '116' for channel PSG 1
	dc.b $39, $0b, $08	; Set frequency '139' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $07	; Set frequency '115' for channel PSG 1
	dc.b $39, $0a, $08	; Set frequency '138' for channel PSG 2
; Pattern $05, Row 58; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 61; 
	dc.b $fe, $02	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
; Pattern $05, Row 62; 
	dc.b $fe, $03	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $05, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
; Pattern $06, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $45, $4f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 5
	dc.b $35, $24, $7c	; Set frequency '9340' (octave 4 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $3e	; Set frequency '9278' (octave 4 semitone 1086) for channel FM 5
	dc.b $35, $24, $3d	; Set frequency '9277' (octave 4 semitone 1085) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $be	; Set frequency '9150' (octave 4 semitone 958) for channel FM 5
	dc.b $35, $23, $bf	; Set frequency '9151' (octave 4 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 5
	dc.b $35, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 5
	dc.b $35, $23, $3f	; Set frequency '9023' (octave 4 semitone 831) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 5
	dc.b $35, $22, $bd	; Set frequency '8893' (octave 4 semitone 701) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $35, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 5
	dc.b $35, $1c, $00	; Set frequency '7168' (octave 3 semitone 1024) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $40, $4d	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
	dc.b $35, $1b, $7f	; Set frequency '7039' (octave 3 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 1
	dc.b $35, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 8; 
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $45, $4d	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $47	; Note D#2 on channel FM 3
	dc.b $04, $4d	; Note F#2 on channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $45, $4f	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $24	; Set frequency '8996' (octave 4 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $41, $49	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $64	; Set frequency '9060' (octave 4 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $a4	; Set frequency '9124' (octave 4 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c4	; Set frequency '9156' (octave 4 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $40, $48	; Set instrument for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $04	; Set frequency '9220' (octave 4 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $24	; Set frequency '9252' (octave 4 semitone 1060) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $44	; Set frequency '9284' (octave 4 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $64	; Set frequency '9316' (octave 4 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $a4	; Set frequency '9380' (octave 4 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a4	; Set frequency '10916' (octave 5 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c4	; Set frequency '10948' (octave 5 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $e4	; Set frequency '10980' (octave 5 semitone 740) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $04	; Set frequency '11012' (octave 5 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $24	; Set frequency '11044' (octave 5 semitone 804) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $44	; Set frequency '11076' (octave 5 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $64	; Set frequency '11108' (octave 5 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $84	; Set frequency '11140' (octave 5 semitone 900) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $a4	; Set frequency '11172' (octave 5 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c4	; Set frequency '11204' (octave 5 semitone 964) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $e4	; Set frequency '11236' (octave 5 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $04	; Set frequency '11268' (octave 5 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $24	; Set frequency '11300' (octave 5 semitone 1060) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $44	; Set frequency '11332' (octave 5 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $64	; Set frequency '11364' (octave 5 semitone 1124) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $84	; Set frequency '11396' (octave 5 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $a4	; Set frequency '11428' (octave 5 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $84	; Set frequency '12932' (octave 6 semitone 644) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $10		; Note off channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $a4	; Set frequency '12964' (octave 6 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $c4	; Set frequency '12996' (octave 6 semitone 708) for channel FM 5
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $e4	; Set frequency '13028' (octave 6 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $33, $04	; Set frequency '13060' (octave 6 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $33, $24	; Set frequency '13092' (octave 6 semitone 804) for channel FM 5
; Pattern $07, Row 56; 
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $41, $4c	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $33, $44	; Set frequency '13124' (octave 6 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $33, $64	; Set frequency '13156' (octave 6 semitone 868) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $40, $4a	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $e0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $65	; Note D-3 on channel FM 1
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $01, $6b	; Note F-3 on channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 1
	dc.b $31, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 1
	dc.b $31, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 2
; Pattern $07, Row 58; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $45, $4d	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 1
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 1
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 1
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cb	; Set frequency '6859' (octave 3 semitone 715) for channel FM 1
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 1
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
; Pattern $07, Row 61; 
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 1
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 1
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 1
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
; Pattern $07, Row 62; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 1
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
; Pattern $07, Row 63; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 1
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 1
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

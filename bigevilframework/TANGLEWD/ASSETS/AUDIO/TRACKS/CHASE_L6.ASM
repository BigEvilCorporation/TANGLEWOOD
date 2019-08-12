	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $42, $4b	; Set instrument for channel FM 3
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $f2, $60	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $44, $4b	; Set instrument for channel FM 4
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $4b, $4f	; Set instrument for channel PSG 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $03, Row 57; 
	dc.b $fe, $02	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $e0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $65	; Note D-3 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $4b	; Set instrument for channel FM 2
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
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 1
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
; Pattern $03, Row 58; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 1
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 1
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $03, Row 59; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cb	; Set frequency '6859' (octave 3 semitone 715) for channel FM 1
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 1
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
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
	dc.b $30, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 1
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 1
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
; Pattern $03, Row 61; 
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 1
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 1
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
; Pattern $03, Row 62; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 1
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 1
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $03, Row 63; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 1
	dc.b $31, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $bf	; Set frequency '6847' (octave 3 semitone 703) for channel FM 1
	dc.b $31, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 1
	dc.b $31, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 0; 
	dc.b $fd	; Set loop
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $48, $48	; Set instrument for channel PSG 1
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $49, $48	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 6; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 14; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 22; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 30; 
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
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 38; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 46; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 6; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 14; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 22; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 30; 
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
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 38; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $07	; Set frequency '117' for channel PSG 1
	dc.b $39, $0c, $08	; Set frequency '140' for channel PSG 2
; Pattern $05, Row 57; 
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $07	; Set frequency '116' for channel PSG 1
	dc.b $39, $0b, $08	; Set frequency '139' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $07	; Set frequency '115' for channel PSG 1
	dc.b $39, $0a, $08	; Set frequency '138' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $07	; Set frequency '114' for channel PSG 1
	dc.b $39, $09, $08	; Set frequency '137' for channel PSG 2
; Pattern $05, Row 58; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $05, Row 61; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $05, Row 62; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $c8	; Set frequency '9416' (octave 4 semitone 1224) for channel FM 5
	dc.b $35, $24, $c5	; Set frequency '9413' (octave 4 semitone 1221) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $88	; Set frequency '9352' (octave 4 semitone 1160) for channel FM 5
	dc.b $35, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 5
	dc.b $35, $24, $45	; Set frequency '9285' (octave 4 semitone 1093) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 5
	dc.b $35, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 5
	dc.b $35, $23, $4b	; Set frequency '9035' (octave 4 semitone 843) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 5
	dc.b $35, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 5
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 5
	dc.b $35, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 5
	dc.b $35, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 5
	dc.b $35, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $40, $4e	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $35, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 5
	dc.b $35, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
; Pattern $06, Row 8; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 14; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 22; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 30; 
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
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 38; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 46; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 56; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $06, Row 62; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
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
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 6; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 14; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 22; 
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
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 30; 
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
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e4	; Set frequency '7396' (octave 3 semitone 1252) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $60	; Set frequency '9056' (octave 4 semitone 864) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $40	; Set frequency '9280' (octave 4 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $60	; Set frequency '9312' (octave 4 semitone 1120) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $a0	; Set frequency '9376' (octave 4 semitone 1184) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $c0	; Set frequency '9408' (octave 4 semitone 1216) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $00	; Set frequency '9472' (octave 4 semitone 1280) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9c	; Set frequency '10908' (octave 5 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $bc	; Set frequency '10940' (octave 5 semitone 700) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $dc	; Set frequency '10972' (octave 5 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $fc	; Set frequency '11004' (octave 5 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $1c	; Set frequency '11036' (octave 5 semitone 796) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $3c	; Set frequency '11068' (octave 5 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $5c	; Set frequency '11100' (octave 5 semitone 860) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7c	; Set frequency '11132' (octave 5 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $9c	; Set frequency '11164' (octave 5 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bc	; Set frequency '11196' (octave 5 semitone 956) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $dc	; Set frequency '11228' (octave 5 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $fc	; Set frequency '11260' (octave 5 semitone 1020) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $1c	; Set frequency '11292' (octave 5 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $3c	; Set frequency '11324' (octave 5 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $5c	; Set frequency '11356' (octave 5 semitone 1116) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $10		; Note off channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $7c	; Set frequency '11388' (octave 5 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $9c	; Set frequency '11420' (octave 5 semitone 1180) for channel FM 5
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $bc	; Set frequency '11452' (octave 5 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $dc	; Set frequency '11484' (octave 5 semitone 1244) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $fc	; Set frequency '11516' (octave 5 semitone 1276) for channel FM 5
; Pattern $07, Row 56; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $35, $32, $98	; Set frequency '12952' (octave 6 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $b8	; Set frequency '12984' (octave 6 semitone 696) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $e0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $65	; Note D-3 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $4b	; Set instrument for channel FM 2
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
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 1
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
; Pattern $07, Row 58; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 1
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 1
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cb	; Set frequency '6859' (octave 3 semitone 715) for channel FM 1
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 1
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 1
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 1
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 1
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $07, Row 61; 
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 1
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 1
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $07, Row 62; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 1
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
; Pattern $07, Row 63; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 1
	dc.b $31, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $bf	; Set frequency '6847' (octave 3 semitone 703) for channel FM 1
	dc.b $31, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 1
	dc.b $31, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 2
; Pattern $08, Row 0; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $08, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $08, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $08, Row 41; 
; Pattern $08, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 47; 
; Pattern $08, Row 48; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 56; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 57; 
; Pattern $08, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $08, Row 62; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $08, Row 63; 
; Pattern $09, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $09, Row 9; 
; Pattern $09, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 15; 
; Pattern $09, Row 16; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 23; 
; Pattern $09, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 25; 
; Pattern $09, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
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
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $09, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $09, Row 41; 
; Pattern $09, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 47; 
; Pattern $09, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 49; 
; Pattern $09, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 53; 
; Pattern $09, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $09, Row 55; 
; Pattern $09, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $07	; Set frequency '117' for channel PSG 1
	dc.b $39, $0c, $08	; Set frequency '140' for channel PSG 2
; Pattern $09, Row 57; 
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $07	; Set frequency '116' for channel PSG 1
	dc.b $39, $0b, $08	; Set frequency '139' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $03, $07	; Set frequency '115' for channel PSG 1
	dc.b $39, $0a, $08	; Set frequency '138' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $02, $07	; Set frequency '114' for channel PSG 1
	dc.b $39, $09, $08	; Set frequency '137' for channel PSG 2
; Pattern $09, Row 58; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 59; 
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $09, Row 61; 
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $09, Row 62; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $09, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
; Pattern $0a, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $c8	; Set frequency '9416' (octave 4 semitone 1224) for channel FM 5
	dc.b $35, $24, $c5	; Set frequency '9413' (octave 4 semitone 1221) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $88	; Set frequency '9352' (octave 4 semitone 1160) for channel FM 5
	dc.b $35, $24, $84	; Set frequency '9348' (octave 4 semitone 1156) for channel FM 5
; Pattern $0a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $48	; Set frequency '9288' (octave 4 semitone 1096) for channel FM 5
	dc.b $35, $24, $45	; Set frequency '9285' (octave 4 semitone 1093) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
; Pattern $0a, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 5
	dc.b $35, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 5
	dc.b $35, $23, $4b	; Set frequency '9035' (octave 4 semitone 843) for channel FM 5
; Pattern $0a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 5
	dc.b $35, $22, $c5	; Set frequency '8901' (octave 4 semitone 709) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 5
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
; Pattern $0a, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 5
	dc.b $35, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 5
	dc.b $35, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 5
	dc.b $35, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
; Pattern $0a, Row 6; 
	dc.b $40, $4e	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 1
	dc.b $35, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 5
	dc.b $35, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
; Pattern $0a, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 1
; Pattern $0a, Row 8; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 9; 
; Pattern $0a, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 15; 
; Pattern $0a, Row 16; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 23; 
; Pattern $0a, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 25; 
; Pattern $0a, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0a, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $0a, Row 41; 
; Pattern $0a, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 44; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 47; 
; Pattern $0a, Row 48; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 56; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 57; 
; Pattern $0a, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 60; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0a, Row 62; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0a, Row 63; 
; Pattern $0b, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $55	; Note A#2 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0b, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
; Pattern $0b, Row 9; 
; Pattern $0b, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 15; 
; Pattern $0b, Row 16; 
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 23; 
; Pattern $0b, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 25; 
; Pattern $0b, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
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
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 28; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 31; 
; Pattern $0b, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $04, $53	; Note A-2 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 5
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 5
; Pattern $0b, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 5
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
; Pattern $0b, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 5
; Pattern $0b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 5
; Pattern $0b, Row 38; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 5
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e4	; Set frequency '7396' (octave 3 semitone 1252) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 5
; Pattern $0b, Row 40; 
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 5
; Pattern $0b, Row 42; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $60	; Set frequency '9056' (octave 4 semitone 864) for channel FM 5
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $a0	; Set frequency '9120' (octave 4 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c0	; Set frequency '9152' (octave 4 semitone 960) for channel FM 5
; Pattern $0b, Row 44; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 5
; Pattern $0b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $40	; Set frequency '9280' (octave 4 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $60	; Set frequency '9312' (octave 4 semitone 1120) for channel FM 5
; Pattern $0b, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $80	; Set frequency '9344' (octave 4 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $a0	; Set frequency '9376' (octave 4 semitone 1184) for channel FM 5
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $c0	; Set frequency '9408' (octave 4 semitone 1216) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $25, $00	; Set frequency '9472' (octave 4 semitone 1280) for channel FM 5
; Pattern $0b, Row 48; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $44	; Note A#2 on channel PSG 1
	dc.b $09, $3e	; Note G-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9c	; Set frequency '10908' (octave 5 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $bc	; Set frequency '10940' (octave 5 semitone 700) for channel FM 5
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $dc	; Set frequency '10972' (octave 5 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $fc	; Set frequency '11004' (octave 5 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $1c	; Set frequency '11036' (octave 5 semitone 796) for channel FM 5
; Pattern $0b, Row 50; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $3c	; Set frequency '11068' (octave 5 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $5c	; Set frequency '11100' (octave 5 semitone 860) for channel FM 5
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $7c	; Set frequency '11132' (octave 5 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $9c	; Set frequency '11164' (octave 5 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $bc	; Set frequency '11196' (octave 5 semitone 956) for channel FM 5
; Pattern $0b, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $dc	; Set frequency '11228' (octave 5 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $fc	; Set frequency '11260' (octave 5 semitone 1020) for channel FM 5
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $1c	; Set frequency '11292' (octave 5 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $3c	; Set frequency '11324' (octave 5 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $5c	; Set frequency '11356' (octave 5 semitone 1116) for channel FM 5
; Pattern $0b, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $7c	; Set frequency '11388' (octave 5 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $9c	; Set frequency '11420' (octave 5 semitone 1180) for channel FM 5
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $bc	; Set frequency '11452' (octave 5 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $dc	; Set frequency '11484' (octave 5 semitone 1244) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2c, $fc	; Set frequency '11516' (octave 5 semitone 1276) for channel FM 5
; Pattern $0b, Row 56; 
	dc.b $10		; Note off channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
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
	dc.b $35, $32, $98	; Set frequency '12952' (octave 6 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $32, $b8	; Set frequency '12984' (octave 6 semitone 696) for channel FM 5
; Pattern $0b, Row 57; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $40, $4b	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $e0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $65	; Note D-3 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $4b	; Set instrument for channel FM 2
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
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 1
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
; Pattern $0b, Row 58; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $42	; Note A-2 on channel PSG 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 1
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cd	; Set frequency '6861' (octave 3 semitone 717) for channel FM 1
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 1
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 59; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $cb	; Set frequency '6859' (octave 3 semitone 715) for channel FM 1
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 1
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c9	; Set frequency '6857' (octave 3 semitone 713) for channel FM 1
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 60; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $30, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 1
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c7	; Set frequency '6855' (octave 3 semitone 711) for channel FM 1
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 1
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $0b, Row 61; 
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c5	; Set frequency '6853' (octave 3 semitone 709) for channel FM 1
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 1
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c3	; Set frequency '6851' (octave 3 semitone 707) for channel FM 1
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $0b, Row 62; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 1
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 1
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
; Pattern $0b, Row 63; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 1
	dc.b $31, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $bf	; Set frequency '6847' (octave 3 semitone 703) for channel FM 1
	dc.b $31, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 1
	dc.b $31, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 2
; Pattern $0c, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $51	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $71	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $51	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $b1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $e8	; Set frequency '5352' (octave 2 semitone 1256) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c8	; Set frequency '5320' (octave 2 semitone 1224) for channel FM 5
; Pattern $0c, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a8	; Set frequency '5288' (octave 2 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $68	; Set frequency '5224' (octave 2 semitone 1128) for channel FM 5
; Pattern $0c, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $48	; Set frequency '5192' (octave 2 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 5
; Pattern $0c, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $08	; Set frequency '5128' (octave 2 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e8	; Set frequency '5096' (octave 2 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 5
; Pattern $0c, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a8	; Set frequency '5032' (octave 2 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $88	; Set frequency '5000' (octave 2 semitone 904) for channel FM 5
; Pattern $0c, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $28	; Set frequency '4904' (octave 2 semitone 808) for channel FM 5
; Pattern $0c, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e8	; Set frequency '4840' (octave 2 semitone 744) for channel FM 5
; Pattern $0c, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c8	; Set frequency '4808' (octave 2 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 5
; Pattern $0c, Row 8; 
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ec	; Set frequency '3308' (octave 1 semitone 1260) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $cc	; Set frequency '3276' (octave 1 semitone 1228) for channel FM 5
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $6c	; Set frequency '3180' (octave 1 semitone 1132) for channel FM 5
; Pattern $0c, Row 10; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2c	; Set frequency '3116' (octave 1 semitone 1068) for channel FM 5
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $0c	; Set frequency '3084' (octave 1 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ec	; Set frequency '3052' (octave 1 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
; Pattern $0c, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ac	; Set frequency '2988' (octave 1 semitone 940) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $8c	; Set frequency '2956' (octave 1 semitone 908) for channel FM 5
; Pattern $0c, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $6c	; Set frequency '2924' (octave 1 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4c	; Set frequency '2892' (octave 1 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2c	; Set frequency '2860' (octave 1 semitone 812) for channel FM 5
; Pattern $0c, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $0c	; Set frequency '2828' (octave 1 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ec	; Set frequency '2796' (octave 1 semitone 748) for channel FM 5
; Pattern $0c, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $cc	; Set frequency '2764' (octave 1 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ac	; Set frequency '2732' (octave 1 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $8c	; Set frequency '2700' (octave 1 semitone 652) for channel FM 5
; Pattern $0c, Row 16; 
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $f0	; Set frequency '1264' (octave 0 semitone 1264) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d0	; Set frequency '1232' (octave 0 semitone 1232) for channel FM 5
; Pattern $0c, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $70	; Set frequency '1136' (octave 0 semitone 1136) for channel FM 5
; Pattern $0c, Row 18; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $50	; Set frequency '1104' (octave 0 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $30	; Set frequency '1072' (octave 0 semitone 1072) for channel FM 5
; Pattern $0c, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $10	; Set frequency '1040' (octave 0 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f0	; Set frequency '1008' (octave 0 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d0	; Set frequency '976' (octave 0 semitone 976) for channel FM 5
; Pattern $0c, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $b0	; Set frequency '944' (octave 0 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $90	; Set frequency '912' (octave 0 semitone 912) for channel FM 5
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $70	; Set frequency '880' (octave 0 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $50	; Set frequency '848' (octave 0 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $30	; Set frequency '816' (octave 0 semitone 816) for channel FM 5
; Pattern $0c, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $10	; Set frequency '784' (octave 0 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $f0	; Set frequency '752' (octave 0 semitone 752) for channel FM 5
; Pattern $0c, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d0	; Set frequency '720' (octave 0 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $b0	; Set frequency '688' (octave 0 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $90	; Set frequency '656' (octave 0 semitone 656) for channel FM 5
; Pattern $0c, Row 24; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 25; 
; Pattern $0c, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0e	; Set volume for channel FM 5
; Pattern $0c, Row 27; 
	dc.b $fe, $02	; Delay
	dc.b $25, $14	; Set volume for channel FM 5
; Pattern $0c, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $1a	; Set volume for channel FM 5
; Pattern $0c, Row 29; 
	dc.b $fe, $02	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
; Pattern $0c, Row 30; 
	dc.b $fe, $03	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $27	; Set volume for channel FM 5
; Pattern $0c, Row 31; 
	dc.b $fe, $02	; Delay
	dc.b $25, $2d	; Set volume for channel FM 5
; Pattern $0c, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $33	; Set volume for channel FM 5
; Pattern $0c, Row 33; 
	dc.b $fe, $02	; Delay
	dc.b $25, $39	; Set volume for channel FM 5
; Pattern $0c, Row 34; 
	dc.b $fe, $03	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $3f	; Set volume for channel FM 5
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0c, Row 41; 
; Pattern $0c, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0c, Row 47; 
; Pattern $0c, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $0c, Row 49; 
; Pattern $0c, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0c, Row 51; 
; Pattern $0c, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0c, Row 53; 
; Pattern $0c, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0c, Row 55; 
; Pattern $0c, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0c, Row 57; 
; Pattern $0c, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0c, Row 59; 
; Pattern $0c, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
; Pattern $0c, Row 61; 
; Pattern $0c, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0c, Row 63; 
; Pattern $0d, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
; Pattern $0d, Row 1; 
; Pattern $0d, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 3; 
; Pattern $0d, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 5; 
; Pattern $0d, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 7; 
; Pattern $0d, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0d, Row 9; 
; Pattern $0d, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 11; 
; Pattern $0d, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $0d, Row 13; 
; Pattern $0d, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 15; 
; Pattern $0d, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $0d, Row 17; 
; Pattern $0d, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 21; 
; Pattern $0d, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 23; 
; Pattern $0d, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0d, Row 25; 
; Pattern $0d, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 27; 
; Pattern $0d, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 29; 
; Pattern $0d, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 31; 
; Pattern $0d, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $0d, Row 33; 
; Pattern $0d, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 35; 
; Pattern $0d, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 39; 
; Pattern $0d, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0d, Row 41; 
; Pattern $0d, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 43; 
; Pattern $0d, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $0d, Row 45; 
; Pattern $0d, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 47; 
; Pattern $0d, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $0d, Row 49; 
; Pattern $0d, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $0d, Row 51; 
; Pattern $0d, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 53; 
; Pattern $0d, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $0d, Row 55; 
; Pattern $0d, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0d, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0d, Row 58; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0d, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0d, Row 60; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0d, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0d, Row 62; 
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0d, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0e, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0e, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 7; 
; Pattern $0e, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0e, Row 9; 
; Pattern $0e, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 15; 
; Pattern $0e, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 18; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 23; 
; Pattern $0e, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0e, Row 25; 
; Pattern $0e, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 31; 
; Pattern $0e, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0e, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 39; 
; Pattern $0e, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0e, Row 41; 
; Pattern $0e, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 47; 
; Pattern $0e, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 50; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 56; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0e, Row 57; 
; Pattern $0e, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0e, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0e, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0e, Row 63; 
; Pattern $0f, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0f, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 6; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 7; 
; Pattern $0f, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0f, Row 9; 
; Pattern $0f, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 12; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 15; 
; Pattern $0f, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 18; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 23; 
; Pattern $0f, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0f, Row 25; 
; Pattern $0f, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 28; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 31; 
; Pattern $0f, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $0f, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 38; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 39; 
; Pattern $0f, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0f, Row 41; 
; Pattern $0f, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 44; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 47; 
; Pattern $0f, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 50; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 56; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0f, Row 57; 
; Pattern $0f, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 60; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $0f, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0f, Row 63; 
; Pattern $10, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $10, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 7; 
; Pattern $10, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $10, Row 9; 
; Pattern $10, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 15; 
; Pattern $10, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 18; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 23; 
; Pattern $10, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 31; 
; Pattern $10, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $10, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $10, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 39; 
; Pattern $10, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 47; 
; Pattern $10, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 50; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 56; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $10, Row 57; 
; Pattern $10, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $10, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $10, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $10, Row 63; 
; Pattern $11, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $11, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $11, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 6; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 7; 
; Pattern $11, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $11, Row 9; 
; Pattern $11, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 12; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 15; 
; Pattern $11, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 18; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 23; 
; Pattern $11, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $11, Row 25; 
; Pattern $11, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 28; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 31; 
; Pattern $11, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $11, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $11, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 38; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 39; 
; Pattern $11, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $11, Row 41; 
; Pattern $11, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 44; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 47; 
; Pattern $11, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 50; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 56; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $11, Row 57; 
; Pattern $11, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 60; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $11, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $11, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $11, Row 63; 
; Pattern $12, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $12, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $12, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $4a, $48	; Set instrument for channel PSG 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $12, Row 7; 
; Pattern $12, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $12, Row 9; 
; Pattern $12, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $12, Row 15; 
; Pattern $12, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 18; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
; Pattern $12, Row 23; 
; Pattern $12, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $12, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $12, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $12, Row 39; 
; Pattern $12, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $12, Row 41; 
; Pattern $12, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $12, Row 47; 
; Pattern $12, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 50; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 56; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $12, Row 57; 
; Pattern $12, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $12, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $12, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $12, Row 63; 
; Pattern $13, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $13, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $13, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 6; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $13, Row 7; 
; Pattern $13, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $13, Row 9; 
; Pattern $13, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 12; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $13, Row 15; 
; Pattern $13, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 18; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
; Pattern $13, Row 23; 
; Pattern $13, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $13, Row 25; 
; Pattern $13, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 28; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $13, Row 31; 
; Pattern $13, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $13, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $13, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 38; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $13, Row 39; 
; Pattern $13, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $13, Row 41; 
; Pattern $13, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 44; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $13, Row 47; 
; Pattern $13, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 50; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 56; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $32	; Note C#2 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $13, Row 57; 
; Pattern $13, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 60; 
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $13, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $13, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $1e	; Note D#1 on channel PSG 2
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $13, Row 63; 
; Pattern $14, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $14, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $14, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $14, Row 7; 
; Pattern $14, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $14, Row 9; 
; Pattern $14, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $14, Row 15; 
; Pattern $14, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 18; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
; Pattern $14, Row 23; 
; Pattern $14, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $14, Row 25; 
; Pattern $14, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $14, Row 31; 
; Pattern $14, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $14, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $14, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 38; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $14, Row 39; 
; Pattern $14, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $14, Row 41; 
; Pattern $14, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 44; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $14, Row 47; 
; Pattern $14, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 50; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 56; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $14, Row 57; 
; Pattern $14, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 60; 
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $14, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $14, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $14, Row 63; 
; Pattern $15, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $15, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $15, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 6; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $15, Row 7; 
; Pattern $15, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $15, Row 9; 
; Pattern $15, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 12; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $15, Row 15; 
; Pattern $15, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 18; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 22; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
; Pattern $15, Row 23; 
; Pattern $15, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $15, Row 25; 
; Pattern $15, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $22	; Note F-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 28; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 30; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $15, Row 31; 
; Pattern $15, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $28	; Note G#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
; Pattern $15, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
; Pattern $15, Row 34; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 36; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 38; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $1e	; Note D#1 on channel PSG 1
; Pattern $15, Row 39; 
; Pattern $15, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $09, $18	; Note C-1 on channel PSG 2
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $15, Row 41; 
; Pattern $15, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $1e	; Note D#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 44; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $22	; Note F-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 46; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $15, Row 47; 
; Pattern $15, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 50; 
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 52; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 54; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $22	; Note F-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 56; 
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $02, $4b	; Note F-2 on channel FM 3
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $08, $24	; Note F#1 on channel PSG 1
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $15, Row 57; 
; Pattern $15, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 60; 
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4b	; Note F-2 on channel FM 3
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $0a, $32	; Note C#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $15, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 5
; Pattern $15, Row 62; 
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $15, Row 63; 
; Pattern $16, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $50	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $e7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $e8	; Set frequency '5352' (octave 2 semitone 1256) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $c8	; Set frequency '5320' (octave 2 semitone 1224) for channel FM 5
; Pattern $16, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a8	; Set frequency '5288' (octave 2 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $68	; Set frequency '5224' (octave 2 semitone 1128) for channel FM 5
; Pattern $16, Row 2; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $48	; Set frequency '5192' (octave 2 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 5
; Pattern $16, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $08	; Set frequency '5128' (octave 2 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e8	; Set frequency '5096' (octave 2 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 5
; Pattern $16, Row 4; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a8	; Set frequency '5032' (octave 2 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $88	; Set frequency '5000' (octave 2 semitone 904) for channel FM 5
; Pattern $16, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $28	; Set frequency '4904' (octave 2 semitone 808) for channel FM 5
; Pattern $16, Row 6; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e8	; Set frequency '4840' (octave 2 semitone 744) for channel FM 5
; Pattern $16, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c8	; Set frequency '4808' (octave 2 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 5
; Pattern $16, Row 8; 
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $2a, $06	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ec	; Set frequency '3308' (octave 1 semitone 1260) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $cc	; Set frequency '3276' (octave 1 semitone 1228) for channel FM 5
; Pattern $16, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $6c	; Set frequency '3180' (octave 1 semitone 1132) for channel FM 5
; Pattern $16, Row 10; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2c	; Set frequency '3116' (octave 1 semitone 1068) for channel FM 5
; Pattern $16, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $0c	; Set frequency '3084' (octave 1 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ec	; Set frequency '3052' (octave 1 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
; Pattern $16, Row 12; 
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ac	; Set frequency '2988' (octave 1 semitone 940) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $8c	; Set frequency '2956' (octave 1 semitone 908) for channel FM 5
; Pattern $16, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $6c	; Set frequency '2924' (octave 1 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $4c	; Set frequency '2892' (octave 1 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2c	; Set frequency '2860' (octave 1 semitone 812) for channel FM 5
; Pattern $16, Row 14; 
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $0c	; Set frequency '2828' (octave 1 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ec	; Set frequency '2796' (octave 1 semitone 748) for channel FM 5
; Pattern $16, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $cc	; Set frequency '2764' (octave 1 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ac	; Set frequency '2732' (octave 1 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $8c	; Set frequency '2700' (octave 1 semitone 652) for channel FM 5
; Pattern $16, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $29, $08	; Set volume for channel PSG 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $f0	; Set frequency '1264' (octave 0 semitone 1264) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $d0	; Set frequency '1232' (octave 0 semitone 1232) for channel FM 5
; Pattern $16, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $70	; Set frequency '1136' (octave 0 semitone 1136) for channel FM 5
; Pattern $16, Row 18; 
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $50	; Set frequency '1104' (octave 0 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $30	; Set frequency '1072' (octave 0 semitone 1072) for channel FM 5
; Pattern $16, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $10	; Set frequency '1040' (octave 0 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f0	; Set frequency '1008' (octave 0 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d0	; Set frequency '976' (octave 0 semitone 976) for channel FM 5
; Pattern $16, Row 20; 
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $b0	; Set frequency '944' (octave 0 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $90	; Set frequency '912' (octave 0 semitone 912) for channel FM 5
; Pattern $16, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $70	; Set frequency '880' (octave 0 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $50	; Set frequency '848' (octave 0 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $30	; Set frequency '816' (octave 0 semitone 816) for channel FM 5
; Pattern $16, Row 22; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $10	; Set frequency '784' (octave 0 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $f0	; Set frequency '752' (octave 0 semitone 752) for channel FM 5
; Pattern $16, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $d0	; Set frequency '720' (octave 0 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $b0	; Set frequency '688' (octave 0 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $90	; Set frequency '656' (octave 0 semitone 656) for channel FM 5
; Pattern $16, Row 24; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $3a, $0a, $01	; Set frequency '26' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $16, Row 25; 
; Pattern $16, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $0e	; Set volume for channel FM 5
; Pattern $16, Row 27; 
	dc.b $fe, $02	; Delay
	dc.b $25, $14	; Set volume for channel FM 5
; Pattern $16, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $1a	; Set volume for channel FM 5
; Pattern $16, Row 29; 
	dc.b $fe, $02	; Delay
	dc.b $25, $20	; Set volume for channel FM 5
; Pattern $16, Row 30; 
	dc.b $fe, $03	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $25, $27	; Set volume for channel FM 5
; Pattern $16, Row 31; 
	dc.b $fe, $02	; Delay
	dc.b $25, $2d	; Set volume for channel FM 5
; Pattern $16, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $25, $33	; Set volume for channel FM 5
; Pattern $16, Row 33; 
	dc.b $fe, $02	; Delay
	dc.b $25, $39	; Set volume for channel FM 5
; Pattern $16, Row 34; 
	dc.b $fe, $03	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $3f	; Set volume for channel FM 5
; Pattern $16, Row 35; 
; Pattern $16, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $16, Row 37; 
; Pattern $16, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $16, Row 39; 
; Pattern $16, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $16, Row 41; 
; Pattern $16, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $16, Row 43; 
; Pattern $16, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $16, Row 45; 
; Pattern $16, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $16, Row 47; 
; Pattern $16, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $16, Row 49; 
; Pattern $16, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $16, Row 51; 
; Pattern $16, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $16, Row 53; 
; Pattern $16, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $16, Row 55; 
; Pattern $16, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $16, Row 57; 
; Pattern $16, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $16, Row 59; 
; Pattern $16, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $51	; Note G#2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $51	; Note G#2 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
; Pattern $16, Row 61; 
; Pattern $16, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $16, Row 63; 
; Pattern $17, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
; Pattern $17, Row 1; 
; Pattern $17, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 3; 
; Pattern $17, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 5; 
; Pattern $17, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 7; 
; Pattern $17, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $17, Row 9; 
; Pattern $17, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 11; 
; Pattern $17, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $17, Row 13; 
; Pattern $17, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 15; 
; Pattern $17, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $17, Row 17; 
; Pattern $17, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 19; 
; Pattern $17, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 21; 
; Pattern $17, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 23; 
; Pattern $17, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $17, Row 25; 
; Pattern $17, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 27; 
; Pattern $17, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 29; 
; Pattern $17, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 31; 
; Pattern $17, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $17, Row 33; 
; Pattern $17, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 35; 
; Pattern $17, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 37; 
; Pattern $17, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 39; 
; Pattern $17, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $17, Row 41; 
; Pattern $17, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $4a	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 43; 
; Pattern $17, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
; Pattern $17, Row 45; 
; Pattern $17, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $01, $41	; Note C-2 on channel FM 2
; Pattern $17, Row 47; 
; Pattern $17, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
; Pattern $17, Row 49; 
; Pattern $17, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
; Pattern $17, Row 51; 
; Pattern $17, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $45, $4e	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $f5, $c0	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $17, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $17, Row 54; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 5
; Pattern $17, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
; Pattern $17, Row 56; 
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $4d	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $e0	; Set pan/AMS/FMS for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $42, $4b	; Set instrument for channel FM 3
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $f2, $e0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $44, $4b	; Set instrument for channel FM 4
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $f4, $e0	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
; Pattern $17, Row 57; 
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $4b	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $01, $6b	; Note F-3 on channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $1b	; Set volume for channel FM 4
	dc.b $35, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 2
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 2
	dc.b $35, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 2
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
; Pattern $17, Row 58; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $31, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $17, Row 59; 
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 2
	dc.b $35, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 2
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 2
	dc.b $35, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 5
; Pattern $17, Row 60; 
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $49	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $2b, $04	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 2
; Pattern $17, Row 61; 
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 2
; Pattern $17, Row 62; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $4c	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $31, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 2
	dc.b $35, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 2
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
; Pattern $17, Row 63; 
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 2
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

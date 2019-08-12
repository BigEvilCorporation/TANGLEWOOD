	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $e8		; Lock channel PSG 1
	dc.b $e9		; Lock channel PSG 2
	dc.b $ea		; Lock channel PSG 3
; Pattern $00, Row 0; 
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $46, $aa	; Set instrument for channel FM 6
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $f3	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $48, $ab	; Set instrument for channel PSG 1
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $49, $ab	; Set instrument for channel PSG 2
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $4a, $ab	; Set instrument for channel PSG 3
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $29, $0b	; Set volume for channel PSG 2
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $2a, $0b	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $28, $0d	; Set volume for channel PSG 1
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $29, $0d	; Set volume for channel PSG 2
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
	dc.b $fe, $04	; Delay
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $2a, $0d	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $04	; Delay
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $28, $0e	; Set volume for channel PSG 1
	dc.b $08, $3c	; Note F#2 on channel PSG 1
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $04	; Delay
	dc.b $06, $b7	; Note B-5 on channel FM 6
	dc.b $29, $0e	; Set volume for channel PSG 2
	dc.b $09, $46	; Note B-2 on channel PSG 2
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
	dc.b $fe, $04	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $06, $d7	; Note B-6 on channel FM 6
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $0a, $4a	; Note C#3 on channel PSG 3
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $06, $b7	; Note B-5 on channel FM 6
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $00, Row 64; 
	dc.b $fe, $04	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

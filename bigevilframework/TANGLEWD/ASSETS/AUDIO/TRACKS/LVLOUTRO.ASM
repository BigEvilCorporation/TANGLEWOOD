	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $0b	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $43	; Note C#2 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $0c	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $48, $0d	; Set instrument for channel PSG 1
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $46	; Note B-2 on channel PSG 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0e	; Delay
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $49, $0d	; Set instrument for channel PSG 2
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $09, $44	; Note A#2 on channel PSG 2
; Pattern $00, Row 5; 
	dc.b $fe, $03	; Delay
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $4a, $0d	; Set instrument for channel PSG 3
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $0a, $46	; Note B-2 on channel PSG 3
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $0b	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $41, $0b	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $55	; Note A#2 on channel FM 2
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $45, $0c	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $8d	; Note F#4 on channel FM 5
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $03	; Delay
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $08, $44	; Note A#2 on channel PSG 1
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $0b	; Delay
	dc.b $28, $07	; Set volume for channel PSG 1
	dc.b $08, $32	; Note C#2 on channel PSG 1
; Pattern $00, Row 13; 
	dc.b $fe, $03	; Delay
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $09, $3c	; Note F#2 on channel PSG 2
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0b	; Delay
	dc.b $29, $07	; Set volume for channel PSG 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $00, Row 17; 
	dc.b $fe, $03	; Delay
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $0a, $32	; Note C#2 on channel PSG 3
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0b	; Delay
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $0b	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $0c	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $83	; Note C#4 on channel FM 6
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
; Pattern $00, Row 21; 
	dc.b $fe, $03	; Delay
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $0b	; Delay
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $24	; Note F#1 on channel PSG 1
; Pattern $00, Row 25; 
	dc.b $fe, $03	; Delay
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
	dc.b $fe, $0e	; Delay
	dc.b $2a, $0d	; Set volume for channel PSG 3
	dc.b $0a, $24	; Note F#1 on channel PSG 3
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $0b	; Delay
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
	dc.b $fe, $6c	; Delay
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $26, $09	; Set volume for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $04	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 65; 
; Pattern $00, Row 66; 
; Pattern $00, Row 67; 
; Pattern $00, Row 68; 
; Pattern $00, Row 69; 
; Pattern $00, Row 70; 
; Pattern $00, Row 71; 
; Pattern $00, Row 72; 
; Pattern $00, Row 73; 
; Pattern $00, Row 74; 
; Pattern $00, Row 75; 
; Pattern $00, Row 76; 
; Pattern $00, Row 77; 
; Pattern $00, Row 78; 
; Pattern $00, Row 79; 
; Pattern $00, Row 80; 
; Pattern $00, Row 81; 
; Pattern $00, Row 82; 
; Pattern $00, Row 83; 
; Pattern $00, Row 84; 
; Pattern $00, Row 85; 
; Pattern $00, Row 86; 
; Pattern $00, Row 87; 
; Pattern $00, Row 88; 
; Pattern $00, Row 89; 
; Pattern $00, Row 90; 
; Pattern $00, Row 91; 
; Pattern $00, Row 92; 
; Pattern $00, Row 93; 
; Pattern $00, Row 94; 
; Pattern $00, Row 95; 
	dc.b $fe, $70	; Delay
	dc.b $ff	; The End

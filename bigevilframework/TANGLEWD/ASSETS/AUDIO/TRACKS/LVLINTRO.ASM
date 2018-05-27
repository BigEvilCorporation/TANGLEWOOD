	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $09	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $f0, $40	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6d	; Note F#3 on channel FM 1
	dc.b $28, $02	; Set volume for channel PSG 1
	dc.b $48, $08	; Set instrument for channel PSG 1
	dc.b $28, $02	; Set volume for channel PSG 1
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $00, Row 1; 
	dc.b $fe, $06	; Delay
	dc.b $29, $02	; Set volume for channel PSG 2
	dc.b $49, $08	; Set instrument for channel PSG 2
	dc.b $29, $02	; Set volume for channel PSG 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $41, $09	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $f1, $80	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $73	; Note A-3 on channel FM 2
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $4a, $08	; Set instrument for channel PSG 3
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $06	; Delay
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $42, $09	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $4b, $0a	; Set instrument for channel PSG 4
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $00, Row 5; 
	dc.b $fe, $06	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $44, $09	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $89	; Note E-4 on channel FM 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $06	; Delay
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $00, Row 8; 
	dc.b $fe, $06	; Delay
	dc.b $45, $09	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $00, Row 9; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $00, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c0	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $a5	; Note D-5 on channel FM 1
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $00, Row 11; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $00, Row 12; 
	dc.b $fe, $06	; Delay
	dc.b $f1, $40	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a9	; Note E-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
	dc.b $fe, $60	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

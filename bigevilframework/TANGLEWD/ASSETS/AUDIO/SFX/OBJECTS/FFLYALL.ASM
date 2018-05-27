	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $e8		; Lock channel PSG 1
	dc.b $e9		; Lock channel PSG 2
	dc.b $ea		; Lock channel PSG 3
; Pattern $00, Row 0; 
	dc.b $46, $db	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $03	; Delay
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $48, $dc	; Set instrument for channel PSG 1
	dc.b $28, $09	; Set volume for channel PSG 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $89	; Note E-4 on channel FM 6
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $49, $dc	; Set instrument for channel PSG 2
	dc.b $29, $09	; Set volume for channel PSG 2
	dc.b $09, $4c	; Note D-3 on channel PSG 2
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $4a, $dc	; Set instrument for channel PSG 3
	dc.b $2a, $09	; Set volume for channel PSG 3
	dc.b $0a, $56	; Note G-3 on channel PSG 3
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
	dc.b $28, $0a	; Set volume for channel PSG 1
	dc.b $08, $5e	; Note B-3 on channel PSG 1
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
	dc.b $fe, $03	; Delay
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a9	; Note E-5 on channel FM 6
	dc.b $29, $0a	; Set volume for channel PSG 2
	dc.b $09, $60	; Note C-4 on channel PSG 2
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $02	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $28, $0b	; Set volume for channel PSG 1
	dc.b $29, $0b	; Set volume for channel PSG 2
	dc.b $2a, $0b	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

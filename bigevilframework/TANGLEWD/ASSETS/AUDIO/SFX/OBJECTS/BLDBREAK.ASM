	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $28	; Set instrument for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $4b, $29	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $27	; Delay
	dc.b $26, $10	; Set volume for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $26, $20	; Set volume for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $26, $30	; Set volume for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $03	; Delay
	dc.b $26, $4f	; Set volume for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $03	; Delay
	dc.b $26, $5f	; Set volume for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $03	; Delay
	dc.b $26, $6f	; Set volume for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $26, $7e	; Set volume for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

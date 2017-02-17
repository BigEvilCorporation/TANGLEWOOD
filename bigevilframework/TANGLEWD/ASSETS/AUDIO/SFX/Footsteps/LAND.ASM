	dc.b $e0		; Lock channel FM 1
	dc.b $e1		; Lock channel FM 2
; Pattern $00, Row 0; 
	dc.b $40, $2f	; Set instrument for channel FM 1
	dc.b $20, $0a	; Set volume for channel FM 1
	dc.b $00, $03	; Note C#0 on channel FM 1
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $41, $2f	; Set instrument for channel FM 2
	dc.b $21, $0a	; Set volume for channel FM 2
	dc.b $01, $03	; Note C#0 on channel FM 2
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

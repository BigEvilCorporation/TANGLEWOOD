	dc.b $e0		; Lock channel FM 1
; Pattern $00, Row 0; 
	dc.b $40, $31	; Set instrument for channel FM 1
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $03	; Note C#0 on channel FM 1
; Pattern $00, Row 1; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

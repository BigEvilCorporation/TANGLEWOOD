; Pattern $00, Row 0; 
	dc.b $42, $32	; Set instrument for channel FM 3
	dc.b $02, $03	; Note C#0 on channel FM 3
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $44, $32	; Set instrument for channel FM 4
	dc.b $04, $03	; Note C#0 on channel FM 4
; Pattern $00, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

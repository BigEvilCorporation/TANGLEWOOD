	dc.b $e0		; Lock channel FM 1
; Pattern $00, Row 0; 
	dc.b $40, $26	; Set instrument for channel FM 1
	dc.b $00, $83	; Note C#4 on channel FM 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

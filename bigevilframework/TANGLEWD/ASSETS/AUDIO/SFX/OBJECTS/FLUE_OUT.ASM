	dc.b $e0		; Lock channel FM 1
	dc.b $e1		; Lock channel FM 2
; Pattern $00, Row 0; 
	dc.b $40, $20	; Set instrument for channel FM 1
	dc.b $00, $63	; Note C#3 on channel FM 1
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $41, $20	; Set instrument for channel FM 2
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $01, $87	; Note D#4 on channel FM 2
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
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
	dc.b $fe, $2a	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

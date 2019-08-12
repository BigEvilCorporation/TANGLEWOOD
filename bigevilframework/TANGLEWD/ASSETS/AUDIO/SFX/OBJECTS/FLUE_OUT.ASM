	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $45, $9d	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $46, $9d	; Set instrument for channel FM 6
	dc.b $26, $1a	; Set volume for channel FM 6
	dc.b $06, $87	; Note D#4 on channel FM 6
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
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

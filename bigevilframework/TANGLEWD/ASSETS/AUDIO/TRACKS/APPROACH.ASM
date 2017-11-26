	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $6a	; Set instrument for channel FM 1
	dc.b $00, $43	; Note C#2 on channel FM 1
; Pattern $00, Row 1; 
; Pattern $01, Row 0; 
	dc.b $fe, $18	; Delay
	dc.b $fd	; Set loop
; Pattern $01, Row 1; 
	dc.b $fe, $18	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $40, $96	; Set instrument for channel FM 1
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $f0, $57	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $41	; Note C-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $41, $96	; Set instrument for channel FM 2
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $f1, $97	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $29	; Note E-1 on channel FM 2
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
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $b9	; Delay
	dc.b $ff	; The End

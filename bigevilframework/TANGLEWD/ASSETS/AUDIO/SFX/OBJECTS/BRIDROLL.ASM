	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $4f	; Set instrument for channel FM 6
	dc.b $f6, $c7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
	dc.b $fe, $09	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $09	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $46, $99	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $f6, $c2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $02	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $02	; Delay
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $02	; Delay
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $ab	; Note F-5 on channel FM 6
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $06	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

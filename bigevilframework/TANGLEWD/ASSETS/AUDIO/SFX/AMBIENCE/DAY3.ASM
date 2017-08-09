	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $39	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $ab	; Note F-5 on channel FM 6
	dc.b $f6, $c0	; Set params for channel FM 6
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
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
; Pattern $00, Row 60; 
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
	dc.b $fe, $66	; Delay
	dc.b $ff	; The End

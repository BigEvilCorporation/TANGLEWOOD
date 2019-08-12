	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $a1	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $03	; Delay
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $26, $2f	; Set volume for channel FM 6
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $a2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8f	; Note G-4 on channel FM 6
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $f6, $e2	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $03	; Delay
	dc.b $f6, $62	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $8b	; Note F-4 on channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $26, $6f	; Set volume for channel FM 6
	dc.b $f6, $22	; Set pan/AMS/FMS for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $02	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

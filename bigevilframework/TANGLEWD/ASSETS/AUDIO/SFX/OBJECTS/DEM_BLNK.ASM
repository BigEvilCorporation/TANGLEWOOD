	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $c3	; Set instrument for channel FM 6
	dc.b $06, $e3	; Note C#7 on channel FM 6
	dc.b $4b, $a8	; Set instrument for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $00, Row 1; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $0b, $04	; Note E-0 on channel PSG 4
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
	dc.b $fe, $06	; Delay
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

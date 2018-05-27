	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $e8		; Lock channel PSG 1
	dc.b $e9		; Lock channel PSG 2
	dc.b $ea		; Lock channel PSG 3
; Pattern $00, Row 0; 
	dc.b $46, $b8	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $02	; Delay
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $48, $b9	; Set instrument for channel PSG 1
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $08, $32	; Note C#2 on channel PSG 1
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $06, $a1	; Note C-5 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $02	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $49, $b9	; Set instrument for channel PSG 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $4a	; Note C#3 on channel PSG 2
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $4a, $b9	; Set instrument for channel PSG 3
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $0a, $40	; Note G#2 on channel PSG 3
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

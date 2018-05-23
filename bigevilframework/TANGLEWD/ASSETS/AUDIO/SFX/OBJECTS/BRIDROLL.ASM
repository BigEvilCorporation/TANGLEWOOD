	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $46, $b6	; Set instrument for channel FM 6
	dc.b $26, $09	; Set volume for channel FM 6
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
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
	dc.b $fe, $09	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f6	; Set frequency '7414' (octave 3 semitone 1270) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $f4	; Set frequency '7412' (octave 3 semitone 1268) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ef	; Set frequency '7407' (octave 3 semitone 1263) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $ea	; Set frequency '7402' (octave 3 semitone 1258) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e5	; Set frequency '7397' (octave 3 semitone 1253) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $e0	; Set frequency '7392' (octave 3 semitone 1248) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $db	; Set frequency '7387' (octave 3 semitone 1243) for channel FM 6
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

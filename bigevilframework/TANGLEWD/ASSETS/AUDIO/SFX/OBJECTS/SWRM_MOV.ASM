	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $46, $c8	; Set instrument for channel FM 6
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $fe, $01	; Delay
; Pattern $00, Row 1; 
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $06, $49	; Note E-2 on channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $06, $57	; Note B-2 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $c3	; Set frequency '5315' (octave 2 semitone 1219) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $06, $69	; Note E-3 on channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $06, $6f	; Note G-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c9	; Set frequency '7113' (octave 3 semitone 969) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $06, $77	; Note B-3 on channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $06, $71	; Note G#3 on channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $06, $83	; Note C#4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $06, $47	; Note D#2 on channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $06, $6f	; Note G-3 on channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $06, $77	; Note B-3 on channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $06, $49	; Note E-2 on channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $06, $57	; Note B-2 on channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $06, $89	; Note E-4 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $06, $77	; Note B-3 on channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $06, $83	; Note C#4 on channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $06, $49	; Note E-2 on channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $57	; Note B-2 on channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $06, $69	; Note E-3 on channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $06, $69	; Note E-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

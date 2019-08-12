	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $46, $a9	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $f6, $f0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c2	; Set frequency '10946' (octave 5 semitone 706) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b2	; Set frequency '10930' (octave 5 semitone 690) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $a2	; Set frequency '10914' (octave 5 semitone 674) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $06, $b3	; Note A-5 on channel FM 6
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $03	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $03	; Delay
	dc.b $06, $c9	; Note E-6 on channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $f2	; Set frequency '10994' (octave 5 semitone 754) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $12	; Set frequency '11026' (octave 5 semitone 786) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $32	; Set frequency '11058' (octave 5 semitone 818) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $06, $b3	; Note A-5 on channel FM 6
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $06, $c5	; Note D-6 on channel FM 6
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $06, $c9	; Note E-6 on channel FM 6
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $26, $0b	; Set volume for channel FM 6
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
	dc.b $fe, $09	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

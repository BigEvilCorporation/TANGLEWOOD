	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $34	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $c1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $f7	; Note B-7 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
	dc.b $fe, $06	; Delay
	dc.b $06, $d3	; Note A-6 on channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $02	; Delay
	dc.b $06, $f3	; Note A-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $c9	; Set frequency '15305' (octave 7 semitone 969) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $06, $f3	; Note A-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $c9	; Set frequency '15305' (octave 7 semitone 969) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $59	; Set frequency '15193' (octave 7 semitone 857) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $e9	; Set frequency '15081' (octave 7 semitone 745) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $be	; Set frequency '13502' (octave 6 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $4e	; Set frequency '13390' (octave 6 semitone 1102) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $33, $de	; Set frequency '13278' (octave 6 semitone 990) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $33, $6e	; Set frequency '13166' (octave 6 semitone 878) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $06, $f1	; Note G#7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $9d	; Set frequency '15261' (octave 7 semitone 925) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $06, $f1	; Note G#7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $9d	; Set frequency '15261' (octave 7 semitone 925) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $3d	; Set frequency '15165' (octave 7 semitone 829) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $dd	; Set frequency '15069' (octave 7 semitone 733) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $be	; Set frequency '13502' (octave 6 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $5e	; Set frequency '13406' (octave 6 semitone 1118) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $33, $fe	; Set frequency '13310' (octave 6 semitone 1022) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $33, $9e	; Set frequency '13214' (octave 6 semitone 926) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $06, $ef	; Note G-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $74	; Set frequency '15220' (octave 7 semitone 884) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $06, $ef	; Note G-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $74	; Set frequency '15220' (octave 7 semitone 884) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $24	; Set frequency '15140' (octave 7 semitone 804) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $d4	; Set frequency '15060' (octave 7 semitone 724) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $84	; Set frequency '14980' (octave 7 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $be	; Set frequency '13502' (octave 6 semitone 1214) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $ff	; The End

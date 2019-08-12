	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $46, $98	; Set instrument for channel FM 6
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
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $59	; Set frequency '15193' (octave 7 semitone 857) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $06, $f3	; Note A-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $c9	; Set frequency '15305' (octave 7 semitone 969) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $59	; Set frequency '15193' (octave 7 semitone 857) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $e9	; Set frequency '15081' (octave 7 semitone 745) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $fd	; Set frequency '13565' (octave 6 semitone 1277) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $8d	; Set frequency '13453' (octave 6 semitone 1165) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $1d	; Set frequency '13341' (octave 6 semitone 1053) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $02	; Delay
	dc.b $06, $f1	; Note G#7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $9d	; Set frequency '15261' (octave 7 semitone 925) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $3d	; Set frequency '15165' (octave 7 semitone 829) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $06, $f1	; Note G#7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $9d	; Set frequency '15261' (octave 7 semitone 925) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $3d	; Set frequency '15165' (octave 7 semitone 829) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $dd	; Set frequency '15069' (octave 7 semitone 733) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $35, $01	; Set frequency '13569' (octave 6 semitone 1281) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $a1	; Set frequency '13473' (octave 6 semitone 1185) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $41	; Set frequency '13377' (octave 6 semitone 1089) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $16		; Note off channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $02	; Delay
	dc.b $06, $ef	; Note G-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $74	; Set frequency '15220' (octave 7 semitone 884) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $24	; Set frequency '15140' (octave 7 semitone 804) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $06, $ef	; Note G-7 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $74	; Set frequency '15220' (octave 7 semitone 884) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3b, $24	; Set frequency '15140' (octave 7 semitone 804) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $d4	; Set frequency '15060' (octave 7 semitone 724) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $3a, $84	; Set frequency '14980' (octave 7 semitone 644) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $b8	; Set frequency '13496' (octave 6 semitone 1208) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $34, $68	; Set frequency '13416' (octave 6 semitone 1128) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

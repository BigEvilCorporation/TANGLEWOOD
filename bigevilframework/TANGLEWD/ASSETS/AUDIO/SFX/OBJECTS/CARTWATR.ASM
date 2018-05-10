	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $ca	; Set instrument for channel FM 6
	dc.b $f6, $f1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $77	; Note B-3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $3f	; Set frequency '7231' (octave 3 semitone 1087) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3f	; Set frequency '5183' (octave 2 semitone 1087) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $03	; Set frequency '4867' (octave 2 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $82	; Set frequency '4994' (octave 2 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $80	; Set frequency '5248' (octave 2 semitone 1152) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3f	; Set frequency '5183' (octave 2 semitone 1087) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $03	; Set frequency '4867' (octave 2 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $82	; Set frequency '4994' (octave 2 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $80	; Set frequency '5248' (octave 2 semitone 1152) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3f	; Set frequency '5183' (octave 2 semitone 1087) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $03	; Set frequency '4867' (octave 2 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $82	; Set frequency '4994' (octave 2 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $80	; Set frequency '5248' (octave 2 semitone 1152) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3f	; Set frequency '5183' (octave 2 semitone 1087) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $41	; Set frequency '4929' (octave 2 semitone 833) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $03	; Set frequency '4867' (octave 2 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $82	; Set frequency '4994' (octave 2 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $01	; Set frequency '5121' (octave 2 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $80	; Set frequency '5248' (octave 2 semitone 1152) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $03	; Set frequency '6915' (octave 3 semitone 771) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $01	; Set frequency '7169' (octave 3 semitone 1025) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 6
	dc.b $ff	; The End

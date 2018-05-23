	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $46, $c4	; Set instrument for channel FM 6
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
	dc.b $fe, $10	; Delay
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $45, $c4	; Set instrument for channel FM 5
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $53	; Note A-2 on channel FM 5
	dc.b $fe, $06	; Delay
; Pattern $00, Row 4; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $51	; Note G#2 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $37	; Set frequency '5175' (octave 2 semitone 1079) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3a	; Set frequency '5178' (octave 2 semitone 1082) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3c	; Set frequency '5180' (octave 2 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3c	; Set frequency '5180' (octave 2 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3c	; Set frequency '5180' (octave 2 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $3a	; Set frequency '5178' (octave 2 semitone 1082) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $38	; Set frequency '5176' (octave 2 semitone 1080) for channel FM 5
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $38	; Set frequency '5176' (octave 2 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $00, Row 7; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $b7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $51	; Note G#2 on channel FM 5
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $06, $53	; Note A-2 on channel FM 6
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
	dc.b $fe, $11	; Delay
	dc.b $25, $1d	; Set volume for channel FM 5
	dc.b $05, $53	; Note A-2 on channel FM 5
; Pattern $00, Row 11; 
	dc.b $fe, $05	; Delay
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $06, $49	; Note E-2 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $2f	; Set frequency '4911' (octave 2 semitone 815) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $34	; Set frequency '4916' (octave 2 semitone 820) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $39	; Set frequency '4921' (octave 2 semitone 825) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $43	; Set frequency '4931' (octave 2 semitone 835) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $4d	; Set frequency '4941' (octave 2 semitone 845) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $52	; Set frequency '4946' (octave 2 semitone 850) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $57	; Set frequency '4951' (octave 2 semitone 855) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $61	; Set frequency '4961' (octave 2 semitone 865) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $49	; Note E-2 on channel FM 5
	dc.b $36, $13, $66	; Set frequency '4966' (octave 2 semitone 870) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $2f	; Set frequency '4911' (octave 2 semitone 815) for channel FM 5
	dc.b $36, $13, $6b	; Set frequency '4971' (octave 2 semitone 875) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $34	; Set frequency '4916' (octave 2 semitone 820) for channel FM 5
	dc.b $36, $13, $70	; Set frequency '4976' (octave 2 semitone 880) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $39	; Set frequency '4921' (octave 2 semitone 825) for channel FM 5
	dc.b $36, $13, $75	; Set frequency '4981' (octave 2 semitone 885) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 5
	dc.b $36, $13, $7a	; Set frequency '4986' (octave 2 semitone 890) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $43	; Set frequency '4931' (octave 2 semitone 835) for channel FM 5
	dc.b $36, $13, $7f	; Set frequency '4991' (octave 2 semitone 895) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $36, $13, $84	; Set frequency '4996' (octave 2 semitone 900) for channel FM 6
	dc.b $ff	; The End

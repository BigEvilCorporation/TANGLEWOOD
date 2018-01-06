	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
; Pattern $00, Row 0; 
	dc.b $45, $7e	; Set instrument for channel FM 5
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $05, $49	; Note E-2 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $2f	; Set frequency '4911' (octave 2 semitone 815) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $34	; Set frequency '4916' (octave 2 semitone 820) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $39	; Set frequency '4921' (octave 2 semitone 825) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $43	; Set frequency '4931' (octave 2 semitone 835) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $4d	; Set frequency '4941' (octave 2 semitone 845) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $52	; Set frequency '4946' (octave 2 semitone 850) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $57	; Set frequency '4951' (octave 2 semitone 855) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 5
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $61	; Set frequency '4961' (octave 2 semitone 865) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $66	; Set frequency '4966' (octave 2 semitone 870) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $6b	; Set frequency '4971' (octave 2 semitone 875) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $70	; Set frequency '4976' (octave 2 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $75	; Set frequency '4981' (octave 2 semitone 885) for channel FM 5
; Pattern $00, Row 3; 
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7a	; Set frequency '4986' (octave 2 semitone 890) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7f	; Set frequency '4991' (octave 2 semitone 895) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $84	; Set frequency '4996' (octave 2 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $89	; Set frequency '5001' (octave 2 semitone 905) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8e	; Set frequency '5006' (octave 2 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $93	; Set frequency '5011' (octave 2 semitone 915) for channel FM 5
	dc.b $ff	; The End

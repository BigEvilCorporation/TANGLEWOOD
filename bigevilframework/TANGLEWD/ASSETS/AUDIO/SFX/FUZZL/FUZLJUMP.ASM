	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $3b	; Set instrument for channel FM 6
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $c2	; Set frequency '10946' (octave 5 semitone 706) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $b2	; Set frequency '10930' (octave 5 semitone 690) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $06, $b3	; Note A-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $a2	; Set frequency '10914' (octave 5 semitone 674) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $92	; Set frequency '10898' (octave 5 semitone 658) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $ae	; Set frequency '9390' (octave 4 semitone 1198) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $9e	; Set frequency '9374' (octave 4 semitone 1182) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $8e	; Set frequency '9358' (octave 4 semitone 1166) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $06, $c9	; Note E-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $24, $7e	; Set frequency '9342' (octave 4 semitone 1150) for channel FM 6
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $02	; Delay
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2a, $f2	; Set frequency '10994' (octave 5 semitone 754) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $12	; Set frequency '11026' (octave 5 semitone 786) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $06, $b3	; Note A-5 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $32	; Set frequency '11058' (octave 5 semitone 818) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $52	; Set frequency '11090' (octave 5 semitone 850) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $72	; Set frequency '11122' (octave 5 semitone 882) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $06, $c5	; Note D-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $92	; Set frequency '11154' (octave 5 semitone 914) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $b2	; Set frequency '11186' (octave 5 semitone 946) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $d2	; Set frequency '11218' (octave 5 semitone 978) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $06, $c9	; Note E-6 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $2b, $f2	; Set frequency '11250' (octave 5 semitone 1010) for channel FM 6
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
	dc.b $fe, $05	; Delay
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

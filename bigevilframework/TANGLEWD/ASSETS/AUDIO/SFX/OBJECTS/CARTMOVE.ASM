	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $d7	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $06, $63	; Note C#3 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $ac	; Set frequency '6828' (octave 3 semitone 684) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $af	; Set frequency '6831' (octave 3 semitone 687) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b2	; Set frequency '6834' (octave 3 semitone 690) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b5	; Set frequency '6837' (octave 3 semitone 693) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $b8	; Set frequency '6840' (octave 3 semitone 696) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $bb	; Set frequency '6843' (octave 3 semitone 699) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $c1	; Set frequency '6849' (octave 3 semitone 705) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

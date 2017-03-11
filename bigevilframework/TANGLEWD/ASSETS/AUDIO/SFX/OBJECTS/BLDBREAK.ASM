	dc.b $e6		; Lock channel FM 6
; Pattern $00, Row 0; 
	dc.b $46, $2c	; Set instrument for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $4b, $2d	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $01	; Set frequency '106' (octave 0 semitone 106) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
	dc.b $fe, $18	; Delay
	dc.b $26, $10	; Set volume for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $03	; Delay
	dc.b $26, $20	; Set volume for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $03	; Delay
	dc.b $26, $30	; Set volume for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $03	; Delay
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $03	; Delay
	dc.b $26, $4f	; Set volume for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $03	; Delay
	dc.b $26, $5f	; Set volume for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $03	; Delay
	dc.b $26, $6f	; Set volume for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $03	; Delay
	dc.b $26, $7e	; Set volume for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $03	; Delay
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

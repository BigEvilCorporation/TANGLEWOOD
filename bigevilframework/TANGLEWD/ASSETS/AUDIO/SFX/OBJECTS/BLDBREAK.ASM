	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $9e	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $e0	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $4b, $9f	; Set instrument for channel PSG 4
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $89	; Set frequency '5257' (octave 2 semitone 1161) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $8b	; Set frequency '5003' (octave 2 semitone 907) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $13	; Set frequency '3091' (octave 1 semitone 1043) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $15	; Set frequency '2837' (octave 1 semitone 789) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9b	; Set frequency '1179' (octave 0 semitone 1179) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $1c	; Set frequency '1052' (octave 0 semitone 1052) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $9d	; Set frequency '925' (octave 0 semitone 925) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $03, $1e	; Set frequency '798' (octave 0 semitone 798) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $9f	; Set frequency '671' (octave 0 semitone 671) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 13; 
	dc.b $26, $10	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 14; 
	dc.b $26, $20	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 15; 
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 16; 
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 17; 
	dc.b $26, $4f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 18; 
	dc.b $26, $5f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 19; 
	dc.b $26, $6f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 20; 
	dc.b $26, $7e	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 21; 
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
; Pattern $00, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $ff	; The End

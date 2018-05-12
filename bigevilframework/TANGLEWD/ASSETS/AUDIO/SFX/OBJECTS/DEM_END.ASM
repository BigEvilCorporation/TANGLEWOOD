	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $c9	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $f6, $e1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $4b, $ca	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $96	; Set frequency '3222' (octave 1 semitone 1174) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8e	; Set frequency '3214' (octave 1 semitone 1166) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $86	; Set frequency '3206' (octave 1 semitone 1158) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $76	; Set frequency '3190' (octave 1 semitone 1142) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $6e	; Set frequency '3182' (octave 1 semitone 1134) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $66	; Set frequency '3174' (octave 1 semitone 1126) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

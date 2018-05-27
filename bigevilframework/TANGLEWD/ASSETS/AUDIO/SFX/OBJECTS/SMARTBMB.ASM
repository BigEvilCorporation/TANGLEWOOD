	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $44, $d5	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $f7	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $d4	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d7	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $21	; Note C-1 on channel FM 5
	dc.b $46, $d3	; Set instrument for channel FM 6
	dc.b $26, $00	; Set volume for channel FM 6
	dc.b $f6, $f4	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $4b, $39	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $02, $00	; Set frequency '2' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
	dc.b $3a, $03, $00	; Set frequency '3' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 6
	dc.b $3a, $04, $00	; Set frequency '4' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $1b	; Set frequency '6939' (octave 3 semitone 795) for channel FM 6
	dc.b $3a, $05, $00	; Set frequency '5' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $db	; Set frequency '6875' (octave 3 semitone 731) for channel FM 6
	dc.b $3a, $06, $00	; Set frequency '6' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 6
	dc.b $3a, $07, $00	; Set frequency '7' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $06, $73	; Note A-3 on channel FM 6
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $3a, $05, $03	; Set frequency '53' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $0c, $00	; Set frequency '12' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 6
	dc.b $3a, $01, $01	; Set frequency '17' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 6
	dc.b $3a, $06, $01	; Set frequency '22' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 6
	dc.b $3a, $0b, $01	; Set frequency '27' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $04, $05	; Note D-0 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 6
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 6
	dc.b $3a, $05, $02	; Set frequency '37' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 6
	dc.b $3a, $0a, $02	; Set frequency '42' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 6
	dc.b $3a, $0f, $02	; Set frequency '47' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $24, $06	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $0c	; Set volume for channel FM 4
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $26, $06	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $0c	; Set volume for channel FM 6
	dc.b $2b, $06	; Set volume for channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $2b, $0c	; Set volume for channel PSG 4
	dc.b $2a, $06	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $0c	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 6
	dc.b $3a, $04, $03	; Set frequency '52' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $de	; Set frequency '5086' (octave 2 semitone 990) for channel FM 6
	dc.b $3a, $09, $03	; Set frequency '57' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 6
	dc.b $3a, $0e, $03	; Set frequency '62' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $1e	; Set volume for channel FM 4
	dc.b $26, $18	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $1e	; Set volume for channel FM 6
	dc.b $2a, $08	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $0e	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 6
	dc.b $3a, $03, $04	; Set frequency '67' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
	dc.b $3a, $08, $04	; Set frequency '72' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $24, $24	; Set volume for channel FM 4
	dc.b $26, $24	; Set volume for channel FM 6
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e2	; Set frequency '3298' (octave 1 semitone 1250) for channel FM 6
	dc.b $3a, $0d, $04	; Set frequency '77' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $24, $2a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $2a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $2a, $0a	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $82	; Set frequency '3202' (octave 1 semitone 1154) for channel FM 6
	dc.b $3a, $02, $05	; Set frequency '82' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $22	; Set frequency '3106' (octave 1 semitone 1058) for channel FM 6
	dc.b $3a, $07, $05	; Set frequency '87' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

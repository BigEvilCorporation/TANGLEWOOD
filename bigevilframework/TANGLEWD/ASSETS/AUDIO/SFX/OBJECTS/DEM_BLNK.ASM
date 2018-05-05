	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $45, $c2	; Set instrument for channel FM 5
	dc.b $25, $05	; Set volume for channel FM 5
	dc.b $05, $33	; Note A-1 on channel FM 5
	dc.b $46, $c0	; Set instrument for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $4b, $c1	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $4a, $c1	; Set instrument for channel PSG 3
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
	dc.b $35, $0b, $c9	; Set frequency '3017' (octave 1 semitone 969) for channel FM 5
; Pattern $00, Row 2; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $59	; Set frequency '2905' (octave 1 semitone 857) for channel FM 5
	dc.b $36, $13, $83	; Set frequency '4995' (octave 2 semitone 899) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e9	; Set frequency '2793' (octave 1 semitone 745) for channel FM 5
	dc.b $36, $14, $82	; Set frequency '5250' (octave 2 semitone 1154) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
; Pattern $00, Row 5; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $35, $04, $4e	; Set frequency '1102' (octave 0 semitone 1102) for channel FM 5
; Pattern $00, Row 6; 
	dc.b $25, $19	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $de	; Set frequency '990' (octave 0 semitone 990) for channel FM 5
	dc.b $36, $13, $83	; Set frequency '4995' (octave 2 semitone 899) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $26, $2f	; Set volume for channel FM 6
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $25, $7f	; Set volume for channel FM 5
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $ff	; The End

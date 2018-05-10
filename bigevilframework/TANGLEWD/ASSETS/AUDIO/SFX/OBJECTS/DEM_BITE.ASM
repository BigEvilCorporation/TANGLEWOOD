	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $c3	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $b7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $4b, $c1	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $4a, $c1	; Set instrument for channel PSG 3
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $45, $c3	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
	dc.b $26, $10	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
	dc.b $36, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 5
	dc.b $36, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 5
	dc.b $35, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 5
	dc.b $36, $1c, $59	; Set frequency '7257' (octave 3 semitone 1113) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 5
	dc.b $36, $1c, $54	; Set frequency '7252' (octave 3 semitone 1108) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 5
	dc.b $36, $1c, $4f	; Set frequency '7247' (octave 3 semitone 1103) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 5
	dc.b $36, $1c, $4a	; Set frequency '7242' (octave 3 semitone 1098) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $36, $1c, $45	; Set frequency '7237' (octave 3 semitone 1093) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
	dc.b $36, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $36, $1c, $3b	; Set frequency '7227' (octave 3 semitone 1083) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 5
	dc.b $36, $1c, $36	; Set frequency '7222' (octave 3 semitone 1078) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 5
	dc.b $36, $1c, $31	; Set frequency '7217' (octave 3 semitone 1073) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 5
	dc.b $36, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
	dc.b $36, $1c, $27	; Set frequency '7207' (octave 3 semitone 1063) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $1c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 5
	dc.b $36, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 5
	dc.b $36, $1c, $1d	; Set frequency '7197' (octave 3 semitone 1053) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 5
	dc.b $36, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 5
	dc.b $36, $1c, $13	; Set frequency '7187' (octave 3 semitone 1043) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 5
	dc.b $36, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
	dc.b $36, $1c, $09	; Set frequency '7177' (octave 3 semitone 1033) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 5
	dc.b $36, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 5
	dc.b $36, $1b, $ff	; Set frequency '7167' (octave 3 semitone 1023) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $36, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 6
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

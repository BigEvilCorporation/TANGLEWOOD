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
	dc.b $36, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 5
	dc.b $36, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 5
	dc.b $36, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $c3	; Set frequency '8899' (octave 4 semitone 707) for channel FM 5
	dc.b $36, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 5
	dc.b $36, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $b9	; Set frequency '8889' (octave 4 semitone 697) for channel FM 5
	dc.b $36, $1c, $a5	; Set frequency '7333' (octave 3 semitone 1189) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 5
	dc.b $36, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $af	; Set frequency '8879' (octave 4 semitone 687) for channel FM 5
	dc.b $36, $1c, $9b	; Set frequency '7323' (octave 3 semitone 1179) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 5
	dc.b $36, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 5
	dc.b $36, $1c, $91	; Set frequency '7313' (octave 3 semitone 1169) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 5
	dc.b $36, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 5
	dc.b $36, $1c, $87	; Set frequency '7303' (octave 3 semitone 1159) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $1c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 5
	dc.b $36, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $91	; Set frequency '8849' (octave 4 semitone 657) for channel FM 5
	dc.b $36, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 5
	dc.b $36, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 5
	dc.b $36, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
	dc.b $36, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b9	; Set frequency '7353' (octave 3 semitone 1209) for channel FM 5
	dc.b $36, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 5
	dc.b $36, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $af	; Set frequency '7343' (octave 3 semitone 1199) for channel FM 5
	dc.b $36, $1c, $5f	; Set frequency '7263' (octave 3 semitone 1119) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
	dc.b $36, $1c, $5a	; Set frequency '7258' (octave 3 semitone 1114) for channel FM 6
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $25, $7f	; Set volume for channel FM 5
	dc.b $26, $7f	; Set volume for channel FM 6
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $2b, $0f	; Set volume for channel PSG 4
	dc.b $ff	; The End

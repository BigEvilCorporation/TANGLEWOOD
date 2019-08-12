	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e5		; Lock channel FM 5
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $46, $cf	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $b7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $cd	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $4a, $cd	; Set instrument for channel PSG 3
	dc.b $2a, $00	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 6
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $cf	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $77	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
	dc.b $26, $10	; Set volume for channel FM 6
	dc.b $2b, $09	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $2a, $07	; Set volume for channel PSG 3
	dc.b $0a, $90	; Note C-6 on channel PSG 3
	dc.b $36, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $cd	; Set frequency '8909' (octave 4 semitone 717) for channel FM 5
	dc.b $35, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 5
	dc.b $36, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $25, $10	; Set volume for channel FM 5
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 5
	dc.b $35, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 5
	dc.b $36, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $25, $11	; Set volume for channel FM 5
	dc.b $26, $12	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 5
	dc.b $35, $22, $95	; Set frequency '8853' (octave 4 semitone 661) for channel FM 5
	dc.b $36, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $25, $12	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $93	; Set frequency '8851' (octave 4 semitone 659) for channel FM 5
	dc.b $35, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 5
	dc.b $36, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 5
	dc.b $35, $22, $8b	; Set frequency '8843' (octave 4 semitone 651) for channel FM 5
	dc.b $36, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $25, $13	; Set volume for channel FM 5
	dc.b $26, $14	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $89	; Set frequency '8841' (octave 4 semitone 649) for channel FM 5
	dc.b $35, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 5
	dc.b $36, $1c, $5f	; Set frequency '7263' (octave 3 semitone 1119) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $25, $14	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
	dc.b $35, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 5
	dc.b $36, $1c, $5a	; Set frequency '7258' (octave 3 semitone 1114) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $1b		; Note off channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 5
	dc.b $36, $1c, $55	; Set frequency '7253' (octave 3 semitone 1109) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $25, $15	; Set volume for channel FM 5
	dc.b $26, $16	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 5
	dc.b $35, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 5
	dc.b $36, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $25, $16	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 5
	dc.b $35, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 5
	dc.b $36, $1c, $4b	; Set frequency '7243' (octave 3 semitone 1099) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $f4	; Set frequency '7412' (octave 3 semitone 1268) for channel FM 5
	dc.b $35, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 5
	dc.b $36, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ef	; Set frequency '7407' (octave 3 semitone 1263) for channel FM 5
	dc.b $35, $1c, $f2	; Set frequency '7410' (octave 3 semitone 1266) for channel FM 5
	dc.b $36, $1c, $41	; Set frequency '7233' (octave 3 semitone 1089) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $26, $1c	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ea	; Set frequency '7402' (octave 3 semitone 1258) for channel FM 5
	dc.b $35, $1c, $ed	; Set frequency '7405' (octave 3 semitone 1261) for channel FM 5
	dc.b $36, $1c, $3c	; Set frequency '7228' (octave 3 semitone 1084) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $25, $1c	; Set volume for channel FM 5
	dc.b $26, $21	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e5	; Set frequency '7397' (octave 3 semitone 1253) for channel FM 5
	dc.b $35, $1c, $e7	; Set frequency '7399' (octave 3 semitone 1255) for channel FM 5
	dc.b $36, $1c, $37	; Set frequency '7223' (octave 3 semitone 1079) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $25, $21	; Set volume for channel FM 5
	dc.b $26, $26	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $e0	; Set frequency '7392' (octave 3 semitone 1248) for channel FM 5
	dc.b $35, $1c, $e1	; Set frequency '7393' (octave 3 semitone 1249) for channel FM 5
	dc.b $36, $1c, $32	; Set frequency '7218' (octave 3 semitone 1074) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $25, $26	; Set volume for channel FM 5
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $db	; Set frequency '7387' (octave 3 semitone 1243) for channel FM 5
	dc.b $36, $1c, $2d	; Set frequency '7213' (octave 3 semitone 1069) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $25, $2b	; Set volume for channel FM 5
	dc.b $26, $30	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $d6	; Set frequency '7382' (octave 3 semitone 1238) for channel FM 5
	dc.b $35, $1c, $d5	; Set frequency '7381' (octave 3 semitone 1237) for channel FM 5
	dc.b $36, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $25, $30	; Set volume for channel FM 5
	dc.b $26, $35	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $d1	; Set frequency '7377' (octave 3 semitone 1233) for channel FM 5
	dc.b $35, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 5
	dc.b $36, $1c, $23	; Set frequency '7203' (octave 3 semitone 1059) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $25, $35	; Set volume for channel FM 5
	dc.b $26, $3a	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 5
	dc.b $35, $1c, $c9	; Set frequency '7369' (octave 3 semitone 1225) for channel FM 5
	dc.b $36, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $25, $3a	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $c7	; Set frequency '7367' (octave 3 semitone 1223) for channel FM 5
	dc.b $35, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 5
	dc.b $36, $1c, $19	; Set frequency '7193' (octave 3 semitone 1049) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 5
	dc.b $35, $1c, $bf	; Set frequency '7359' (octave 3 semitone 1215) for channel FM 5
	dc.b $36, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $c0	; Set frequency '7360' (octave 3 semitone 1216) for channel FM 5
; Pattern $00, Row 23; 
	dc.b $15		; Note off channel FM 5
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

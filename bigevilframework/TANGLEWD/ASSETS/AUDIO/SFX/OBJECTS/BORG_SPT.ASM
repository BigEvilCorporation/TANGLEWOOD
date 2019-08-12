	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $46, $c6	; Set instrument for channel FM 6
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $f6, $f7	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $81	; Note C-4 on channel FM 6
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $4b, $39	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $3a, $0d, $0b	; Set frequency '189' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $3a, $00, $01	; Set frequency '16' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $36, $23, $03	; Set frequency '8963' (octave 4 semitone 771) for channel FM 6
	dc.b $3a, $00, $02	; Set frequency '32' for channel PSG 3
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 6
	dc.b $3a, $00, $03	; Set frequency '48' for channel PSG 3
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 6
	dc.b $3a, $00, $04	; Set frequency '64' for channel PSG 3
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 6
	dc.b $3a, $00, $05	; Set frequency '80' for channel PSG 3
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 6
	dc.b $3a, $00, $06	; Set frequency '96' for channel PSG 3
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 6
	dc.b $3a, $00, $07	; Set frequency '112' for channel PSG 3
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 6
	dc.b $3a, $00, $08	; Set frequency '128' for channel PSG 3
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 6
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
; Pattern $00, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $14, $13	; Set frequency '5139' (octave 2 semitone 1043) for channel FM 6
	dc.b $3a, $00, $0a	; Set frequency '160' for channel PSG 3
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 6
	dc.b $3a, $00, $0b	; Set frequency '176' for channel PSG 3
; Pattern $00, Row 10; 
	dc.b $1b		; Note off channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $13, $15	; Set frequency '4885' (octave 2 semitone 789) for channel FM 6
	dc.b $3a, $00, $0c	; Set frequency '192' for channel PSG 3
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
	dc.b $3a, $00, $0d	; Set frequency '208' for channel PSG 3
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
	dc.b $3a, $00, $0e	; Set frequency '224' for channel PSG 3
; Pattern $00, Row 13; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 6
	dc.b $3a, $00, $0f	; Set frequency '240' for channel PSG 3
; Pattern $00, Row 14; 
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $9d	; Set frequency '2973' (octave 1 semitone 925) for channel FM 6
	dc.b $3a, $00, $10	; Set frequency '256' for channel PSG 3
; Pattern $00, Row 15; 
	dc.b $26, $2b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 6
	dc.b $3a, $00, $11	; Set frequency '272' for channel PSG 3
; Pattern $00, Row 16; 
	dc.b $26, $37	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
	dc.b $3a, $00, $12	; Set frequency '288' for channel PSG 3
; Pattern $00, Row 17; 
	dc.b $16		; Note off channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $13	; Set frequency '304' for channel PSG 3
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $14	; Set frequency '320' for channel PSG 3
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $15	; Set frequency '336' for channel PSG 3
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $16	; Set frequency '352' for channel PSG 3
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $17	; Set frequency '368' for channel PSG 3
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $18	; Set frequency '384' for channel PSG 3
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $19	; Set frequency '400' for channel PSG 3
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1a	; Set frequency '416' for channel PSG 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1b	; Set frequency '432' for channel PSG 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1c	; Set frequency '448' for channel PSG 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1d	; Set frequency '464' for channel PSG 3
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1e	; Set frequency '480' for channel PSG 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $1f	; Set frequency '496' for channel PSG 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $20	; Set frequency '512' for channel PSG 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $21	; Set frequency '528' for channel PSG 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $22	; Set frequency '544' for channel PSG 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $23	; Set frequency '560' for channel PSG 3
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $24	; Set frequency '576' for channel PSG 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $25	; Set frequency '592' for channel PSG 3
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $26	; Set frequency '608' for channel PSG 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $27	; Set frequency '624' for channel PSG 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $28	; Set frequency '640' for channel PSG 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $29	; Set frequency '656' for channel PSG 3
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2a	; Set frequency '672' for channel PSG 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2b	; Set frequency '688' for channel PSG 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2c	; Set frequency '704' for channel PSG 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2d	; Set frequency '720' for channel PSG 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2e	; Set frequency '736' for channel PSG 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $2f	; Set frequency '752' for channel PSG 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $30	; Set frequency '768' for channel PSG 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $31	; Set frequency '784' for channel PSG 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $32	; Set frequency '800' for channel PSG 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $33	; Set frequency '816' for channel PSG 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $34	; Set frequency '832' for channel PSG 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $35	; Set frequency '848' for channel PSG 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $35	; Set frequency '851' for channel PSG 3
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $ff	; The End

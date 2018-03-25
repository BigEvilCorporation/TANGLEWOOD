	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $40, $22	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $00, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $00, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $00, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $00, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $22	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $00, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $00, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $00, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $00, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $22	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $8f	; Note G-4 on channel FM 3
; Pattern $00, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $00, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $00, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $00, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $00, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $00, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $00, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $00, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $00, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $00, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $00, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $00, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $00, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $00, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $00, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $00, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $00, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $00, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $00, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $00, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $00, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $00, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $00, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $00, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $00, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $00, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $00, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $00, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $00, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $00, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $00, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $00, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
; Pattern $00, Row 56; 
; Pattern $00, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $00, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $00, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $00, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $00, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $00, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $00, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $01, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $23	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $75	; Note A#3 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $01, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $01, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $01, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $01, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $23	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $01, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $01, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $01, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $01, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $23	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $8b	; Note F-4 on channel FM 3
; Pattern $01, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $01, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $01, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $01, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $01, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $01, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $01, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $01, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $01, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $01, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $01, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $01, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $01, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $01, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $01, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $01, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $01, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $01, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $01, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $01, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $01, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $01, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $01, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $01, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $01, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $01, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $01, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $01, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $01, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $01, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $01, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $01, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
; Pattern $01, Row 55; 
; Pattern $01, Row 56; 
; Pattern $01, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $01, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $01, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $01, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $01, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $01, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $01, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $02, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $22	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $02, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $02, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $02, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $02, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $22	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $ab	; Note F-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $02, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $02, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $02, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $02, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $22	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $95	; Note A#4 on channel FM 3
; Pattern $02, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $02, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $02, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $02, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $02, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $02, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $02, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $02, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $02, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $02, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $02, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $02, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $02, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $02, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $02, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $02, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $02, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $02, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $02, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $02, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $02, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $02, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $02, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $02, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $02, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $02, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $02, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $02, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $02, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $02, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $02, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $02, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
; Pattern $02, Row 55; 
; Pattern $02, Row 56; 
; Pattern $02, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $02, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $02, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $02, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $02, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $02, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $02, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $03, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $23	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $75	; Note A#3 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $03, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $03, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $03, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $03, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $23	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $af	; Note G-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $03, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $03, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $03, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $03, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $23	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $03, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $03, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $03, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $03, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $03, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $03, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $03, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $03, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $03, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $03, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $03, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $03, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $03, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $03, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $03, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $03, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $03, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $03, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $03, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $03, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $03, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $03, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $03, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $03, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $03, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $03, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $03, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $03, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $03, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $03, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $03, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $03, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
; Pattern $03, Row 55; 
; Pattern $03, Row 56; 
; Pattern $03, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $03, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $03, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $03, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $03, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $03, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $03, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $04, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $22	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $04, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $04, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $04, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $04, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $22	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $04, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $04, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $04, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $04, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $22	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $04, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $04, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $04, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $04, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $04, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $04, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $04, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $04, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $04, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $04, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $04, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $04, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $04, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $04, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $04, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $04, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $04, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $04, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $04, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $04, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $04, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $04, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $04, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $04, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $04, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $04, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $04, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $04, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $04, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $04, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $04, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $04, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
; Pattern $04, Row 55; 
; Pattern $04, Row 56; 
; Pattern $04, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $04, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $04, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $04, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $04, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $04, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $04, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $05, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $23	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $75	; Note A#3 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $05, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $05, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $05, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $05, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $23	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $05, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $05, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $05, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $05, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $23	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
; Pattern $05, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $05, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $05, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $05, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $05, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $05, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $05, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $05, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $05, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $05, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $05, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $05, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $05, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $05, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $05, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $05, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $05, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $05, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $05, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $05, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $05, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $05, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $05, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $05, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $05, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $05, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $05, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $05, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $05, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $05, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $05, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $05, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
; Pattern $05, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $05, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $05, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $05, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $05, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $05, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $05, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $06, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $22	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $06, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $06, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $06, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $06, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $22	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d2	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $a5	; Note D-5 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $06, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $06, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $06, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $06, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $22	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $ab	; Note F-5 on channel FM 3
; Pattern $06, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $06, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $06, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $06, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $06, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $06, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $06, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $06, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $06, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $06, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $06, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $06, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $06, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $06, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $06, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $06, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $06, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $06, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $06, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $06, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $06, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $06, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $06, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $06, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $06, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $06, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $06, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $06, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $06, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $06, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $06, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $06, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
; Pattern $06, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $06, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $06, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $06, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $06, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $06, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $06, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
; Pattern $07, Row 0; 
	dc.b $fe, $04	; Delay
	dc.b $40, $23	; Set instrument for channel FM 1
	dc.b $20, $2f	; Set volume for channel FM 1
	dc.b $f0, $d3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6b	; Note F-3 on channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
; Pattern $07, Row 1; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $1d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $07, Row 2; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2d	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $07, Row 3; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $07, Row 4; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2b	; Set volume for channel FM 1
	dc.b $41, $23	; Set instrument for channel FM 2
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $f1, $d3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $07, Row 5; 
	dc.b $fe, $04	; Delay
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $2e	; Set volume for channel FM 2
	dc.b $22, $1d	; Set volume for channel FM 3
; Pattern $07, Row 6; 
	dc.b $fe, $04	; Delay
	dc.b $20, $28	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $07, Row 7; 
	dc.b $fe, $04	; Delay
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2c	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $07, Row 8; 
	dc.b $fe, $04	; Delay
	dc.b $20, $26	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $42, $23	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $a1	; Note C-5 on channel FM 3
; Pattern $07, Row 9; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2e	; Set volume for channel FM 3
; Pattern $07, Row 10; 
	dc.b $fe, $04	; Delay
	dc.b $20, $24	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
; Pattern $07, Row 11; 
	dc.b $fe, $04	; Delay
	dc.b $20, $22	; Set volume for channel FM 1
	dc.b $21, $27	; Set volume for channel FM 2
	dc.b $22, $2c	; Set volume for channel FM 3
; Pattern $07, Row 12; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
; Pattern $07, Row 13; 
	dc.b $fe, $04	; Delay
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
; Pattern $07, Row 14; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $24	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
; Pattern $07, Row 15; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $22	; Set volume for channel FM 2
	dc.b $22, $27	; Set volume for channel FM 3
; Pattern $07, Row 16; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
; Pattern $07, Row 17; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1b	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
; Pattern $07, Row 18; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $24	; Set volume for channel FM 3
; Pattern $07, Row 19; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $22	; Set volume for channel FM 3
; Pattern $07, Row 20; 
	dc.b $fe, $04	; Delay
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
; Pattern $07, Row 21; 
	dc.b $fe, $04	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
; Pattern $07, Row 22; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1a	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
; Pattern $07, Row 23; 
	dc.b $fe, $04	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
; Pattern $07, Row 24; 
	dc.b $fe, $04	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $18	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
; Pattern $07, Row 25; 
	dc.b $fe, $04	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
; Pattern $07, Row 26; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $1a	; Set volume for channel FM 3
; Pattern $07, Row 27; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
; Pattern $07, Row 28; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $18	; Set volume for channel FM 3
; Pattern $07, Row 29; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
; Pattern $07, Row 30; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
; Pattern $07, Row 31; 
	dc.b $fe, $04	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
; Pattern $07, Row 32; 
	dc.b $fe, $04	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
; Pattern $07, Row 33; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
; Pattern $07, Row 34; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
; Pattern $07, Row 35; 
	dc.b $fe, $04	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
; Pattern $07, Row 36; 
	dc.b $fe, $04	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
; Pattern $07, Row 37; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0d	; Set volume for channel FM 3
; Pattern $07, Row 38; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0c	; Set volume for channel FM 3
; Pattern $07, Row 39; 
	dc.b $fe, $04	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
; Pattern $07, Row 40; 
	dc.b $fe, $04	; Delay
	dc.b $22, $09	; Set volume for channel FM 3
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
; Pattern $07, Row 57; 
	dc.b $fe, $44	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
; Pattern $07, Row 58; 
	dc.b $fe, $04	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
; Pattern $07, Row 59; 
	dc.b $fe, $04	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
; Pattern $07, Row 60; 
	dc.b $fe, $04	; Delay
	dc.b $20, $19	; Set volume for channel FM 1
; Pattern $07, Row 61; 
	dc.b $fe, $04	; Delay
	dc.b $20, $1d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
; Pattern $07, Row 62; 
	dc.b $fe, $04	; Delay
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
; Pattern $07, Row 63; 
	dc.b $fe, $04	; Delay
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $fe, $04	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

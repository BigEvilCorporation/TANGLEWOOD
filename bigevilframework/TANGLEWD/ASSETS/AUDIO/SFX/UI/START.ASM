	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e0		; Lock channel FM 1
	dc.b $e1		; Lock channel FM 2
	dc.b $e2		; Lock channel FM 3
	dc.b $e4		; Lock channel FM 4
	dc.b $e5		; Lock channel FM 5
	dc.b $e8		; Lock channel PSG 1
	dc.b $e9		; Lock channel PSG 2
	dc.b $ea		; Lock channel PSG 3
; Pattern $00, Row 0; 
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $40, $b2	; Set instrument for channel FM 1
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $f0, $53	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $73	; Note A-3 on channel FM 1
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $b2	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $d3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $45	; Note D-2 on channel FM 5
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $49, $b1	; Set instrument for channel PSG 2
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $20	; Note E-1 on channel PSG 2
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
	dc.b $fe, $02	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $41, $b2	; Set instrument for channel FM 2
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $93	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $89	; Note E-4 on channel FM 2
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $4a, $b1	; Set instrument for channel PSG 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $02	; Delay
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $42, $b2	; Set instrument for channel FM 3
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $d3	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $93	; Note A-4 on channel FM 3
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $48, $b1	; Set instrument for channel PSG 1
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $32	; Note C#2 on channel PSG 1
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
	dc.b $fe, $02	; Delay
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $44, $b2	; Set instrument for channel FM 4
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $f4, $53	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a5	; Note D-5 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0a	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $20, $0c	; Set volume for channel FM 1
	dc.b $21, $0c	; Set volume for channel FM 2
	dc.b $22, $0c	; Set volume for channel FM 3
	dc.b $24, $0c	; Set volume for channel FM 4
	dc.b $25, $10	; Set volume for channel FM 5
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $25, $11	; Set volume for channel FM 5
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $25, $12	; Set volume for channel FM 5
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $20, $0e	; Set volume for channel FM 1
	dc.b $21, $0e	; Set volume for channel FM 2
	dc.b $22, $0e	; Set volume for channel FM 3
	dc.b $24, $0e	; Set volume for channel FM 4
	dc.b $25, $13	; Set volume for channel FM 5
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $25, $14	; Set volume for channel FM 5
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $25, $15	; Set volume for channel FM 5
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $20, $10	; Set volume for channel FM 1
	dc.b $21, $10	; Set volume for channel FM 2
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $24, $10	; Set volume for channel FM 4
	dc.b $25, $16	; Set volume for channel FM 5
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $11	; Set volume for channel FM 2
	dc.b $22, $11	; Set volume for channel FM 3
	dc.b $24, $11	; Set volume for channel FM 4
	dc.b $25, $17	; Set volume for channel FM 5
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $25, $18	; Set volume for channel FM 5
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $20, $12	; Set volume for channel FM 1
	dc.b $21, $12	; Set volume for channel FM 2
	dc.b $22, $12	; Set volume for channel FM 3
	dc.b $24, $12	; Set volume for channel FM 4
	dc.b $25, $19	; Set volume for channel FM 5
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1a	; Set volume for channel FM 5
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $13	; Set volume for channel FM 2
	dc.b $22, $13	; Set volume for channel FM 3
	dc.b $24, $13	; Set volume for channel FM 4
	dc.b $25, $1b	; Set volume for channel FM 5
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $20, $14	; Set volume for channel FM 1
	dc.b $21, $14	; Set volume for channel FM 2
	dc.b $22, $14	; Set volume for channel FM 3
	dc.b $24, $14	; Set volume for channel FM 4
	dc.b $25, $1c	; Set volume for channel FM 5
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $25, $1d	; Set volume for channel FM 5
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $15	; Set volume for channel FM 2
	dc.b $22, $15	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $25, $1e	; Set volume for channel FM 5
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $20, $16	; Set volume for channel FM 1
	dc.b $21, $16	; Set volume for channel FM 2
	dc.b $22, $16	; Set volume for channel FM 3
	dc.b $24, $16	; Set volume for channel FM 4
	dc.b $25, $1f	; Set volume for channel FM 5
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
	dc.b $fe, $02	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $02	; Delay
	dc.b $20, $16	; Set volume for channel FM 1
	dc.b $21, $16	; Set volume for channel FM 2
	dc.b $22, $16	; Set volume for channel FM 3
	dc.b $24, $16	; Set volume for channel FM 4
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
	dc.b $fe, $02	; Delay
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
	dc.b $fe, $02	; Delay
	dc.b $20, $1f	; Set volume for channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $22, $1f	; Set volume for channel FM 3
	dc.b $24, $1f	; Set volume for channel FM 4
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
	dc.b $fe, $0c	; Delay
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
	dc.b $fe, $04	; Delay
	dc.b $ff	; The End

	dc.b $f8, $22, $00	; Set FM register 34 to value 0
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $10		; Note off channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $41, $27	; Set instrument for channel FM 2
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
; Pattern $00, Row 8; 
	dc.b $fe, $10	; Delay
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $42, $24	; Set instrument for channel FM 3
	dc.b $22, $10	; Set volume for channel FM 3
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
; Pattern $00, Row 12; 
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
; Pattern $00, Row 24; 
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
; Pattern $00, Row 28; 
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
; Pattern $00, Row 40; 
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
; Pattern $00, Row 44; 
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $01, Row 0; 
	dc.b $fe, $50	; Delay
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $22, $15	; Set volume for channel FM 3
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
	dc.b $fe, $06	; Delay
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $01, Row 8; 
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $10	; Delay
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $24	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $40, $27	; Set instrument for channel FM 1
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $45, $24	; Set instrument for channel FM 5
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
; Pattern $01, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $02, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $03, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
; Pattern $03, Row 39; 
; Pattern $03, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
; Pattern $03, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $04, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $04, Row 1; 
; Pattern $04, Row 2; 
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $04, $67	; Note D#3 on channel FM 4
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $46, $24	; Set instrument for channel FM 6
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
; Pattern $04, Row 27; 
; Pattern $04, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $04, Row 33; 
; Pattern $04, Row 34; 
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
; Pattern $04, Row 47; 
; Pattern $05, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $05, Row 1; 
; Pattern $05, Row 2; 
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
; Pattern $05, Row 47; 
; Pattern $06, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
; Pattern $06, Row 47; 
; Pattern $07, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
; Pattern $07, Row 27; 
; Pattern $07, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
; Pattern $07, Row 47; 
; Pattern $08, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $08, Row 1; 
; Pattern $08, Row 2; 
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $05, $67	; Note D#3 on channel FM 5
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $67	; Note D#3 on channel FM 6
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $08, Row 21; 
; Pattern $08, Row 22; 
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
; Pattern $08, Row 27; 
; Pattern $08, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $08, Row 29; 
; Pattern $08, Row 30; 
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $08, Row 33; 
; Pattern $08, Row 34; 
; Pattern $08, Row 35; 
; Pattern $08, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $08, Row 41; 
; Pattern $08, Row 42; 
; Pattern $08, Row 43; 
; Pattern $08, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $75	; Note A#3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $08, Row 45; 
; Pattern $08, Row 46; 
; Pattern $08, Row 47; 
; Pattern $09, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $09, Row 1; 
; Pattern $09, Row 2; 
; Pattern $09, Row 3; 
; Pattern $09, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $09, Row 5; 
; Pattern $09, Row 6; 
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $09, Row 9; 
; Pattern $09, Row 10; 
; Pattern $09, Row 11; 
; Pattern $09, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $09, Row 13; 
; Pattern $09, Row 14; 
; Pattern $09, Row 15; 
; Pattern $09, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $09, Row 17; 
; Pattern $09, Row 18; 
; Pattern $09, Row 19; 
; Pattern $09, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $09, Row 21; 
; Pattern $09, Row 22; 
; Pattern $09, Row 23; 
; Pattern $09, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $09, Row 25; 
; Pattern $09, Row 26; 
; Pattern $09, Row 27; 
; Pattern $09, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $09, Row 29; 
; Pattern $09, Row 30; 
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $09, Row 33; 
; Pattern $09, Row 34; 
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $09, Row 41; 
; Pattern $09, Row 42; 
; Pattern $09, Row 43; 
; Pattern $09, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
; Pattern $09, Row 47; 
; Pattern $0a, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0a, Row 1; 
; Pattern $0a, Row 2; 
; Pattern $0a, Row 3; 
; Pattern $0a, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $0a, Row 5; 
; Pattern $0a, Row 6; 
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $0a, Row 9; 
; Pattern $0a, Row 10; 
; Pattern $0a, Row 11; 
; Pattern $0a, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $0a, Row 13; 
; Pattern $0a, Row 14; 
; Pattern $0a, Row 15; 
; Pattern $0a, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0a, Row 17; 
; Pattern $0a, Row 18; 
; Pattern $0a, Row 19; 
; Pattern $0a, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0a, Row 21; 
; Pattern $0a, Row 22; 
; Pattern $0a, Row 23; 
; Pattern $0a, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0a, Row 25; 
; Pattern $0a, Row 26; 
; Pattern $0a, Row 27; 
; Pattern $0a, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0a, Row 29; 
; Pattern $0a, Row 30; 
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $0a, Row 33; 
; Pattern $0a, Row 34; 
; Pattern $0a, Row 35; 
; Pattern $0a, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0a, Row 41; 
; Pattern $0a, Row 42; 
; Pattern $0a, Row 43; 
; Pattern $0a, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $75	; Note A#3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0a, Row 45; 
; Pattern $0a, Row 46; 
; Pattern $0a, Row 47; 
; Pattern $0b, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0b, Row 1; 
; Pattern $0b, Row 2; 
; Pattern $0b, Row 3; 
; Pattern $0b, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $0b, Row 5; 
; Pattern $0b, Row 6; 
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $0b, Row 9; 
; Pattern $0b, Row 10; 
; Pattern $0b, Row 11; 
; Pattern $0b, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $0b, Row 13; 
; Pattern $0b, Row 14; 
; Pattern $0b, Row 15; 
; Pattern $0b, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0b, Row 17; 
; Pattern $0b, Row 18; 
; Pattern $0b, Row 19; 
; Pattern $0b, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0b, Row 21; 
; Pattern $0b, Row 22; 
; Pattern $0b, Row 23; 
; Pattern $0b, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0b, Row 25; 
; Pattern $0b, Row 26; 
; Pattern $0b, Row 27; 
; Pattern $0b, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0b, Row 29; 
; Pattern $0b, Row 30; 
; Pattern $0b, Row 31; 
; Pattern $0b, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $0b, Row 33; 
; Pattern $0b, Row 34; 
; Pattern $0b, Row 35; 
; Pattern $0b, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0b, Row 37; 
; Pattern $0b, Row 38; 
; Pattern $0b, Row 39; 
; Pattern $0b, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0b, Row 41; 
; Pattern $0b, Row 42; 
; Pattern $0b, Row 43; 
; Pattern $0b, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0b, Row 45; 
; Pattern $0b, Row 46; 
; Pattern $0b, Row 47; 
; Pattern $0c, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0c, Row 1; 
; Pattern $0c, Row 2; 
; Pattern $0c, Row 3; 
; Pattern $0c, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
; Pattern $0c, Row 7; 
; Pattern $0c, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $0c, Row 9; 
; Pattern $0c, Row 10; 
; Pattern $0c, Row 11; 
; Pattern $0c, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
; Pattern $0c, Row 15; 
; Pattern $0c, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0c, Row 17; 
; Pattern $0c, Row 18; 
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0c, Row 21; 
; Pattern $0c, Row 22; 
; Pattern $0c, Row 23; 
; Pattern $0c, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0c, Row 25; 
; Pattern $0c, Row 26; 
; Pattern $0c, Row 27; 
; Pattern $0c, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
; Pattern $0c, Row 31; 
; Pattern $0c, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $0c, Row 33; 
; Pattern $0c, Row 34; 
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0c, Row 41; 
; Pattern $0c, Row 42; 
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $75	; Note A#3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
; Pattern $0c, Row 47; 
; Pattern $0d, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $0d, Row 1; 
; Pattern $0d, Row 2; 
; Pattern $0d, Row 3; 
; Pattern $0d, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0d, Row 5; 
; Pattern $0d, Row 6; 
; Pattern $0d, Row 7; 
; Pattern $0d, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $06, $67	; Note D#3 on channel FM 6
; Pattern $0d, Row 9; 
; Pattern $0d, Row 10; 
; Pattern $0d, Row 11; 
; Pattern $0d, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $65	; Note D-3 on channel FM 5
; Pattern $0d, Row 13; 
; Pattern $0d, Row 14; 
; Pattern $0d, Row 15; 
; Pattern $0d, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0d, Row 17; 
; Pattern $0d, Row 18; 
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0d, Row 21; 
; Pattern $0d, Row 22; 
; Pattern $0d, Row 23; 
; Pattern $0d, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0d, Row 25; 
; Pattern $0d, Row 26; 
; Pattern $0d, Row 27; 
; Pattern $0d, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0d, Row 29; 
; Pattern $0d, Row 30; 
; Pattern $0d, Row 31; 
; Pattern $0d, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $0d, Row 33; 
; Pattern $0d, Row 34; 
; Pattern $0d, Row 35; 
; Pattern $0d, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $67	; Note D#3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
; Pattern $0d, Row 39; 
; Pattern $0d, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0d, Row 41; 
; Pattern $0d, Row 42; 
; Pattern $0d, Row 43; 
; Pattern $0d, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $87	; Note D#4 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $0d, Row 45; 
; Pattern $0d, Row 46; 
; Pattern $0d, Row 47; 
; Pattern $0e, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $0e, Row 1; 
; Pattern $0e, Row 2; 
; Pattern $0e, Row 3; 
; Pattern $0e, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0e, Row 5; 
; Pattern $0e, Row 6; 
; Pattern $0e, Row 7; 
; Pattern $0e, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $06, $67	; Note D#3 on channel FM 6
; Pattern $0e, Row 9; 
; Pattern $0e, Row 10; 
; Pattern $0e, Row 11; 
; Pattern $0e, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $65	; Note D-3 on channel FM 5
; Pattern $0e, Row 13; 
; Pattern $0e, Row 14; 
; Pattern $0e, Row 15; 
; Pattern $0e, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0e, Row 17; 
; Pattern $0e, Row 18; 
; Pattern $0e, Row 19; 
; Pattern $0e, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0e, Row 21; 
; Pattern $0e, Row 22; 
; Pattern $0e, Row 23; 
; Pattern $0e, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0e, Row 25; 
; Pattern $0e, Row 26; 
; Pattern $0e, Row 27; 
; Pattern $0e, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0e, Row 29; 
; Pattern $0e, Row 30; 
; Pattern $0e, Row 31; 
; Pattern $0e, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $55	; Note A#2 on channel FM 6
; Pattern $0e, Row 33; 
; Pattern $0e, Row 34; 
; Pattern $0e, Row 35; 
; Pattern $0e, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $67	; Note D#3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0e, Row 37; 
; Pattern $0e, Row 38; 
; Pattern $0e, Row 39; 
; Pattern $0e, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $0e, Row 41; 
; Pattern $0e, Row 42; 
; Pattern $0e, Row 43; 
; Pattern $0e, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $75	; Note A#3 on channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $04, $6b	; Note F-3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $0e, Row 45; 
; Pattern $0e, Row 46; 
; Pattern $0e, Row 47; 
; Pattern $0f, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $0f, Row 1; 
; Pattern $0f, Row 2; 
; Pattern $0f, Row 3; 
; Pattern $0f, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $75	; Note A#3 on channel FM 6
; Pattern $0f, Row 5; 
; Pattern $0f, Row 6; 
; Pattern $0f, Row 7; 
; Pattern $0f, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $0f, Row 9; 
; Pattern $0f, Row 10; 
; Pattern $0f, Row 11; 
; Pattern $0f, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
; Pattern $0f, Row 13; 
; Pattern $0f, Row 14; 
; Pattern $0f, Row 15; 
; Pattern $0f, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 17; 
; Pattern $0f, Row 18; 
; Pattern $0f, Row 19; 
; Pattern $0f, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0f, Row 21; 
; Pattern $0f, Row 22; 
; Pattern $0f, Row 23; 
; Pattern $0f, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 25; 
; Pattern $0f, Row 26; 
; Pattern $0f, Row 27; 
; Pattern $0f, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0f, Row 29; 
; Pattern $0f, Row 30; 
; Pattern $0f, Row 31; 
; Pattern $0f, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $0f, Row 33; 
; Pattern $0f, Row 34; 
; Pattern $0f, Row 35; 
; Pattern $0f, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $22, $05	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
; Pattern $0f, Row 37; 
; Pattern $0f, Row 38; 
; Pattern $0f, Row 39; 
; Pattern $0f, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $0f, Row 41; 
; Pattern $0f, Row 42; 
; Pattern $0f, Row 43; 
; Pattern $0f, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $06, $6b	; Note F-3 on channel FM 6
; Pattern $0f, Row 45; 
; Pattern $0f, Row 46; 
; Pattern $0f, Row 47; 
; Pattern $10, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 1; 
; Pattern $10, Row 2; 
; Pattern $10, Row 3; 
; Pattern $10, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $10, Row 5; 
; Pattern $10, Row 6; 
; Pattern $10, Row 7; 
; Pattern $10, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $67	; Note D#3 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4f	; Note G-2 on channel FM 5
; Pattern $10, Row 9; 
; Pattern $10, Row 10; 
; Pattern $10, Row 11; 
; Pattern $10, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $10, Row 13; 
; Pattern $10, Row 14; 
; Pattern $10, Row 15; 
; Pattern $10, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $10, Row 17; 
; Pattern $10, Row 18; 
; Pattern $10, Row 19; 
; Pattern $10, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $10, Row 21; 
; Pattern $10, Row 22; 
; Pattern $10, Row 23; 
; Pattern $10, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
; Pattern $10, Row 27; 
; Pattern $10, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $61	; Note C-3 on channel FM 6
; Pattern $10, Row 29; 
; Pattern $10, Row 30; 
; Pattern $10, Row 31; 
; Pattern $10, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $10, Row 33; 
; Pattern $10, Row 34; 
; Pattern $10, Row 35; 
; Pattern $10, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $10, Row 37; 
; Pattern $10, Row 38; 
; Pattern $10, Row 39; 
; Pattern $10, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
; Pattern $10, Row 43; 
; Pattern $10, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $10, Row 45; 
; Pattern $10, Row 46; 
; Pattern $10, Row 47; 
; Pattern $11, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $11, Row 1; 
; Pattern $11, Row 2; 
; Pattern $11, Row 3; 
; Pattern $11, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $11, Row 5; 
; Pattern $11, Row 6; 
; Pattern $11, Row 7; 
; Pattern $11, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $11, Row 9; 
; Pattern $11, Row 10; 
; Pattern $11, Row 11; 
; Pattern $11, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $11, Row 13; 
; Pattern $11, Row 14; 
; Pattern $11, Row 15; 
; Pattern $11, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $11, Row 17; 
; Pattern $11, Row 18; 
; Pattern $11, Row 19; 
; Pattern $11, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $06, $65	; Note D-3 on channel FM 6
; Pattern $11, Row 21; 
; Pattern $11, Row 22; 
; Pattern $11, Row 23; 
; Pattern $11, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $11, Row 25; 
; Pattern $11, Row 26; 
; Pattern $11, Row 27; 
; Pattern $11, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $11, Row 29; 
; Pattern $11, Row 30; 
; Pattern $11, Row 31; 
; Pattern $11, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $11, Row 33; 
; Pattern $11, Row 34; 
; Pattern $11, Row 35; 
; Pattern $11, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $11, Row 37; 
; Pattern $11, Row 38; 
; Pattern $11, Row 39; 
; Pattern $11, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $11, Row 41; 
; Pattern $11, Row 42; 
; Pattern $11, Row 43; 
; Pattern $11, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $40	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4b	; Note F-2 on channel FM 6
; Pattern $11, Row 45; 
; Pattern $11, Row 46; 
; Pattern $11, Row 47; 
; Pattern $12, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $12, Row 1; 
; Pattern $12, Row 2; 
; Pattern $12, Row 3; 
; Pattern $12, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $12, Row 5; 
; Pattern $12, Row 6; 
; Pattern $12, Row 7; 
; Pattern $12, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $67	; Note D#3 on channel FM 4
; Pattern $12, Row 9; 
; Pattern $12, Row 10; 
; Pattern $12, Row 11; 
; Pattern $12, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $26, $1f	; Set volume for channel FM 6
	dc.b $f6, $80	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $12, Row 13; 
; Pattern $12, Row 14; 
; Pattern $12, Row 15; 
; Pattern $12, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $12, Row 17; 
; Pattern $12, Row 18; 
; Pattern $12, Row 19; 
; Pattern $12, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
; Pattern $12, Row 21; 
; Pattern $12, Row 22; 
; Pattern $12, Row 23; 
; Pattern $12, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
; Pattern $12, Row 27; 
; Pattern $12, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4f	; Note G-2 on channel FM 4
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $12, Row 29; 
; Pattern $12, Row 30; 
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $00, $61	; Note C-3 on channel FM 1
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $12, Row 33; 
; Pattern $12, Row 34; 
; Pattern $12, Row 35; 
; Pattern $12, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $06, $4f	; Note G-2 on channel FM 6
; Pattern $12, Row 37; 
; Pattern $12, Row 38; 
; Pattern $12, Row 39; 
; Pattern $12, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $12, Row 41; 
; Pattern $12, Row 42; 
; Pattern $12, Row 43; 
; Pattern $12, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $12, Row 45; 
; Pattern $12, Row 46; 
; Pattern $12, Row 47; 
; Pattern $13, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $13, Row 1; 
; Pattern $13, Row 2; 
; Pattern $13, Row 3; 
; Pattern $13, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $13, Row 5; 
; Pattern $13, Row 6; 
; Pattern $13, Row 7; 
; Pattern $13, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $13, Row 9; 
; Pattern $13, Row 10; 
; Pattern $13, Row 11; 
; Pattern $13, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $13, Row 13; 
; Pattern $13, Row 14; 
; Pattern $13, Row 15; 
; Pattern $13, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $13, Row 17; 
; Pattern $13, Row 18; 
; Pattern $13, Row 19; 
; Pattern $13, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $13, Row 21; 
; Pattern $13, Row 22; 
; Pattern $13, Row 23; 
; Pattern $13, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $13, Row 25; 
; Pattern $13, Row 26; 
; Pattern $13, Row 27; 
; Pattern $13, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $13, Row 29; 
; Pattern $13, Row 30; 
; Pattern $13, Row 31; 
; Pattern $13, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $13, Row 33; 
; Pattern $13, Row 34; 
; Pattern $13, Row 35; 
; Pattern $13, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $13, Row 37; 
; Pattern $13, Row 38; 
; Pattern $13, Row 39; 
; Pattern $13, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $13, Row 41; 
; Pattern $13, Row 42; 
; Pattern $13, Row 43; 
; Pattern $13, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $13, Row 45; 
; Pattern $13, Row 46; 
; Pattern $13, Row 47; 
; Pattern $14, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
; Pattern $14, Row 1; 
; Pattern $14, Row 2; 
; Pattern $14, Row 3; 
; Pattern $14, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $05, $4b	; Note F-2 on channel FM 5
; Pattern $14, Row 5; 
; Pattern $14, Row 6; 
; Pattern $14, Row 7; 
; Pattern $14, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $14, Row 9; 
; Pattern $14, Row 10; 
; Pattern $14, Row 11; 
; Pattern $14, Row 12; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $14, Row 13; 
; Pattern $14, Row 14; 
; Pattern $14, Row 15; 
; Pattern $14, Row 16; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $14, Row 17; 
; Pattern $14, Row 18; 
; Pattern $14, Row 19; 
; Pattern $14, Row 20; 
	dc.b $fe, $08	; Delay
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $14, Row 21; 
; Pattern $14, Row 22; 
; Pattern $14, Row 23; 
; Pattern $14, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $14, Row 25; 
; Pattern $14, Row 26; 
; Pattern $14, Row 27; 
; Pattern $14, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $14, Row 29; 
; Pattern $14, Row 30; 
; Pattern $14, Row 31; 
; Pattern $14, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $80	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $14, Row 33; 
; Pattern $14, Row 34; 
; Pattern $14, Row 35; 
; Pattern $14, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $14, Row 37; 
; Pattern $14, Row 38; 
; Pattern $14, Row 39; 
; Pattern $14, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $14, Row 41; 
; Pattern $14, Row 42; 
; Pattern $14, Row 43; 
; Pattern $14, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $14, Row 45; 
; Pattern $14, Row 46; 
; Pattern $14, Row 47; 
; Pattern $15, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
; Pattern $15, Row 1; 
; Pattern $15, Row 2; 
; Pattern $15, Row 3; 
; Pattern $15, Row 4; 
; Pattern $15, Row 5; 
; Pattern $15, Row 6; 
; Pattern $15, Row 7; 
; Pattern $15, Row 8; 
; Pattern $15, Row 9; 
; Pattern $15, Row 10; 
; Pattern $15, Row 11; 
; Pattern $15, Row 12; 
	dc.b $fe, $18	; Delay
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
; Pattern $15, Row 13; 
; Pattern $15, Row 14; 
; Pattern $15, Row 15; 
; Pattern $15, Row 16; 
; Pattern $15, Row 17; 
; Pattern $15, Row 18; 
; Pattern $15, Row 19; 
; Pattern $15, Row 20; 
	dc.b $fe, $10	; Delay
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $61	; Note C-3 on channel FM 4
; Pattern $15, Row 21; 
; Pattern $15, Row 22; 
; Pattern $15, Row 23; 
; Pattern $15, Row 24; 
	dc.b $fe, $08	; Delay
	dc.b $20, $05	; Set volume for channel FM 1
	dc.b $00, $55	; Note A#2 on channel FM 1
; Pattern $15, Row 25; 
; Pattern $15, Row 26; 
; Pattern $15, Row 27; 
; Pattern $15, Row 28; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
; Pattern $15, Row 29; 
; Pattern $15, Row 30; 
; Pattern $15, Row 31; 
; Pattern $15, Row 32; 
	dc.b $fe, $08	; Delay
	dc.b $02, $55	; Note A#2 on channel FM 3
; Pattern $15, Row 33; 
; Pattern $15, Row 34; 
; Pattern $15, Row 35; 
; Pattern $15, Row 36; 
	dc.b $fe, $08	; Delay
	dc.b $21, $02	; Set volume for channel FM 2
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $15, Row 37; 
; Pattern $15, Row 38; 
; Pattern $15, Row 39; 
; Pattern $15, Row 40; 
	dc.b $fe, $08	; Delay
	dc.b $f5, $80	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $55	; Note A#2 on channel FM 5
; Pattern $15, Row 41; 
; Pattern $15, Row 42; 
; Pattern $15, Row 43; 
; Pattern $15, Row 44; 
	dc.b $fe, $08	; Delay
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $f4, $40	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $4b	; Note F-2 on channel FM 4
; Pattern $15, Row 45; 
; Pattern $15, Row 46; 
; Pattern $15, Row 47; 
; Pattern $16, Row 0; 
	dc.b $fe, $08	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $6b	; Note F-3 on channel FM 5
; Pattern $16, Row 1; 
; Pattern $16, Row 2; 
; Pattern $16, Row 3; 
; Pattern $16, Row 4; 
	dc.b $fe, $08	; Delay
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $27	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $6b	; Note F-3 on channel FM 3
; Pattern $16, Row 5; 
; Pattern $16, Row 6; 
; Pattern $16, Row 7; 
; Pattern $16, Row 8; 
	dc.b $fe, $08	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $04, $67	; Note D#3 on channel FM 4
; Pattern $16, Row 9; 
; Pattern $16, Row 10; 
; Pattern $16, Row 11; 
; Pattern $16, Row 12; 
; Pattern $16, Row 13; 
; Pattern $16, Row 14; 
; Pattern $16, Row 15; 
; Pattern $16, Row 16; 
	dc.b $fe, $10	; Delay
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $05, $67	; Note D#3 on channel FM 5
; Pattern $16, Row 17; 
; Pattern $16, Row 18; 
; Pattern $16, Row 19; 
; Pattern $16, Row 20; 
; Pattern $16, Row 21; 
; Pattern $16, Row 22; 
; Pattern $16, Row 23; 
; Pattern $16, Row 24; 
	dc.b $fe, $10	; Delay
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $41, $24	; Set instrument for channel FM 2
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $42, $24	; Set instrument for channel FM 3
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $67	; Note D#3 on channel FM 3
; Pattern $16, Row 25; 
; Pattern $16, Row 26; 
; Pattern $16, Row 27; 
; Pattern $16, Row 28; 
; Pattern $16, Row 29; 
; Pattern $16, Row 30; 
; Pattern $16, Row 31; 
; Pattern $16, Row 32; 
	dc.b $fe, $10	; Delay
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $04, $67	; Note D#3 on channel FM 4
; Pattern $16, Row 33; 
; Pattern $16, Row 34; 
; Pattern $16, Row 35; 
; Pattern $16, Row 36; 
; Pattern $16, Row 37; 
; Pattern $16, Row 38; 
; Pattern $16, Row 39; 
; Pattern $16, Row 40; 
; Pattern $16, Row 41; 
; Pattern $16, Row 42; 
; Pattern $16, Row 43; 
; Pattern $16, Row 44; 
; Pattern $16, Row 45; 
; Pattern $16, Row 46; 
; Pattern $16, Row 47; 
	dc.b $fe, $1e	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $fe, $02	; Delay
	dc.b $ff	; The End

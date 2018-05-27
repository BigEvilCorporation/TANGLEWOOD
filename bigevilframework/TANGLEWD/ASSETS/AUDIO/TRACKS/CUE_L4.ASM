	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $40, $5b	; Set instrument for channel FM 1
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $42, $5b	; Set instrument for channel FM 3
	dc.b $22, $0d	; Set volume for channel FM 3
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $41, $5b	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $00, Row 5; 
; Pattern $00, Row 6; 
; Pattern $00, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $00, Row 9; 
; Pattern $00, Row 10; 
; Pattern $00, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $00, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $00, Row 13; 
; Pattern $00, Row 14; 
; Pattern $00, Row 15; 
; Pattern $00, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $00, Row 17; 
; Pattern $00, Row 18; 
; Pattern $00, Row 19; 
; Pattern $00, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $00, Row 21; 
; Pattern $00, Row 22; 
; Pattern $00, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $00, Row 25; 
; Pattern $00, Row 26; 
; Pattern $00, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $00, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $00, Row 29; 
; Pattern $00, Row 30; 
; Pattern $00, Row 31; 
; Pattern $00, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $00, Row 33; 
; Pattern $00, Row 34; 
; Pattern $00, Row 35; 
; Pattern $00, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $f4, $c2	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $00, Row 37; 
; Pattern $00, Row 38; 
; Pattern $00, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $00, Row 41; 
; Pattern $00, Row 42; 
; Pattern $00, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $00, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $00, Row 45; 
; Pattern $00, Row 46; 
; Pattern $00, Row 47; 
; Pattern $00, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $77	; Note B-3 on channel FM 4
; Pattern $00, Row 49; 
; Pattern $00, Row 50; 
; Pattern $00, Row 51; 
; Pattern $00, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $00, Row 53; 
; Pattern $00, Row 54; 
; Pattern $00, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $00, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $00, Row 57; 
; Pattern $00, Row 58; 
; Pattern $00, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $00, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $00, Row 61; 
; Pattern $00, Row 62; 
; Pattern $00, Row 63; 
; Pattern $01, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $0b	; Set volume for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $01, Row 1; 
; Pattern $01, Row 2; 
; Pattern $01, Row 3; 
; Pattern $01, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $21, $0b	; Set volume for channel FM 2
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $01, Row 5; 
; Pattern $01, Row 6; 
; Pattern $01, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $01, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $01, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $01, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $01, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $01, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $01, Row 41; 
; Pattern $01, Row 42; 
; Pattern $01, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $01, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $01, Row 45; 
; Pattern $01, Row 46; 
; Pattern $01, Row 47; 
; Pattern $01, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $04, $77	; Note B-3 on channel FM 4
; Pattern $01, Row 49; 
; Pattern $01, Row 50; 
; Pattern $01, Row 51; 
; Pattern $01, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $01, Row 53; 
; Pattern $01, Row 54; 
; Pattern $01, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $01, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $01, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $01, Row 61; 
; Pattern $01, Row 62; 
; Pattern $01, Row 63; 
; Pattern $02, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $02, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $02, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $02, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $02, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $02, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $02, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $04, $77	; Note B-3 on channel FM 4
; Pattern $02, Row 49; 
; Pattern $02, Row 50; 
; Pattern $02, Row 51; 
; Pattern $02, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $02, Row 53; 
; Pattern $02, Row 54; 
; Pattern $02, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $02, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $02, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $03, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $03, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $03, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $03, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $03, Row 37; 
; Pattern $03, Row 38; 
; Pattern $03, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $03, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $03, Row 41; 
; Pattern $03, Row 42; 
; Pattern $03, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $03, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 45; 
; Pattern $03, Row 46; 
; Pattern $03, Row 47; 
; Pattern $03, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $04, $77	; Note B-3 on channel FM 4
; Pattern $03, Row 49; 
; Pattern $03, Row 50; 
; Pattern $03, Row 51; 
; Pattern $03, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $03, Row 53; 
; Pattern $03, Row 54; 
; Pattern $03, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $03, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $03, Row 57; 
; Pattern $03, Row 58; 
; Pattern $03, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $03, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $03, Row 61; 
; Pattern $03, Row 62; 
; Pattern $03, Row 63; 
; Pattern $04, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $04, Row 1; 
; Pattern $04, Row 2; 
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $5c	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $e1	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
; Pattern $04, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $04, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
; Pattern $04, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $04, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $46, $5c	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $f6, $e1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
; Pattern $04, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $04, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
; Pattern $04, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $04, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $04, Row 33; 
; Pattern $04, Row 34; 
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
; Pattern $04, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $04, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
; Pattern $04, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $04, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $04, Row 53; 
; Pattern $04, Row 54; 
; Pattern $04, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $04, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $04, Row 57; 
; Pattern $04, Row 58; 
; Pattern $04, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $04, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $05, Row 1; 
; Pattern $05, Row 2; 
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
; Pattern $05, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $05, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
; Pattern $05, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $05, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
; Pattern $05, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $05, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
; Pattern $05, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $05, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
; Pattern $05, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $05, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
; Pattern $05, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $05, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
; Pattern $05, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $05, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $05, Row 57; 
; Pattern $05, Row 58; 
; Pattern $05, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $05, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
; Pattern $05, Row 63; 
; Pattern $06, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
; Pattern $06, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $06, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
; Pattern $06, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $06, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
; Pattern $06, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $06, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
; Pattern $06, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $06, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
; Pattern $06, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $06, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
; Pattern $06, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $06, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
; Pattern $06, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $06, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
; Pattern $06, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $06, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
; Pattern $07, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $07, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
; Pattern $07, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $07, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
; Pattern $07, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $07, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
; Pattern $07, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $07, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
; Pattern $07, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $07, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
; Pattern $07, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $07, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $85	; Note D-4 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
; Pattern $07, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $07, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $07, Row 57; 
; Pattern $07, Row 58; 
; Pattern $07, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $07, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $07, Row 61; 
; Pattern $07, Row 62; 
; Pattern $07, Row 63; 
; Pattern $08, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $41, $5d	; Set instrument for channel FM 2
	dc.b $21, $09	; Set volume for channel FM 2
	dc.b $f1, $c0	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $08, Row 1; 
; Pattern $08, Row 2; 
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
; Pattern $08, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
; Pattern $08, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $08, Row 21; 
; Pattern $08, Row 22; 
; Pattern $08, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
; Pattern $08, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $08, Row 29; 
; Pattern $08, Row 30; 
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $08, Row 33; 
; Pattern $08, Row 34; 
; Pattern $08, Row 35; 
; Pattern $08, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
; Pattern $08, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $08, Row 41; 
; Pattern $08, Row 42; 
; Pattern $08, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $08, Row 45; 
; Pattern $08, Row 46; 
; Pattern $08, Row 47; 
; Pattern $08, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
; Pattern $08, Row 49; 
; Pattern $08, Row 50; 
; Pattern $08, Row 51; 
; Pattern $08, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $08, Row 53; 
; Pattern $08, Row 54; 
; Pattern $08, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $08, Row 57; 
; Pattern $08, Row 58; 
; Pattern $08, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $08, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $08, Row 61; 
; Pattern $08, Row 62; 
; Pattern $08, Row 63; 
; Pattern $09, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $09, Row 1; 
; Pattern $09, Row 2; 
; Pattern $09, Row 3; 
; Pattern $09, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $09, Row 5; 
; Pattern $09, Row 6; 
; Pattern $09, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $09, Row 9; 
; Pattern $09, Row 10; 
; Pattern $09, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $09, Row 13; 
; Pattern $09, Row 14; 
; Pattern $09, Row 15; 
; Pattern $09, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $09, Row 17; 
; Pattern $09, Row 18; 
; Pattern $09, Row 19; 
; Pattern $09, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $09, Row 21; 
; Pattern $09, Row 22; 
; Pattern $09, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
; Pattern $09, Row 25; 
; Pattern $09, Row 26; 
; Pattern $09, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $09, Row 29; 
; Pattern $09, Row 30; 
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $09, Row 33; 
; Pattern $09, Row 34; 
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
; Pattern $09, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $09, Row 41; 
; Pattern $09, Row 42; 
; Pattern $09, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
; Pattern $09, Row 47; 
; Pattern $09, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $09, Row 49; 
; Pattern $09, Row 50; 
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $09, Row 53; 
; Pattern $09, Row 54; 
; Pattern $09, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $09, Row 57; 
; Pattern $09, Row 58; 
; Pattern $09, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $09, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $09, Row 61; 
; Pattern $09, Row 62; 
; Pattern $09, Row 63; 
; Pattern $0a, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0a, Row 1; 
; Pattern $0a, Row 2; 
; Pattern $0a, Row 3; 
; Pattern $0a, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
; Pattern $0a, Row 5; 
; Pattern $0a, Row 6; 
; Pattern $0a, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0a, Row 9; 
; Pattern $0a, Row 10; 
; Pattern $0a, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
; Pattern $0a, Row 13; 
; Pattern $0a, Row 14; 
; Pattern $0a, Row 15; 
; Pattern $0a, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0a, Row 17; 
; Pattern $0a, Row 18; 
; Pattern $0a, Row 19; 
; Pattern $0a, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0a, Row 21; 
; Pattern $0a, Row 22; 
; Pattern $0a, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
; Pattern $0a, Row 25; 
; Pattern $0a, Row 26; 
; Pattern $0a, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0a, Row 29; 
; Pattern $0a, Row 30; 
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0a, Row 33; 
; Pattern $0a, Row 34; 
; Pattern $0a, Row 35; 
; Pattern $0a, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
; Pattern $0a, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $0a, Row 41; 
; Pattern $0a, Row 42; 
; Pattern $0a, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0a, Row 45; 
; Pattern $0a, Row 46; 
; Pattern $0a, Row 47; 
; Pattern $0a, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
; Pattern $0a, Row 49; 
; Pattern $0a, Row 50; 
; Pattern $0a, Row 51; 
; Pattern $0a, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
; Pattern $0a, Row 53; 
; Pattern $0a, Row 54; 
; Pattern $0a, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0a, Row 57; 
; Pattern $0a, Row 58; 
; Pattern $0a, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0a, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0a, Row 61; 
; Pattern $0a, Row 62; 
; Pattern $0a, Row 63; 
; Pattern $0b, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0b, Row 1; 
; Pattern $0b, Row 2; 
; Pattern $0b, Row 3; 
; Pattern $0b, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $0b, Row 5; 
; Pattern $0b, Row 6; 
; Pattern $0b, Row 7; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
; Pattern $0b, Row 9; 
; Pattern $0b, Row 10; 
; Pattern $0b, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0b, Row 13; 
; Pattern $0b, Row 14; 
; Pattern $0b, Row 15; 
; Pattern $0b, Row 16; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0b, Row 17; 
; Pattern $0b, Row 18; 
; Pattern $0b, Row 19; 
; Pattern $0b, Row 20; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0b, Row 21; 
; Pattern $0b, Row 22; 
; Pattern $0b, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $5c	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
; Pattern $0b, Row 25; 
; Pattern $0b, Row 26; 
; Pattern $0b, Row 27; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0b, Row 29; 
; Pattern $0b, Row 30; 
; Pattern $0b, Row 31; 
; Pattern $0b, Row 32; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0b, Row 33; 
; Pattern $0b, Row 34; 
; Pattern $0b, Row 35; 
; Pattern $0b, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
; Pattern $0b, Row 37; 
; Pattern $0b, Row 38; 
; Pattern $0b, Row 39; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $0b, Row 41; 
; Pattern $0b, Row 42; 
; Pattern $0b, Row 43; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
; Pattern $0b, Row 45; 
; Pattern $0b, Row 46; 
; Pattern $0b, Row 47; 
; Pattern $0b, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $4b, $5f	; Set instrument for channel PSG 4
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $3a, $0a, $06	; Set frequency '106' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 49; 
; Pattern $0b, Row 50; 
; Pattern $0b, Row 51; 
; Pattern $0b, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0b, Row 53; 
; Pattern $0b, Row 54; 
; Pattern $0b, Row 55; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $07	; Note G-0 on channel PSG 4
; Pattern $0b, Row 57; 
; Pattern $0b, Row 58; 
; Pattern $0b, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0b, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
; Pattern $0b, Row 61; 
; Pattern $0b, Row 62; 
; Pattern $0b, Row 63; 
; Pattern $0c, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $48, $5e	; Set instrument for channel PSG 1
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0c, Row 1; 
; Pattern $0c, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $49, $5e	; Set instrument for channel PSG 2
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0c, Row 3; 
; Pattern $0c, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $45, $60	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $4a, $5e	; Set instrument for channel PSG 3
	dc.b $2a, $04	; Set volume for channel PSG 3
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0c, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0c, Row 9; 
; Pattern $0c, Row 10; 
; Pattern $0c, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $46, $60	; Set instrument for channel FM 6
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $0c, Row 15; 
; Pattern $0c, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0c, Row 17; 
; Pattern $0c, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0c, Row 21; 
; Pattern $0c, Row 22; 
; Pattern $0c, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a9	; Note E-5 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0c, Row 25; 
; Pattern $0c, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0c, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0c, Row 31; 
; Pattern $0c, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0c, Row 33; 
; Pattern $0c, Row 34; 
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $0c, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $1b		; Note off channel PSG 4
; Pattern $0c, Row 41; 
; Pattern $0c, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0c, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
; Pattern $0c, Row 47; 
; Pattern $0c, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $97	; Note B-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0c, Row 49; 
; Pattern $0c, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0c, Row 51; 
; Pattern $0c, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0c, Row 53; 
; Pattern $0c, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0c, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0c, Row 57; 
; Pattern $0c, Row 58; 
; Pattern $0c, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0c, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $0c, Row 61; 
; Pattern $0c, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $0c, Row 63; 
; Pattern $0d, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 1; 
; Pattern $0d, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 3; 
; Pattern $0d, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $0d, Row 5; 
; Pattern $0d, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0d, Row 9; 
; Pattern $0d, Row 10; 
; Pattern $0d, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 13; 
; Pattern $0d, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 15; 
; Pattern $0d, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0d, Row 17; 
; Pattern $0d, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0d, Row 21; 
; Pattern $0d, Row 22; 
; Pattern $0d, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 25; 
; Pattern $0d, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0d, Row 29; 
; Pattern $0d, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 31; 
; Pattern $0d, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0d, Row 33; 
; Pattern $0d, Row 34; 
; Pattern $0d, Row 35; 
; Pattern $0d, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $0d, Row 41; 
; Pattern $0d, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0d, Row 45; 
; Pattern $0d, Row 46; 
; Pattern $0d, Row 47; 
; Pattern $0d, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 49; 
; Pattern $0d, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 51; 
; Pattern $0d, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0d, Row 53; 
; Pattern $0d, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0d, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0d, Row 57; 
; Pattern $0d, Row 58; 
; Pattern $0d, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0d, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0d, Row 61; 
; Pattern $0d, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0d, Row 63; 
; Pattern $0e, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0e, Row 1; 
; Pattern $0e, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 3; 
; Pattern $0e, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
; Pattern $0e, Row 5; 
; Pattern $0e, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0e, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 9; 
; Pattern $0e, Row 10; 
; Pattern $0e, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0e, Row 13; 
; Pattern $0e, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 15; 
; Pattern $0e, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0e, Row 17; 
; Pattern $0e, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 19; 
; Pattern $0e, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0e, Row 21; 
; Pattern $0e, Row 22; 
; Pattern $0e, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0e, Row 25; 
; Pattern $0e, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0e, Row 29; 
; Pattern $0e, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0e, Row 31; 
; Pattern $0e, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 33; 
; Pattern $0e, Row 34; 
; Pattern $0e, Row 35; 
; Pattern $0e, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0e, Row 37; 
; Pattern $0e, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $0e, Row 41; 
; Pattern $0e, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $0e, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $0e, Row 45; 
; Pattern $0e, Row 46; 
; Pattern $0e, Row 47; 
; Pattern $0e, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $0e, Row 49; 
; Pattern $0e, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 51; 
; Pattern $0e, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0e, Row 53; 
; Pattern $0e, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $0e, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0e, Row 57; 
; Pattern $0e, Row 58; 
; Pattern $0e, Row 59; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0e, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $0e, Row 61; 
; Pattern $0e, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0e, Row 63; 
; Pattern $0f, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0f, Row 1; 
; Pattern $0f, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 3; 
; Pattern $0f, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
; Pattern $0f, Row 5; 
; Pattern $0f, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0f, Row 9; 
; Pattern $0f, Row 10; 
; Pattern $0f, Row 11; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0f, Row 13; 
; Pattern $0f, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 15; 
; Pattern $0f, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
; Pattern $0f, Row 17; 
; Pattern $0f, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 19; 
; Pattern $0f, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0f, Row 21; 
; Pattern $0f, Row 22; 
; Pattern $0f, Row 23; 
	dc.b $fe, $09	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0f, Row 25; 
; Pattern $0f, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
; Pattern $0f, Row 29; 
; Pattern $0f, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 31; 
; Pattern $0f, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0f, Row 33; 
; Pattern $0f, Row 34; 
; Pattern $0f, Row 35; 
; Pattern $0f, Row 36; 
	dc.b $fe, $0c	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0f, Row 37; 
; Pattern $0f, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
; Pattern $0f, Row 41; 
; Pattern $0f, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $0f, Row 45; 
; Pattern $0f, Row 46; 
; Pattern $0f, Row 47; 
; Pattern $0f, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $2b, $00	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 49; 
; Pattern $0f, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 51; 
; Pattern $0f, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $0f, Row 53; 
; Pattern $0f, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $0f, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 57; 
; Pattern $0f, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $0f, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $0f, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $0f, Row 61; 
; Pattern $0f, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $0f, Row 63; 
; Pattern $10, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $10, Row 1; 
; Pattern $10, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $10, Row 3; 
; Pattern $10, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 5; 
; Pattern $10, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $10, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 9; 
; Pattern $10, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 13; 
; Pattern $10, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $10, Row 15; 
; Pattern $10, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $10, Row 17; 
; Pattern $10, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $10, Row 19; 
; Pattern $10, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $10, Row 21; 
; Pattern $10, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $10, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a9	; Note E-5 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $10, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 29; 
; Pattern $10, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $10, Row 31; 
; Pattern $10, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 33; 
; Pattern $10, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 35; 
; Pattern $10, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 37; 
; Pattern $10, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $10, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $10, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $10, Row 45; 
; Pattern $10, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $10, Row 47; 
; Pattern $10, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $97	; Note B-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $10, Row 49; 
; Pattern $10, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $10, Row 51; 
; Pattern $10, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 53; 
; Pattern $10, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $10, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $10, Row 57; 
; Pattern $10, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $10, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $10, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $10, Row 61; 
; Pattern $10, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $10, Row 63; 
; Pattern $11, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 1; 
; Pattern $11, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 3; 
; Pattern $11, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $11, Row 5; 
; Pattern $11, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $11, Row 9; 
; Pattern $11, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $11, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 13; 
; Pattern $11, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 15; 
; Pattern $11, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $11, Row 17; 
; Pattern $11, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 19; 
; Pattern $11, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $11, Row 21; 
; Pattern $11, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $11, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 25; 
; Pattern $11, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $11, Row 29; 
; Pattern $11, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 31; 
; Pattern $11, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $11, Row 33; 
; Pattern $11, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $11, Row 35; 
; Pattern $11, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 37; 
; Pattern $11, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $11, Row 41; 
; Pattern $11, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $11, Row 45; 
; Pattern $11, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $11, Row 47; 
; Pattern $11, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 49; 
; Pattern $11, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 51; 
; Pattern $11, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $11, Row 53; 
; Pattern $11, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $11, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $11, Row 57; 
; Pattern $11, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $11, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $11, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $11, Row 61; 
; Pattern $11, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $11, Row 63; 
; Pattern $12, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $12, Row 1; 
; Pattern $12, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 3; 
; Pattern $12, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 5; 
; Pattern $12, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $12, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 9; 
; Pattern $12, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $12, Row 13; 
; Pattern $12, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 15; 
; Pattern $12, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $12, Row 17; 
; Pattern $12, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 19; 
; Pattern $12, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $12, Row 21; 
; Pattern $12, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $12, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 29; 
; Pattern $12, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 33; 
; Pattern $12, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 35; 
; Pattern $12, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $12, Row 37; 
; Pattern $12, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $12, Row 41; 
; Pattern $12, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $12, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $12, Row 45; 
; Pattern $12, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $12, Row 47; 
; Pattern $12, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $12, Row 49; 
; Pattern $12, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 51; 
; Pattern $12, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 53; 
; Pattern $12, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $12, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $12, Row 57; 
; Pattern $12, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $12, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $12, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $12, Row 61; 
; Pattern $12, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $12, Row 63; 
; Pattern $13, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $13, Row 1; 
; Pattern $13, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 3; 
; Pattern $13, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $13, Row 5; 
; Pattern $13, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $13, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $13, Row 9; 
; Pattern $13, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $13, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $13, Row 13; 
; Pattern $13, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 15; 
; Pattern $13, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $13, Row 17; 
; Pattern $13, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $13, Row 19; 
; Pattern $13, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $13, Row 21; 
; Pattern $13, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $13, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $13, Row 25; 
; Pattern $13, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $13, Row 29; 
; Pattern $13, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $13, Row 31; 
; Pattern $13, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $13, Row 33; 
; Pattern $13, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $13, Row 35; 
; Pattern $13, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $13, Row 37; 
; Pattern $13, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $13, Row 41; 
; Pattern $13, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $13, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $13, Row 45; 
; Pattern $13, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $13, Row 47; 
; Pattern $13, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 49; 
; Pattern $13, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 51; 
; Pattern $13, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $13, Row 53; 
; Pattern $13, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $13, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 57; 
; Pattern $13, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $13, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $13, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $13, Row 61; 
; Pattern $13, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $13, Row 63; 
; Pattern $14, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $41, $61	; Set instrument for channel FM 2
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $14, Row 1; 
; Pattern $14, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $14, Row 3; 
; Pattern $14, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 5; 
; Pattern $14, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $14, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $14, Row 9; 
; Pattern $14, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $41	; Note C-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $14, Row 13; 
; Pattern $14, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $14, Row 15; 
; Pattern $14, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $14, Row 17; 
; Pattern $14, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $14, Row 19; 
; Pattern $14, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $14, Row 21; 
; Pattern $14, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $14, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $14, Row 25; 
; Pattern $14, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $14, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 29; 
; Pattern $14, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $14, Row 31; 
; Pattern $14, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $14, Row 33; 
; Pattern $14, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 35; 
; Pattern $14, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $14, Row 37; 
; Pattern $14, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $14, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $1b		; Note off channel PSG 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $14, Row 41; 
; Pattern $14, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $14, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $14, Row 45; 
; Pattern $14, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $14, Row 47; 
; Pattern $14, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $14, Row 49; 
; Pattern $14, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $14, Row 51; 
; Pattern $14, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 53; 
; Pattern $14, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $14, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $14, Row 57; 
; Pattern $14, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $14, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $14, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $14, Row 61; 
; Pattern $14, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $14, Row 63; 
; Pattern $15, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 1; 
; Pattern $15, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 3; 
; Pattern $15, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $15, Row 5; 
; Pattern $15, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $15, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $15, Row 9; 
; Pattern $15, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $15, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $45	; Note D-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 13; 
; Pattern $15, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 15; 
; Pattern $15, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $15, Row 17; 
; Pattern $15, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $15, Row 19; 
; Pattern $15, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $15, Row 21; 
; Pattern $15, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $15, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 25; 
; Pattern $15, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $15, Row 29; 
; Pattern $15, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $15, Row 31; 
; Pattern $15, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $15, Row 33; 
; Pattern $15, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $15, Row 35; 
; Pattern $15, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 37; 
; Pattern $15, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $15, Row 41; 
; Pattern $15, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $15, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $15, Row 45; 
; Pattern $15, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $15, Row 47; 
; Pattern $15, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 49; 
; Pattern $15, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 51; 
; Pattern $15, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $15, Row 53; 
; Pattern $15, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $15, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $65	; Note D-3 on channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $15, Row 57; 
; Pattern $15, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $15, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $15, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $15, Row 61; 
; Pattern $15, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $15, Row 63; 
; Pattern $16, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $16, Row 1; 
; Pattern $16, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 3; 
; Pattern $16, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 5; 
; Pattern $16, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $16, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $16, Row 9; 
; Pattern $16, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $53	; Note A-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $16, Row 13; 
; Pattern $16, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 15; 
; Pattern $16, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $16, Row 17; 
; Pattern $16, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $16, Row 19; 
; Pattern $16, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $16, Row 21; 
; Pattern $16, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $16, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $16, Row 25; 
; Pattern $16, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 29; 
; Pattern $16, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $16, Row 31; 
; Pattern $16, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $16, Row 33; 
; Pattern $16, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 35; 
; Pattern $16, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $16, Row 37; 
; Pattern $16, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $16, Row 41; 
; Pattern $16, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $16, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $16, Row 45; 
; Pattern $16, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $16, Row 47; 
; Pattern $16, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $16, Row 49; 
; Pattern $16, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 51; 
; Pattern $16, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 53; 
; Pattern $16, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $16, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $01, $4d	; Note F#2 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $16, Row 57; 
; Pattern $16, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $16, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $16, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $16, Row 61; 
; Pattern $16, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $16, Row 63; 
; Pattern $17, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 1; 
; Pattern $17, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 3; 
; Pattern $17, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $17, Row 5; 
; Pattern $17, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $17, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $17, Row 9; 
; Pattern $17, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $17, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 13; 
; Pattern $17, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 15; 
; Pattern $17, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $17, Row 17; 
; Pattern $17, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $17, Row 19; 
; Pattern $17, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $17, Row 21; 
; Pattern $17, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $17, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 25; 
; Pattern $17, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $17, Row 29; 
; Pattern $17, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $17, Row 31; 
; Pattern $17, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $17, Row 33; 
; Pattern $17, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $17, Row 35; 
; Pattern $17, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 37; 
; Pattern $17, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $17, Row 41; 
; Pattern $17, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $17, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $17, Row 45; 
; Pattern $17, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $17, Row 47; 
; Pattern $17, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 49; 
; Pattern $17, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 51; 
; Pattern $17, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $17, Row 53; 
; Pattern $17, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $17, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $17, Row 57; 
; Pattern $17, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $17, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $17, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $42	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $17, Row 61; 
; Pattern $17, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $17, Row 63; 
; Pattern $18, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $f0, $c2	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $34, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 4
	dc.b $35, $23, $29	; Set frequency '9001' (octave 4 semitone 809) for channel FM 5
	dc.b $36, $22, $d1	; Set frequency '8913' (octave 4 semitone 721) for channel FM 6
	dc.b $39, $0e, $0b	; Set frequency '190' for channel PSG 2
	dc.b $3a, $0c, $17	; Set frequency '380' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $29	; Set frequency '6953' (octave 3 semitone 809) for channel FM 1
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $23, $29	; Set frequency '9001' (octave 4 semitone 809) for channel FM 3
	dc.b $34, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 4
	dc.b $35, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 5
	dc.b $36, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 6
	dc.b $38, $02, $15	; Set frequency '338' for channel PSG 1
	dc.b $39, $0f, $0b	; Set frequency '191' for channel PSG 2
	dc.b $3a, $0d, $17	; Set frequency '381' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $28	; Set frequency '6952' (octave 3 semitone 808) for channel FM 1
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 3
	dc.b $34, $23, $8b	; Set frequency '9099' (octave 4 semitone 907) for channel FM 4
	dc.b $35, $23, $27	; Set frequency '8999' (octave 4 semitone 807) for channel FM 5
	dc.b $36, $22, $cf	; Set frequency '8911' (octave 4 semitone 719) for channel FM 6
	dc.b $38, $03, $15	; Set frequency '339' for channel PSG 1
	dc.b $39, $00, $0c	; Set frequency '192' for channel PSG 2
	dc.b $3a, $0e, $17	; Set frequency '382' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $27	; Set frequency '6951' (octave 3 semitone 807) for channel FM 1
	dc.b $31, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 2
	dc.b $32, $23, $27	; Set frequency '8999' (octave 4 semitone 807) for channel FM 3
	dc.b $34, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 4
	dc.b $35, $23, $26	; Set frequency '8998' (octave 4 semitone 806) for channel FM 5
	dc.b $36, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 6
	dc.b $38, $04, $15	; Set frequency '340' for channel PSG 1
	dc.b $39, $01, $0c	; Set frequency '193' for channel PSG 2
	dc.b $3a, $0f, $17	; Set frequency '383' for channel PSG 3
; Pattern $18, Row 1; 
; Pattern $18, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $18, Row 3; 
; Pattern $18, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $41, $5b	; Set instrument for channel FM 2
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 5; 
; Pattern $18, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $18, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $18, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $18, Row 9; 
; Pattern $18, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $18, Row 13; 
; Pattern $18, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $18, Row 15; 
; Pattern $18, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $18, Row 17; 
; Pattern $18, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $18, Row 19; 
; Pattern $18, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $18, Row 21; 
; Pattern $18, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $18, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $18, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $a9	; Note E-5 on channel FM 4
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $18, Row 25; 
; Pattern $18, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $18, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 29; 
; Pattern $18, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $18, Row 31; 
; Pattern $18, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $18, Row 33; 
; Pattern $18, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 35; 
; Pattern $18, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $f4, $e1	; Set pan/AMS/FMS for channel FM 4
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $18, Row 37; 
; Pattern $18, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $18, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $18, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $1b		; Note off channel PSG 4
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $18, Row 41; 
; Pattern $18, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $18, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $42	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $18, Row 45; 
; Pattern $18, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $18, Row 47; 
; Pattern $18, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $05, $97	; Note B-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $18, Row 49; 
; Pattern $18, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $18, Row 51; 
; Pattern $18, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $f1, $42	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $f2, $c2	; Set pan/AMS/FMS for channel FM 3
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 53; 
; Pattern $18, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $18, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $18, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $f2, $82	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $18, Row 57; 
; Pattern $18, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $18, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $f1, $82	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $18, Row 61; 
; Pattern $18, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $18, Row 63; 
; Pattern $19, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 1; 
; Pattern $19, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 3; 
; Pattern $19, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $19, Row 5; 
; Pattern $19, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $19, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $19, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $19, Row 9; 
; Pattern $19, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $19, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $19, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 13; 
; Pattern $19, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 15; 
; Pattern $19, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $19, Row 17; 
; Pattern $19, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $19, Row 19; 
; Pattern $19, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $19, Row 21; 
; Pattern $19, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $19, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $19, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $97	; Note B-4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 25; 
; Pattern $19, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $19, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $19, Row 29; 
; Pattern $19, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $19, Row 31; 
; Pattern $19, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $19, Row 33; 
; Pattern $19, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $19, Row 35; 
; Pattern $19, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 37; 
; Pattern $19, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $19, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $19, Row 41; 
; Pattern $19, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $19, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $19, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $19, Row 45; 
; Pattern $19, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $19, Row 47; 
; Pattern $19, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 49; 
; Pattern $19, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 51; 
; Pattern $19, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $19, Row 53; 
; Pattern $19, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $19, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $19, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $19, Row 57; 
; Pattern $19, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $19, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $19, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $19, Row 61; 
; Pattern $19, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $19, Row 63; 
; Pattern $1a, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $1a, Row 1; 
; Pattern $1a, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 3; 
; Pattern $1a, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 5; 
; Pattern $1a, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $1a, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1a, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1a, Row 9; 
; Pattern $1a, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1a, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $06, $a5	; Note D-5 on channel FM 6
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $1a, Row 13; 
; Pattern $1a, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 15; 
; Pattern $1a, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $1a, Row 17; 
; Pattern $1a, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $1a, Row 19; 
; Pattern $1a, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $1a, Row 21; 
; Pattern $1a, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $42	; Note A-2 on channel PSG 3
; Pattern $1a, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1a, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $93	; Note A-4 on channel FM 4
	dc.b $28, $02	; Set volume for channel PSG 1
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $1a, Row 25; 
; Pattern $1a, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $29, $02	; Set volume for channel PSG 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1a, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $2a, $02	; Set volume for channel PSG 3
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 29; 
; Pattern $1a, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $1a, Row 31; 
; Pattern $1a, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1a, Row 33; 
; Pattern $1a, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 35; 
; Pattern $1a, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $1a, Row 37; 
; Pattern $1a, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1a, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $1a, Row 41; 
; Pattern $1a, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $1a, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1a, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $3e	; Note G-2 on channel PSG 2
; Pattern $1a, Row 45; 
; Pattern $1a, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $1a, Row 47; 
; Pattern $1a, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $05, $89	; Note E-4 on channel FM 5
	dc.b $08, $20	; Note E-1 on channel PSG 1
; Pattern $1a, Row 49; 
; Pattern $1a, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 51; 
; Pattern $1a, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 53; 
; Pattern $1a, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $1a, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1a, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1a, Row 57; 
; Pattern $1a, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $20	; Note E-1 on channel PSG 3
; Pattern $1a, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1a, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $1a, Row 61; 
; Pattern $1a, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1a, Row 63; 
; Pattern $1b, Row 0; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $1b, Row 1; 
; Pattern $1b, Row 2; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 3; 
; Pattern $1b, Row 4; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $44, $5b	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $82	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $85	; Note D-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $1b, Row 5; 
; Pattern $1b, Row 6; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $1b, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1b, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $06, $85	; Note D-4 on channel FM 6
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1b, Row 9; 
; Pattern $1b, Row 10; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $1b, Row 11; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1b, Row 12; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $1b, Row 13; 
; Pattern $1b, Row 14; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 15; 
; Pattern $1b, Row 16; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $04, $8f	; Note G-4 on channel FM 4
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $1b, Row 17; 
; Pattern $1b, Row 18; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $1b, Row 19; 
; Pattern $1b, Row 20; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1b, Row 21; 
; Pattern $1b, Row 22; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $1b, Row 23; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1b, Row 24; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $60	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $a1	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $1b, Row 25; 
; Pattern $1b, Row 26; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 27; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1b, Row 28; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $1b, Row 29; 
; Pattern $1b, Row 30; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $1b, Row 31; 
; Pattern $1b, Row 32; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1b, Row 33; 
; Pattern $1b, Row 34; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $1b, Row 35; 
; Pattern $1b, Row 36; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $77	; Note B-3 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $1b, Row 37; 
; Pattern $1b, Row 38; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 39; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1b, Row 40; 
	dc.b $fe, $03	; Delay
	dc.b $f0, $82	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $1b, Row 41; 
; Pattern $1b, Row 42; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $1b, Row 43; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1b, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
; Pattern $1b, Row 45; 
; Pattern $1b, Row 46; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $1b, Row 47; 
; Pattern $1b, Row 48; 
	dc.b $fe, $06	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 49; 
; Pattern $1b, Row 50; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 51; 
; Pattern $1b, Row 52; 
	dc.b $fe, $06	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $1b, Row 53; 
; Pattern $1b, Row 54; 
	dc.b $fe, $06	; Delay
	dc.b $08, $2a	; Note A-1 on channel PSG 1
; Pattern $1b, Row 55; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
; Pattern $1b, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $00, $69	; Note E-3 on channel FM 1
	dc.b $02, $73	; Note A-3 on channel FM 3
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $02	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 57; 
; Pattern $1b, Row 58; 
	dc.b $fe, $06	; Delay
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $1b, Row 59; 
	dc.b $fe, $03	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1b, Row 60; 
	dc.b $fe, $03	; Delay
	dc.b $01, $6f	; Note G-3 on channel FM 2
	dc.b $02, $89	; Note E-4 on channel FM 3
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $1b, Row 61; 
; Pattern $1b, Row 62; 
	dc.b $fe, $06	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
; Pattern $1b, Row 63; 
; Pattern $1c, Row 0; 
; Pattern $1c, Row 1; 
	dc.b $fe, $09	; Delay
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $26, $17	; Set volume for channel FM 6
; Pattern $1c, Row 2; 
	dc.b $fe, $03	; Delay
	dc.b $24, $1f	; Set volume for channel FM 4
	dc.b $25, $1f	; Set volume for channel FM 5
	dc.b $26, $1f	; Set volume for channel FM 6
; Pattern $1c, Row 3; 
	dc.b $fe, $03	; Delay
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $25, $27	; Set volume for channel FM 5
	dc.b $26, $27	; Set volume for channel FM 6
; Pattern $1c, Row 4; 
	dc.b $fe, $03	; Delay
	dc.b $24, $2f	; Set volume for channel FM 4
	dc.b $25, $2f	; Set volume for channel FM 5
	dc.b $26, $2f	; Set volume for channel FM 6
; Pattern $1c, Row 5; 
	dc.b $fe, $03	; Delay
	dc.b $24, $37	; Set volume for channel FM 4
	dc.b $25, $37	; Set volume for channel FM 5
	dc.b $26, $37	; Set volume for channel FM 6
; Pattern $1c, Row 6; 
	dc.b $fe, $03	; Delay
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $25, $3f	; Set volume for channel FM 5
	dc.b $26, $3f	; Set volume for channel FM 6
; Pattern $1c, Row 7; 
	dc.b $fe, $03	; Delay
	dc.b $24, $47	; Set volume for channel FM 4
	dc.b $25, $47	; Set volume for channel FM 5
	dc.b $26, $47	; Set volume for channel FM 6
; Pattern $1c, Row 8; 
	dc.b $fe, $03	; Delay
	dc.b $24, $4f	; Set volume for channel FM 4
	dc.b $25, $4f	; Set volume for channel FM 5
	dc.b $26, $4f	; Set volume for channel FM 6
; Pattern $1c, Row 9; 
; Pattern $1c, Row 10; 
; Pattern $1c, Row 11; 
; Pattern $1c, Row 12; 
; Pattern $1c, Row 13; 
; Pattern $1c, Row 14; 
; Pattern $1c, Row 15; 
; Pattern $1c, Row 16; 
; Pattern $1c, Row 17; 
; Pattern $1c, Row 18; 
; Pattern $1c, Row 19; 
; Pattern $1c, Row 20; 
; Pattern $1c, Row 21; 
; Pattern $1c, Row 22; 
; Pattern $1c, Row 23; 
; Pattern $1c, Row 24; 
; Pattern $1c, Row 25; 
; Pattern $1c, Row 26; 
; Pattern $1c, Row 27; 
; Pattern $1c, Row 28; 
; Pattern $1c, Row 29; 
; Pattern $1c, Row 30; 
; Pattern $1c, Row 31; 
; Pattern $1c, Row 32; 
; Pattern $1c, Row 33; 
; Pattern $1c, Row 34; 
; Pattern $1c, Row 35; 
; Pattern $1c, Row 36; 
; Pattern $1c, Row 37; 
; Pattern $1c, Row 38; 
; Pattern $1c, Row 39; 
; Pattern $1c, Row 40; 
	dc.b $fe, $60	; Delay
	dc.b $2b, $08	; Set volume for channel PSG 4
; Pattern $1c, Row 41; 
; Pattern $1c, Row 42; 
; Pattern $1c, Row 43; 
; Pattern $1c, Row 44; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $09	; Set volume for channel PSG 4
; Pattern $1c, Row 45; 
; Pattern $1c, Row 46; 
; Pattern $1c, Row 47; 
; Pattern $1c, Row 48; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $0a	; Set volume for channel PSG 4
; Pattern $1c, Row 49; 
; Pattern $1c, Row 50; 
; Pattern $1c, Row 51; 
; Pattern $1c, Row 52; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $0b	; Set volume for channel PSG 4
; Pattern $1c, Row 53; 
; Pattern $1c, Row 54; 
; Pattern $1c, Row 55; 
; Pattern $1c, Row 56; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $0c	; Set volume for channel PSG 4
; Pattern $1c, Row 57; 
; Pattern $1c, Row 58; 
; Pattern $1c, Row 59; 
; Pattern $1c, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $0d	; Set volume for channel PSG 4
; Pattern $1c, Row 61; 
; Pattern $1c, Row 62; 
; Pattern $1c, Row 63; 
; Pattern $1d, Row 0; 
	dc.b $fe, $0c	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $2b, $0e	; Set volume for channel PSG 4
; Pattern $1d, Row 1; 
; Pattern $1d, Row 2; 
; Pattern $1d, Row 3; 
; Pattern $1d, Row 4; 
	dc.b $fe, $0c	; Delay
	dc.b $2b, $0f	; Set volume for channel PSG 4
; Pattern $1d, Row 5; 
; Pattern $1d, Row 6; 
; Pattern $1d, Row 7; 
; Pattern $1d, Row 8; 
; Pattern $1d, Row 9; 
; Pattern $1d, Row 10; 
; Pattern $1d, Row 11; 
; Pattern $1d, Row 12; 
; Pattern $1d, Row 13; 
; Pattern $1d, Row 14; 
; Pattern $1d, Row 15; 
; Pattern $1d, Row 16; 
; Pattern $1d, Row 17; 
; Pattern $1d, Row 18; 
; Pattern $1d, Row 19; 
; Pattern $1d, Row 20; 
; Pattern $1d, Row 21; 
; Pattern $1d, Row 22; 
; Pattern $1d, Row 23; 
; Pattern $1d, Row 24; 
; Pattern $1d, Row 25; 
; Pattern $1d, Row 26; 
; Pattern $1d, Row 27; 
; Pattern $1d, Row 28; 
; Pattern $1d, Row 29; 
; Pattern $1d, Row 30; 
; Pattern $1d, Row 31; 
; Pattern $1d, Row 32; 
; Pattern $1d, Row 33; 
; Pattern $1d, Row 34; 
; Pattern $1d, Row 35; 
; Pattern $1d, Row 36; 
; Pattern $1d, Row 37; 
; Pattern $1d, Row 38; 
; Pattern $1d, Row 39; 
; Pattern $1d, Row 40; 
; Pattern $1d, Row 41; 
; Pattern $1d, Row 42; 
; Pattern $1d, Row 43; 
; Pattern $1d, Row 44; 
; Pattern $1d, Row 45; 
; Pattern $1d, Row 46; 
; Pattern $1d, Row 47; 
; Pattern $1d, Row 48; 
; Pattern $1d, Row 49; 
; Pattern $1d, Row 50; 
; Pattern $1d, Row 51; 
; Pattern $1d, Row 52; 
; Pattern $1d, Row 53; 
; Pattern $1d, Row 54; 
; Pattern $1d, Row 55; 
; Pattern $1d, Row 56; 
; Pattern $1d, Row 57; 
; Pattern $1d, Row 58; 
; Pattern $1d, Row 59; 
; Pattern $1d, Row 60; 
; Pattern $1d, Row 61; 
; Pattern $1d, Row 62; 
; Pattern $1d, Row 63; 
	dc.b $fe, $b4	; Delay
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $00, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $00, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $00, Row 8; 
	dc.b $42, $71	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $44, $71	; Set instrument for channel FM 4
	dc.b $24, $07	; Set volume for channel FM 4
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 32; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $00, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 0; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $01, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 32; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $01, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 0; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $02, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $02, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $02, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $02, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $02, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $02, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $03, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $03, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $03, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $03, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $03, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $03, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $03, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $03, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $03, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 0; 
	dc.b $fd	; Set loop
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $04, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $04, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $04, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $04, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $04, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $04, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $04, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $04, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $04, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $05, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $05, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $05, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $05, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $05, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $05, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $05, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $8b	; Note F-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $05, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $05, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $f5, $c3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $48, $74	; Set instrument for channel PSG 1
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $06, Row 1; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $06, Row 2; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $49, $74	; Set instrument for channel PSG 2
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $06, Row 3; 
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $06, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $4a, $74	; Set instrument for channel PSG 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $06, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $06, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $06, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $06, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 31; 
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $06, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $06, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $06, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $06, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $06, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $06, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $05, $87	; Note D#4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $07, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $07, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $07, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $07, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $07, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $07, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $97	; Note B-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $07, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $07, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 37; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $07, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $07, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 45; 
	dc.b $fe, $04	; Delay
; Pattern $07, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $04	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $87	; Set frequency '10887' (octave 5 semitone 647) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8a	; Set frequency '10890' (octave 5 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
; Pattern $07, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $93	; Set frequency '10899' (octave 5 semitone 659) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $96	; Set frequency '10902' (octave 5 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $99	; Set frequency '10905' (octave 5 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9c	; Set frequency '10908' (octave 5 semitone 668) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9f	; Set frequency '10911' (octave 5 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a2	; Set frequency '10914' (octave 5 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a5	; Set frequency '10917' (octave 5 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a8	; Set frequency '10920' (octave 5 semitone 680) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $35, $2a, $ab	; Set frequency '10923' (octave 5 semitone 683) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $2a, $ae	; Set frequency '10926' (octave 5 semitone 686) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $2a, $b1	; Set frequency '10929' (octave 5 semitone 689) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $2a, $b4	; Set frequency '10932' (octave 5 semitone 692) for channel FM 5
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $2a, $b7	; Set frequency '10935' (octave 5 semitone 695) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $2a, $ba	; Set frequency '10938' (octave 5 semitone 698) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $2a, $bd	; Set frequency '10941' (octave 5 semitone 701) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
; Pattern $07, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c3	; Set frequency '10947' (octave 5 semitone 707) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c6	; Set frequency '10950' (octave 5 semitone 710) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c9	; Set frequency '10953' (octave 5 semitone 713) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $cc	; Set frequency '10956' (octave 5 semitone 716) for channel FM 5
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $cf	; Set frequency '10959' (octave 5 semitone 719) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d2	; Set frequency '10962' (octave 5 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d5	; Set frequency '10965' (octave 5 semitone 725) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d8	; Set frequency '10968' (octave 5 semitone 728) for channel FM 5
; Pattern $08, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $08, Row 1; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $08, Row 2; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $08, Row 3; 
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $08, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $08, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $08, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $08, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $08, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $08, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 31; 
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $08, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $08, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $08, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $08, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $08, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $08, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $24, $bc	; Set frequency '9404' (octave 4 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $24, $ba	; Set frequency '9402' (octave 4 semitone 1210) for channel FM 5
; Pattern $09, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $24, $b8	; Set frequency '9400' (octave 4 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $24, $b6	; Set frequency '9398' (octave 4 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $24, $b4	; Set frequency '9396' (octave 4 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $24, $b2	; Set frequency '9394' (octave 4 semitone 1202) for channel FM 5
; Pattern $09, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $ae	; Set frequency '9390' (octave 4 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $24, $ac	; Set frequency '9388' (octave 4 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $24, $aa	; Set frequency '9386' (octave 4 semitone 1194) for channel FM 5
; Pattern $09, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $09, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8d	; Note F#4 on channel FM 5
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $09, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $09, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $09, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $09, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $09, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $09, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $09, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $09, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $09, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $09, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $09, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $09, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 37; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $09, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $09, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $09, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $09, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 45; 
	dc.b $fe, $04	; Delay
; Pattern $09, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $09, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $5b	; Set frequency '9051' (octave 4 semitone 859) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $05, $87	; Note D#4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $09, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $0a, Row 1; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $0a, Row 2; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $0a, Row 3; 
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $0a, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0a, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0a, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0a, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0a, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 31; 
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0a, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0a, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0a, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0a, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0a, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0a, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0a, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $05, $87	; Note D#4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0b, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0b, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0b, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0b, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0b, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0b, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0b, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $97	; Note B-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0b, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0b, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 37; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0b, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0b, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0b, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 45; 
	dc.b $fe, $04	; Delay
; Pattern $0b, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $0b, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $04	; Delay
	dc.b $35, $2a, $84	; Set frequency '10884' (octave 5 semitone 644) for channel FM 5
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $87	; Set frequency '10887' (octave 5 semitone 647) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8a	; Set frequency '10890' (octave 5 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $90	; Set frequency '10896' (octave 5 semitone 656) for channel FM 5
; Pattern $0b, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $93	; Set frequency '10899' (octave 5 semitone 659) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $96	; Set frequency '10902' (octave 5 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $99	; Set frequency '10905' (octave 5 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9c	; Set frequency '10908' (octave 5 semitone 668) for channel FM 5
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $9f	; Set frequency '10911' (octave 5 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a2	; Set frequency '10914' (octave 5 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a5	; Set frequency '10917' (octave 5 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $a8	; Set frequency '10920' (octave 5 semitone 680) for channel FM 5
; Pattern $0b, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $35, $2a, $ab	; Set frequency '10923' (octave 5 semitone 683) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $2a, $ae	; Set frequency '10926' (octave 5 semitone 686) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $2a, $b1	; Set frequency '10929' (octave 5 semitone 689) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $2a, $b4	; Set frequency '10932' (octave 5 semitone 692) for channel FM 5
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $2a, $b7	; Set frequency '10935' (octave 5 semitone 695) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $2a, $ba	; Set frequency '10938' (octave 5 semitone 698) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $2a, $bd	; Set frequency '10941' (octave 5 semitone 701) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $2a, $c0	; Set frequency '10944' (octave 5 semitone 704) for channel FM 5
; Pattern $0b, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c3	; Set frequency '10947' (octave 5 semitone 707) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c6	; Set frequency '10950' (octave 5 semitone 710) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $c9	; Set frequency '10953' (octave 5 semitone 713) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $cc	; Set frequency '10956' (octave 5 semitone 716) for channel FM 5
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $cf	; Set frequency '10959' (octave 5 semitone 719) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d2	; Set frequency '10962' (octave 5 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d5	; Set frequency '10965' (octave 5 semitone 725) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2a, $d8	; Set frequency '10968' (octave 5 semitone 728) for channel FM 5
; Pattern $0c, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $0c, Row 1; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $0c, Row 2; 
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $0c, Row 3; 
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $0c, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0c, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0c, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0c, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0c, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0c, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0c, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0c, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $0c, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
; Pattern $0c, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $c3	; Set frequency '9155' (octave 4 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 31; 
	dc.b $05, $93	; Note A-4 on channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $72	; Set instrument for channel FM 5
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0c, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0c, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0c, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0c, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0c, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0c, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0c, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0c, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0c, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0c, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0c, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0c, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
; Pattern $0c, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $24, $79	; Set frequency '9337' (octave 4 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
; Pattern $0c, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $24, $7b	; Set frequency '9339' (octave 4 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $45, $73	; Set instrument for channel FM 5
	dc.b $25, $0d	; Set volume for channel FM 5
	dc.b $05, $a1	; Note C-5 on channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $24, $bc	; Set frequency '9404' (octave 4 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $24, $ba	; Set frequency '9402' (octave 4 semitone 1210) for channel FM 5
; Pattern $0d, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $24, $b8	; Set frequency '9400' (octave 4 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $24, $b6	; Set frequency '9398' (octave 4 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $24, $b4	; Set frequency '9396' (octave 4 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $24, $b2	; Set frequency '9394' (octave 4 semitone 1202) for channel FM 5
; Pattern $0d, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $24, $ae	; Set frequency '9390' (octave 4 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $24, $ac	; Set frequency '9388' (octave 4 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $24, $aa	; Set frequency '9386' (octave 4 semitone 1194) for channel FM 5
; Pattern $0d, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0d, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8d	; Note F#4 on channel FM 5
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0d, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0d, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0d, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0d, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $0d, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0d, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $0d, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $0d, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $0d, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0d, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
; Pattern $0d, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8d	; Set frequency '9101' (octave 4 semitone 909) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
; Pattern $0d, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $8f	; Set frequency '9103' (octave 4 semitone 911) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $05, $81	; Note C-4 on channel FM 5
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0d, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0d, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0d, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0d, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0d, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0d, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 37; 
	dc.b $25, $0c	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0d, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0d, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0d, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0d, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0b	; Set volume for channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 45; 
	dc.b $fe, $04	; Delay
; Pattern $0d, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
; Pattern $0d, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $59	; Set frequency '9049' (octave 4 semitone 857) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $35, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $56	; Set frequency '9046' (octave 4 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $54	; Set frequency '9044' (octave 4 semitone 852) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $52	; Set frequency '9042' (octave 4 semitone 850) for channel FM 5
; Pattern $0d, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $50	; Set frequency '9040' (octave 4 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $4e	; Set frequency '9038' (octave 4 semitone 846) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $4c	; Set frequency '9036' (octave 4 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $23, $4a	; Set frequency '9034' (octave 4 semitone 842) for channel FM 5
; Pattern $0d, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $46	; Set frequency '9030' (octave 4 semitone 838) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 5
; Pattern $0d, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3c	; Set frequency '9020' (octave 4 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $3a	; Set frequency '9018' (octave 4 semitone 826) for channel FM 5
; Pattern $0d, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $38	; Set frequency '9016' (octave 4 semitone 824) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $36	; Set frequency '9014' (octave 4 semitone 822) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $34	; Set frequency '9012' (octave 4 semitone 820) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $32	; Set frequency '9010' (octave 4 semitone 818) for channel FM 5
; Pattern $0d, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $30	; Set frequency '9008' (octave 4 semitone 816) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $2e	; Set frequency '9006' (octave 4 semitone 814) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $2c	; Set frequency '9004' (octave 4 semitone 812) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $2a	; Set frequency '9002' (octave 4 semitone 810) for channel FM 5
; Pattern $0d, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $23, $26	; Set frequency '8998' (octave 4 semitone 806) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $23, $24	; Set frequency '8996' (octave 4 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $23, $22	; Set frequency '8994' (octave 4 semitone 802) for channel FM 5
; Pattern $0d, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $23, $1e	; Set frequency '8990' (octave 4 semitone 798) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $23, $1c	; Set frequency '8988' (octave 4 semitone 796) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $23, $1a	; Set frequency '8986' (octave 4 semitone 794) for channel FM 5
; Pattern $0d, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $25, $08	; Set volume for channel FM 5
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $16	; Set frequency '8982' (octave 4 semitone 790) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $14	; Set frequency '8980' (octave 4 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $12	; Set frequency '8978' (octave 4 semitone 786) for channel FM 5
; Pattern $0d, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $10	; Set frequency '8976' (octave 4 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $0e	; Set frequency '8974' (octave 4 semitone 782) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $0a	; Set frequency '8970' (octave 4 semitone 778) for channel FM 5
; Pattern $0d, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $06	; Set frequency '8966' (octave 4 semitone 774) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $02	; Set frequency '8962' (octave 4 semitone 770) for channel FM 5
; Pattern $0d, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 5
; Pattern $0d, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $25, $07	; Set volume for channel FM 5
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $35, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 5
; Pattern $0d, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 5
; Pattern $0d, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 5
; Pattern $0d, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 5
; Pattern $0e, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $0e, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $0e, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0e, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0e, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0e, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0e, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0e, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0e, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0e, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0e, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0e, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0e, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0e, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0e, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0f, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0f, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0f, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0f, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0f, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0f, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0f, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0f, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $0f, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $0f, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $0f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $0f, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0f, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0f, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $41, $78	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
; Pattern $10, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
; Pattern $10, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $10, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $10, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $10, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $10, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $10, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $10, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $10, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $10, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $10, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $10, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $10, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $10, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $10, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $10, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $10, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $11, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $11, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $11, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $11, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $11, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $11, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $11, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $11, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $11, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $11, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $11, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $11, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
; Pattern $11, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
; Pattern $11, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
; Pattern $11, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
; Pattern $11, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $11, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $11, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $11, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

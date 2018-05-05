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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 22; 
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
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 54; 
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
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $06, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 22; 
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
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 48; 
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
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $07, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 54; 
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
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 22; 
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
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 54; 
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
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $08, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $09, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 22; 
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
; Pattern $09, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 48; 
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
; Pattern $09, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $09, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $09, Row 54; 
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
; Pattern $09, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 22; 
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
; Pattern $0a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0a, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 54; 
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
; Pattern $0a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0a, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0a, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0a, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 22; 
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
; Pattern $0b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 48; 
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
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0b, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 51; 
	dc.b $25, $09	; Set volume for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 54; 
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
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0c, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 22; 
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
; Pattern $0c, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0c, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0c, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 54; 
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
; Pattern $0c, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0c, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0c, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0c, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
; Pattern $0d, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0d, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 22; 
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
; Pattern $0d, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
; Pattern $0d, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $25, $0a	; Set volume for channel FM 5
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0d, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
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
	dc.b $35, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $35, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $35, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
	dc.b $35, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 5
; Pattern $0e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $35, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $35, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
	dc.b $35, $22, $ca	; Set frequency '8906' (octave 4 semitone 714) for channel FM 5
; Pattern $0e, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $35, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $35, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
	dc.b $35, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 5
; Pattern $0e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $35, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $35, $22, $bc	; Set frequency '8892' (octave 4 semitone 700) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
	dc.b $35, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 5
; Pattern $0e, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $22, $b8	; Set frequency '8888' (octave 4 semitone 696) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $22, $b6	; Set frequency '8886' (octave 4 semitone 694) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $b2	; Set frequency '8882' (octave 4 semitone 690) for channel FM 5
; Pattern $0e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $b0	; Set frequency '8880' (octave 4 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $ac	; Set frequency '8876' (octave 4 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 5
; Pattern $0e, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 5
; Pattern $0e, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 5
; Pattern $0e, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $22, $94	; Set frequency '8852' (octave 4 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $22, $92	; Set frequency '8850' (octave 4 semitone 658) for channel FM 5
; Pattern $0e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 5
; Pattern $0e, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 5
; Pattern $0e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 5
; Pattern $0e, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 5
; Pattern $0e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 5
; Pattern $0e, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 5
; Pattern $0e, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 5
; Pattern $0e, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $35, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 5
; Pattern $0e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 5
; Pattern $0e, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $0e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $0e, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 5
; Pattern $0e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $66	; Set frequency '7270' (octave 3 semitone 1126) for channel FM 5
; Pattern $0e, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $35, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1c, $62	; Set frequency '7266' (octave 3 semitone 1122) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1c, $60	; Set frequency '7264' (octave 3 semitone 1120) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 5
; Pattern $0e, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1c, $5c	; Set frequency '7260' (octave 3 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1c, $5a	; Set frequency '7258' (octave 3 semitone 1114) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1c, $56	; Set frequency '7254' (octave 3 semitone 1110) for channel FM 5
; Pattern $0e, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $54	; Set frequency '7252' (octave 3 semitone 1108) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $52	; Set frequency '7250' (octave 3 semitone 1106) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 5
; Pattern $0e, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $4a	; Set frequency '7242' (octave 3 semitone 1098) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 5
; Pattern $0e, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $42	; Set frequency '7234' (octave 3 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 5
; Pattern $0e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3c	; Set frequency '7228' (octave 3 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $3a	; Set frequency '7226' (octave 3 semitone 1082) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $36	; Set frequency '7222' (octave 3 semitone 1078) for channel FM 5
; Pattern $0e, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $35, $1c, $34	; Set frequency '7220' (octave 3 semitone 1076) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1c, $32	; Set frequency '7218' (octave 3 semitone 1074) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1c, $30	; Set frequency '7216' (octave 3 semitone 1072) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 5
; Pattern $0e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1c, $2a	; Set frequency '7210' (octave 3 semitone 1066) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1c, $26	; Set frequency '7206' (octave 3 semitone 1062) for channel FM 5
; Pattern $0e, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $20	; Set frequency '7200' (octave 3 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 5
; Pattern $0e, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1c	; Set frequency '7196' (octave 3 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $1a	; Set frequency '7194' (octave 3 semitone 1050) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 5
; Pattern $0e, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $35, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $1c, $12	; Set frequency '7186' (octave 3 semitone 1042) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 5
; Pattern $0e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $1c, $06	; Set frequency '7174' (octave 3 semitone 1030) for channel FM 5
; Pattern $0e, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1c, $02	; Set frequency '7170' (octave 3 semitone 1026) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $1c, $00	; Set frequency '7168' (octave 3 semitone 1024) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 5
; Pattern $0e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 5
; Pattern $0e, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 5
; Pattern $0e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 5
; Pattern $0e, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $35, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $1b, $e2	; Set frequency '7138' (octave 3 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $1b, $e0	; Set frequency '7136' (octave 3 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 5
; Pattern $0e, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 5
; Pattern $0e, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 5
; Pattern $0e, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 5
; Pattern $0e, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 5
; Pattern $0e, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 5
; Pattern $0e, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 5
; Pattern $0e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $aa	; Set frequency '7082' (octave 3 semitone 938) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a8	; Set frequency '7080' (octave 3 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 5
; Pattern $0e, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 5
; Pattern $0e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 5
; Pattern $0e, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $35, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 5
; Pattern $0e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 5
; Pattern $0e, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 5
; Pattern $0e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $78	; Set frequency '7032' (octave 3 semitone 888) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 5
; Pattern $0e, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $74	; Set frequency '7028' (octave 3 semitone 884) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $70	; Set frequency '7024' (octave 3 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6e	; Set frequency '7022' (octave 3 semitone 878) for channel FM 5
; Pattern $0e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $6a	; Set frequency '7018' (octave 3 semitone 874) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $68	; Set frequency '7016' (octave 3 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $66	; Set frequency '7014' (octave 3 semitone 870) for channel FM 5
; Pattern $0e, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1b, $62	; Set frequency '7010' (octave 3 semitone 866) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1b, $60	; Set frequency '7008' (octave 3 semitone 864) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1b, $5e	; Set frequency '7006' (octave 3 semitone 862) for channel FM 5
; Pattern $0e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1b, $5c	; Set frequency '7004' (octave 3 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1b, $5a	; Set frequency '7002' (octave 3 semitone 858) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 5
; Pattern $0e, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 5
; Pattern $0e, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 5
; Pattern $0e, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $42	; Set frequency '6978' (octave 3 semitone 834) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $40	; Set frequency '6976' (octave 3 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 5
; Pattern $0e, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3c	; Set frequency '6972' (octave 3 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $36	; Set frequency '6966' (octave 3 semitone 822) for channel FM 5
; Pattern $0e, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $35, $1b, $34	; Set frequency '6964' (octave 3 semitone 820) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1b, $32	; Set frequency '6962' (octave 3 semitone 818) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1b, $30	; Set frequency '6960' (octave 3 semitone 816) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1b, $2e	; Set frequency '6958' (octave 3 semitone 814) for channel FM 5
; Pattern $0e, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1b, $2a	; Set frequency '6954' (octave 3 semitone 810) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1b, $28	; Set frequency '6952' (octave 3 semitone 808) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1b, $26	; Set frequency '6950' (octave 3 semitone 806) for channel FM 5
; Pattern $0e, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $24	; Set frequency '6948' (octave 3 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $22	; Set frequency '6946' (octave 3 semitone 802) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $20	; Set frequency '6944' (octave 3 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1e	; Set frequency '6942' (octave 3 semitone 798) for channel FM 5
; Pattern $0e, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1c	; Set frequency '6940' (octave 3 semitone 796) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $1a	; Set frequency '6938' (octave 3 semitone 794) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1b, $16	; Set frequency '6934' (octave 3 semitone 790) for channel FM 5
; Pattern $0f, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $35, $1b, $14	; Set frequency '6932' (octave 3 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $1b, $12	; Set frequency '6930' (octave 3 semitone 786) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $1b, $10	; Set frequency '6928' (octave 3 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $1b, $0e	; Set frequency '6926' (octave 3 semitone 782) for channel FM 5
; Pattern $0f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $1b, $0a	; Set frequency '6922' (octave 3 semitone 778) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $1b, $08	; Set frequency '6920' (octave 3 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $1b, $06	; Set frequency '6918' (octave 3 semitone 774) for channel FM 5
; Pattern $0f, Row 2; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $1b, $04	; Set frequency '6916' (octave 3 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1b, $02	; Set frequency '6914' (octave 3 semitone 770) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 5
; Pattern $0f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 5
; Pattern $0f, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 5
; Pattern $0f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e8	; Set frequency '6888' (octave 3 semitone 744) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $e6	; Set frequency '6886' (octave 3 semitone 742) for channel FM 5
; Pattern $0f, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $1a, $e4	; Set frequency '6884' (octave 3 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $1a, $e2	; Set frequency '6882' (octave 3 semitone 738) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $1a, $e0	; Set frequency '6880' (octave 3 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 5
; Pattern $0f, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $1a, $dc	; Set frequency '6876' (octave 3 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $1a, $da	; Set frequency '6874' (octave 3 semitone 730) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $1a, $d8	; Set frequency '6872' (octave 3 semitone 728) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $1a, $d6	; Set frequency '6870' (octave 3 semitone 726) for channel FM 5
; Pattern $0f, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1a, $d2	; Set frequency '6866' (octave 3 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $1a, $ce	; Set frequency '6862' (octave 3 semitone 718) for channel FM 5
; Pattern $0f, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $1a, $cc	; Set frequency '6860' (octave 3 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1a, $ca	; Set frequency '6858' (octave 3 semitone 714) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $1a, $c8	; Set frequency '6856' (octave 3 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $1a, $c6	; Set frequency '6854' (octave 3 semitone 710) for channel FM 5
; Pattern $0f, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $1a, $c4	; Set frequency '6852' (octave 3 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1a, $c2	; Set frequency '6850' (octave 3 semitone 706) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $c0	; Set frequency '6848' (octave 3 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $be	; Set frequency '6846' (octave 3 semitone 702) for channel FM 5
; Pattern $0f, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $bc	; Set frequency '6844' (octave 3 semitone 700) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ba	; Set frequency '6842' (octave 3 semitone 698) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $b8	; Set frequency '6840' (octave 3 semitone 696) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $b6	; Set frequency '6838' (octave 3 semitone 694) for channel FM 5
; Pattern $0f, Row 12; 
	dc.b $08, $34	; Note D-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $b4	; Set frequency '6836' (octave 3 semitone 692) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $b2	; Set frequency '6834' (octave 3 semitone 690) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $b0	; Set frequency '6832' (octave 3 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ae	; Set frequency '6830' (octave 3 semitone 686) for channel FM 5
; Pattern $0f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $ac	; Set frequency '6828' (octave 3 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $0f, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $0f, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $0f, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $1a, $90	; Set frequency '6800' (octave 3 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $1a, $8e	; Set frequency '6798' (octave 3 semitone 654) for channel FM 5
; Pattern $0f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $1a, $8c	; Set frequency '6796' (octave 3 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $1a, $8a	; Set frequency '6794' (octave 3 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $1a, $88	; Set frequency '6792' (octave 3 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $1a, $86	; Set frequency '6790' (octave 3 semitone 646) for channel FM 5
; Pattern $0f, Row 18; 
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $1a, $84	; Set frequency '6788' (octave 3 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $bc	; Set frequency '5308' (octave 2 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ba	; Set frequency '5306' (octave 2 semitone 1210) for channel FM 5
; Pattern $0f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b8	; Set frequency '5304' (octave 2 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b6	; Set frequency '5302' (octave 2 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b4	; Set frequency '5300' (octave 2 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b2	; Set frequency '5298' (octave 2 semitone 1202) for channel FM 5
; Pattern $0f, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $2c	; Note A#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $b0	; Set frequency '5296' (octave 2 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ae	; Set frequency '5294' (octave 2 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $ac	; Set frequency '5292' (octave 2 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $aa	; Set frequency '5290' (octave 2 semitone 1194) for channel FM 5
; Pattern $0f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a8	; Set frequency '5288' (octave 2 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a6	; Set frequency '5286' (octave 2 semitone 1190) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a4	; Set frequency '5284' (octave 2 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $a2	; Set frequency '5282' (octave 2 semitone 1186) for channel FM 5
; Pattern $0f, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $35, $14, $a0	; Set frequency '5280' (octave 2 semitone 1184) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $14, $9c	; Set frequency '5276' (octave 2 semitone 1180) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $14, $9a	; Set frequency '5274' (octave 2 semitone 1178) for channel FM 5
; Pattern $0f, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $14, $98	; Set frequency '5272' (octave 2 semitone 1176) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $14, $96	; Set frequency '5270' (octave 2 semitone 1174) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $14, $94	; Set frequency '5268' (octave 2 semitone 1172) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $14, $92	; Set frequency '5266' (octave 2 semitone 1170) for channel FM 5
; Pattern $0f, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $90	; Set frequency '5264' (octave 2 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8e	; Set frequency '5262' (octave 2 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8c	; Set frequency '5260' (octave 2 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $8a	; Set frequency '5258' (octave 2 semitone 1162) for channel FM 5
; Pattern $0f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $88	; Set frequency '5256' (octave 2 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $86	; Set frequency '5254' (octave 2 semitone 1158) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $84	; Set frequency '5252' (octave 2 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $82	; Set frequency '5250' (octave 2 semitone 1154) for channel FM 5
; Pattern $0f, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $36	; Note D#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $80	; Set frequency '5248' (octave 2 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7e	; Set frequency '5246' (octave 2 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7c	; Set frequency '5244' (octave 2 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $7a	; Set frequency '5242' (octave 2 semitone 1146) for channel FM 5
; Pattern $0f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $78	; Set frequency '5240' (octave 2 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $76	; Set frequency '5238' (octave 2 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $74	; Set frequency '5236' (octave 2 semitone 1140) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $72	; Set frequency '5234' (octave 2 semitone 1138) for channel FM 5
; Pattern $0f, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $35, $14, $70	; Set frequency '5232' (octave 2 semitone 1136) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $14, $6e	; Set frequency '5230' (octave 2 semitone 1134) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $14, $6c	; Set frequency '5228' (octave 2 semitone 1132) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $14, $6a	; Set frequency '5226' (octave 2 semitone 1130) for channel FM 5
; Pattern $0f, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $14, $68	; Set frequency '5224' (octave 2 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $14, $66	; Set frequency '5222' (octave 2 semitone 1126) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $14, $64	; Set frequency '5220' (octave 2 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $14, $62	; Set frequency '5218' (octave 2 semitone 1122) for channel FM 5
; Pattern $0f, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $60	; Set frequency '5216' (octave 2 semitone 1120) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5e	; Set frequency '5214' (octave 2 semitone 1118) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5c	; Set frequency '5212' (octave 2 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $5a	; Set frequency '5210' (octave 2 semitone 1114) for channel FM 5
; Pattern $0f, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $58	; Set frequency '5208' (octave 2 semitone 1112) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $56	; Set frequency '5206' (octave 2 semitone 1110) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $54	; Set frequency '5204' (octave 2 semitone 1108) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $52	; Set frequency '5202' (octave 2 semitone 1106) for channel FM 5
; Pattern $0f, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $35, $14, $50	; Set frequency '5200' (octave 2 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $14, $4e	; Set frequency '5198' (octave 2 semitone 1102) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $14, $4c	; Set frequency '5196' (octave 2 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $14, $4a	; Set frequency '5194' (octave 2 semitone 1098) for channel FM 5
; Pattern $0f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $14, $48	; Set frequency '5192' (octave 2 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $14, $46	; Set frequency '5190' (octave 2 semitone 1094) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $14, $44	; Set frequency '5188' (octave 2 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $14, $42	; Set frequency '5186' (octave 2 semitone 1090) for channel FM 5
; Pattern $0f, Row 34; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $14, $40	; Set frequency '5184' (octave 2 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $14, $3e	; Set frequency '5182' (octave 2 semitone 1086) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $14, $3c	; Set frequency '5180' (octave 2 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $14, $3a	; Set frequency '5178' (octave 2 semitone 1082) for channel FM 5
; Pattern $0f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $14, $38	; Set frequency '5176' (octave 2 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $14, $36	; Set frequency '5174' (octave 2 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $14, $34	; Set frequency '5172' (octave 2 semitone 1076) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $14, $32	; Set frequency '5170' (octave 2 semitone 1074) for channel FM 5
; Pattern $0f, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $14, $30	; Set frequency '5168' (octave 2 semitone 1072) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $14, $2e	; Set frequency '5166' (octave 2 semitone 1070) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2c	; Set frequency '5164' (octave 2 semitone 1068) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $2a	; Set frequency '5162' (octave 2 semitone 1066) for channel FM 5
; Pattern $0f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $28	; Set frequency '5160' (octave 2 semitone 1064) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $26	; Set frequency '5158' (octave 2 semitone 1062) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $24	; Set frequency '5156' (octave 2 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $14, $22	; Set frequency '5154' (octave 2 semitone 1058) for channel FM 5
; Pattern $0f, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $35, $14, $20	; Set frequency '5152' (octave 2 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $14, $1c	; Set frequency '5148' (octave 2 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $14, $1a	; Set frequency '5146' (octave 2 semitone 1050) for channel FM 5
; Pattern $0f, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $14, $18	; Set frequency '5144' (octave 2 semitone 1048) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $14, $16	; Set frequency '5142' (octave 2 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $14, $14	; Set frequency '5140' (octave 2 semitone 1044) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $14, $12	; Set frequency '5138' (octave 2 semitone 1042) for channel FM 5
; Pattern $0f, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $14, $10	; Set frequency '5136' (octave 2 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $14, $0e	; Set frequency '5134' (octave 2 semitone 1038) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $14, $0c	; Set frequency '5132' (octave 2 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $14, $0a	; Set frequency '5130' (octave 2 semitone 1034) for channel FM 5
; Pattern $0f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $14, $08	; Set frequency '5128' (octave 2 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $14, $06	; Set frequency '5126' (octave 2 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $14, $04	; Set frequency '5124' (octave 2 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $14, $02	; Set frequency '5122' (octave 2 semitone 1026) for channel FM 5
; Pattern $0f, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $14, $00	; Set frequency '5120' (octave 2 semitone 1024) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $13, $fe	; Set frequency '5118' (octave 2 semitone 1022) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $fc	; Set frequency '5116' (octave 2 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $fa	; Set frequency '5114' (octave 2 semitone 1018) for channel FM 5
; Pattern $0f, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f8	; Set frequency '5112' (octave 2 semitone 1016) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f6	; Set frequency '5110' (octave 2 semitone 1014) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f4	; Set frequency '5108' (octave 2 semitone 1012) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f2	; Set frequency '5106' (octave 2 semitone 1010) for channel FM 5
; Pattern $0f, Row 44; 
	dc.b $09, $3c	; Note F#2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $f0	; Set frequency '5104' (octave 2 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ee	; Set frequency '5102' (octave 2 semitone 1006) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ec	; Set frequency '5100' (octave 2 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ea	; Set frequency '5098' (octave 2 semitone 1002) for channel FM 5
; Pattern $0f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e8	; Set frequency '5096' (octave 2 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e6	; Set frequency '5094' (octave 2 semitone 998) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e4	; Set frequency '5092' (octave 2 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e2	; Set frequency '5090' (octave 2 semitone 994) for channel FM 5
; Pattern $0f, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $0a, $36	; Note D#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $e0	; Set frequency '5088' (octave 2 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $de	; Set frequency '5086' (octave 2 semitone 990) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $dc	; Set frequency '5084' (octave 2 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $da	; Set frequency '5082' (octave 2 semitone 986) for channel FM 5
; Pattern $0f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $d8	; Set frequency '5080' (octave 2 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $d4	; Set frequency '5076' (octave 2 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $d2	; Set frequency '5074' (octave 2 semitone 978) for channel FM 5
; Pattern $0f, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $30	; Note C-2 on channel PSG 1
	dc.b $35, $13, $d0	; Set frequency '5072' (octave 2 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $13, $ce	; Set frequency '5070' (octave 2 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $13, $cc	; Set frequency '5068' (octave 2 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $13, $ca	; Set frequency '5066' (octave 2 semitone 970) for channel FM 5
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $13, $c4	; Set frequency '5060' (octave 2 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 5
; Pattern $0f, Row 50; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $be	; Set frequency '5054' (octave 2 semitone 958) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $bc	; Set frequency '5052' (octave 2 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ba	; Set frequency '5050' (octave 2 semitone 954) for channel FM 5
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b8	; Set frequency '5048' (octave 2 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b6	; Set frequency '5046' (octave 2 semitone 950) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b4	; Set frequency '5044' (octave 2 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b2	; Set frequency '5042' (octave 2 semitone 946) for channel FM 5
; Pattern $0f, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $b0	; Set frequency '5040' (octave 2 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ae	; Set frequency '5038' (octave 2 semitone 942) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $ac	; Set frequency '5036' (octave 2 semitone 940) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $aa	; Set frequency '5034' (octave 2 semitone 938) for channel FM 5
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a8	; Set frequency '5032' (octave 2 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a6	; Set frequency '5030' (octave 2 semitone 934) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a4	; Set frequency '5028' (octave 2 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $a2	; Set frequency '5026' (octave 2 semitone 930) for channel FM 5
; Pattern $0f, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $08, $26	; Note G-1 on channel PSG 1
	dc.b $35, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $13, $9e	; Set frequency '5022' (octave 2 semitone 926) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $13, $9c	; Set frequency '5020' (octave 2 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $13, $9a	; Set frequency '5018' (octave 2 semitone 922) for channel FM 5
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $13, $98	; Set frequency '5016' (octave 2 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $13, $96	; Set frequency '5014' (octave 2 semitone 918) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $13, $94	; Set frequency '5012' (octave 2 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $13, $92	; Set frequency '5010' (octave 2 semitone 914) for channel FM 5
; Pattern $0f, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $09, $30	; Note C-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $90	; Set frequency '5008' (octave 2 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8e	; Set frequency '5006' (octave 2 semitone 910) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8c	; Set frequency '5004' (octave 2 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $8a	; Set frequency '5002' (octave 2 semitone 906) for channel FM 5
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $88	; Set frequency '5000' (octave 2 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $86	; Set frequency '4998' (octave 2 semitone 902) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $84	; Set frequency '4996' (octave 2 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $82	; Set frequency '4994' (octave 2 semitone 898) for channel FM 5
; Pattern $0f, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $80	; Set frequency '4992' (octave 2 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7c	; Set frequency '4988' (octave 2 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $7a	; Set frequency '4986' (octave 2 semitone 890) for channel FM 5
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $78	; Set frequency '4984' (octave 2 semitone 888) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $76	; Set frequency '4982' (octave 2 semitone 886) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $74	; Set frequency '4980' (octave 2 semitone 884) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $72	; Set frequency '4978' (octave 2 semitone 882) for channel FM 5
; Pattern $0f, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $09, $3a	; Note F-2 on channel PSG 2
	dc.b $35, $13, $70	; Set frequency '4976' (octave 2 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $13, $6e	; Set frequency '4974' (octave 2 semitone 878) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $13, $6c	; Set frequency '4972' (octave 2 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $13, $6a	; Set frequency '4970' (octave 2 semitone 874) for channel FM 5
; Pattern $0f, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $13, $68	; Set frequency '4968' (octave 2 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $13, $66	; Set frequency '4966' (octave 2 semitone 870) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $13, $64	; Set frequency '4964' (octave 2 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $13, $62	; Set frequency '4962' (octave 2 semitone 866) for channel FM 5
; Pattern $0f, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $60	; Set frequency '4960' (octave 2 semitone 864) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5e	; Set frequency '4958' (octave 2 semitone 862) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5c	; Set frequency '4956' (octave 2 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $5a	; Set frequency '4954' (octave 2 semitone 858) for channel FM 5
; Pattern $0f, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $58	; Set frequency '4952' (octave 2 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $56	; Set frequency '4950' (octave 2 semitone 854) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $54	; Set frequency '4948' (octave 2 semitone 852) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $52	; Set frequency '4946' (octave 2 semitone 850) for channel FM 5
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
	dc.b $35, $13, $50	; Set frequency '4944' (octave 2 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $31, $24, $be	; Set frequency '9406' (octave 4 semitone 1214) for channel FM 2
	dc.b $35, $13, $4e	; Set frequency '4942' (octave 2 semitone 846) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $31, $24, $1e	; Set frequency '9246' (octave 4 semitone 1054) for channel FM 2
	dc.b $35, $13, $4c	; Set frequency '4940' (octave 2 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $31, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 2
	dc.b $35, $13, $4a	; Set frequency '4938' (octave 2 semitone 842) for channel FM 5
; Pattern $10, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $31, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 2
	dc.b $35, $13, $48	; Set frequency '4936' (octave 2 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $31, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 2
	dc.b $35, $13, $46	; Set frequency '4934' (octave 2 semitone 838) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $31, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 2
	dc.b $35, $13, $44	; Set frequency '4932' (octave 2 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $31, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 2
	dc.b $35, $13, $42	; Set frequency '4930' (octave 2 semitone 834) for channel FM 5
; Pattern $10, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $31, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 2
	dc.b $35, $13, $40	; Set frequency '4928' (octave 2 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $31, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 2
	dc.b $35, $13, $3e	; Set frequency '4926' (octave 2 semitone 830) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $31, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 2
	dc.b $35, $13, $3c	; Set frequency '4924' (octave 2 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $31, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 2
	dc.b $35, $13, $3a	; Set frequency '4922' (octave 2 semitone 826) for channel FM 5
; Pattern $10, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $31, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 2
	dc.b $35, $13, $38	; Set frequency '4920' (octave 2 semitone 824) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $31, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 2
	dc.b $35, $13, $36	; Set frequency '4918' (octave 2 semitone 822) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $31, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 2
	dc.b $35, $13, $34	; Set frequency '4916' (octave 2 semitone 820) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $31, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 2
	dc.b $35, $13, $32	; Set frequency '4914' (octave 2 semitone 818) for channel FM 5
; Pattern $10, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $13, $30	; Set frequency '4912' (octave 2 semitone 816) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $13, $2e	; Set frequency '4910' (octave 2 semitone 814) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $2c	; Set frequency '4908' (octave 2 semitone 812) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $2a	; Set frequency '4906' (octave 2 semitone 810) for channel FM 5
; Pattern $10, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $28	; Set frequency '4904' (octave 2 semitone 808) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $26	; Set frequency '4902' (octave 2 semitone 806) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $24	; Set frequency '4900' (octave 2 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $13, $22	; Set frequency '4898' (octave 2 semitone 802) for channel FM 5
; Pattern $10, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $35, $13, $20	; Set frequency '4896' (octave 2 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $13, $1e	; Set frequency '4894' (octave 2 semitone 798) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $13, $1c	; Set frequency '4892' (octave 2 semitone 796) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $13, $1a	; Set frequency '4890' (octave 2 semitone 794) for channel FM 5
; Pattern $10, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $13, $18	; Set frequency '4888' (octave 2 semitone 792) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $13, $16	; Set frequency '4886' (octave 2 semitone 790) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $13, $14	; Set frequency '4884' (octave 2 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $13, $12	; Set frequency '4882' (octave 2 semitone 786) for channel FM 5
; Pattern $10, Row 8; 
	dc.b $f2, $43	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $f4, $83	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $13, $10	; Set frequency '4880' (octave 2 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $13, $0e	; Set frequency '4878' (octave 2 semitone 782) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $13, $0c	; Set frequency '4876' (octave 2 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $13, $0a	; Set frequency '4874' (octave 2 semitone 778) for channel FM 5
; Pattern $10, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $13, $08	; Set frequency '4872' (octave 2 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $13, $06	; Set frequency '4870' (octave 2 semitone 774) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $13, $04	; Set frequency '4868' (octave 2 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $13, $02	; Set frequency '4866' (octave 2 semitone 770) for channel FM 5
; Pattern $10, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $13, $00	; Set frequency '4864' (octave 2 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $12, $fe	; Set frequency '4862' (octave 2 semitone 766) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $fc	; Set frequency '4860' (octave 2 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $fa	; Set frequency '4858' (octave 2 semitone 762) for channel FM 5
; Pattern $10, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f8	; Set frequency '4856' (octave 2 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f6	; Set frequency '4854' (octave 2 semitone 758) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f4	; Set frequency '4852' (octave 2 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f2	; Set frequency '4850' (octave 2 semitone 754) for channel FM 5
; Pattern $10, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $f0	; Set frequency '4848' (octave 2 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ee	; Set frequency '4846' (octave 2 semitone 750) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ec	; Set frequency '4844' (octave 2 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ea	; Set frequency '4842' (octave 2 semitone 746) for channel FM 5
; Pattern $10, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e8	; Set frequency '4840' (octave 2 semitone 744) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e6	; Set frequency '4838' (octave 2 semitone 742) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e4	; Set frequency '4836' (octave 2 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e2	; Set frequency '4834' (octave 2 semitone 738) for channel FM 5
; Pattern $10, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $e0	; Set frequency '4832' (octave 2 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $dc	; Set frequency '4828' (octave 2 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $da	; Set frequency '4826' (octave 2 semitone 730) for channel FM 5
; Pattern $10, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $d8	; Set frequency '4824' (octave 2 semitone 728) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $d6	; Set frequency '4822' (octave 2 semitone 726) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $d4	; Set frequency '4820' (octave 2 semitone 724) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $d2	; Set frequency '4818' (octave 2 semitone 722) for channel FM 5
; Pattern $10, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $12, $d0	; Set frequency '4816' (octave 2 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $12, $ce	; Set frequency '4814' (octave 2 semitone 718) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $12, $cc	; Set frequency '4812' (octave 2 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $12, $ca	; Set frequency '4810' (octave 2 semitone 714) for channel FM 5
; Pattern $10, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $12, $c8	; Set frequency '4808' (octave 2 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $12, $c6	; Set frequency '4806' (octave 2 semitone 710) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $12, $c4	; Set frequency '4804' (octave 2 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $12, $c2	; Set frequency '4802' (octave 2 semitone 706) for channel FM 5
; Pattern $10, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $bc	; Set frequency '4796' (octave 2 semitone 700) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 5
; Pattern $10, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b8	; Set frequency '4792' (octave 2 semitone 696) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b6	; Set frequency '4790' (octave 2 semitone 694) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b4	; Set frequency '4788' (octave 2 semitone 692) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b2	; Set frequency '4786' (octave 2 semitone 690) for channel FM 5
; Pattern $10, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $b0	; Set frequency '4784' (octave 2 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ae	; Set frequency '4782' (octave 2 semitone 686) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $ac	; Set frequency '4780' (octave 2 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $aa	; Set frequency '4778' (octave 2 semitone 682) for channel FM 5
; Pattern $10, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a4	; Set frequency '4772' (octave 2 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $a2	; Set frequency '4770' (octave 2 semitone 674) for channel FM 5
; Pattern $10, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $12, $a0	; Set frequency '4768' (octave 2 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $12, $9e	; Set frequency '4766' (octave 2 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 5
; Pattern $10, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $12, $98	; Set frequency '4760' (octave 2 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $12, $92	; Set frequency '4754' (octave 2 semitone 658) for channel FM 5
; Pattern $10, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 5
; Pattern $10, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 5
; Pattern $10, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 5
; Pattern $10, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 5
; Pattern $10, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $35, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0c, $aa	; Set frequency '3242' (octave 1 semitone 1194) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0c, $a8	; Set frequency '3240' (octave 1 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 5
; Pattern $10, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0c, $a2	; Set frequency '3234' (octave 1 semitone 1186) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0c, $a0	; Set frequency '3232' (octave 1 semitone 1184) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 5
; Pattern $10, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9c	; Set frequency '3228' (octave 1 semitone 1180) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $9a	; Set frequency '3226' (octave 1 semitone 1178) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $98	; Set frequency '3224' (octave 1 semitone 1176) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $96	; Set frequency '3222' (octave 1 semitone 1174) for channel FM 5
; Pattern $10, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $90	; Set frequency '3216' (octave 1 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $8e	; Set frequency '3214' (octave 1 semitone 1166) for channel FM 5
; Pattern $10, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $35, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $0c, $8a	; Set frequency '3210' (octave 1 semitone 1162) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $0c, $88	; Set frequency '3208' (octave 1 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $0c, $86	; Set frequency '3206' (octave 1 semitone 1158) for channel FM 5
; Pattern $10, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $0c, $84	; Set frequency '3204' (octave 1 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $0c, $82	; Set frequency '3202' (octave 1 semitone 1154) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $0c, $80	; Set frequency '3200' (octave 1 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 5
; Pattern $10, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $0c, $7c	; Set frequency '3196' (octave 1 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0c, $7a	; Set frequency '3194' (octave 1 semitone 1146) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $0c, $78	; Set frequency '3192' (octave 1 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $0c, $76	; Set frequency '3190' (octave 1 semitone 1142) for channel FM 5
; Pattern $10, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $0c, $74	; Set frequency '3188' (octave 1 semitone 1140) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0c, $72	; Set frequency '3186' (octave 1 semitone 1138) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $0c, $70	; Set frequency '3184' (octave 1 semitone 1136) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $0c, $6e	; Set frequency '3182' (octave 1 semitone 1134) for channel FM 5
; Pattern $10, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $0c, $6c	; Set frequency '3180' (octave 1 semitone 1132) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0c, $6a	; Set frequency '3178' (octave 1 semitone 1130) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $68	; Set frequency '3176' (octave 1 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $66	; Set frequency '3174' (octave 1 semitone 1126) for channel FM 5
; Pattern $10, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $64	; Set frequency '3172' (octave 1 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $62	; Set frequency '3170' (octave 1 semitone 1122) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $60	; Set frequency '3168' (octave 1 semitone 1120) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $5e	; Set frequency '3166' (octave 1 semitone 1118) for channel FM 5
; Pattern $10, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $35, $0c, $5c	; Set frequency '3164' (octave 1 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $0c, $5a	; Set frequency '3162' (octave 1 semitone 1114) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $0c, $58	; Set frequency '3160' (octave 1 semitone 1112) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $0c, $56	; Set frequency '3158' (octave 1 semitone 1110) for channel FM 5
; Pattern $10, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $0c, $54	; Set frequency '3156' (octave 1 semitone 1108) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $0c, $52	; Set frequency '3154' (octave 1 semitone 1106) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $0c, $50	; Set frequency '3152' (octave 1 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $0c, $4e	; Set frequency '3150' (octave 1 semitone 1102) for channel FM 5
; Pattern $10, Row 40; 
	dc.b $02, $87	; Note D#4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $0c, $4c	; Set frequency '3148' (octave 1 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0c, $4a	; Set frequency '3146' (octave 1 semitone 1098) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $0c, $48	; Set frequency '3144' (octave 1 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $0c, $46	; Set frequency '3142' (octave 1 semitone 1094) for channel FM 5
; Pattern $10, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $0c, $44	; Set frequency '3140' (octave 1 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0c, $42	; Set frequency '3138' (octave 1 semitone 1090) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $0c, $40	; Set frequency '3136' (octave 1 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $0c, $3e	; Set frequency '3134' (octave 1 semitone 1086) for channel FM 5
; Pattern $10, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $0c, $3c	; Set frequency '3132' (octave 1 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0c, $3a	; Set frequency '3130' (octave 1 semitone 1082) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $38	; Set frequency '3128' (octave 1 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $36	; Set frequency '3126' (octave 1 semitone 1078) for channel FM 5
; Pattern $10, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $34	; Set frequency '3124' (octave 1 semitone 1076) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $32	; Set frequency '3122' (octave 1 semitone 1074) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $30	; Set frequency '3120' (octave 1 semitone 1072) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2e	; Set frequency '3118' (octave 1 semitone 1070) for channel FM 5
; Pattern $10, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2c	; Set frequency '3116' (octave 1 semitone 1068) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $2a	; Set frequency '3114' (octave 1 semitone 1066) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $28	; Set frequency '3112' (octave 1 semitone 1064) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $26	; Set frequency '3110' (octave 1 semitone 1062) for channel FM 5
; Pattern $10, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $24	; Set frequency '3108' (octave 1 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $22	; Set frequency '3106' (octave 1 semitone 1058) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $20	; Set frequency '3104' (octave 1 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 5
; Pattern $10, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1c	; Set frequency '3100' (octave 1 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $1a	; Set frequency '3098' (octave 1 semitone 1050) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $18	; Set frequency '3096' (octave 1 semitone 1048) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $16	; Set frequency '3094' (octave 1 semitone 1046) for channel FM 5
; Pattern $10, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $14	; Set frequency '3092' (octave 1 semitone 1044) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $12	; Set frequency '3090' (octave 1 semitone 1042) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $10	; Set frequency '3088' (octave 1 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0c, $0e	; Set frequency '3086' (octave 1 semitone 1038) for channel FM 5
; Pattern $10, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $0c, $0c	; Set frequency '3084' (octave 1 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0c, $0a	; Set frequency '3082' (octave 1 semitone 1034) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0c, $08	; Set frequency '3080' (octave 1 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0c, $06	; Set frequency '3078' (octave 1 semitone 1030) for channel FM 5
; Pattern $10, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0c, $04	; Set frequency '3076' (octave 1 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0c, $02	; Set frequency '3074' (octave 1 semitone 1026) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0c, $00	; Set frequency '3072' (octave 1 semitone 1024) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0b, $fe	; Set frequency '3070' (octave 1 semitone 1022) for channel FM 5
; Pattern $10, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $fc	; Set frequency '3068' (octave 1 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $fa	; Set frequency '3066' (octave 1 semitone 1018) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f8	; Set frequency '3064' (octave 1 semitone 1016) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f6	; Set frequency '3062' (octave 1 semitone 1014) for channel FM 5
; Pattern $10, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f4	; Set frequency '3060' (octave 1 semitone 1012) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f2	; Set frequency '3058' (octave 1 semitone 1010) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $f0	; Set frequency '3056' (octave 1 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ee	; Set frequency '3054' (octave 1 semitone 1006) for channel FM 5
; Pattern $10, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ec	; Set frequency '3052' (octave 1 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ea	; Set frequency '3050' (octave 1 semitone 1002) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $e8	; Set frequency '3048' (octave 1 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $e6	; Set frequency '3046' (octave 1 semitone 998) for channel FM 5
; Pattern $10, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $e4	; Set frequency '3044' (octave 1 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $e2	; Set frequency '3042' (octave 1 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $e0	; Set frequency '3040' (octave 1 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $de	; Set frequency '3038' (octave 1 semitone 990) for channel FM 5
; Pattern $10, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $0b, $dc	; Set frequency '3036' (octave 1 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0b, $da	; Set frequency '3034' (octave 1 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0b, $d8	; Set frequency '3032' (octave 1 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0b, $d6	; Set frequency '3030' (octave 1 semitone 982) for channel FM 5
; Pattern $10, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0b, $d4	; Set frequency '3028' (octave 1 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0b, $d2	; Set frequency '3026' (octave 1 semitone 978) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0b, $d0	; Set frequency '3024' (octave 1 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0b, $ce	; Set frequency '3022' (octave 1 semitone 974) for channel FM 5
; Pattern $10, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $cc	; Set frequency '3020' (octave 1 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ca	; Set frequency '3018' (octave 1 semitone 970) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $c8	; Set frequency '3016' (octave 1 semitone 968) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $c6	; Set frequency '3014' (octave 1 semitone 966) for channel FM 5
; Pattern $10, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $c4	; Set frequency '3012' (octave 1 semitone 964) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $c2	; Set frequency '3010' (octave 1 semitone 962) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $c0	; Set frequency '3008' (octave 1 semitone 960) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $be	; Set frequency '3006' (octave 1 semitone 958) for channel FM 5
; Pattern $10, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $bc	; Set frequency '3004' (octave 1 semitone 956) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ba	; Set frequency '3002' (octave 1 semitone 954) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b8	; Set frequency '3000' (octave 1 semitone 952) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b6	; Set frequency '2998' (octave 1 semitone 950) for channel FM 5
; Pattern $10, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b4	; Set frequency '2996' (octave 1 semitone 948) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b2	; Set frequency '2994' (octave 1 semitone 946) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $b0	; Set frequency '2992' (octave 1 semitone 944) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $ae	; Set frequency '2990' (octave 1 semitone 942) for channel FM 5
; Pattern $10, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $35, $0b, $ac	; Set frequency '2988' (octave 1 semitone 940) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0b, $aa	; Set frequency '2986' (octave 1 semitone 938) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0b, $a8	; Set frequency '2984' (octave 1 semitone 936) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0b, $a6	; Set frequency '2982' (octave 1 semitone 934) for channel FM 5
; Pattern $10, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0b, $a4	; Set frequency '2980' (octave 1 semitone 932) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0b, $a2	; Set frequency '2978' (octave 1 semitone 930) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0b, $a0	; Set frequency '2976' (octave 1 semitone 928) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0b, $9e	; Set frequency '2974' (octave 1 semitone 926) for channel FM 5
; Pattern $10, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9c	; Set frequency '2972' (octave 1 semitone 924) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $9a	; Set frequency '2970' (octave 1 semitone 922) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $98	; Set frequency '2968' (octave 1 semitone 920) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $96	; Set frequency '2966' (octave 1 semitone 918) for channel FM 5
; Pattern $10, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $94	; Set frequency '2964' (octave 1 semitone 916) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $92	; Set frequency '2962' (octave 1 semitone 914) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $90	; Set frequency '2960' (octave 1 semitone 912) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $8e	; Set frequency '2958' (octave 1 semitone 910) for channel FM 5
; Pattern $11, Row 0; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $35, $0b, $8c	; Set frequency '2956' (octave 1 semitone 908) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $0b, $8a	; Set frequency '2954' (octave 1 semitone 906) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $0b, $88	; Set frequency '2952' (octave 1 semitone 904) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $0b, $86	; Set frequency '2950' (octave 1 semitone 902) for channel FM 5
; Pattern $11, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $0b, $84	; Set frequency '2948' (octave 1 semitone 900) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $0b, $82	; Set frequency '2946' (octave 1 semitone 898) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $0b, $80	; Set frequency '2944' (octave 1 semitone 896) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 5
; Pattern $11, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $0b, $7c	; Set frequency '2940' (octave 1 semitone 892) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0b, $7a	; Set frequency '2938' (octave 1 semitone 890) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $0b, $78	; Set frequency '2936' (octave 1 semitone 888) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $0b, $76	; Set frequency '2934' (octave 1 semitone 886) for channel FM 5
; Pattern $11, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $0b, $74	; Set frequency '2932' (octave 1 semitone 884) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0b, $72	; Set frequency '2930' (octave 1 semitone 882) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $0b, $70	; Set frequency '2928' (octave 1 semitone 880) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $0b, $6e	; Set frequency '2926' (octave 1 semitone 878) for channel FM 5
; Pattern $11, Row 4; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $0b, $6c	; Set frequency '2924' (octave 1 semitone 876) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0b, $6a	; Set frequency '2922' (octave 1 semitone 874) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $68	; Set frequency '2920' (octave 1 semitone 872) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $66	; Set frequency '2918' (octave 1 semitone 870) for channel FM 5
; Pattern $11, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $64	; Set frequency '2916' (octave 1 semitone 868) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $62	; Set frequency '2914' (octave 1 semitone 866) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $60	; Set frequency '2912' (octave 1 semitone 864) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $5e	; Set frequency '2910' (octave 1 semitone 862) for channel FM 5
; Pattern $11, Row 6; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $35, $0b, $5c	; Set frequency '2908' (octave 1 semitone 860) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $0b, $5a	; Set frequency '2906' (octave 1 semitone 858) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $0b, $58	; Set frequency '2904' (octave 1 semitone 856) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $0b, $56	; Set frequency '2902' (octave 1 semitone 854) for channel FM 5
; Pattern $11, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $0b, $54	; Set frequency '2900' (octave 1 semitone 852) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $0b, $52	; Set frequency '2898' (octave 1 semitone 850) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $0b, $50	; Set frequency '2896' (octave 1 semitone 848) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $0b, $4e	; Set frequency '2894' (octave 1 semitone 846) for channel FM 5
; Pattern $11, Row 8; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $0b, $4c	; Set frequency '2892' (octave 1 semitone 844) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0b, $4a	; Set frequency '2890' (octave 1 semitone 842) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $0b, $48	; Set frequency '2888' (octave 1 semitone 840) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $0b, $46	; Set frequency '2886' (octave 1 semitone 838) for channel FM 5
; Pattern $11, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $0b, $44	; Set frequency '2884' (octave 1 semitone 836) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0b, $42	; Set frequency '2882' (octave 1 semitone 834) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $0b, $40	; Set frequency '2880' (octave 1 semitone 832) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $0b, $3e	; Set frequency '2878' (octave 1 semitone 830) for channel FM 5
; Pattern $11, Row 10; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $0b, $3c	; Set frequency '2876' (octave 1 semitone 828) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0b, $3a	; Set frequency '2874' (octave 1 semitone 826) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $38	; Set frequency '2872' (octave 1 semitone 824) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $36	; Set frequency '2870' (octave 1 semitone 822) for channel FM 5
; Pattern $11, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $34	; Set frequency '2868' (octave 1 semitone 820) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $32	; Set frequency '2866' (octave 1 semitone 818) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $30	; Set frequency '2864' (octave 1 semitone 816) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2e	; Set frequency '2862' (octave 1 semitone 814) for channel FM 5
; Pattern $11, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2c	; Set frequency '2860' (octave 1 semitone 812) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $2a	; Set frequency '2858' (octave 1 semitone 810) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $28	; Set frequency '2856' (octave 1 semitone 808) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $26	; Set frequency '2854' (octave 1 semitone 806) for channel FM 5
; Pattern $11, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $24	; Set frequency '2852' (octave 1 semitone 804) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $22	; Set frequency '2850' (octave 1 semitone 802) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $20	; Set frequency '2848' (octave 1 semitone 800) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1e	; Set frequency '2846' (octave 1 semitone 798) for channel FM 5
; Pattern $11, Row 14; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1c	; Set frequency '2844' (octave 1 semitone 796) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $1a	; Set frequency '2842' (octave 1 semitone 794) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $18	; Set frequency '2840' (octave 1 semitone 792) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $16	; Set frequency '2838' (octave 1 semitone 790) for channel FM 5
; Pattern $11, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $14	; Set frequency '2836' (octave 1 semitone 788) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $12	; Set frequency '2834' (octave 1 semitone 786) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $10	; Set frequency '2832' (octave 1 semitone 784) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0b, $0e	; Set frequency '2830' (octave 1 semitone 782) for channel FM 5
; Pattern $11, Row 16; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $0b, $0c	; Set frequency '2828' (octave 1 semitone 780) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0b, $0a	; Set frequency '2826' (octave 1 semitone 778) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0b, $08	; Set frequency '2824' (octave 1 semitone 776) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0b, $06	; Set frequency '2822' (octave 1 semitone 774) for channel FM 5
; Pattern $11, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0b, $04	; Set frequency '2820' (octave 1 semitone 772) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0b, $02	; Set frequency '2818' (octave 1 semitone 770) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0b, $00	; Set frequency '2816' (octave 1 semitone 768) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0a, $fe	; Set frequency '2814' (octave 1 semitone 766) for channel FM 5
; Pattern $11, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $fc	; Set frequency '2812' (octave 1 semitone 764) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $fa	; Set frequency '2810' (octave 1 semitone 762) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f8	; Set frequency '2808' (octave 1 semitone 760) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f6	; Set frequency '2806' (octave 1 semitone 758) for channel FM 5
; Pattern $11, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f4	; Set frequency '2804' (octave 1 semitone 756) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f2	; Set frequency '2802' (octave 1 semitone 754) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $f0	; Set frequency '2800' (octave 1 semitone 752) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ee	; Set frequency '2798' (octave 1 semitone 750) for channel FM 5
; Pattern $11, Row 20; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ec	; Set frequency '2796' (octave 1 semitone 748) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ea	; Set frequency '2794' (octave 1 semitone 746) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e8	; Set frequency '2792' (octave 1 semitone 744) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e6	; Set frequency '2790' (octave 1 semitone 742) for channel FM 5
; Pattern $11, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e4	; Set frequency '2788' (octave 1 semitone 740) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e2	; Set frequency '2786' (octave 1 semitone 738) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $e0	; Set frequency '2784' (octave 1 semitone 736) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 5
; Pattern $11, Row 22; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $0a, $dc	; Set frequency '2780' (octave 1 semitone 732) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0a, $da	; Set frequency '2778' (octave 1 semitone 730) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0a, $d8	; Set frequency '2776' (octave 1 semitone 728) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0a, $d6	; Set frequency '2774' (octave 1 semitone 726) for channel FM 5
; Pattern $11, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0a, $d4	; Set frequency '2772' (octave 1 semitone 724) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0a, $d2	; Set frequency '2770' (octave 1 semitone 722) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0a, $d0	; Set frequency '2768' (octave 1 semitone 720) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0a, $ce	; Set frequency '2766' (octave 1 semitone 718) for channel FM 5
; Pattern $11, Row 24; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $cc	; Set frequency '2764' (octave 1 semitone 716) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ca	; Set frequency '2762' (octave 1 semitone 714) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c8	; Set frequency '2760' (octave 1 semitone 712) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c6	; Set frequency '2758' (octave 1 semitone 710) for channel FM 5
; Pattern $11, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c4	; Set frequency '2756' (octave 1 semitone 708) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c2	; Set frequency '2754' (octave 1 semitone 706) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 5
; Pattern $11, Row 26; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $bc	; Set frequency '2748' (octave 1 semitone 700) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ba	; Set frequency '2746' (octave 1 semitone 698) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b8	; Set frequency '2744' (octave 1 semitone 696) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b6	; Set frequency '2742' (octave 1 semitone 694) for channel FM 5
; Pattern $11, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b2	; Set frequency '2738' (octave 1 semitone 690) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $b0	; Set frequency '2736' (octave 1 semitone 688) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $ae	; Set frequency '2734' (octave 1 semitone 686) for channel FM 5
; Pattern $11, Row 28; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $35, $0a, $ac	; Set frequency '2732' (octave 1 semitone 684) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $0a, $aa	; Set frequency '2730' (octave 1 semitone 682) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $0a, $a8	; Set frequency '2728' (octave 1 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $0a, $a6	; Set frequency '2726' (octave 1 semitone 678) for channel FM 5
; Pattern $11, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $0a, $a4	; Set frequency '2724' (octave 1 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $0a, $a2	; Set frequency '2722' (octave 1 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $0a, $a0	; Set frequency '2720' (octave 1 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $0a, $9e	; Set frequency '2718' (octave 1 semitone 670) for channel FM 5
; Pattern $11, Row 30; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9c	; Set frequency '2716' (octave 1 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $9a	; Set frequency '2714' (octave 1 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $98	; Set frequency '2712' (octave 1 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 5
; Pattern $11, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $94	; Set frequency '2708' (octave 1 semitone 660) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $92	; Set frequency '2706' (octave 1 semitone 658) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $90	; Set frequency '2704' (octave 1 semitone 656) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $0a, $8e	; Set frequency '2702' (octave 1 semitone 654) for channel FM 5
; Pattern $11, Row 32; 
	dc.b $40, $6f	; Set instrument for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $35, $0a, $8c	; Set frequency '2700' (octave 1 semitone 652) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $0a, $88	; Set frequency '2696' (octave 1 semitone 648) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $0a, $86	; Set frequency '2694' (octave 1 semitone 646) for channel FM 5
; Pattern $11, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $04, $bc	; Set frequency '1212' (octave 0 semitone 1212) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $04, $ba	; Set frequency '1210' (octave 0 semitone 1210) for channel FM 5
; Pattern $11, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $04, $b8	; Set frequency '1208' (octave 0 semitone 1208) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $04, $b6	; Set frequency '1206' (octave 0 semitone 1206) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $04, $b4	; Set frequency '1204' (octave 0 semitone 1204) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $04, $b2	; Set frequency '1202' (octave 0 semitone 1202) for channel FM 5
; Pattern $11, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $04, $ae	; Set frequency '1198' (octave 0 semitone 1198) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $04, $ac	; Set frequency '1196' (octave 0 semitone 1196) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $04, $aa	; Set frequency '1194' (octave 0 semitone 1194) for channel FM 5
; Pattern $11, Row 36; 
	dc.b $41, $70	; Set instrument for channel FM 2
	dc.b $21, $0d	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $04, $a8	; Set frequency '1192' (octave 0 semitone 1192) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $04, $a6	; Set frequency '1190' (octave 0 semitone 1190) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a2	; Set frequency '1186' (octave 0 semitone 1186) for channel FM 5
; Pattern $11, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $a0	; Set frequency '1184' (octave 0 semitone 1184) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $9c	; Set frequency '1180' (octave 0 semitone 1180) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $9a	; Set frequency '1178' (octave 0 semitone 1178) for channel FM 5
; Pattern $11, Row 38; 
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $35, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 1
	dc.b $35, $04, $96	; Set frequency '1174' (octave 0 semitone 1174) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 1
	dc.b $35, $04, $94	; Set frequency '1172' (octave 0 semitone 1172) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 1
	dc.b $35, $04, $92	; Set frequency '1170' (octave 0 semitone 1170) for channel FM 5
; Pattern $11, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $de	; Set frequency '6878' (octave 3 semitone 734) for channel FM 1
	dc.b $35, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $be	; Set frequency '5310' (octave 2 semitone 1214) for channel FM 1
	dc.b $35, $04, $8e	; Set frequency '1166' (octave 0 semitone 1166) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $14, $1e	; Set frequency '5150' (octave 2 semitone 1054) for channel FM 1
	dc.b $35, $04, $8c	; Set frequency '1164' (octave 0 semitone 1164) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $13, $7e	; Set frequency '4990' (octave 2 semitone 894) for channel FM 1
	dc.b $35, $04, $8a	; Set frequency '1162' (octave 0 semitone 1162) for channel FM 5
; Pattern $11, Row 40; 
	dc.b $02, $85	; Note D-4 on channel FM 3
	dc.b $04, $81	; Note C-4 on channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $de	; Set frequency '4830' (octave 2 semitone 734) for channel FM 1
	dc.b $35, $04, $88	; Set frequency '1160' (octave 0 semitone 1160) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $04, $86	; Set frequency '1158' (octave 0 semitone 1158) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $1e	; Set frequency '3102' (octave 1 semitone 1054) for channel FM 1
	dc.b $35, $04, $84	; Set frequency '1156' (octave 0 semitone 1156) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $7e	; Set frequency '2942' (octave 1 semitone 894) for channel FM 1
	dc.b $35, $04, $82	; Set frequency '1154' (octave 0 semitone 1154) for channel FM 5
; Pattern $11, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $de	; Set frequency '2782' (octave 1 semitone 734) for channel FM 1
	dc.b $35, $04, $80	; Set frequency '1152' (octave 0 semitone 1152) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 1
	dc.b $35, $04, $7c	; Set frequency '1148' (octave 0 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $7e	; Set frequency '894' (octave 0 semitone 894) for channel FM 1
	dc.b $35, $04, $7a	; Set frequency '1146' (octave 0 semitone 1146) for channel FM 5
; Pattern $11, Row 42; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $de	; Set frequency '734' (octave 0 semitone 734) for channel FM 1
	dc.b $35, $04, $78	; Set frequency '1144' (octave 0 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $04, $76	; Set frequency '1142' (octave 0 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $74	; Set frequency '1140' (octave 0 semitone 1140) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $72	; Set frequency '1138' (octave 0 semitone 1138) for channel FM 5
; Pattern $11, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $70	; Set frequency '1136' (octave 0 semitone 1136) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $6e	; Set frequency '1134' (octave 0 semitone 1134) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $6c	; Set frequency '1132' (octave 0 semitone 1132) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $6a	; Set frequency '1130' (octave 0 semitone 1130) for channel FM 5
; Pattern $11, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $68	; Set frequency '1128' (octave 0 semitone 1128) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $66	; Set frequency '1126' (octave 0 semitone 1126) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $64	; Set frequency '1124' (octave 0 semitone 1124) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $62	; Set frequency '1122' (octave 0 semitone 1122) for channel FM 5
; Pattern $11, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $60	; Set frequency '1120' (octave 0 semitone 1120) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $5e	; Set frequency '1118' (octave 0 semitone 1118) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $5c	; Set frequency '1116' (octave 0 semitone 1116) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $5a	; Set frequency '1114' (octave 0 semitone 1114) for channel FM 5
; Pattern $11, Row 46; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $58	; Set frequency '1112' (octave 0 semitone 1112) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $56	; Set frequency '1110' (octave 0 semitone 1110) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $54	; Set frequency '1108' (octave 0 semitone 1108) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $52	; Set frequency '1106' (octave 0 semitone 1106) for channel FM 5
; Pattern $11, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $50	; Set frequency '1104' (octave 0 semitone 1104) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $4e	; Set frequency '1102' (octave 0 semitone 1102) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $4c	; Set frequency '1100' (octave 0 semitone 1100) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $4a	; Set frequency '1098' (octave 0 semitone 1098) for channel FM 5
; Pattern $11, Row 48; 
	dc.b $40, $75	; Set instrument for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $04, $48	; Set frequency '1096' (octave 0 semitone 1096) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $04, $46	; Set frequency '1094' (octave 0 semitone 1094) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $04, $44	; Set frequency '1092' (octave 0 semitone 1092) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $04, $42	; Set frequency '1090' (octave 0 semitone 1090) for channel FM 5
; Pattern $11, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $04, $40	; Set frequency '1088' (octave 0 semitone 1088) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $04, $3e	; Set frequency '1086' (octave 0 semitone 1086) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $04, $3c	; Set frequency '1084' (octave 0 semitone 1084) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $04, $3a	; Set frequency '1082' (octave 0 semitone 1082) for channel FM 5
; Pattern $11, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $38	; Set frequency '1080' (octave 0 semitone 1080) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $36	; Set frequency '1078' (octave 0 semitone 1078) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $34	; Set frequency '1076' (octave 0 semitone 1076) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $32	; Set frequency '1074' (octave 0 semitone 1074) for channel FM 5
; Pattern $11, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $30	; Set frequency '1072' (octave 0 semitone 1072) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $2e	; Set frequency '1070' (octave 0 semitone 1070) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $2c	; Set frequency '1068' (octave 0 semitone 1068) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $2a	; Set frequency '1066' (octave 0 semitone 1066) for channel FM 5
; Pattern $11, Row 52; 
	dc.b $41, $77	; Set instrument for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $28	; Set frequency '1064' (octave 0 semitone 1064) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $26	; Set frequency '1062' (octave 0 semitone 1062) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $24	; Set frequency '1060' (octave 0 semitone 1060) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $22	; Set frequency '1058' (octave 0 semitone 1058) for channel FM 5
; Pattern $11, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $20	; Set frequency '1056' (octave 0 semitone 1056) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1e	; Set frequency '1054' (octave 0 semitone 1054) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1c	; Set frequency '1052' (octave 0 semitone 1052) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $1a	; Set frequency '1050' (octave 0 semitone 1050) for channel FM 5
; Pattern $11, Row 54; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $35, $04, $18	; Set frequency '1048' (octave 0 semitone 1048) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $04, $16	; Set frequency '1046' (octave 0 semitone 1046) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $04, $14	; Set frequency '1044' (octave 0 semitone 1044) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $04, $12	; Set frequency '1042' (octave 0 semitone 1042) for channel FM 5
; Pattern $11, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $04, $10	; Set frequency '1040' (octave 0 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $04, $0e	; Set frequency '1038' (octave 0 semitone 1038) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $04, $0c	; Set frequency '1036' (octave 0 semitone 1036) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $04, $0a	; Set frequency '1034' (octave 0 semitone 1034) for channel FM 5
; Pattern $11, Row 56; 
	dc.b $41, $76	; Set instrument for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $08	; Set frequency '1032' (octave 0 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $06	; Set frequency '1030' (octave 0 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $04	; Set frequency '1028' (octave 0 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $02	; Set frequency '1026' (octave 0 semitone 1026) for channel FM 5
; Pattern $11, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $35, $04, $00	; Set frequency '1024' (octave 0 semitone 1024) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $fe	; Set frequency '1022' (octave 0 semitone 1022) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $fc	; Set frequency '1020' (octave 0 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $fa	; Set frequency '1018' (octave 0 semitone 1018) for channel FM 5
; Pattern $11, Row 58; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f8	; Set frequency '1016' (octave 0 semitone 1016) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f6	; Set frequency '1014' (octave 0 semitone 1014) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f4	; Set frequency '1012' (octave 0 semitone 1012) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f2	; Set frequency '1010' (octave 0 semitone 1010) for channel FM 5
; Pattern $11, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $f0	; Set frequency '1008' (octave 0 semitone 1008) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ee	; Set frequency '1006' (octave 0 semitone 1006) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ec	; Set frequency '1004' (octave 0 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ea	; Set frequency '1002' (octave 0 semitone 1002) for channel FM 5
; Pattern $11, Row 60; 
	dc.b $20, $09	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $35, $03, $e8	; Set frequency '1000' (octave 0 semitone 1000) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 1
	dc.b $35, $03, $e6	; Set frequency '998' (octave 0 semitone 998) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0b, $bf	; Set frequency '3007' (octave 1 semitone 959) for channel FM 1
	dc.b $35, $03, $e4	; Set frequency '996' (octave 0 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 1
	dc.b $35, $03, $e2	; Set frequency '994' (octave 0 semitone 994) for channel FM 5
; Pattern $11, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 1
	dc.b $35, $03, $e0	; Set frequency '992' (octave 0 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $03, $bf	; Set frequency '959' (octave 0 semitone 959) for channel FM 1
	dc.b $35, $03, $de	; Set frequency '990' (octave 0 semitone 990) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $c0	; Set frequency '704' (octave 0 semitone 704) for channel FM 1
	dc.b $35, $03, $dc	; Set frequency '988' (octave 0 semitone 988) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $02, $84	; Set frequency '644' (octave 0 semitone 644) for channel FM 1
	dc.b $35, $03, $da	; Set frequency '986' (octave 0 semitone 986) for channel FM 5
; Pattern $11, Row 62; 
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d8	; Set frequency '984' (octave 0 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d6	; Set frequency '982' (octave 0 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d4	; Set frequency '980' (octave 0 semitone 980) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d2	; Set frequency '978' (octave 0 semitone 978) for channel FM 5
; Pattern $11, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $d0	; Set frequency '976' (octave 0 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ce	; Set frequency '974' (octave 0 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $cc	; Set frequency '972' (octave 0 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $03, $ca	; Set frequency '970' (octave 0 semitone 970) for channel FM 5
	dc.b $fc	; Goto loop
	dc.b $20, $7f	; Set volume for channel FM 1
	dc.b $21, $7f	; Set volume for channel FM 2
	dc.b $22, $7f	; Set volume for channel FM 3
	dc.b $24, $7f	; Set volume for channel FM 4
	dc.b $25, $7f	; Set volume for channel FM 5
	dc.b $28, $0f	; Set volume for channel PSG 1
	dc.b $29, $0f	; Set volume for channel PSG 2
	dc.b $2a, $0f	; Set volume for channel PSG 3
	dc.b $ff	; The End

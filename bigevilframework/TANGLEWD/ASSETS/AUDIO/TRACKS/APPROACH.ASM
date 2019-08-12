	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $40, $44	; Set instrument for channel FM 1
	dc.b $20, $07	; Set volume for channel FM 1
	dc.b $f0, $e1	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $41, $44	; Set instrument for channel FM 2
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $f1, $a1	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $fe, $02	; Delay
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $00, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $fe, $01	; Delay
; Pattern $00, Row 8; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $44	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $f2, $61	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $fe, $02	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 0; 
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $01, Row 4; 
	dc.b $01, $4d	; Note F#2 on channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 8; 
	dc.b $02, $4d	; Note F#2 on channel FM 3
; Pattern $01, Row 9; 
; Pattern $01, Row 10; 
; Pattern $01, Row 11; 
; Pattern $01, Row 12; 
; Pattern $01, Row 13; 
; Pattern $01, Row 14; 
; Pattern $01, Row 15; 
; Pattern $01, Row 16; 
; Pattern $01, Row 17; 
; Pattern $01, Row 18; 
; Pattern $01, Row 19; 
; Pattern $01, Row 20; 
; Pattern $01, Row 21; 
; Pattern $01, Row 22; 
; Pattern $01, Row 23; 
; Pattern $01, Row 24; 
; Pattern $01, Row 25; 
; Pattern $01, Row 26; 
; Pattern $01, Row 27; 
; Pattern $01, Row 28; 
; Pattern $01, Row 29; 
; Pattern $01, Row 30; 
; Pattern $01, Row 31; 
; Pattern $01, Row 32; 
; Pattern $01, Row 33; 
; Pattern $01, Row 34; 
; Pattern $01, Row 35; 
; Pattern $01, Row 36; 
; Pattern $01, Row 37; 
; Pattern $01, Row 38; 
; Pattern $01, Row 39; 
; Pattern $01, Row 40; 
	dc.b $fe, $50	; Delay
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $44, $45	; Set instrument for channel FM 4
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $f4, $e5	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $01, Row 41; 
	dc.b $fe, $02	; Delay
	dc.b $24, $3c	; Set volume for channel FM 4
; Pattern $01, Row 42; 
	dc.b $fe, $03	; Delay
	dc.b $24, $39	; Set volume for channel FM 4
; Pattern $01, Row 43; 
	dc.b $fe, $02	; Delay
	dc.b $24, $36	; Set volume for channel FM 4
; Pattern $01, Row 44; 
	dc.b $fe, $03	; Delay
	dc.b $24, $33	; Set volume for channel FM 4
; Pattern $01, Row 45; 
	dc.b $fe, $02	; Delay
	dc.b $24, $30	; Set volume for channel FM 4
; Pattern $01, Row 46; 
	dc.b $fe, $03	; Delay
	dc.b $24, $2d	; Set volume for channel FM 4
; Pattern $01, Row 47; 
	dc.b $fe, $02	; Delay
	dc.b $24, $2a	; Set volume for channel FM 4
; Pattern $01, Row 48; 
	dc.b $fe, $03	; Delay
	dc.b $24, $27	; Set volume for channel FM 4
; Pattern $01, Row 49; 
	dc.b $fe, $02	; Delay
	dc.b $24, $24	; Set volume for channel FM 4
; Pattern $01, Row 50; 
	dc.b $fe, $03	; Delay
	dc.b $24, $21	; Set volume for channel FM 4
; Pattern $01, Row 51; 
	dc.b $fe, $02	; Delay
	dc.b $24, $1e	; Set volume for channel FM 4
; Pattern $01, Row 52; 
	dc.b $fe, $03	; Delay
	dc.b $24, $1b	; Set volume for channel FM 4
; Pattern $01, Row 53; 
	dc.b $fe, $02	; Delay
	dc.b $24, $18	; Set volume for channel FM 4
; Pattern $01, Row 54; 
	dc.b $fe, $03	; Delay
	dc.b $24, $15	; Set volume for channel FM 4
; Pattern $01, Row 55; 
	dc.b $fe, $02	; Delay
	dc.b $24, $12	; Set volume for channel FM 4
; Pattern $01, Row 56; 
	dc.b $fe, $03	; Delay
	dc.b $24, $0f	; Set volume for channel FM 4
; Pattern $01, Row 57; 
; Pattern $01, Row 58; 
; Pattern $01, Row 59; 
; Pattern $01, Row 60; 
	dc.b $fe, $0c	; Delay
	dc.b $34, $24, $02	; Set frequency '9218' (octave 4 semitone 1026) for channel FM 4
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $07	; Set frequency '9223' (octave 4 semitone 1031) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $11	; Set frequency '9233' (octave 4 semitone 1041) for channel FM 4
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 4
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $25	; Set frequency '9253' (octave 4 semitone 1061) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 4
; Pattern $02, Row 0; 
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $04, $a1	; Note C-5 on channel FM 4
; Pattern $02, Row 1; 
; Pattern $02, Row 2; 
; Pattern $02, Row 3; 
; Pattern $02, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
; Pattern $02, Row 5; 
; Pattern $02, Row 6; 
; Pattern $02, Row 7; 
; Pattern $02, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $02, $4b	; Note F-2 on channel FM 3
; Pattern $02, Row 9; 
; Pattern $02, Row 10; 
; Pattern $02, Row 11; 
; Pattern $02, Row 12; 
; Pattern $02, Row 13; 
; Pattern $02, Row 14; 
; Pattern $02, Row 15; 
; Pattern $02, Row 16; 
; Pattern $02, Row 17; 
; Pattern $02, Row 18; 
; Pattern $02, Row 19; 
; Pattern $02, Row 20; 
; Pattern $02, Row 21; 
; Pattern $02, Row 22; 
; Pattern $02, Row 23; 
; Pattern $02, Row 24; 
	dc.b $fe, $28	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
; Pattern $02, Row 25; 
; Pattern $02, Row 26; 
; Pattern $02, Row 27; 
; Pattern $02, Row 28; 
; Pattern $02, Row 29; 
; Pattern $02, Row 30; 
; Pattern $02, Row 31; 
; Pattern $02, Row 32; 
; Pattern $02, Row 33; 
; Pattern $02, Row 34; 
; Pattern $02, Row 35; 
; Pattern $02, Row 36; 
; Pattern $02, Row 37; 
; Pattern $02, Row 38; 
; Pattern $02, Row 39; 
; Pattern $02, Row 40; 
; Pattern $02, Row 41; 
; Pattern $02, Row 42; 
; Pattern $02, Row 43; 
; Pattern $02, Row 44; 
; Pattern $02, Row 45; 
; Pattern $02, Row 46; 
; Pattern $02, Row 47; 
; Pattern $02, Row 48; 
	dc.b $fe, $3e	; Delay
	dc.b $34, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 4
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $f3	; Set frequency '9203' (octave 4 semitone 1011) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 4
; Pattern $02, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 4
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $d5	; Set frequency '9173' (octave 4 semitone 981) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 4
; Pattern $02, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 4
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $c1	; Set frequency '9153' (octave 4 semitone 961) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b7	; Set frequency '9143' (octave 4 semitone 951) for channel FM 4
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $b2	; Set frequency '9138' (octave 4 semitone 946) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $ad	; Set frequency '9133' (octave 4 semitone 941) for channel FM 4
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a8	; Set frequency '9128' (octave 4 semitone 936) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $a3	; Set frequency '9123' (octave 4 semitone 931) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $9e	; Set frequency '9118' (octave 4 semitone 926) for channel FM 4
; Pattern $02, Row 56; 
	dc.b $04, $97	; Note B-4 on channel FM 4
; Pattern $02, Row 57; 
; Pattern $02, Row 58; 
; Pattern $02, Row 59; 
; Pattern $02, Row 60; 
; Pattern $02, Row 61; 
; Pattern $02, Row 62; 
; Pattern $02, Row 63; 
; Pattern $03, Row 0; 
	dc.b $fe, $14	; Delay
	dc.b $00, $49	; Note E-2 on channel FM 1
; Pattern $03, Row 1; 
; Pattern $03, Row 2; 
; Pattern $03, Row 3; 
; Pattern $03, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $01, $49	; Note E-2 on channel FM 2
; Pattern $03, Row 5; 
; Pattern $03, Row 6; 
; Pattern $03, Row 7; 
; Pattern $03, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $02, $49	; Note E-2 on channel FM 3
; Pattern $03, Row 9; 
; Pattern $03, Row 10; 
; Pattern $03, Row 11; 
; Pattern $03, Row 12; 
; Pattern $03, Row 13; 
; Pattern $03, Row 14; 
; Pattern $03, Row 15; 
; Pattern $03, Row 16; 
; Pattern $03, Row 17; 
; Pattern $03, Row 18; 
; Pattern $03, Row 19; 
; Pattern $03, Row 20; 
; Pattern $03, Row 21; 
; Pattern $03, Row 22; 
; Pattern $03, Row 23; 
; Pattern $03, Row 24; 
; Pattern $03, Row 25; 
; Pattern $03, Row 26; 
; Pattern $03, Row 27; 
; Pattern $03, Row 28; 
; Pattern $03, Row 29; 
; Pattern $03, Row 30; 
; Pattern $03, Row 31; 
; Pattern $03, Row 32; 
; Pattern $03, Row 33; 
; Pattern $03, Row 34; 
; Pattern $03, Row 35; 
; Pattern $03, Row 36; 
	dc.b $fe, $48	; Delay
	dc.b $34, $24, $b9	; Set frequency '9401' (octave 4 semitone 1209) for channel FM 4
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $b4	; Set frequency '9396' (octave 4 semitone 1204) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $af	; Set frequency '9391' (octave 4 semitone 1199) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $aa	; Set frequency '9386' (octave 4 semitone 1194) for channel FM 4
; Pattern $03, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $a5	; Set frequency '9381' (octave 4 semitone 1189) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $a0	; Set frequency '9376' (octave 4 semitone 1184) for channel FM 4
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $9b	; Set frequency '9371' (octave 4 semitone 1179) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $96	; Set frequency '9366' (octave 4 semitone 1174) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $91	; Set frequency '9361' (octave 4 semitone 1169) for channel FM 4
; Pattern $03, Row 40; 
	dc.b $04, $8d	; Note F#4 on channel FM 4
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
	dc.b $fe, $2a	; Delay
	dc.b $34, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 4
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 4
; Pattern $03, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 4
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7c	; Set frequency '9084' (octave 4 semitone 892) for channel FM 4
; Pattern $03, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7a	; Set frequency '9082' (octave 4 semitone 890) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $78	; Set frequency '9080' (octave 4 semitone 888) for channel FM 4
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $76	; Set frequency '9078' (octave 4 semitone 886) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $74	; Set frequency '9076' (octave 4 semitone 884) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $72	; Set frequency '9074' (octave 4 semitone 882) for channel FM 4
; Pattern $03, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $70	; Set frequency '9072' (octave 4 semitone 880) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6e	; Set frequency '9070' (octave 4 semitone 878) for channel FM 4
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6c	; Set frequency '9068' (octave 4 semitone 876) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6a	; Set frequency '9066' (octave 4 semitone 874) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 4
; Pattern $04, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $04, $a5	; Note D-5 on channel FM 4
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $48, $40	; Set instrument for channel PSG 1
	dc.b $28, $04	; Set volume for channel PSG 1
	dc.b $08, $14	; Note A#0 on channel PSG 1
; Pattern $04, Row 1; 
; Pattern $04, Row 2; 
; Pattern $04, Row 3; 
; Pattern $04, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $49, $40	; Set instrument for channel PSG 2
	dc.b $29, $04	; Set volume for channel PSG 2
	dc.b $09, $18	; Note C-1 on channel PSG 2
; Pattern $04, Row 5; 
; Pattern $04, Row 6; 
; Pattern $04, Row 7; 
; Pattern $04, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $4a, $40	; Set instrument for channel PSG 3
	dc.b $2a, $04	; Set volume for channel PSG 3
	dc.b $0a, $1c	; Note D-1 on channel PSG 3
; Pattern $04, Row 9; 
; Pattern $04, Row 10; 
; Pattern $04, Row 11; 
; Pattern $04, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0e	; Note G-0 on channel PSG 2
; Pattern $04, Row 13; 
; Pattern $04, Row 14; 
; Pattern $04, Row 15; 
; Pattern $04, Row 16; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $26	; Note G-1 on channel PSG 1
; Pattern $04, Row 17; 
; Pattern $04, Row 18; 
; Pattern $04, Row 19; 
; Pattern $04, Row 20; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
; Pattern $04, Row 21; 
; Pattern $04, Row 22; 
; Pattern $04, Row 23; 
; Pattern $04, Row 24; 
	dc.b $fe, $0a	; Delay
	dc.b $24, $05	; Set volume for channel FM 4
	dc.b $04, $95	; Note A#4 on channel FM 4
	dc.b $0a, $14	; Note A#0 on channel PSG 3
; Pattern $04, Row 25; 
; Pattern $04, Row 26; 
; Pattern $04, Row 27; 
; Pattern $04, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $18	; Note C-1 on channel PSG 2
; Pattern $04, Row 29; 
; Pattern $04, Row 30; 
; Pattern $04, Row 31; 
; Pattern $04, Row 32; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $1c	; Note D-1 on channel PSG 1
; Pattern $04, Row 33; 
; Pattern $04, Row 34; 
; Pattern $04, Row 35; 
; Pattern $04, Row 36; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0e	; Note G-0 on channel PSG 2
; Pattern $04, Row 37; 
; Pattern $04, Row 38; 
; Pattern $04, Row 39; 
; Pattern $04, Row 40; 
	dc.b $fe, $0a	; Delay
	dc.b $0a, $2c	; Note A#1 on channel PSG 3
; Pattern $04, Row 41; 
; Pattern $04, Row 42; 
; Pattern $04, Row 43; 
; Pattern $04, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
; Pattern $04, Row 45; 
; Pattern $04, Row 46; 
; Pattern $04, Row 47; 
; Pattern $04, Row 48; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $22	; Note F-1 on channel PSG 1
; Pattern $04, Row 49; 
; Pattern $04, Row 50; 
; Pattern $04, Row 51; 
; Pattern $04, Row 52; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $02	; Delay
	dc.b $34, $24, $8a	; Set frequency '9354' (octave 4 semitone 1162) for channel FM 4
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $9a	; Set frequency '9370' (octave 4 semitone 1178) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $aa	; Set frequency '9386' (octave 4 semitone 1194) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ba	; Set frequency '9402' (octave 4 semitone 1210) for channel FM 4
; Pattern $04, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ca	; Set frequency '9418' (octave 4 semitone 1226) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $da	; Set frequency '9434' (octave 4 semitone 1242) for channel FM 4
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ea	; Set frequency '9450' (octave 4 semitone 1258) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $fa	; Set frequency '9466' (octave 4 semitone 1274) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2a, $86	; Set frequency '10886' (octave 5 semitone 646) for channel FM 4
; Pattern $04, Row 56; 
	dc.b $24, $09	; Set volume for channel FM 4
	dc.b $04, $a3	; Note C#5 on channel FM 4
	dc.b $0a, $0e	; Note G-0 on channel PSG 3
; Pattern $04, Row 57; 
; Pattern $04, Row 58; 
; Pattern $04, Row 59; 
; Pattern $04, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $12	; Note A-0 on channel PSG 2
; Pattern $04, Row 61; 
; Pattern $04, Row 62; 
; Pattern $04, Row 63; 
; Pattern $05, Row 0; 
	dc.b $fe, $0a	; Delay
	dc.b $00, $4d	; Note F#2 on channel FM 1
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $12	; Note A-0 on channel PSG 1
; Pattern $05, Row 1; 
; Pattern $05, Row 2; 
; Pattern $05, Row 3; 
; Pattern $05, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $01, $4d	; Note F#2 on channel FM 2
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $16	; Note B-0 on channel PSG 2
; Pattern $05, Row 5; 
; Pattern $05, Row 6; 
; Pattern $05, Row 7; 
; Pattern $05, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $02, $4d	; Note F#2 on channel FM 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $0a, $1a	; Note C#1 on channel PSG 3
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0c	; Note F#0 on channel PSG 2
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $24	; Note F#1 on channel PSG 1
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $0a	; Delay
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $16	; Note B-0 on channel PSG 2
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0c	; Note F#0 on channel PSG 2
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $0a	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $0a, $32	; Note C#2 on channel PSG 3
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $24	; Note F#1 on channel PSG 1
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $0a	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
; Pattern $05, Row 57; 
; Pattern $05, Row 58; 
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $02	; Delay
	dc.b $34, $24, $02	; Set frequency '9218' (octave 4 semitone 1026) for channel FM 4
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $07	; Set frequency '9223' (octave 4 semitone 1031) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $11	; Set frequency '9233' (octave 4 semitone 1041) for channel FM 4
; Pattern $05, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $16	; Set frequency '9238' (octave 4 semitone 1046) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $1b	; Set frequency '9243' (octave 4 semitone 1051) for channel FM 4
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $20	; Set frequency '9248' (octave 4 semitone 1056) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $25	; Set frequency '9253' (octave 4 semitone 1061) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $2a	; Set frequency '9258' (octave 4 semitone 1066) for channel FM 4
; Pattern $06, Row 0; 
	dc.b $00, $4b	; Note F-2 on channel FM 1
	dc.b $04, $a1	; Note C-5 on channel FM 4
	dc.b $08, $22	; Note F-1 on channel PSG 1
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $01, $4b	; Note F-2 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $02, $4b	; Note F-2 on channel FM 3
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $18	; Note C-1 on channel PSG 2
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $38	; Note E-2 on channel PSG 1
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0a	; Note F-0 on channel PSG 2
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $0a	; Delay
	dc.b $04, $91	; Note G#4 on channel FM 4
	dc.b $0a, $30	; Note C-2 on channel PSG 3
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $0a	; Note F-0 on channel PSG 2
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $10	; Note G#0 on channel PSG 2
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $0a	; Delay
	dc.b $0a, $36	; Note D#2 on channel PSG 3
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $10	; Note G#0 on channel PSG 2
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $18	; Note C-1 on channel PSG 2
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $0a	; Delay
	dc.b $04, $97	; Note B-4 on channel FM 4
	dc.b $0a, $0e	; Note G-0 on channel PSG 3
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $30	; Note C-2 on channel PSG 2
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $0a	; Delay
	dc.b $20, $0d	; Set volume for channel FM 1
	dc.b $00, $49	; Note E-2 on channel FM 1
	dc.b $28, $05	; Set volume for channel PSG 1
	dc.b $08, $34	; Note D-2 on channel PSG 1
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $01, $49	; Note E-2 on channel FM 2
	dc.b $29, $05	; Set volume for channel PSG 2
	dc.b $09, $24	; Note F#1 on channel PSG 2
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $0a	; Delay
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $02, $49	; Note E-2 on channel FM 3
	dc.b $2a, $05	; Set volume for channel PSG 3
	dc.b $0a, $26	; Note G-1 on channel PSG 3
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $16	; Note B-0 on channel PSG 2
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $2e	; Note B-1 on channel PSG 1
	dc.b $fe, $02	; Delay
	dc.b $34, $24, $bf	; Set frequency '9407' (octave 4 semitone 1215) for channel FM 4
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c0	; Set frequency '9408' (octave 4 semitone 1216) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c1	; Set frequency '9409' (octave 4 semitone 1217) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c2	; Set frequency '9410' (octave 4 semitone 1218) for channel FM 4
; Pattern $07, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c3	; Set frequency '9411' (octave 4 semitone 1219) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c4	; Set frequency '9412' (octave 4 semitone 1220) for channel FM 4
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c5	; Set frequency '9413' (octave 4 semitone 1221) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c6	; Set frequency '9414' (octave 4 semitone 1222) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c7	; Set frequency '9415' (octave 4 semitone 1223) for channel FM 4
; Pattern $07, Row 20; 
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c8	; Set frequency '9416' (octave 4 semitone 1224) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c9	; Set frequency '9417' (octave 4 semitone 1225) for channel FM 4
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ca	; Set frequency '9418' (octave 4 semitone 1226) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $cb	; Set frequency '9419' (octave 4 semitone 1227) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $cc	; Set frequency '9420' (octave 4 semitone 1228) for channel FM 4
; Pattern $07, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $cd	; Set frequency '9421' (octave 4 semitone 1229) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ce	; Set frequency '9422' (octave 4 semitone 1230) for channel FM 4
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $cf	; Set frequency '9423' (octave 4 semitone 1231) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d0	; Set frequency '9424' (octave 4 semitone 1232) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d1	; Set frequency '9425' (octave 4 semitone 1233) for channel FM 4
; Pattern $07, Row 24; 
	dc.b $0a, $26	; Note G-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d2	; Set frequency '9426' (octave 4 semitone 1234) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d3	; Set frequency '9427' (octave 4 semitone 1235) for channel FM 4
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d4	; Set frequency '9428' (octave 4 semitone 1236) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d5	; Set frequency '9429' (octave 4 semitone 1237) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d6	; Set frequency '9430' (octave 4 semitone 1238) for channel FM 4
; Pattern $07, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d7	; Set frequency '9431' (octave 4 semitone 1239) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d8	; Set frequency '9432' (octave 4 semitone 1240) for channel FM 4
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d9	; Set frequency '9433' (octave 4 semitone 1241) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $da	; Set frequency '9434' (octave 4 semitone 1242) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $db	; Set frequency '9435' (octave 4 semitone 1243) for channel FM 4
; Pattern $07, Row 28; 
	dc.b $09, $16	; Note B-0 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $dc	; Set frequency '9436' (octave 4 semitone 1244) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $dd	; Set frequency '9437' (octave 4 semitone 1245) for channel FM 4
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $de	; Set frequency '9438' (octave 4 semitone 1246) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $df	; Set frequency '9439' (octave 4 semitone 1247) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 4
; Pattern $07, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e1	; Set frequency '9441' (octave 4 semitone 1249) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e2	; Set frequency '9442' (octave 4 semitone 1250) for channel FM 4
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e3	; Set frequency '9443' (octave 4 semitone 1251) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e4	; Set frequency '9444' (octave 4 semitone 1252) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e5	; Set frequency '9445' (octave 4 semitone 1253) for channel FM 4
; Pattern $07, Row 32; 
	dc.b $08, $24	; Note F#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e6	; Set frequency '9446' (octave 4 semitone 1254) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e7	; Set frequency '9447' (octave 4 semitone 1255) for channel FM 4
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e8	; Set frequency '9448' (octave 4 semitone 1256) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e9	; Set frequency '9449' (octave 4 semitone 1257) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ea	; Set frequency '9450' (octave 4 semitone 1258) for channel FM 4
; Pattern $07, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $eb	; Set frequency '9451' (octave 4 semitone 1259) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ec	; Set frequency '9452' (octave 4 semitone 1260) for channel FM 4
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ed	; Set frequency '9453' (octave 4 semitone 1261) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ee	; Set frequency '9454' (octave 4 semitone 1262) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ef	; Set frequency '9455' (octave 4 semitone 1263) for channel FM 4
; Pattern $07, Row 36; 
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $ea	; Set frequency '9450' (octave 4 semitone 1258) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e5	; Set frequency '9445' (octave 4 semitone 1253) for channel FM 4
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $e0	; Set frequency '9440' (octave 4 semitone 1248) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $db	; Set frequency '9435' (octave 4 semitone 1243) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d6	; Set frequency '9430' (octave 4 semitone 1238) for channel FM 4
; Pattern $07, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $d1	; Set frequency '9425' (octave 4 semitone 1233) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $cc	; Set frequency '9420' (octave 4 semitone 1228) for channel FM 4
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c7	; Set frequency '9415' (octave 4 semitone 1223) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $c2	; Set frequency '9410' (octave 4 semitone 1218) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $24, $bd	; Set frequency '9405' (octave 4 semitone 1213) for channel FM 4
; Pattern $07, Row 40; 
	dc.b $04, $8d	; Note F#4 on channel FM 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $0a	; Delay
	dc.b $08, $16	; Note B-0 on channel PSG 1
; Pattern $07, Row 49; 
; Pattern $07, Row 50; 
; Pattern $07, Row 51; 
; Pattern $07, Row 52; 
	dc.b $fe, $0a	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
; Pattern $07, Row 53; 
; Pattern $07, Row 54; 
; Pattern $07, Row 55; 
; Pattern $07, Row 56; 
	dc.b $fe, $0a	; Delay
	dc.b $0a, $34	; Note D-2 on channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $34, $23, $8c	; Set frequency '9100' (octave 4 semitone 908) for channel FM 4
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $8a	; Set frequency '9098' (octave 4 semitone 906) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $88	; Set frequency '9096' (octave 4 semitone 904) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $86	; Set frequency '9094' (octave 4 semitone 902) for channel FM 4
; Pattern $07, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $84	; Set frequency '9092' (octave 4 semitone 900) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $82	; Set frequency '9090' (octave 4 semitone 898) for channel FM 4
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $80	; Set frequency '9088' (octave 4 semitone 896) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7e	; Set frequency '9086' (octave 4 semitone 894) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7c	; Set frequency '9084' (octave 4 semitone 892) for channel FM 4
; Pattern $07, Row 60; 
	dc.b $09, $20	; Note E-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $7a	; Set frequency '9082' (octave 4 semitone 890) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $78	; Set frequency '9080' (octave 4 semitone 888) for channel FM 4
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $76	; Set frequency '9078' (octave 4 semitone 886) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $74	; Set frequency '9076' (octave 4 semitone 884) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $72	; Set frequency '9074' (octave 4 semitone 882) for channel FM 4
; Pattern $07, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $70	; Set frequency '9072' (octave 4 semitone 880) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6e	; Set frequency '9070' (octave 4 semitone 878) for channel FM 4
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6c	; Set frequency '9068' (octave 4 semitone 876) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $6a	; Set frequency '9066' (octave 4 semitone 874) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $68	; Set frequency '9064' (octave 4 semitone 872) for channel FM 4
; Pattern $08, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $66	; Set frequency '9062' (octave 4 semitone 870) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $64	; Set frequency '9060' (octave 4 semitone 868) for channel FM 4
; Pattern $08, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $62	; Set frequency '9058' (octave 4 semitone 866) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $60	; Set frequency '9056' (octave 4 semitone 864) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $5e	; Set frequency '9054' (octave 4 semitone 862) for channel FM 4
; Pattern $08, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $5c	; Set frequency '9052' (octave 4 semitone 860) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $5a	; Set frequency '9050' (octave 4 semitone 858) for channel FM 4
; Pattern $08, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $58	; Set frequency '9048' (octave 4 semitone 856) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $56	; Set frequency '9046' (octave 4 semitone 854) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $54	; Set frequency '9044' (octave 4 semitone 852) for channel FM 4
; Pattern $08, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $52	; Set frequency '9042' (octave 4 semitone 850) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $50	; Set frequency '9040' (octave 4 semitone 848) for channel FM 4
; Pattern $08, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $4e	; Set frequency '9038' (octave 4 semitone 846) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $4c	; Set frequency '9036' (octave 4 semitone 844) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $4a	; Set frequency '9034' (octave 4 semitone 842) for channel FM 4
; Pattern $08, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $48	; Set frequency '9032' (octave 4 semitone 840) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $46	; Set frequency '9030' (octave 4 semitone 838) for channel FM 4
; Pattern $08, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $44	; Set frequency '9028' (octave 4 semitone 836) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $40	; Set frequency '9024' (octave 4 semitone 832) for channel FM 4
; Pattern $08, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $3e	; Set frequency '9022' (octave 4 semitone 830) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $3c	; Set frequency '9020' (octave 4 semitone 828) for channel FM 4
; Pattern $08, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $3a	; Set frequency '9018' (octave 4 semitone 826) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $38	; Set frequency '9016' (octave 4 semitone 824) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $36	; Set frequency '9014' (octave 4 semitone 822) for channel FM 4
; Pattern $08, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $34	; Set frequency '9012' (octave 4 semitone 820) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $32	; Set frequency '9010' (octave 4 semitone 818) for channel FM 4
; Pattern $08, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $30	; Set frequency '9008' (octave 4 semitone 816) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $2e	; Set frequency '9006' (octave 4 semitone 814) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $2c	; Set frequency '9004' (octave 4 semitone 812) for channel FM 4
; Pattern $08, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $2a	; Set frequency '9002' (octave 4 semitone 810) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $28	; Set frequency '9000' (octave 4 semitone 808) for channel FM 4
; Pattern $08, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $26	; Set frequency '8998' (octave 4 semitone 806) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $24	; Set frequency '8996' (octave 4 semitone 804) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $22	; Set frequency '8994' (octave 4 semitone 802) for channel FM 4
; Pattern $08, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $20	; Set frequency '8992' (octave 4 semitone 800) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $1e	; Set frequency '8990' (octave 4 semitone 798) for channel FM 4
; Pattern $08, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $1c	; Set frequency '8988' (octave 4 semitone 796) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $1a	; Set frequency '8986' (octave 4 semitone 794) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $18	; Set frequency '8984' (octave 4 semitone 792) for channel FM 4
; Pattern $08, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $16	; Set frequency '8982' (octave 4 semitone 790) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $14	; Set frequency '8980' (octave 4 semitone 788) for channel FM 4
; Pattern $08, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $12	; Set frequency '8978' (octave 4 semitone 786) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $10	; Set frequency '8976' (octave 4 semitone 784) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $0e	; Set frequency '8974' (octave 4 semitone 782) for channel FM 4
; Pattern $08, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $0c	; Set frequency '8972' (octave 4 semitone 780) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $0a	; Set frequency '8970' (octave 4 semitone 778) for channel FM 4
; Pattern $08, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $08	; Set frequency '8968' (octave 4 semitone 776) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $06	; Set frequency '8966' (octave 4 semitone 774) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $04	; Set frequency '8964' (octave 4 semitone 772) for channel FM 4
; Pattern $08, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $02	; Set frequency '8962' (octave 4 semitone 770) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $23, $00	; Set frequency '8960' (octave 4 semitone 768) for channel FM 4
; Pattern $08, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $fe	; Set frequency '8958' (octave 4 semitone 766) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $fc	; Set frequency '8956' (octave 4 semitone 764) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $fa	; Set frequency '8954' (octave 4 semitone 762) for channel FM 4
; Pattern $08, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $f8	; Set frequency '8952' (octave 4 semitone 760) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $f6	; Set frequency '8950' (octave 4 semitone 758) for channel FM 4
; Pattern $08, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $f4	; Set frequency '8948' (octave 4 semitone 756) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $f2	; Set frequency '8946' (octave 4 semitone 754) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $f0	; Set frequency '8944' (octave 4 semitone 752) for channel FM 4
; Pattern $08, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ee	; Set frequency '8942' (octave 4 semitone 750) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ec	; Set frequency '8940' (octave 4 semitone 748) for channel FM 4
; Pattern $08, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ea	; Set frequency '8938' (octave 4 semitone 746) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $e8	; Set frequency '8936' (octave 4 semitone 744) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $e6	; Set frequency '8934' (octave 4 semitone 742) for channel FM 4
; Pattern $08, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $e4	; Set frequency '8932' (octave 4 semitone 740) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $e2	; Set frequency '8930' (octave 4 semitone 738) for channel FM 4
; Pattern $08, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $e0	; Set frequency '8928' (octave 4 semitone 736) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $de	; Set frequency '8926' (octave 4 semitone 734) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $dc	; Set frequency '8924' (octave 4 semitone 732) for channel FM 4
; Pattern $08, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $da	; Set frequency '8922' (octave 4 semitone 730) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $d8	; Set frequency '8920' (octave 4 semitone 728) for channel FM 4
; Pattern $08, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $d6	; Set frequency '8918' (octave 4 semitone 726) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $d4	; Set frequency '8916' (octave 4 semitone 724) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $d2	; Set frequency '8914' (octave 4 semitone 722) for channel FM 4
; Pattern $08, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $d0	; Set frequency '8912' (octave 4 semitone 720) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ce	; Set frequency '8910' (octave 4 semitone 718) for channel FM 4
; Pattern $08, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $cc	; Set frequency '8908' (octave 4 semitone 716) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ca	; Set frequency '8906' (octave 4 semitone 714) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 4
; Pattern $08, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $c4	; Set frequency '8900' (octave 4 semitone 708) for channel FM 4
; Pattern $08, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $c2	; Set frequency '8898' (octave 4 semitone 706) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $c0	; Set frequency '8896' (octave 4 semitone 704) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $be	; Set frequency '8894' (octave 4 semitone 702) for channel FM 4
; Pattern $08, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $bc	; Set frequency '8892' (octave 4 semitone 700) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ba	; Set frequency '8890' (octave 4 semitone 698) for channel FM 4
; Pattern $08, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $b8	; Set frequency '8888' (octave 4 semitone 696) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $b6	; Set frequency '8886' (octave 4 semitone 694) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $b4	; Set frequency '8884' (octave 4 semitone 692) for channel FM 4
; Pattern $08, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $b2	; Set frequency '8882' (octave 4 semitone 690) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $b0	; Set frequency '8880' (octave 4 semitone 688) for channel FM 4
; Pattern $08, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ae	; Set frequency '8878' (octave 4 semitone 686) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $ac	; Set frequency '8876' (octave 4 semitone 684) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 4
; Pattern $08, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 4
; Pattern $08, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 4
; Pattern $08, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 4
; Pattern $08, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 4
; Pattern $08, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $94	; Set frequency '8852' (octave 4 semitone 660) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $92	; Set frequency '8850' (octave 4 semitone 658) for channel FM 4
; Pattern $08, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $8e	; Set frequency '8846' (octave 4 semitone 654) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $8c	; Set frequency '8844' (octave 4 semitone 652) for channel FM 4
; Pattern $08, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $8a	; Set frequency '8842' (octave 4 semitone 650) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $88	; Set frequency '8840' (octave 4 semitone 648) for channel FM 4
; Pattern $08, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 4
; Pattern $08, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 4
; Pattern $08, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 4
; Pattern $08, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 4
; Pattern $08, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $f6	; Set frequency '7414' (octave 3 semitone 1270) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $f4	; Set frequency '7412' (octave 3 semitone 1268) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $f2	; Set frequency '7410' (octave 3 semitone 1266) for channel FM 4
; Pattern $08, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $f0	; Set frequency '7408' (octave 3 semitone 1264) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ee	; Set frequency '7406' (octave 3 semitone 1262) for channel FM 4
; Pattern $08, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ec	; Set frequency '7404' (octave 3 semitone 1260) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ea	; Set frequency '7402' (octave 3 semitone 1258) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 4
; Pattern $08, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $e6	; Set frequency '7398' (octave 3 semitone 1254) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $e4	; Set frequency '7396' (octave 3 semitone 1252) for channel FM 4
; Pattern $08, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $e2	; Set frequency '7394' (octave 3 semitone 1250) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $e0	; Set frequency '7392' (octave 3 semitone 1248) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $de	; Set frequency '7390' (octave 3 semitone 1246) for channel FM 4
; Pattern $08, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $dc	; Set frequency '7388' (octave 3 semitone 1244) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $da	; Set frequency '7386' (octave 3 semitone 1242) for channel FM 4
; Pattern $08, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $d6	; Set frequency '7382' (octave 3 semitone 1238) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $d4	; Set frequency '7380' (octave 3 semitone 1236) for channel FM 4
; Pattern $08, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $d2	; Set frequency '7378' (octave 3 semitone 1234) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $d0	; Set frequency '7376' (octave 3 semitone 1232) for channel FM 4
; Pattern $08, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 4
; Pattern $08, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c6	; Set frequency '7366' (octave 3 semitone 1222) for channel FM 4
; Pattern $08, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c0	; Set frequency '7360' (octave 3 semitone 1216) for channel FM 4
; Pattern $08, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $be	; Set frequency '7358' (octave 3 semitone 1214) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $bc	; Set frequency '7356' (octave 3 semitone 1212) for channel FM 4
; Pattern $08, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ba	; Set frequency '7354' (octave 3 semitone 1210) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $b8	; Set frequency '7352' (octave 3 semitone 1208) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $b6	; Set frequency '7350' (octave 3 semitone 1206) for channel FM 4
; Pattern $08, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $b4	; Set frequency '7348' (octave 3 semitone 1204) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $b2	; Set frequency '7346' (octave 3 semitone 1202) for channel FM 4
; Pattern $08, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $b0	; Set frequency '7344' (octave 3 semitone 1200) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ae	; Set frequency '7342' (octave 3 semitone 1198) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ac	; Set frequency '7340' (octave 3 semitone 1196) for channel FM 4
; Pattern $09, Row 0; 
	dc.b $24, $0b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $aa	; Set frequency '7338' (octave 3 semitone 1194) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $a8	; Set frequency '7336' (octave 3 semitone 1192) for channel FM 4
; Pattern $09, Row 1; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $21, $19	; Set volume for channel FM 2
	dc.b $22, $19	; Set volume for channel FM 3
	dc.b $24, $0d	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $a6	; Set frequency '7334' (octave 3 semitone 1190) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $a4	; Set frequency '7332' (octave 3 semitone 1188) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $a2	; Set frequency '7330' (octave 3 semitone 1186) for channel FM 4
; Pattern $09, Row 2; 
	dc.b $20, $11	; Set volume for channel FM 1
	dc.b $21, $1b	; Set volume for channel FM 2
	dc.b $22, $1b	; Set volume for channel FM 3
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $a0	; Set frequency '7328' (octave 3 semitone 1184) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $9e	; Set frequency '7326' (octave 3 semitone 1182) for channel FM 4
; Pattern $09, Row 3; 
	dc.b $20, $13	; Set volume for channel FM 1
	dc.b $21, $1c	; Set volume for channel FM 2
	dc.b $22, $1c	; Set volume for channel FM 3
	dc.b $24, $11	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $9c	; Set frequency '7324' (octave 3 semitone 1180) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $9a	; Set frequency '7322' (octave 3 semitone 1178) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $98	; Set frequency '7320' (octave 3 semitone 1176) for channel FM 4
; Pattern $09, Row 4; 
	dc.b $20, $15	; Set volume for channel FM 1
	dc.b $21, $1e	; Set volume for channel FM 2
	dc.b $22, $1e	; Set volume for channel FM 3
	dc.b $24, $13	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $96	; Set frequency '7318' (octave 3 semitone 1174) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $94	; Set frequency '7316' (octave 3 semitone 1172) for channel FM 4
; Pattern $09, Row 5; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $21, $20	; Set volume for channel FM 2
	dc.b $22, $20	; Set volume for channel FM 3
	dc.b $24, $15	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $92	; Set frequency '7314' (octave 3 semitone 1170) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $90	; Set frequency '7312' (octave 3 semitone 1168) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $8e	; Set frequency '7310' (octave 3 semitone 1166) for channel FM 4
; Pattern $09, Row 6; 
	dc.b $20, $18	; Set volume for channel FM 1
	dc.b $21, $21	; Set volume for channel FM 2
	dc.b $22, $21	; Set volume for channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $8c	; Set frequency '7308' (octave 3 semitone 1164) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $8a	; Set frequency '7306' (octave 3 semitone 1162) for channel FM 4
; Pattern $09, Row 7; 
	dc.b $20, $1a	; Set volume for channel FM 1
	dc.b $21, $23	; Set volume for channel FM 2
	dc.b $22, $23	; Set volume for channel FM 3
	dc.b $24, $18	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $88	; Set frequency '7304' (octave 3 semitone 1160) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $86	; Set frequency '7302' (octave 3 semitone 1158) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $84	; Set frequency '7300' (octave 3 semitone 1156) for channel FM 4
; Pattern $09, Row 8; 
	dc.b $20, $1c	; Set volume for channel FM 1
	dc.b $21, $25	; Set volume for channel FM 2
	dc.b $22, $25	; Set volume for channel FM 3
	dc.b $24, $1a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $82	; Set frequency '7298' (octave 3 semitone 1154) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $80	; Set frequency '7296' (octave 3 semitone 1152) for channel FM 4
; Pattern $09, Row 9; 
	dc.b $20, $1e	; Set volume for channel FM 1
	dc.b $21, $26	; Set volume for channel FM 2
	dc.b $22, $26	; Set volume for channel FM 3
	dc.b $24, $1c	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
; Pattern $09, Row 10; 
	dc.b $20, $20	; Set volume for channel FM 1
	dc.b $21, $28	; Set volume for channel FM 2
	dc.b $22, $28	; Set volume for channel FM 3
	dc.b $24, $1e	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
; Pattern $09, Row 11; 
	dc.b $20, $21	; Set volume for channel FM 1
	dc.b $21, $2a	; Set volume for channel FM 2
	dc.b $22, $2a	; Set volume for channel FM 3
	dc.b $24, $20	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
; Pattern $09, Row 12; 
	dc.b $20, $23	; Set volume for channel FM 1
	dc.b $21, $2b	; Set volume for channel FM 2
	dc.b $22, $2b	; Set volume for channel FM 3
	dc.b $24, $22	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
; Pattern $09, Row 13; 
	dc.b $20, $25	; Set volume for channel FM 1
	dc.b $21, $2d	; Set volume for channel FM 2
	dc.b $22, $2d	; Set volume for channel FM 3
	dc.b $24, $23	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $66	; Set frequency '7270' (octave 3 semitone 1126) for channel FM 4
; Pattern $09, Row 14; 
	dc.b $20, $27	; Set volume for channel FM 1
	dc.b $21, $2f	; Set volume for channel FM 2
	dc.b $22, $2f	; Set volume for channel FM 3
	dc.b $24, $25	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $62	; Set frequency '7266' (octave 3 semitone 1122) for channel FM 4
; Pattern $09, Row 15; 
	dc.b $20, $29	; Set volume for channel FM 1
	dc.b $21, $30	; Set volume for channel FM 2
	dc.b $22, $30	; Set volume for channel FM 3
	dc.b $24, $27	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $60	; Set frequency '7264' (octave 3 semitone 1120) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $5e	; Set frequency '7262' (octave 3 semitone 1118) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $5c	; Set frequency '7260' (octave 3 semitone 1116) for channel FM 4
; Pattern $09, Row 16; 
	dc.b $20, $2a	; Set volume for channel FM 1
	dc.b $21, $32	; Set volume for channel FM 2
	dc.b $22, $32	; Set volume for channel FM 3
	dc.b $24, $29	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $5a	; Set frequency '7258' (octave 3 semitone 1114) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $58	; Set frequency '7256' (octave 3 semitone 1112) for channel FM 4
; Pattern $09, Row 17; 
	dc.b $20, $2c	; Set volume for channel FM 1
	dc.b $21, $34	; Set volume for channel FM 2
	dc.b $22, $34	; Set volume for channel FM 3
	dc.b $24, $2b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $56	; Set frequency '7254' (octave 3 semitone 1110) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $54	; Set frequency '7252' (octave 3 semitone 1108) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $52	; Set frequency '7250' (octave 3 semitone 1106) for channel FM 4
; Pattern $09, Row 18; 
	dc.b $20, $2e	; Set volume for channel FM 1
	dc.b $21, $35	; Set volume for channel FM 2
	dc.b $22, $35	; Set volume for channel FM 3
	dc.b $24, $2d	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $50	; Set frequency '7248' (octave 3 semitone 1104) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $4e	; Set frequency '7246' (octave 3 semitone 1102) for channel FM 4
; Pattern $09, Row 19; 
	dc.b $20, $30	; Set volume for channel FM 1
	dc.b $21, $37	; Set volume for channel FM 2
	dc.b $22, $37	; Set volume for channel FM 3
	dc.b $24, $2e	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $4a	; Set frequency '7242' (octave 3 semitone 1098) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $48	; Set frequency '7240' (octave 3 semitone 1096) for channel FM 4
; Pattern $09, Row 20; 
	dc.b $20, $32	; Set volume for channel FM 1
	dc.b $21, $39	; Set volume for channel FM 2
	dc.b $22, $39	; Set volume for channel FM 3
	dc.b $24, $30	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $46	; Set frequency '7238' (octave 3 semitone 1094) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $44	; Set frequency '7236' (octave 3 semitone 1092) for channel FM 4
; Pattern $09, Row 21; 
	dc.b $20, $34	; Set volume for channel FM 1
	dc.b $21, $3a	; Set volume for channel FM 2
	dc.b $22, $3a	; Set volume for channel FM 3
	dc.b $24, $32	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $42	; Set frequency '7234' (octave 3 semitone 1090) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $40	; Set frequency '7232' (octave 3 semitone 1088) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $3e	; Set frequency '7230' (octave 3 semitone 1086) for channel FM 4
; Pattern $09, Row 22; 
	dc.b $20, $35	; Set volume for channel FM 1
	dc.b $21, $3c	; Set volume for channel FM 2
	dc.b $22, $3c	; Set volume for channel FM 3
	dc.b $24, $34	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $3c	; Set frequency '7228' (octave 3 semitone 1084) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $3a	; Set frequency '7226' (octave 3 semitone 1082) for channel FM 4
; Pattern $09, Row 23; 
	dc.b $20, $37	; Set volume for channel FM 1
	dc.b $21, $3d	; Set volume for channel FM 2
	dc.b $22, $3d	; Set volume for channel FM 3
	dc.b $24, $36	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $38	; Set frequency '7224' (octave 3 semitone 1080) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $36	; Set frequency '7222' (octave 3 semitone 1078) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $34	; Set frequency '7220' (octave 3 semitone 1076) for channel FM 4
; Pattern $09, Row 24; 
	dc.b $20, $39	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $3f	; Set volume for channel FM 3
	dc.b $24, $38	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $32	; Set frequency '7218' (octave 3 semitone 1074) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $30	; Set frequency '7216' (octave 3 semitone 1072) for channel FM 4
; Pattern $09, Row 25; 
	dc.b $20, $3b	; Set volume for channel FM 1
	dc.b $21, $41	; Set volume for channel FM 2
	dc.b $22, $41	; Set volume for channel FM 3
	dc.b $24, $3a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $2e	; Set frequency '7214' (octave 3 semitone 1070) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $2c	; Set frequency '7212' (octave 3 semitone 1068) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $2a	; Set frequency '7210' (octave 3 semitone 1066) for channel FM 4
; Pattern $09, Row 26; 
	dc.b $20, $3d	; Set volume for channel FM 1
	dc.b $21, $42	; Set volume for channel FM 2
	dc.b $22, $42	; Set volume for channel FM 3
	dc.b $24, $3b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $28	; Set frequency '7208' (octave 3 semitone 1064) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $26	; Set frequency '7206' (octave 3 semitone 1062) for channel FM 4
; Pattern $09, Row 27; 
	dc.b $20, $3e	; Set volume for channel FM 1
	dc.b $21, $44	; Set volume for channel FM 2
	dc.b $22, $44	; Set volume for channel FM 3
	dc.b $24, $3d	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $24	; Set frequency '7204' (octave 3 semitone 1060) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $22	; Set frequency '7202' (octave 3 semitone 1058) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $20	; Set frequency '7200' (octave 3 semitone 1056) for channel FM 4
; Pattern $09, Row 28; 
	dc.b $20, $40	; Set volume for channel FM 1
	dc.b $21, $46	; Set volume for channel FM 2
	dc.b $22, $46	; Set volume for channel FM 3
	dc.b $24, $3f	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $1e	; Set frequency '7198' (octave 3 semitone 1054) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $1c	; Set frequency '7196' (octave 3 semitone 1052) for channel FM 4
; Pattern $09, Row 29; 
	dc.b $20, $42	; Set volume for channel FM 1
	dc.b $21, $47	; Set volume for channel FM 2
	dc.b $22, $47	; Set volume for channel FM 3
	dc.b $24, $41	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $1a	; Set frequency '7194' (octave 3 semitone 1050) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $18	; Set frequency '7192' (octave 3 semitone 1048) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 4
; Pattern $09, Row 30; 
	dc.b $20, $44	; Set volume for channel FM 1
	dc.b $21, $49	; Set volume for channel FM 2
	dc.b $22, $49	; Set volume for channel FM 3
	dc.b $24, $43	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $14	; Set frequency '7188' (octave 3 semitone 1044) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $12	; Set frequency '7186' (octave 3 semitone 1042) for channel FM 4
; Pattern $09, Row 31; 
	dc.b $20, $46	; Set volume for channel FM 1
	dc.b $21, $4b	; Set volume for channel FM 2
	dc.b $22, $4b	; Set volume for channel FM 3
	dc.b $24, $45	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $10	; Set frequency '7184' (octave 3 semitone 1040) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $0e	; Set frequency '7182' (octave 3 semitone 1038) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $0c	; Set frequency '7180' (octave 3 semitone 1036) for channel FM 4
; Pattern $09, Row 32; 
	dc.b $20, $47	; Set volume for channel FM 1
	dc.b $21, $4c	; Set volume for channel FM 2
	dc.b $22, $4c	; Set volume for channel FM 3
	dc.b $24, $46	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $08	; Set frequency '7176' (octave 3 semitone 1032) for channel FM 4
; Pattern $09, Row 33; 
	dc.b $20, $49	; Set volume for channel FM 1
	dc.b $21, $4e	; Set volume for channel FM 2
	dc.b $22, $4e	; Set volume for channel FM 3
	dc.b $24, $48	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $06	; Set frequency '7174' (octave 3 semitone 1030) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $04	; Set frequency '7172' (octave 3 semitone 1028) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $02	; Set frequency '7170' (octave 3 semitone 1026) for channel FM 4
; Pattern $09, Row 34; 
	dc.b $20, $4b	; Set volume for channel FM 1
	dc.b $21, $50	; Set volume for channel FM 2
	dc.b $22, $50	; Set volume for channel FM 3
	dc.b $24, $4a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $00	; Set frequency '7168' (octave 3 semitone 1024) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
; Pattern $09, Row 35; 
	dc.b $20, $4d	; Set volume for channel FM 1
	dc.b $21, $51	; Set volume for channel FM 2
	dc.b $22, $51	; Set volume for channel FM 3
	dc.b $24, $4c	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
; Pattern $09, Row 36; 
	dc.b $20, $4f	; Set volume for channel FM 1
	dc.b $21, $53	; Set volume for channel FM 2
	dc.b $22, $53	; Set volume for channel FM 3
	dc.b $24, $4e	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
; Pattern $09, Row 37; 
	dc.b $20, $50	; Set volume for channel FM 1
	dc.b $21, $55	; Set volume for channel FM 2
	dc.b $22, $55	; Set volume for channel FM 3
	dc.b $24, $50	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
; Pattern $09, Row 38; 
	dc.b $20, $52	; Set volume for channel FM 1
	dc.b $21, $56	; Set volume for channel FM 2
	dc.b $22, $56	; Set volume for channel FM 3
	dc.b $24, $51	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
; Pattern $09, Row 39; 
	dc.b $20, $54	; Set volume for channel FM 1
	dc.b $21, $58	; Set volume for channel FM 2
	dc.b $22, $58	; Set volume for channel FM 3
	dc.b $24, $53	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
; Pattern $09, Row 40; 
	dc.b $20, $56	; Set volume for channel FM 1
	dc.b $21, $5a	; Set volume for channel FM 2
	dc.b $22, $5a	; Set volume for channel FM 3
	dc.b $24, $55	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $e2	; Set frequency '7138' (octave 3 semitone 994) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $e0	; Set frequency '7136' (octave 3 semitone 992) for channel FM 4
; Pattern $09, Row 41; 
	dc.b $20, $58	; Set volume for channel FM 1
	dc.b $21, $5b	; Set volume for channel FM 2
	dc.b $22, $5b	; Set volume for channel FM 3
	dc.b $24, $57	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $de	; Set frequency '7134' (octave 3 semitone 990) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $dc	; Set frequency '7132' (octave 3 semitone 988) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $da	; Set frequency '7130' (octave 3 semitone 986) for channel FM 4
; Pattern $09, Row 42; 
	dc.b $20, $5a	; Set volume for channel FM 1
	dc.b $21, $5d	; Set volume for channel FM 2
	dc.b $22, $5d	; Set volume for channel FM 3
	dc.b $24, $59	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $d8	; Set frequency '7128' (octave 3 semitone 984) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $d6	; Set frequency '7126' (octave 3 semitone 982) for channel FM 4
; Pattern $09, Row 43; 
	dc.b $20, $5b	; Set volume for channel FM 1
	dc.b $21, $5e	; Set volume for channel FM 2
	dc.b $22, $5e	; Set volume for channel FM 3
	dc.b $24, $5b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $d4	; Set frequency '7124' (octave 3 semitone 980) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $d2	; Set frequency '7122' (octave 3 semitone 978) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $d0	; Set frequency '7120' (octave 3 semitone 976) for channel FM 4
; Pattern $09, Row 44; 
	dc.b $20, $5d	; Set volume for channel FM 1
	dc.b $21, $60	; Set volume for channel FM 2
	dc.b $22, $60	; Set volume for channel FM 3
	dc.b $24, $5d	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ce	; Set frequency '7118' (octave 3 semitone 974) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $cc	; Set frequency '7116' (octave 3 semitone 972) for channel FM 4
; Pattern $09, Row 45; 
	dc.b $20, $5f	; Set volume for channel FM 1
	dc.b $21, $62	; Set volume for channel FM 2
	dc.b $22, $62	; Set volume for channel FM 3
	dc.b $24, $5e	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ca	; Set frequency '7114' (octave 3 semitone 970) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $c8	; Set frequency '7112' (octave 3 semitone 968) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $c6	; Set frequency '7110' (octave 3 semitone 966) for channel FM 4
; Pattern $09, Row 46; 
	dc.b $20, $61	; Set volume for channel FM 1
	dc.b $21, $63	; Set volume for channel FM 2
	dc.b $22, $63	; Set volume for channel FM 3
	dc.b $24, $60	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
; Pattern $09, Row 47; 
	dc.b $20, $63	; Set volume for channel FM 1
	dc.b $21, $65	; Set volume for channel FM 2
	dc.b $22, $65	; Set volume for channel FM 3
	dc.b $24, $62	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
; Pattern $09, Row 48; 
	dc.b $20, $64	; Set volume for channel FM 1
	dc.b $21, $67	; Set volume for channel FM 2
	dc.b $22, $67	; Set volume for channel FM 3
	dc.b $24, $64	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
; Pattern $09, Row 49; 
	dc.b $20, $66	; Set volume for channel FM 1
	dc.b $21, $68	; Set volume for channel FM 2
	dc.b $22, $68	; Set volume for channel FM 3
	dc.b $24, $66	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
; Pattern $09, Row 50; 
	dc.b $20, $68	; Set volume for channel FM 1
	dc.b $21, $6a	; Set volume for channel FM 2
	dc.b $22, $6a	; Set volume for channel FM 3
	dc.b $24, $68	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
; Pattern $09, Row 51; 
	dc.b $20, $6a	; Set volume for channel FM 1
	dc.b $21, $6c	; Set volume for channel FM 2
	dc.b $22, $6c	; Set volume for channel FM 3
	dc.b $24, $69	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $aa	; Set frequency '7082' (octave 3 semitone 938) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $a8	; Set frequency '7080' (octave 3 semitone 936) for channel FM 4
; Pattern $09, Row 52; 
	dc.b $20, $6c	; Set volume for channel FM 1
	dc.b $21, $6d	; Set volume for channel FM 2
	dc.b $22, $6d	; Set volume for channel FM 3
	dc.b $24, $6b	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $a6	; Set frequency '7078' (octave 3 semitone 934) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $a4	; Set frequency '7076' (octave 3 semitone 932) for channel FM 4
; Pattern $09, Row 53; 
	dc.b $20, $6d	; Set volume for channel FM 1
	dc.b $21, $6f	; Set volume for channel FM 2
	dc.b $22, $6f	; Set volume for channel FM 3
	dc.b $24, $6d	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $a2	; Set frequency '7074' (octave 3 semitone 930) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $a0	; Set frequency '7072' (octave 3 semitone 928) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $9e	; Set frequency '7070' (octave 3 semitone 926) for channel FM 4
; Pattern $09, Row 54; 
	dc.b $20, $6f	; Set volume for channel FM 1
	dc.b $21, $71	; Set volume for channel FM 2
	dc.b $22, $71	; Set volume for channel FM 3
	dc.b $24, $6f	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $9c	; Set frequency '7068' (octave 3 semitone 924) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $9a	; Set frequency '7066' (octave 3 semitone 922) for channel FM 4
; Pattern $09, Row 55; 
	dc.b $20, $71	; Set volume for channel FM 1
	dc.b $21, $72	; Set volume for channel FM 2
	dc.b $22, $72	; Set volume for channel FM 3
	dc.b $24, $71	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $98	; Set frequency '7064' (octave 3 semitone 920) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $96	; Set frequency '7062' (octave 3 semitone 918) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $94	; Set frequency '7060' (octave 3 semitone 916) for channel FM 4
; Pattern $09, Row 56; 
	dc.b $20, $73	; Set volume for channel FM 1
	dc.b $21, $74	; Set volume for channel FM 2
	dc.b $22, $74	; Set volume for channel FM 3
	dc.b $24, $73	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $92	; Set frequency '7058' (octave 3 semitone 914) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $90	; Set frequency '7056' (octave 3 semitone 912) for channel FM 4
; Pattern $09, Row 57; 
	dc.b $20, $75	; Set volume for channel FM 1
	dc.b $21, $76	; Set volume for channel FM 2
	dc.b $22, $76	; Set volume for channel FM 3
	dc.b $24, $74	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $8e	; Set frequency '7054' (octave 3 semitone 910) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $8c	; Set frequency '7052' (octave 3 semitone 908) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $8a	; Set frequency '7050' (octave 3 semitone 906) for channel FM 4
; Pattern $09, Row 58; 
	dc.b $20, $76	; Set volume for channel FM 1
	dc.b $21, $77	; Set volume for channel FM 2
	dc.b $22, $77	; Set volume for channel FM 3
	dc.b $24, $76	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $88	; Set frequency '7048' (octave 3 semitone 904) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $86	; Set frequency '7046' (octave 3 semitone 902) for channel FM 4
; Pattern $09, Row 59; 
	dc.b $20, $78	; Set volume for channel FM 1
	dc.b $21, $79	; Set volume for channel FM 2
	dc.b $22, $79	; Set volume for channel FM 3
	dc.b $24, $78	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $84	; Set frequency '7044' (octave 3 semitone 900) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $82	; Set frequency '7042' (octave 3 semitone 898) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $80	; Set frequency '7040' (octave 3 semitone 896) for channel FM 4
; Pattern $09, Row 60; 
	dc.b $20, $7a	; Set volume for channel FM 1
	dc.b $21, $7b	; Set volume for channel FM 2
	dc.b $22, $7b	; Set volume for channel FM 3
	dc.b $24, $7a	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $7e	; Set frequency '7038' (octave 3 semitone 894) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $7c	; Set frequency '7036' (octave 3 semitone 892) for channel FM 4
; Pattern $09, Row 61; 
	dc.b $20, $7c	; Set volume for channel FM 1
	dc.b $21, $7c	; Set volume for channel FM 2
	dc.b $22, $7c	; Set volume for channel FM 3
	dc.b $24, $7c	; Set volume for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $7a	; Set frequency '7034' (octave 3 semitone 890) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $78	; Set frequency '7032' (octave 3 semitone 888) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 4
; Pattern $09, Row 62; 
	dc.b $20, $7e	; Set volume for channel FM 1
	dc.b $10		; Note off channel FM 1
	dc.b $21, $7e	; Set volume for channel FM 2
	dc.b $11		; Note off channel FM 2
	dc.b $22, $7e	; Set volume for channel FM 3
	dc.b $12		; Note off channel FM 3
	dc.b $24, $7e	; Set volume for channel FM 4
	dc.b $14		; Note off channel FM 4
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $1a		; Note off channel PSG 3
; Pattern $09, Row 63; 
	dc.b $fe, $02	; Delay
	dc.b $20, $7f	; Set volume for channel FM 1
	dc.b $21, $7f	; Set volume for channel FM 2
	dc.b $22, $7f	; Set volume for channel FM 3
	dc.b $24, $7f	; Set volume for channel FM 4
	dc.b $fe, $03	; Delay
	dc.b $ff	; The End

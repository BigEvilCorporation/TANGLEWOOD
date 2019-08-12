	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
; Pattern $00, Row 0; 
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $40, $83	; Set instrument for channel FM 1
	dc.b $20, $0f	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $48, $40	; Set instrument for channel PSG 1
	dc.b $28, $03	; Set volume for channel PSG 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
; Pattern $00, Row 1; 
; Pattern $00, Row 2; 
; Pattern $00, Row 3; 
; Pattern $00, Row 4; 
	dc.b $fe, $0a	; Delay
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $41, $83	; Set instrument for channel FM 2
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $f1, $80	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $49, $40	; Set instrument for channel PSG 2
	dc.b $29, $03	; Set volume for channel PSG 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
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
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $42, $83	; Set instrument for channel FM 3
	dc.b $22, $17	; Set volume for channel FM 3
	dc.b $f2, $40	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $4a, $40	; Set instrument for channel PSG 3
	dc.b $2a, $03	; Set volume for channel PSG 3
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
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
	dc.b $09, $26	; Note G-1 on channel PSG 2
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
	dc.b $08, $2c	; Note A#1 on channel PSG 1
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
	dc.b $09, $1c	; Note D-1 on channel PSG 2
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
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
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
	dc.b $09, $26	; Note G-1 on channel PSG 2
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
	dc.b $08, $2c	; Note A#1 on channel PSG 1
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
	dc.b $09, $1c	; Note D-1 on channel PSG 2
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
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
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
	dc.b $09, $26	; Note G-1 on channel PSG 2
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
	dc.b $08, $2c	; Note A#1 on channel PSG 1
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
	dc.b $09, $1c	; Note D-1 on channel PSG 2
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
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
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
	dc.b $09, $26	; Note G-1 on channel PSG 2
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
	dc.b $08, $3a	; Note F-2 on channel PSG 1
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
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 8; 
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $01, Row 12; 
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $01, Row 16; 
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $01, Row 20; 
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $01, Row 24; 
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 28; 
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 32; 
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 36; 
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 40; 
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 44; 
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $01, Row 48; 
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $01, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $01, Row 52; 
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $01, Row 56; 
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $01, Row 60; 
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $02, Row 0; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $02, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $02, Row 4; 
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $02, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 8; 
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 12; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 16; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 20; 
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 24; 
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 28; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $02, Row 32; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $02, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $02, Row 36; 
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $02, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $02, Row 40; 
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $02, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $02, Row 44; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $02, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $02, Row 48; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $02, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $02, Row 52; 
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $02, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 56; 
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $02, Row 60; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $02, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 0; 
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 2; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 4; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $03, Row 8; 
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $03, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $03, Row 12; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $03, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $03, Row 16; 
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $03, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $03, Row 20; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $03, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $03, Row 24; 
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $03, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $03, Row 28; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $03, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $03, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $03, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $03, Row 32; 
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
; Pattern $03, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 36; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 40; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $4b, $42	; Set instrument for channel PSG 4
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 42; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 44; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $03, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 48; 
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $03, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
; Pattern $03, Row 52; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
; Pattern $03, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $03, Row 56; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $31, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 2
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $03, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $03, Row 60; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $03, Row 62; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $38, $0e, $08	; Set frequency '142' for channel PSG 1
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $04, Row 0; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 2
	dc.b $32, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 3
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c6	; Set frequency '5062' (octave 2 semitone 966) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
; Pattern $04, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 2
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 3
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c7	; Set frequency '5063' (octave 2 semitone 967) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $c1	; Set frequency '5057' (octave 2 semitone 961) for channel FM 2
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $04, Row 4; 
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $44, $3f	; Set instrument for channel FM 4
	dc.b $24, $00	; Set volume for channel FM 4
	dc.b $f4, $54	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $32, $13, $c9	; Set frequency '5065' (octave 2 semitone 969) for channel FM 3
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c8	; Set frequency '5064' (octave 2 semitone 968) for channel FM 3
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c2	; Set frequency '5058' (octave 2 semitone 962) for channel FM 3
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
; Pattern $04, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $bf	; Set frequency '5055' (octave 2 semitone 959) for channel FM 3
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c0	; Set frequency '5056' (octave 2 semitone 960) for channel FM 3
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c3	; Set frequency '5059' (octave 2 semitone 963) for channel FM 3
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $32, $13, $c5	; Set frequency '5061' (octave 2 semitone 965) for channel FM 3
; Pattern $04, Row 8; 
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $45, $3f	; Set instrument for channel FM 5
	dc.b $25, $00	; Set volume for channel FM 5
	dc.b $f5, $94	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
; Pattern $04, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
; Pattern $04, Row 36; 
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
; Pattern $04, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
; Pattern $04, Row 40; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d0	; Set frequency '6864' (octave 3 semitone 720) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $05, Row 0; 
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d1	; Set frequency '6865' (octave 3 semitone 721) for channel FM 4
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d5	; Set frequency '6869' (octave 3 semitone 725) for channel FM 4
	dc.b $35, $1c, $7e	; Set frequency '7294' (octave 3 semitone 1150) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d4	; Set frequency '6868' (octave 3 semitone 724) for channel FM 4
	dc.b $35, $1c, $7c	; Set frequency '7292' (octave 3 semitone 1148) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $1a, $d3	; Set frequency '6867' (octave 3 semitone 723) for channel FM 4
	dc.b $35, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
; Pattern $05, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7f	; Set frequency '7295' (octave 3 semitone 1151) for channel FM 5
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $7d	; Set frequency '7293' (octave 3 semitone 1149) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $35, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 5
; Pattern $05, Row 8; 
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 9; 
; Pattern $05, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 11; 
; Pattern $05, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 13; 
; Pattern $05, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 15; 
; Pattern $05, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 17; 
; Pattern $05, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 19; 
; Pattern $05, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 21; 
; Pattern $05, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 23; 
; Pattern $05, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 25; 
; Pattern $05, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 27; 
; Pattern $05, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 29; 
; Pattern $05, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 31; 
; Pattern $05, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 33; 
; Pattern $05, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 35; 
; Pattern $05, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 37; 
; Pattern $05, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 39; 
; Pattern $05, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 41; 
; Pattern $05, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 43; 
; Pattern $05, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 45; 
; Pattern $05, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 47; 
; Pattern $05, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 49; 
; Pattern $05, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 51; 
; Pattern $05, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 53; 
; Pattern $05, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 55; 
; Pattern $05, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $05, Row 57; 
; Pattern $05, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 59; 
; Pattern $05, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 61; 
; Pattern $05, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $05, Row 63; 
; Pattern $06, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 1; 
; Pattern $06, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 3; 
; Pattern $06, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 5; 
; Pattern $06, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 7; 
; Pattern $06, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $06, Row 9; 
; Pattern $06, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 11; 
; Pattern $06, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 13; 
; Pattern $06, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 15; 
; Pattern $06, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 17; 
; Pattern $06, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 19; 
; Pattern $06, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 21; 
; Pattern $06, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 23; 
; Pattern $06, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $06, Row 25; 
; Pattern $06, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 27; 
; Pattern $06, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 29; 
; Pattern $06, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 31; 
; Pattern $06, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 33; 
; Pattern $06, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 35; 
; Pattern $06, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 37; 
; Pattern $06, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 39; 
; Pattern $06, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $06, Row 41; 
; Pattern $06, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 43; 
; Pattern $06, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 45; 
; Pattern $06, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 47; 
; Pattern $06, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 49; 
; Pattern $06, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 51; 
; Pattern $06, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 53; 
; Pattern $06, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 55; 
; Pattern $06, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $06, Row 57; 
; Pattern $06, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 59; 
; Pattern $06, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 61; 
; Pattern $06, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $06, Row 63; 
; Pattern $07, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 1; 
; Pattern $07, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 3; 
; Pattern $07, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 5; 
; Pattern $07, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 7; 
; Pattern $07, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $07, Row 9; 
; Pattern $07, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 11; 
; Pattern $07, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 13; 
; Pattern $07, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 15; 
; Pattern $07, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 17; 
; Pattern $07, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 19; 
; Pattern $07, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 21; 
; Pattern $07, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 23; 
; Pattern $07, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $07, Row 25; 
; Pattern $07, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 27; 
; Pattern $07, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 29; 
; Pattern $07, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 31; 
; Pattern $07, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 33; 
; Pattern $07, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 35; 
; Pattern $07, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 37; 
; Pattern $07, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 39; 
; Pattern $07, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $07, Row 41; 
; Pattern $07, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 43; 
; Pattern $07, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 45; 
; Pattern $07, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $07, Row 47; 
; Pattern $07, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $07, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $07, Row 52; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
; Pattern $07, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $07, Row 56; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $34, $1c, $bf	; Set frequency '7359' (octave 3 semitone 1215) for channel FM 4
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c0	; Set frequency '7360' (octave 3 semitone 1216) for channel FM 4
	dc.b $35, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c1	; Set frequency '7361' (octave 3 semitone 1217) for channel FM 4
	dc.b $35, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 4
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $07, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c3	; Set frequency '7363' (octave 3 semitone 1219) for channel FM 4
	dc.b $35, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 4
	dc.b $35, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 5
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c5	; Set frequency '7365' (octave 3 semitone 1221) for channel FM 4
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c6	; Set frequency '7366' (octave 3 semitone 1222) for channel FM 4
	dc.b $35, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c7	; Set frequency '7367' (octave 3 semitone 1223) for channel FM 4
	dc.b $35, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $07, Row 60; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 4
	dc.b $35, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c9	; Set frequency '7369' (octave 3 semitone 1225) for channel FM 4
	dc.b $35, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 4
	dc.b $35, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 4
	dc.b $35, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 4
	dc.b $35, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 5
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $07, Row 62; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cd	; Set frequency '7373' (octave 3 semitone 1229) for channel FM 4
	dc.b $35, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 5
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 4
	dc.b $35, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $08	; Set frequency '142' for channel PSG 1
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $08, Row 0; 
	dc.b $fe, $02	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 1; 
; Pattern $08, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 3; 
; Pattern $08, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $01, $4f	; Note G-2 on channel FM 2
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 5; 
; Pattern $08, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 7; 
; Pattern $08, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $08, Row 9; 
; Pattern $08, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 11; 
; Pattern $08, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 13; 
; Pattern $08, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 15; 
; Pattern $08, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 17; 
; Pattern $08, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 19; 
; Pattern $08, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 21; 
; Pattern $08, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 23; 
; Pattern $08, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $08, Row 25; 
; Pattern $08, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 27; 
; Pattern $08, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 29; 
; Pattern $08, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 31; 
; Pattern $08, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 33; 
; Pattern $08, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 35; 
; Pattern $08, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 37; 
; Pattern $08, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 39; 
; Pattern $08, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $08, Row 41; 
; Pattern $08, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 43; 
; Pattern $08, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 45; 
; Pattern $08, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 47; 
; Pattern $08, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 49; 
; Pattern $08, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 51; 
; Pattern $08, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 53; 
; Pattern $08, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 55; 
; Pattern $08, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $08, Row 57; 
; Pattern $08, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 59; 
; Pattern $08, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 61; 
; Pattern $08, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $08, Row 63; 
; Pattern $09, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 1; 
; Pattern $09, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 3; 
; Pattern $09, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 5; 
; Pattern $09, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 7; 
; Pattern $09, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 9; 
; Pattern $09, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 11; 
; Pattern $09, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 13; 
; Pattern $09, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 15; 
; Pattern $09, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 17; 
; Pattern $09, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 19; 
; Pattern $09, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 21; 
; Pattern $09, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 23; 
; Pattern $09, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 25; 
; Pattern $09, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 27; 
; Pattern $09, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 29; 
; Pattern $09, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 31; 
; Pattern $09, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 33; 
; Pattern $09, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 35; 
; Pattern $09, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 37; 
; Pattern $09, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 39; 
; Pattern $09, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 41; 
; Pattern $09, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 43; 
; Pattern $09, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 45; 
; Pattern $09, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 47; 
; Pattern $09, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 49; 
; Pattern $09, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 51; 
; Pattern $09, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 53; 
; Pattern $09, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 55; 
; Pattern $09, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $09, Row 57; 
; Pattern $09, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 59; 
; Pattern $09, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 61; 
; Pattern $09, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $09, Row 63; 
; Pattern $0a, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 1; 
; Pattern $0a, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 3; 
; Pattern $0a, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 5; 
; Pattern $0a, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 7; 
; Pattern $0a, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0a, Row 9; 
; Pattern $0a, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 11; 
; Pattern $0a, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 13; 
; Pattern $0a, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 15; 
; Pattern $0a, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 17; 
; Pattern $0a, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 19; 
; Pattern $0a, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 21; 
; Pattern $0a, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 23; 
; Pattern $0a, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0a, Row 25; 
; Pattern $0a, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 27; 
; Pattern $0a, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 29; 
; Pattern $0a, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 31; 
; Pattern $0a, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 33; 
; Pattern $0a, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 35; 
; Pattern $0a, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 37; 
; Pattern $0a, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 39; 
; Pattern $0a, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0a, Row 41; 
; Pattern $0a, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 43; 
; Pattern $0a, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 45; 
; Pattern $0a, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 47; 
; Pattern $0a, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 49; 
; Pattern $0a, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 51; 
; Pattern $0a, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 53; 
; Pattern $0a, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 55; 
; Pattern $0a, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0a, Row 57; 
; Pattern $0a, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 59; 
; Pattern $0a, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 61; 
; Pattern $0a, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0a, Row 63; 
; Pattern $0b, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 1; 
; Pattern $0b, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 3; 
; Pattern $0b, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 5; 
; Pattern $0b, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 7; 
; Pattern $0b, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0b, Row 9; 
; Pattern $0b, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 11; 
; Pattern $0b, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 13; 
; Pattern $0b, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 15; 
; Pattern $0b, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 17; 
; Pattern $0b, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 19; 
; Pattern $0b, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 21; 
; Pattern $0b, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 23; 
; Pattern $0b, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0b, Row 25; 
; Pattern $0b, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 27; 
; Pattern $0b, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 29; 
; Pattern $0b, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 31; 
	dc.b $fe, $02	; Delay
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $21, $3f	; Set volume for channel FM 2
	dc.b $22, $3f	; Set volume for channel FM 3
; Pattern $0b, Row 32; 
	dc.b $fe, $03	; Delay
	dc.b $10		; Note off channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 33; 
; Pattern $0b, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 35; 
; Pattern $0b, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 37; 
; Pattern $0b, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 39; 
; Pattern $0b, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0b, Row 41; 
; Pattern $0b, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 43; 
; Pattern $0b, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 45; 
; Pattern $0b, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0b, Row 47; 
; Pattern $0b, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
; Pattern $0b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $0b, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
; Pattern $0b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $fe, $01	; Delay
; Pattern $0b, Row 52; 
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
; Pattern $0b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
; Pattern $0b, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
; Pattern $0b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $0b, Row 56; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $34, $1c, $bf	; Set frequency '7359' (octave 3 semitone 1215) for channel FM 4
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $0b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c0	; Set frequency '7360' (octave 3 semitone 1216) for channel FM 4
	dc.b $35, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c1	; Set frequency '7361' (octave 3 semitone 1217) for channel FM 4
	dc.b $35, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 4
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
; Pattern $0b, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c3	; Set frequency '7363' (octave 3 semitone 1219) for channel FM 4
	dc.b $35, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 4
	dc.b $35, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 5
	dc.b $39, $03, $0e	; Set frequency '227' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $0b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c5	; Set frequency '7365' (octave 3 semitone 1221) for channel FM 4
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
	dc.b $39, $02, $0e	; Set frequency '226' for channel PSG 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c6	; Set frequency '7366' (octave 3 semitone 1222) for channel FM 4
	dc.b $35, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c7	; Set frequency '7367' (octave 3 semitone 1223) for channel FM 4
	dc.b $35, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $0b, Row 60; 
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 4
	dc.b $35, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $c9	; Set frequency '7369' (octave 3 semitone 1225) for channel FM 4
	dc.b $35, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $09, $09	; Set frequency '153' for channel PSG 3
; Pattern $0b, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 4
	dc.b $35, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $3a, $08, $09	; Set frequency '152' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 4
	dc.b $35, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 5
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 4
	dc.b $35, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 5
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
; Pattern $0b, Row 62; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $cd	; Set frequency '7373' (octave 3 semitone 1229) for channel FM 4
	dc.b $35, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 5
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 4
	dc.b $35, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 5
	dc.b $38, $0f, $08	; Set frequency '143' for channel PSG 1
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $0b, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0e, $08	; Set frequency '142' for channel PSG 1
	dc.b $3a, $06, $09	; Set frequency '150' for channel PSG 3
; Pattern $0c, Row 0; 
	dc.b $fe, $02	; Delay
	dc.b $fd	; Set loop
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $40, $3c	; Set instrument for channel FM 1
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $42, $3f	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $f2, $d4	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 1; 
; Pattern $0c, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 3; 
; Pattern $0c, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f4, $54	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 5; 
; Pattern $0c, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 7; 
; Pattern $0c, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $f5, $94	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0c, Row 9; 
; Pattern $0c, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 11; 
; Pattern $0c, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 13; 
; Pattern $0c, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 15; 
; Pattern $0c, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 17; 
; Pattern $0c, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 19; 
; Pattern $0c, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 21; 
; Pattern $0c, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 23; 
; Pattern $0c, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0c, Row 25; 
; Pattern $0c, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 27; 
; Pattern $0c, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 29; 
; Pattern $0c, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 31; 
; Pattern $0c, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 33; 
; Pattern $0c, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 35; 
; Pattern $0c, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 37; 
; Pattern $0c, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 39; 
; Pattern $0c, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0c, Row 41; 
; Pattern $0c, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 43; 
; Pattern $0c, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 45; 
; Pattern $0c, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 47; 
; Pattern $0c, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 49; 
; Pattern $0c, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 51; 
; Pattern $0c, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 53; 
; Pattern $0c, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 55; 
; Pattern $0c, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0c, Row 57; 
; Pattern $0c, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 59; 
; Pattern $0c, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 61; 
; Pattern $0c, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0c, Row 63; 
; Pattern $0d, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 1; 
; Pattern $0d, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 3; 
; Pattern $0d, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 5; 
; Pattern $0d, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 7; 
; Pattern $0d, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 9; 
; Pattern $0d, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 11; 
; Pattern $0d, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 13; 
; Pattern $0d, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 15; 
; Pattern $0d, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 17; 
; Pattern $0d, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 19; 
; Pattern $0d, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 21; 
; Pattern $0d, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 23; 
; Pattern $0d, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 25; 
; Pattern $0d, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 27; 
; Pattern $0d, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 29; 
; Pattern $0d, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 31; 
; Pattern $0d, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 33; 
; Pattern $0d, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 35; 
; Pattern $0d, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 37; 
; Pattern $0d, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 39; 
; Pattern $0d, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 41; 
; Pattern $0d, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 43; 
; Pattern $0d, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 45; 
; Pattern $0d, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 47; 
; Pattern $0d, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 49; 
; Pattern $0d, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 51; 
; Pattern $0d, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 53; 
; Pattern $0d, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 55; 
; Pattern $0d, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $0d, Row 57; 
; Pattern $0d, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 59; 
; Pattern $0d, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 61; 
; Pattern $0d, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0d, Row 63; 
; Pattern $0e, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 1; 
; Pattern $0e, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 3; 
; Pattern $0e, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 5; 
; Pattern $0e, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 7; 
; Pattern $0e, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0e, Row 9; 
; Pattern $0e, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 11; 
; Pattern $0e, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 13; 
; Pattern $0e, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 15; 
; Pattern $0e, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 17; 
; Pattern $0e, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 19; 
; Pattern $0e, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 21; 
; Pattern $0e, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 23; 
; Pattern $0e, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0e, Row 25; 
; Pattern $0e, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 27; 
; Pattern $0e, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 29; 
; Pattern $0e, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 31; 
; Pattern $0e, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 33; 
; Pattern $0e, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 35; 
; Pattern $0e, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 37; 
; Pattern $0e, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 39; 
; Pattern $0e, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0e, Row 41; 
; Pattern $0e, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 43; 
; Pattern $0e, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 45; 
; Pattern $0e, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 47; 
; Pattern $0e, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 49; 
; Pattern $0e, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 51; 
; Pattern $0e, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 53; 
; Pattern $0e, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 55; 
; Pattern $0e, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $0e, Row 57; 
; Pattern $0e, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 59; 
; Pattern $0e, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 61; 
; Pattern $0e, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0e, Row 63; 
; Pattern $0f, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $02, $69	; Note E-3 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 1; 
; Pattern $0f, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 3; 
; Pattern $0f, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 5; 
; Pattern $0f, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 7; 
; Pattern $0f, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0f, Row 9; 
; Pattern $0f, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 11; 
; Pattern $0f, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 13; 
; Pattern $0f, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 15; 
; Pattern $0f, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 17; 
; Pattern $0f, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 19; 
; Pattern $0f, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 21; 
; Pattern $0f, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 23; 
; Pattern $0f, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0f, Row 25; 
; Pattern $0f, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 27; 
; Pattern $0f, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 29; 
; Pattern $0f, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 31; 
; Pattern $0f, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 33; 
; Pattern $0f, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 35; 
; Pattern $0f, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 37; 
; Pattern $0f, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 39; 
; Pattern $0f, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $0f, Row 41; 
; Pattern $0f, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 43; 
; Pattern $0f, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 45; 
; Pattern $0f, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 47; 
; Pattern $0f, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
; Pattern $0f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
; Pattern $0f, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
; Pattern $0f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
; Pattern $0f, Row 52; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $0f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
; Pattern $0f, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
; Pattern $0f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $39, $07, $0d	; Set frequency '215' for channel PSG 2
; Pattern $0f, Row 56; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $0f, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $0f, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $0f, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $0f, Row 60; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 61; 
; Pattern $0f, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $0f, Row 63; 
; Pattern $10, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 1; 
; Pattern $10, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 3; 
; Pattern $10, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 5; 
; Pattern $10, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 7; 
; Pattern $10, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $10, Row 9; 
; Pattern $10, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 11; 
; Pattern $10, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 13; 
; Pattern $10, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 15; 
; Pattern $10, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 17; 
; Pattern $10, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 19; 
; Pattern $10, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 21; 
; Pattern $10, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 23; 
; Pattern $10, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $10, Row 25; 
; Pattern $10, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 27; 
; Pattern $10, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 29; 
; Pattern $10, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 31; 
; Pattern $10, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 33; 
; Pattern $10, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 35; 
; Pattern $10, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 37; 
; Pattern $10, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 39; 
; Pattern $10, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $10, Row 41; 
; Pattern $10, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 43; 
; Pattern $10, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 45; 
; Pattern $10, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 47; 
; Pattern $10, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 49; 
; Pattern $10, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 51; 
; Pattern $10, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 53; 
; Pattern $10, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 55; 
; Pattern $10, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $10, Row 57; 
; Pattern $10, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 59; 
; Pattern $10, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 61; 
; Pattern $10, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $10, Row 63; 
; Pattern $11, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 1; 
; Pattern $11, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 3; 
; Pattern $11, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 5; 
; Pattern $11, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 7; 
; Pattern $11, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $11, Row 9; 
; Pattern $11, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 11; 
; Pattern $11, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 13; 
; Pattern $11, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 15; 
; Pattern $11, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 17; 
; Pattern $11, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 19; 
; Pattern $11, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 21; 
; Pattern $11, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 23; 
; Pattern $11, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $11, Row 25; 
; Pattern $11, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 27; 
; Pattern $11, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 29; 
; Pattern $11, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 31; 
; Pattern $11, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 33; 
; Pattern $11, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 35; 
; Pattern $11, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 37; 
; Pattern $11, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 39; 
; Pattern $11, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $11, Row 41; 
; Pattern $11, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 43; 
; Pattern $11, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 45; 
; Pattern $11, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 47; 
; Pattern $11, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 49; 
; Pattern $11, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 51; 
; Pattern $11, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 53; 
; Pattern $11, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 55; 
; Pattern $11, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $11, Row 57; 
; Pattern $11, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 59; 
; Pattern $11, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 61; 
; Pattern $11, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $11, Row 63; 
; Pattern $12, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 1; 
; Pattern $12, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 3; 
; Pattern $12, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 5; 
; Pattern $12, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 7; 
; Pattern $12, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $12, Row 9; 
; Pattern $12, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 11; 
; Pattern $12, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 13; 
; Pattern $12, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 15; 
; Pattern $12, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 17; 
; Pattern $12, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 19; 
; Pattern $12, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 21; 
; Pattern $12, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 23; 
; Pattern $12, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $12, Row 25; 
; Pattern $12, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 27; 
; Pattern $12, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 29; 
; Pattern $12, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 31; 
; Pattern $12, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 33; 
; Pattern $12, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 35; 
; Pattern $12, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 37; 
; Pattern $12, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 39; 
; Pattern $12, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $12, Row 41; 
; Pattern $12, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 43; 
; Pattern $12, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 45; 
; Pattern $12, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 47; 
; Pattern $12, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 49; 
; Pattern $12, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 51; 
; Pattern $12, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 53; 
; Pattern $12, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 55; 
; Pattern $12, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $12, Row 57; 
; Pattern $12, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 59; 
; Pattern $12, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 61; 
; Pattern $12, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $12, Row 63; 
; Pattern $13, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $02, $69	; Note E-3 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 1; 
; Pattern $13, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 3; 
; Pattern $13, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 5; 
; Pattern $13, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 7; 
; Pattern $13, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $13, Row 9; 
; Pattern $13, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 11; 
; Pattern $13, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 13; 
; Pattern $13, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 15; 
; Pattern $13, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 17; 
; Pattern $13, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 19; 
; Pattern $13, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 21; 
; Pattern $13, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 23; 
; Pattern $13, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $13, Row 25; 
; Pattern $13, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 27; 
; Pattern $13, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 29; 
; Pattern $13, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $13, Row 31; 
; Pattern $13, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $18		; Note off channel PSG 1
	dc.b $19		; Note off channel PSG 2
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $1a		; Note off channel PSG 3
	dc.b $fe, $02	; Delay
	dc.b $32, $1b, $2b	; Set frequency '6955' (octave 3 semitone 811) for channel FM 3
	dc.b $34, $1c, $bf	; Set frequency '7359' (octave 3 semitone 1215) for channel FM 4
	dc.b $35, $23, $c5	; Set frequency '9157' (octave 4 semitone 965) for channel FM 5
; Pattern $13, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $2c	; Set frequency '6956' (octave 3 semitone 812) for channel FM 3
	dc.b $34, $1c, $c0	; Set frequency '7360' (octave 3 semitone 1216) for channel FM 4
	dc.b $35, $23, $c6	; Set frequency '9158' (octave 4 semitone 966) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $2d	; Set frequency '6957' (octave 3 semitone 813) for channel FM 3
	dc.b $34, $1c, $c1	; Set frequency '7361' (octave 3 semitone 1217) for channel FM 4
	dc.b $35, $23, $c7	; Set frequency '9159' (octave 4 semitone 967) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $2e	; Set frequency '6958' (octave 3 semitone 814) for channel FM 3
	dc.b $34, $1c, $c2	; Set frequency '7362' (octave 3 semitone 1218) for channel FM 4
	dc.b $35, $23, $c8	; Set frequency '9160' (octave 4 semitone 968) for channel FM 5
; Pattern $13, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $2f	; Set frequency '6959' (octave 3 semitone 815) for channel FM 3
	dc.b $34, $1c, $c3	; Set frequency '7363' (octave 3 semitone 1219) for channel FM 4
	dc.b $35, $23, $c9	; Set frequency '9161' (octave 4 semitone 969) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $30	; Set frequency '6960' (octave 3 semitone 816) for channel FM 3
	dc.b $34, $1c, $c4	; Set frequency '7364' (octave 3 semitone 1220) for channel FM 4
	dc.b $35, $23, $ca	; Set frequency '9162' (octave 4 semitone 970) for channel FM 5
; Pattern $13, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $31	; Set frequency '6961' (octave 3 semitone 817) for channel FM 3
	dc.b $34, $1c, $c5	; Set frequency '7365' (octave 3 semitone 1221) for channel FM 4
	dc.b $35, $23, $cb	; Set frequency '9163' (octave 4 semitone 971) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $32	; Set frequency '6962' (octave 3 semitone 818) for channel FM 3
	dc.b $34, $1c, $c6	; Set frequency '7366' (octave 3 semitone 1222) for channel FM 4
	dc.b $35, $23, $cc	; Set frequency '9164' (octave 4 semitone 972) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $33	; Set frequency '6963' (octave 3 semitone 819) for channel FM 3
	dc.b $34, $1c, $c7	; Set frequency '7367' (octave 3 semitone 1223) for channel FM 4
	dc.b $35, $23, $cd	; Set frequency '9165' (octave 4 semitone 973) for channel FM 5
; Pattern $13, Row 36; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $34	; Set frequency '6964' (octave 3 semitone 820) for channel FM 3
	dc.b $34, $1c, $c8	; Set frequency '7368' (octave 3 semitone 1224) for channel FM 4
	dc.b $35, $23, $ce	; Set frequency '9166' (octave 4 semitone 974) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $35	; Set frequency '6965' (octave 3 semitone 821) for channel FM 3
	dc.b $34, $1c, $c9	; Set frequency '7369' (octave 3 semitone 1225) for channel FM 4
	dc.b $35, $23, $cf	; Set frequency '9167' (octave 4 semitone 975) for channel FM 5
; Pattern $13, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $36	; Set frequency '6966' (octave 3 semitone 822) for channel FM 3
	dc.b $34, $1c, $ca	; Set frequency '7370' (octave 3 semitone 1226) for channel FM 4
	dc.b $35, $23, $d0	; Set frequency '9168' (octave 4 semitone 976) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $37	; Set frequency '6967' (octave 3 semitone 823) for channel FM 3
	dc.b $34, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 4
	dc.b $35, $23, $d1	; Set frequency '9169' (octave 4 semitone 977) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $38	; Set frequency '6968' (octave 3 semitone 824) for channel FM 3
	dc.b $34, $1c, $cc	; Set frequency '7372' (octave 3 semitone 1228) for channel FM 4
	dc.b $35, $23, $d2	; Set frequency '9170' (octave 4 semitone 978) for channel FM 5
; Pattern $13, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $39	; Set frequency '6969' (octave 3 semitone 825) for channel FM 3
	dc.b $34, $1c, $cd	; Set frequency '7373' (octave 3 semitone 1229) for channel FM 4
	dc.b $35, $23, $d3	; Set frequency '9171' (octave 4 semitone 979) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3a	; Set frequency '6970' (octave 3 semitone 826) for channel FM 3
	dc.b $34, $1c, $ce	; Set frequency '7374' (octave 3 semitone 1230) for channel FM 4
	dc.b $35, $23, $d4	; Set frequency '9172' (octave 4 semitone 980) for channel FM 5
; Pattern $13, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3b	; Set frequency '6971' (octave 3 semitone 827) for channel FM 3
	dc.b $34, $1c, $cf	; Set frequency '7375' (octave 3 semitone 1231) for channel FM 4
	dc.b $35, $23, $d5	; Set frequency '9173' (octave 4 semitone 981) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3c	; Set frequency '6972' (octave 3 semitone 828) for channel FM 3
	dc.b $34, $1c, $d0	; Set frequency '7376' (octave 3 semitone 1232) for channel FM 4
	dc.b $35, $23, $d6	; Set frequency '9174' (octave 4 semitone 982) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3d	; Set frequency '6973' (octave 3 semitone 829) for channel FM 3
	dc.b $34, $1c, $d1	; Set frequency '7377' (octave 3 semitone 1233) for channel FM 4
	dc.b $35, $23, $d7	; Set frequency '9175' (octave 4 semitone 983) for channel FM 5
; Pattern $13, Row 40; 
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3e	; Set frequency '6974' (octave 3 semitone 830) for channel FM 3
	dc.b $34, $1c, $d2	; Set frequency '7378' (octave 3 semitone 1234) for channel FM 4
	dc.b $35, $23, $d8	; Set frequency '9176' (octave 4 semitone 984) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $3f	; Set frequency '6975' (octave 3 semitone 831) for channel FM 3
	dc.b $34, $1c, $d3	; Set frequency '7379' (octave 3 semitone 1235) for channel FM 4
	dc.b $35, $23, $d9	; Set frequency '9177' (octave 4 semitone 985) for channel FM 5
; Pattern $13, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $40	; Set frequency '6976' (octave 3 semitone 832) for channel FM 3
	dc.b $34, $1c, $d4	; Set frequency '7380' (octave 3 semitone 1236) for channel FM 4
	dc.b $35, $23, $da	; Set frequency '9178' (octave 4 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $41	; Set frequency '6977' (octave 3 semitone 833) for channel FM 3
	dc.b $34, $1c, $d5	; Set frequency '7381' (octave 3 semitone 1237) for channel FM 4
	dc.b $35, $23, $db	; Set frequency '9179' (octave 4 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $42	; Set frequency '6978' (octave 3 semitone 834) for channel FM 3
	dc.b $34, $1c, $d6	; Set frequency '7382' (octave 3 semitone 1238) for channel FM 4
	dc.b $35, $23, $dc	; Set frequency '9180' (octave 4 semitone 988) for channel FM 5
; Pattern $13, Row 42; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $43	; Set frequency '6979' (octave 3 semitone 835) for channel FM 3
	dc.b $34, $1c, $d7	; Set frequency '7383' (octave 3 semitone 1239) for channel FM 4
	dc.b $35, $23, $dd	; Set frequency '9181' (octave 4 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $44	; Set frequency '6980' (octave 3 semitone 836) for channel FM 3
	dc.b $34, $1c, $d8	; Set frequency '7384' (octave 3 semitone 1240) for channel FM 4
	dc.b $35, $23, $de	; Set frequency '9182' (octave 4 semitone 990) for channel FM 5
; Pattern $13, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $45	; Set frequency '6981' (octave 3 semitone 837) for channel FM 3
	dc.b $34, $1c, $d9	; Set frequency '7385' (octave 3 semitone 1241) for channel FM 4
	dc.b $35, $23, $df	; Set frequency '9183' (octave 4 semitone 991) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $46	; Set frequency '6982' (octave 3 semitone 838) for channel FM 3
	dc.b $34, $1c, $da	; Set frequency '7386' (octave 3 semitone 1242) for channel FM 4
	dc.b $35, $23, $e0	; Set frequency '9184' (octave 4 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $47	; Set frequency '6983' (octave 3 semitone 839) for channel FM 3
	dc.b $34, $1c, $db	; Set frequency '7387' (octave 3 semitone 1243) for channel FM 4
	dc.b $35, $23, $e1	; Set frequency '9185' (octave 4 semitone 993) for channel FM 5
; Pattern $13, Row 44; 
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $48	; Set frequency '6984' (octave 3 semitone 840) for channel FM 3
	dc.b $34, $1c, $dc	; Set frequency '7388' (octave 3 semitone 1244) for channel FM 4
	dc.b $35, $23, $e2	; Set frequency '9186' (octave 4 semitone 994) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $49	; Set frequency '6985' (octave 3 semitone 841) for channel FM 3
	dc.b $34, $1c, $dd	; Set frequency '7389' (octave 3 semitone 1245) for channel FM 4
	dc.b $35, $23, $e3	; Set frequency '9187' (octave 4 semitone 995) for channel FM 5
; Pattern $13, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4a	; Set frequency '6986' (octave 3 semitone 842) for channel FM 3
	dc.b $34, $1c, $de	; Set frequency '7390' (octave 3 semitone 1246) for channel FM 4
	dc.b $35, $23, $e4	; Set frequency '9188' (octave 4 semitone 996) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4b	; Set frequency '6987' (octave 3 semitone 843) for channel FM 3
	dc.b $34, $1c, $df	; Set frequency '7391' (octave 3 semitone 1247) for channel FM 4
	dc.b $35, $23, $e5	; Set frequency '9189' (octave 4 semitone 997) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4c	; Set frequency '6988' (octave 3 semitone 844) for channel FM 3
	dc.b $34, $1c, $e0	; Set frequency '7392' (octave 3 semitone 1248) for channel FM 4
	dc.b $35, $23, $e6	; Set frequency '9190' (octave 4 semitone 998) for channel FM 5
; Pattern $13, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4d	; Set frequency '6989' (octave 3 semitone 845) for channel FM 3
	dc.b $34, $1c, $e1	; Set frequency '7393' (octave 3 semitone 1249) for channel FM 4
	dc.b $35, $23, $e7	; Set frequency '9191' (octave 4 semitone 999) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 3
	dc.b $34, $1c, $e2	; Set frequency '7394' (octave 3 semitone 1250) for channel FM 4
	dc.b $35, $23, $e8	; Set frequency '9192' (octave 4 semitone 1000) for channel FM 5
; Pattern $13, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $4f	; Set frequency '6991' (octave 3 semitone 847) for channel FM 3
	dc.b $34, $1c, $e3	; Set frequency '7395' (octave 3 semitone 1251) for channel FM 4
	dc.b $35, $23, $e9	; Set frequency '9193' (octave 4 semitone 1001) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $50	; Set frequency '6992' (octave 3 semitone 848) for channel FM 3
	dc.b $34, $1c, $e4	; Set frequency '7396' (octave 3 semitone 1252) for channel FM 4
	dc.b $35, $23, $ea	; Set frequency '9194' (octave 4 semitone 1002) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $51	; Set frequency '6993' (octave 3 semitone 849) for channel FM 3
	dc.b $34, $1c, $e5	; Set frequency '7397' (octave 3 semitone 1253) for channel FM 4
	dc.b $35, $23, $eb	; Set frequency '9195' (octave 4 semitone 1003) for channel FM 5
; Pattern $13, Row 48; 
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $52	; Set frequency '6994' (octave 3 semitone 850) for channel FM 3
	dc.b $34, $1c, $e6	; Set frequency '7398' (octave 3 semitone 1254) for channel FM 4
	dc.b $35, $23, $ec	; Set frequency '9196' (octave 4 semitone 1004) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $53	; Set frequency '6995' (octave 3 semitone 851) for channel FM 3
	dc.b $34, $1c, $e7	; Set frequency '7399' (octave 3 semitone 1255) for channel FM 4
	dc.b $35, $23, $ed	; Set frequency '9197' (octave 4 semitone 1005) for channel FM 5
; Pattern $13, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $54	; Set frequency '6996' (octave 3 semitone 852) for channel FM 3
	dc.b $34, $1c, $e8	; Set frequency '7400' (octave 3 semitone 1256) for channel FM 4
	dc.b $35, $23, $ee	; Set frequency '9198' (octave 4 semitone 1006) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $55	; Set frequency '6997' (octave 3 semitone 853) for channel FM 3
	dc.b $34, $1c, $e9	; Set frequency '7401' (octave 3 semitone 1257) for channel FM 4
	dc.b $35, $23, $ef	; Set frequency '9199' (octave 4 semitone 1007) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $56	; Set frequency '6998' (octave 3 semitone 854) for channel FM 3
	dc.b $34, $1c, $ea	; Set frequency '7402' (octave 3 semitone 1258) for channel FM 4
	dc.b $35, $23, $f0	; Set frequency '9200' (octave 4 semitone 1008) for channel FM 5
; Pattern $13, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $57	; Set frequency '6999' (octave 3 semitone 855) for channel FM 3
	dc.b $34, $1c, $eb	; Set frequency '7403' (octave 3 semitone 1259) for channel FM 4
	dc.b $35, $23, $f1	; Set frequency '9201' (octave 4 semitone 1009) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $58	; Set frequency '7000' (octave 3 semitone 856) for channel FM 3
	dc.b $34, $1c, $ec	; Set frequency '7404' (octave 3 semitone 1260) for channel FM 4
	dc.b $35, $23, $f2	; Set frequency '9202' (octave 4 semitone 1010) for channel FM 5
; Pattern $13, Row 51; 
	dc.b $20, $3f	; Set volume for channel FM 1
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $59	; Set frequency '7001' (octave 3 semitone 857) for channel FM 3
	dc.b $34, $1c, $ed	; Set frequency '7405' (octave 3 semitone 1261) for channel FM 4
	dc.b $35, $23, $f3	; Set frequency '9203' (octave 4 semitone 1011) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $5a	; Set frequency '7002' (octave 3 semitone 858) for channel FM 3
	dc.b $34, $1c, $ee	; Set frequency '7406' (octave 3 semitone 1262) for channel FM 4
	dc.b $35, $23, $f4	; Set frequency '9204' (octave 4 semitone 1012) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $5b	; Set frequency '7003' (octave 3 semitone 859) for channel FM 3
	dc.b $34, $1c, $ef	; Set frequency '7407' (octave 3 semitone 1263) for channel FM 4
	dc.b $35, $23, $f5	; Set frequency '9205' (octave 4 semitone 1013) for channel FM 5
; Pattern $13, Row 52; 
	dc.b $10		; Note off channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $32, $1b, $5c	; Set frequency '7004' (octave 3 semitone 860) for channel FM 3
	dc.b $34, $1c, $f0	; Set frequency '7408' (octave 3 semitone 1264) for channel FM 4
	dc.b $35, $23, $f6	; Set frequency '9206' (octave 4 semitone 1014) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $32, $1b, $5d	; Set frequency '7005' (octave 3 semitone 861) for channel FM 3
	dc.b $34, $1c, $f1	; Set frequency '7409' (octave 3 semitone 1265) for channel FM 4
	dc.b $35, $23, $f7	; Set frequency '9207' (octave 4 semitone 1015) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $32, $1b, $5e	; Set frequency '7006' (octave 3 semitone 862) for channel FM 3
	dc.b $34, $1c, $f2	; Set frequency '7410' (octave 3 semitone 1266) for channel FM 4
	dc.b $35, $23, $f8	; Set frequency '9208' (octave 4 semitone 1016) for channel FM 5
; Pattern $13, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $32, $1b, $5f	; Set frequency '7007' (octave 3 semitone 863) for channel FM 3
	dc.b $34, $1c, $f3	; Set frequency '7411' (octave 3 semitone 1267) for channel FM 4
	dc.b $35, $23, $f9	; Set frequency '9209' (octave 4 semitone 1017) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $32, $1b, $60	; Set frequency '7008' (octave 3 semitone 864) for channel FM 3
	dc.b $34, $1c, $f4	; Set frequency '7412' (octave 3 semitone 1268) for channel FM 4
	dc.b $35, $23, $fa	; Set frequency '9210' (octave 4 semitone 1018) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $32, $1b, $61	; Set frequency '7009' (octave 3 semitone 865) for channel FM 3
	dc.b $34, $1c, $f5	; Set frequency '7413' (octave 3 semitone 1269) for channel FM 4
	dc.b $35, $23, $fb	; Set frequency '9211' (octave 4 semitone 1019) for channel FM 5
; Pattern $13, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $32, $1b, $62	; Set frequency '7010' (octave 3 semitone 866) for channel FM 3
	dc.b $34, $1c, $f6	; Set frequency '7414' (octave 3 semitone 1270) for channel FM 4
	dc.b $35, $23, $fc	; Set frequency '9212' (octave 4 semitone 1020) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $32, $1b, $63	; Set frequency '7011' (octave 3 semitone 867) for channel FM 3
	dc.b $34, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 4
	dc.b $35, $23, $fd	; Set frequency '9213' (octave 4 semitone 1021) for channel FM 5
; Pattern $13, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $32, $1b, $64	; Set frequency '7012' (octave 3 semitone 868) for channel FM 3
	dc.b $34, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 4
	dc.b $35, $23, $fe	; Set frequency '9214' (octave 4 semitone 1022) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $32, $1b, $65	; Set frequency '7013' (octave 3 semitone 869) for channel FM 3
	dc.b $34, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 4
	dc.b $35, $23, $ff	; Set frequency '9215' (octave 4 semitone 1023) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $32, $1b, $66	; Set frequency '7014' (octave 3 semitone 870) for channel FM 3
	dc.b $34, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 4
	dc.b $35, $24, $00	; Set frequency '9216' (octave 4 semitone 1024) for channel FM 5
; Pattern $13, Row 56; 
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $67	; Set frequency '7015' (octave 3 semitone 871) for channel FM 3
	dc.b $34, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 4
	dc.b $35, $24, $01	; Set frequency '9217' (octave 4 semitone 1025) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $68	; Set frequency '7016' (octave 3 semitone 872) for channel FM 3
	dc.b $34, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 4
	dc.b $35, $24, $02	; Set frequency '9218' (octave 4 semitone 1026) for channel FM 5
; Pattern $13, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $69	; Set frequency '7017' (octave 3 semitone 873) for channel FM 3
	dc.b $34, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 4
	dc.b $35, $24, $03	; Set frequency '9219' (octave 4 semitone 1027) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6a	; Set frequency '7018' (octave 3 semitone 874) for channel FM 3
	dc.b $34, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 4
	dc.b $35, $24, $04	; Set frequency '9220' (octave 4 semitone 1028) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6b	; Set frequency '7019' (octave 3 semitone 875) for channel FM 3
	dc.b $34, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 4
	dc.b $35, $24, $05	; Set frequency '9221' (octave 4 semitone 1029) for channel FM 5
; Pattern $13, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6c	; Set frequency '7020' (octave 3 semitone 876) for channel FM 3
	dc.b $34, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 4
	dc.b $35, $24, $06	; Set frequency '9222' (octave 4 semitone 1030) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6d	; Set frequency '7021' (octave 3 semitone 877) for channel FM 3
	dc.b $34, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 4
	dc.b $35, $24, $07	; Set frequency '9223' (octave 4 semitone 1031) for channel FM 5
; Pattern $13, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6e	; Set frequency '7022' (octave 3 semitone 878) for channel FM 3
	dc.b $34, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 4
	dc.b $35, $24, $08	; Set frequency '9224' (octave 4 semitone 1032) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $6f	; Set frequency '7023' (octave 3 semitone 879) for channel FM 3
	dc.b $34, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 4
	dc.b $35, $24, $09	; Set frequency '9225' (octave 4 semitone 1033) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $70	; Set frequency '7024' (octave 3 semitone 880) for channel FM 3
	dc.b $34, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 4
	dc.b $35, $24, $0a	; Set frequency '9226' (octave 4 semitone 1034) for channel FM 5
; Pattern $13, Row 60; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $71	; Set frequency '7025' (octave 3 semitone 881) for channel FM 3
	dc.b $34, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 4
	dc.b $35, $24, $0b	; Set frequency '9227' (octave 4 semitone 1035) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $72	; Set frequency '7026' (octave 3 semitone 882) for channel FM 3
	dc.b $34, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 4
	dc.b $35, $24, $0c	; Set frequency '9228' (octave 4 semitone 1036) for channel FM 5
; Pattern $13, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $73	; Set frequency '7027' (octave 3 semitone 883) for channel FM 3
	dc.b $34, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 4
	dc.b $35, $24, $0d	; Set frequency '9229' (octave 4 semitone 1037) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $74	; Set frequency '7028' (octave 3 semitone 884) for channel FM 3
	dc.b $34, $1d, $08	; Set frequency '7432' (octave 3 semitone 1288) for channel FM 4
	dc.b $35, $24, $0e	; Set frequency '9230' (octave 4 semitone 1038) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $75	; Set frequency '7029' (octave 3 semitone 885) for channel FM 3
	dc.b $34, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 4
	dc.b $35, $24, $0f	; Set frequency '9231' (octave 4 semitone 1039) for channel FM 5
; Pattern $13, Row 62; 
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $76	; Set frequency '7030' (octave 3 semitone 886) for channel FM 3
	dc.b $34, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 4
	dc.b $35, $24, $10	; Set frequency '9232' (octave 4 semitone 1040) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $32, $1b, $77	; Set frequency '7031' (octave 3 semitone 887) for channel FM 3
	dc.b $34, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 4
	dc.b $35, $24, $11	; Set frequency '9233' (octave 4 semitone 1041) for channel FM 5
; Pattern $13, Row 63; 
; Pattern $14, Row 0; 
	dc.b $fe, $03	; Delay
	dc.b $20, $00	; Set volume for channel FM 1
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $14, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $14, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $14, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $14, Row 4; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $f4, $54	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 8; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f5, $94	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $14, Row 9; 
; Pattern $14, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 11; 
; Pattern $14, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $14, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $14, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $14, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $14, Row 20; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 24; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $14, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $14, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 27; 
; Pattern $14, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 29; 
; Pattern $14, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 31; 
; Pattern $14, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $14, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $14, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $14, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $14, Row 36; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 40; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $14, Row 41; 
; Pattern $14, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 43; 
; Pattern $14, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $14, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $14, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $14, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $14, Row 52; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $14, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $14, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $14, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $14, Row 56; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $14, Row 57; 
; Pattern $14, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 59; 
; Pattern $14, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 61; 
; Pattern $14, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $14, Row 63; 
; Pattern $15, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $15, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $15, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $15, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $15, Row 4; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 8; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $15, Row 9; 
; Pattern $15, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 11; 
; Pattern $15, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 16; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $15, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $15, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $15, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $15, Row 20; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 24; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 2
; Pattern $15, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 2
; Pattern $15, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 2
; Pattern $15, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 2
; Pattern $15, Row 28; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 29; 
; Pattern $15, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 31; 
; Pattern $15, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $15, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $15, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $15, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $15, Row 36; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 40; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $15, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
; Pattern $15, Row 42; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 43; 
; Pattern $15, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 48; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $15, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $15, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $15, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $15, Row 52; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $15, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $15, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $15, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $15, Row 56; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $15, Row 57; 
; Pattern $15, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 59; 
; Pattern $15, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 61; 
; Pattern $15, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $15, Row 63; 
; Pattern $16, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $16, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $16, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $16, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $16, Row 4; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 8; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $16, Row 9; 
; Pattern $16, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 11; 
; Pattern $16, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 16; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $16, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $16, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $16, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $16, Row 20; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 24; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $16, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $16, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 27; 
; Pattern $16, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 29; 
; Pattern $16, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 31; 
; Pattern $16, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $16, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $16, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $16, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $16, Row 36; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 40; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $16, Row 41; 
; Pattern $16, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 43; 
; Pattern $16, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 48; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $16, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $16, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $16, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $16, Row 52; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $16, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $16, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $16, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $16, Row 56; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $16, Row 57; 
; Pattern $16, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 59; 
; Pattern $16, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 61; 
; Pattern $16, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $16, Row 63; 
; Pattern $17, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $69	; Note E-3 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $17, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $17, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $17, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $17, Row 4; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $17, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $17, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $17, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $17, Row 8; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $17, Row 9; 
; Pattern $17, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 11; 
; Pattern $17, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $17, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $17, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $17, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $17, Row 16; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $17, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $17, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $17, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $17, Row 20; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $17, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $17, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $17, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $17, Row 24; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $8e	; Set frequency '11406' (octave 5 semitone 1166) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $14	; Set frequency '11284' (octave 5 semitone 1044) for channel FM 2
; Pattern $17, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $9a	; Set frequency '11162' (octave 5 semitone 922) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $20	; Set frequency '11040' (octave 5 semitone 800) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $a6	; Set frequency '10918' (octave 5 semitone 678) for channel FM 2
; Pattern $17, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 2
; Pattern $17, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 2
; Pattern $17, Row 28; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 29; 
; Pattern $17, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 31; 
; Pattern $17, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $17, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $17, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $17, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $17, Row 36; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $17, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $17, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $17, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $17, Row 40; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $17, Row 41; 
; Pattern $17, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 43; 
; Pattern $17, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $17, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $17, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $17, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $17, Row 48; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
; Pattern $17, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
; Pattern $17, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
; Pattern $17, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
; Pattern $17, Row 52; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $17, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
; Pattern $17, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
; Pattern $17, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $39, $07, $0d	; Set frequency '215' for channel PSG 2
; Pattern $17, Row 56; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $17, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $17, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $17, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $17, Row 60; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 61; 
; Pattern $17, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $17, Row 63; 
; Pattern $18, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $4f	; Note G-2 on channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $18, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $18, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $18, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $18, Row 4; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $f4, $54	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $65	; Note D-3 on channel FM 4
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 8; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $f5, $94	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $75	; Note A#3 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $18, Row 9; 
; Pattern $18, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 11; 
; Pattern $18, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $18, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $18, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $18, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $18, Row 20; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 24; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $18, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $18, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 27; 
; Pattern $18, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 29; 
; Pattern $18, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 31; 
; Pattern $18, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $18, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $18, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $18, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $18, Row 36; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 40; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $18, Row 41; 
; Pattern $18, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 43; 
; Pattern $18, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $18, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $18, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $18, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $18, Row 52; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $18, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $18, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $18, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $18, Row 56; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $18, Row 57; 
; Pattern $18, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 59; 
; Pattern $18, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 61; 
; Pattern $18, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $18, Row 63; 
; Pattern $19, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $65	; Note D-3 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $19, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $19, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $19, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $19, Row 4; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $73	; Note A-3 on channel FM 4
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 8; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8b	; Note F-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $19, Row 9; 
; Pattern $19, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 11; 
; Pattern $19, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 16; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $19, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $19, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $19, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $19, Row 20; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 24; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 2
; Pattern $19, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 2
; Pattern $19, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 2
; Pattern $19, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 2
; Pattern $19, Row 28; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 29; 
; Pattern $19, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 31; 
; Pattern $19, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $19, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $19, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $19, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $19, Row 36; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 40; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $19, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
; Pattern $19, Row 42; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 43; 
; Pattern $19, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 48; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $19, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $19, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $19, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $19, Row 52; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $19, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $19, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $19, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $19, Row 56; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $19, Row 57; 
; Pattern $19, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 59; 
; Pattern $19, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 61; 
; Pattern $19, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $19, Row 63; 
; Pattern $1a, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $6f	; Note G-3 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1a, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1a, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1a, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1a, Row 4; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 8; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $83	; Note C#4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1a, Row 9; 
; Pattern $1a, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 11; 
; Pattern $1a, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 16; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1a, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1a, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1a, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1a, Row 20; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 24; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1a, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $1a, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 27; 
; Pattern $1a, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 29; 
; Pattern $1a, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 31; 
; Pattern $1a, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1a, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1a, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1a, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1a, Row 36; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 40; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1a, Row 41; 
; Pattern $1a, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 43; 
; Pattern $1a, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 48; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1a, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1a, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1a, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1a, Row 52; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1a, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1a, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1a, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1a, Row 56; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1a, Row 57; 
; Pattern $1a, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 59; 
; Pattern $1a, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 61; 
; Pattern $1a, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1a, Row 63; 
; Pattern $1b, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $69	; Note E-3 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1b, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1b, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1b, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1b, Row 4; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $04, $77	; Note B-3 on channel FM 4
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1b, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1b, Row 6; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1b, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1b, Row 8; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $05, $8f	; Note G-4 on channel FM 5
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $1b, Row 9; 
; Pattern $1b, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 11; 
; Pattern $1b, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1b, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1b, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1b, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1b, Row 16; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1b, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1b, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1b, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1b, Row 20; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1b, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1b, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1b, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1b, Row 24; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $8e	; Set frequency '11406' (octave 5 semitone 1166) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $14	; Set frequency '11284' (octave 5 semitone 1044) for channel FM 2
; Pattern $1b, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $9a	; Set frequency '11162' (octave 5 semitone 922) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $20	; Set frequency '11040' (octave 5 semitone 800) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $a6	; Set frequency '10918' (octave 5 semitone 678) for channel FM 2
; Pattern $1b, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 2
; Pattern $1b, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 2
; Pattern $1b, Row 28; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 29; 
; Pattern $1b, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 31; 
; Pattern $1b, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1b, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1b, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1b, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1b, Row 36; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1b, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1b, Row 38; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1b, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1b, Row 40; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $1b, Row 41; 
; Pattern $1b, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 43; 
; Pattern $1b, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1b, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1b, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1b, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1b, Row 48; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
; Pattern $1b, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
; Pattern $1b, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
; Pattern $1b, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
; Pattern $1b, Row 52; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $1b, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
; Pattern $1b, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
; Pattern $1b, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $39, $07, $0d	; Set frequency '215' for channel PSG 2
; Pattern $1b, Row 56; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $1b, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $1b, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $1b, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $1b, Row 60; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 61; 
; Pattern $1b, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1b, Row 63; 
; Pattern $1c, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $11		; Note off channel FM 2
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 1; 
; Pattern $1c, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 3; 
; Pattern $1c, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 5; 
; Pattern $1c, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 7; 
; Pattern $1c, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1c, Row 9; 
; Pattern $1c, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 11; 
; Pattern $1c, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 13; 
; Pattern $1c, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 15; 
; Pattern $1c, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 17; 
; Pattern $1c, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 19; 
; Pattern $1c, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 21; 
; Pattern $1c, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 23; 
; Pattern $1c, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1c, Row 25; 
; Pattern $1c, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 27; 
; Pattern $1c, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 29; 
; Pattern $1c, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 31; 
; Pattern $1c, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 33; 
; Pattern $1c, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 35; 
; Pattern $1c, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 37; 
; Pattern $1c, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 39; 
; Pattern $1c, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1c, Row 41; 
; Pattern $1c, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 43; 
; Pattern $1c, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 45; 
; Pattern $1c, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 47; 
; Pattern $1c, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 49; 
; Pattern $1c, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 51; 
; Pattern $1c, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 53; 
; Pattern $1c, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 55; 
; Pattern $1c, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1c, Row 57; 
; Pattern $1c, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 59; 
; Pattern $1c, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 61; 
; Pattern $1c, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1c, Row 63; 
; Pattern $1d, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $12		; Note off channel FM 3
	dc.b $14		; Note off channel FM 4
	dc.b $15		; Note off channel FM 5
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 1; 
; Pattern $1d, Row 2; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 3; 
; Pattern $1d, Row 4; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 5; 
; Pattern $1d, Row 6; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 7; 
; Pattern $1d, Row 8; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1d, Row 9; 
; Pattern $1d, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 11; 
; Pattern $1d, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 13; 
; Pattern $1d, Row 14; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 15; 
; Pattern $1d, Row 16; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 17; 
; Pattern $1d, Row 18; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 19; 
; Pattern $1d, Row 20; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 21; 
; Pattern $1d, Row 22; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 23; 
; Pattern $1d, Row 24; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1d, Row 25; 
; Pattern $1d, Row 26; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 27; 
; Pattern $1d, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 29; 
; Pattern $1d, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 31; 
; Pattern $1d, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 33; 
; Pattern $1d, Row 34; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 35; 
; Pattern $1d, Row 36; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 37; 
; Pattern $1d, Row 38; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 39; 
; Pattern $1d, Row 40; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1d, Row 41; 
; Pattern $1d, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 43; 
; Pattern $1d, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 45; 
; Pattern $1d, Row 46; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 47; 
; Pattern $1d, Row 48; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 49; 
; Pattern $1d, Row 50; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 51; 
; Pattern $1d, Row 52; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 53; 
; Pattern $1d, Row 54; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 55; 
; Pattern $1d, Row 56; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1d, Row 57; 
; Pattern $1d, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 59; 
; Pattern $1d, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 61; 
; Pattern $1d, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1d, Row 63; 
; Pattern $1e, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $42, $84	; Set instrument for channel FM 3
	dc.b $22, $09	; Set volume for channel FM 3
	dc.b $f2, $c0	; Set pan/AMS/FMS for channel FM 3
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1e, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1e, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1e, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1e, Row 4; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $45, $84	; Set instrument for channel FM 5
	dc.b $25, $0f	; Set volume for channel FM 5
	dc.b $f5, $40	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1e, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 6; 
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $44, $84	; Set instrument for channel FM 4
	dc.b $24, $0f	; Set volume for channel FM 4
	dc.b $f4, $80	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 8; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 10; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 12; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
; Pattern $1e, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
; Pattern $1e, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 20; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 24; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 25; 
	dc.b $11		; Note off channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
; Pattern $1e, Row 28; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
; Pattern $1e, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 30; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 32; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $35, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 5
; Pattern $1e, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
; Pattern $1e, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $34, $2b, $c3	; Set frequency '11203' (octave 5 semitone 963) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
; Pattern $1e, Row 36; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1e, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
; Pattern $1e, Row 38; 
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1e, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1e, Row 40; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1e, Row 41; 
; Pattern $1e, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1e, Row 43; 
; Pattern $1e, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1e, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1e, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1e, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1e, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1e, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1e, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1e, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1e, Row 52; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1e, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1e, Row 54; 
	dc.b $04, $ab	; Note F-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1e, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1e, Row 56; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $1e, Row 57; 
; Pattern $1e, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1e, Row 59; 
; Pattern $1e, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1e, Row 61; 
; Pattern $1e, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1e, Row 63; 
; Pattern $1f, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1f, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1f, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1f, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1f, Row 4; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a9	; Note E-5 on channel FM 5
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 6; 
	dc.b $04, $a9	; Note E-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 8; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $1f, Row 9; 
; Pattern $1f, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 11; 
; Pattern $1f, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 16; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1f, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1f, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1f, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1f, Row 20; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 24; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 2
; Pattern $1f, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 2
; Pattern $1f, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 2
; Pattern $1f, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 2
; Pattern $1f, Row 28; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 29; 
; Pattern $1f, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 31; 
; Pattern $1f, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1f, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1f, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1f, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1f, Row 36; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a3	; Note C#5 on channel FM 5
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 38; 
	dc.b $04, $a3	; Note C#5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 40; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $1f, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
; Pattern $1f, Row 42; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 43; 
; Pattern $1f, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 48; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $1f, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $1f, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $1f, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $1f, Row 52; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $1f, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $1f, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $1f, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $1f, Row 56; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $1f, Row 57; 
; Pattern $1f, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 59; 
; Pattern $1f, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 61; 
; Pattern $1f, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $1f, Row 63; 
; Pattern $20, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $20, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $20, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $20, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $20, Row 4; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 6; 
	dc.b $04, $a5	; Note D-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 8; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $20, Row 9; 
; Pattern $20, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 11; 
; Pattern $20, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 16; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $20, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $20, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $20, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $20, Row 20; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 24; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $20, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $20, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 27; 
; Pattern $20, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 29; 
; Pattern $20, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 31; 
; Pattern $20, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $95	; Note A#4 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $20, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $20, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $20, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $20, Row 36; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $95	; Note A#4 on channel FM 5
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 38; 
	dc.b $04, $95	; Note A#4 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 40; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $20, Row 41; 
; Pattern $20, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 43; 
; Pattern $20, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 48; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $20, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $20, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $20, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $20, Row 52; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $20, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $20, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $20, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $20, Row 56; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $20, Row 57; 
; Pattern $20, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 59; 
; Pattern $20, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 61; 
; Pattern $20, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $20, Row 63; 
; Pattern $21, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a5	; Note D-5 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $21, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $21, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $21, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $21, Row 4; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a5	; Note D-5 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $21, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $21, Row 6; 
	dc.b $04, $a5	; Note D-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $21, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $21, Row 8; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $21, Row 9; 
; Pattern $21, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 11; 
; Pattern $21, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $21, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $21, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $21, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $21, Row 16; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $21, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $21, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $21, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $21, Row 20; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $21, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $21, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $21, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $21, Row 24; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $8e	; Set frequency '11406' (octave 5 semitone 1166) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $14	; Set frequency '11284' (octave 5 semitone 1044) for channel FM 2
; Pattern $21, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $9a	; Set frequency '11162' (octave 5 semitone 922) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $20	; Set frequency '11040' (octave 5 semitone 800) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $a6	; Set frequency '10918' (octave 5 semitone 678) for channel FM 2
; Pattern $21, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 2
; Pattern $21, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 2
; Pattern $21, Row 28; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 29; 
; Pattern $21, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 31; 
; Pattern $21, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a3	; Note C#5 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $21, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $21, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $21, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $21, Row 36; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a3	; Note C#5 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $21, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $21, Row 38; 
	dc.b $04, $a3	; Note C#5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $21, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $21, Row 40; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $21, Row 41; 
; Pattern $21, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 43; 
; Pattern $21, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $21, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $21, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $21, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $21, Row 48; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
; Pattern $21, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
; Pattern $21, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
; Pattern $21, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
; Pattern $21, Row 52; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $21, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
; Pattern $21, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
; Pattern $21, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $39, $07, $0d	; Set frequency '215' for channel PSG 2
; Pattern $21, Row 56; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $21, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $21, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $21, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $21, Row 60; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 61; 
; Pattern $21, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $21, Row 63; 
; Pattern $22, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $22, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $22, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $22, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $22, Row 4; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 6; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 8; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $22, Row 9; 
; Pattern $22, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 11; 
; Pattern $22, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 16; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $22, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $22, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $22, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $22, Row 20; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 24; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $22, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $22, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 27; 
; Pattern $22, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 29; 
; Pattern $22, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 31; 
; Pattern $22, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $22, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $22, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $22, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $22, Row 36; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 38; 
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 40; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $22, Row 41; 
; Pattern $22, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 43; 
; Pattern $22, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 48; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $22, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $22, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $22, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $22, Row 52; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $1c	; Note D-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $22, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $22, Row 54; 
	dc.b $04, $ab	; Note F-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $22, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $22, Row 56; 
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $22, Row 57; 
; Pattern $22, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 59; 
; Pattern $22, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $4f	; Note G-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 61; 
; Pattern $22, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $22, Row 63; 
; Pattern $23, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $23, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $23, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $23, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $23, Row 4; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 6; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 8; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $23, Row 9; 
; Pattern $23, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 11; 
; Pattern $23, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 16; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $23, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $23, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $23, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $23, Row 20; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $05	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 24; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $89	; Set frequency '11401' (octave 5 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $0a	; Set frequency '11274' (octave 5 semitone 1034) for channel FM 2
; Pattern $23, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $8b	; Set frequency '11147' (octave 5 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $0c	; Set frequency '11020' (octave 5 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $8d	; Set frequency '10893' (octave 5 semitone 653) for channel FM 2
; Pattern $23, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $92	; Set frequency '9362' (octave 4 semitone 1170) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $13	; Set frequency '9235' (octave 4 semitone 1043) for channel FM 2
; Pattern $23, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $94	; Set frequency '9108' (octave 4 semitone 916) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $15	; Set frequency '8981' (octave 4 semitone 789) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $96	; Set frequency '8854' (octave 4 semitone 662) for channel FM 2
; Pattern $23, Row 28; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 29; 
; Pattern $23, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 31; 
; Pattern $23, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $a9	; Note E-5 on channel FM 3
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $23, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $23, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $23, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $23, Row 36; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $a9	; Note E-5 on channel FM 5
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 38; 
	dc.b $04, $a9	; Note E-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 40; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 2
; Pattern $23, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $8b	; Set frequency '7051' (octave 3 semitone 907) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $0c	; Set frequency '6924' (octave 3 semitone 780) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $8d	; Set frequency '6797' (octave 3 semitone 653) for channel FM 2
; Pattern $23, Row 42; 
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 43; 
; Pattern $23, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 48; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3a	; Note F-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $23, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $23, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $23, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $23, Row 52; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2a	; Note A-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $23, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $23, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $23, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $23, Row 56; 
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $a1	; Note C-5 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $38	; Note E-2 on channel PSG 3
; Pattern $23, Row 57; 
; Pattern $23, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 59; 
; Pattern $23, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $53	; Note A-2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $34	; Note D-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 61; 
; Pattern $23, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $23, Row 63; 
; Pattern $24, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $b3	; Note A-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $24, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $24, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $24, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $24, Row 4; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $b3	; Note A-5 on channel FM 5
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 6; 
	dc.b $04, $b3	; Note A-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 8; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $24, Row 9; 
; Pattern $24, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 11; 
; Pattern $24, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 16; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $24, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $24, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $24, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $24, Row 20; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 24; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $1f	; Set volume for channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $24, Row 25; 
	dc.b $fe, $02	; Delay
	dc.b $11		; Note off channel FM 2
; Pattern $24, Row 26; 
	dc.b $fe, $03	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 27; 
; Pattern $24, Row 28; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 29; 
; Pattern $24, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 31; 
; Pattern $24, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $ab	; Note F-5 on channel FM 3
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $24, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $24, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $24, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $24, Row 36; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $ab	; Note F-5 on channel FM 5
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 38; 
	dc.b $04, $ab	; Note F-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 40; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $24, Row 41; 
; Pattern $24, Row 42; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 43; 
; Pattern $24, Row 44; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 48; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $2c	; Note A#1 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $24, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $24, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $24, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $24, Row 52; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $1a	; Note C#1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $24, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $24, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $24, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $24, Row 56; 
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $95	; Note A#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $2a	; Note A-1 on channel PSG 3
; Pattern $24, Row 57; 
; Pattern $24, Row 58; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 59; 
; Pattern $24, Row 60; 
	dc.b $fe, $05	; Delay
	dc.b $00, $55	; Note A#2 on channel FM 1
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $26	; Note G-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 61; 
; Pattern $24, Row 62; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $24, Row 63; 
; Pattern $25, Row 0; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $b7	; Note B-5 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 2; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 4; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $05, $b7	; Note B-5 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $25, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $25, Row 6; 
	dc.b $04, $b7	; Note B-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $25, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $25, Row 8; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $43	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
; Pattern $25, Row 9; 
; Pattern $25, Row 10; 
	dc.b $fe, $05	; Delay
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $25, Row 11; 
; Pattern $25, Row 12; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3e	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $25, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $25, Row 14; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $25, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $25, Row 16; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 18; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 20; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8f	; Note G-4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $45	; Set frequency '9029' (octave 4 semitone 837) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c6	; Set frequency '8902' (octave 4 semitone 710) for channel FM 2
; Pattern $25, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $cb	; Set frequency '7371' (octave 3 semitone 1227) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $4c	; Set frequency '7244' (octave 3 semitone 1100) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $cd	; Set frequency '7117' (octave 3 semitone 973) for channel FM 2
; Pattern $25, Row 22; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $4e	; Set frequency '6990' (octave 3 semitone 846) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $cf	; Set frequency '6863' (octave 3 semitone 719) for channel FM 2
; Pattern $25, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $d4	; Set frequency '5332' (octave 2 semitone 1236) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $55	; Set frequency '5205' (octave 2 semitone 1109) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $d6	; Set frequency '5078' (octave 2 semitone 982) for channel FM 2
; Pattern $25, Row 24; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $c1	; Note C-6 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $8e	; Set frequency '11406' (octave 5 semitone 1166) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2c, $14	; Set frequency '11284' (octave 5 semitone 1044) for channel FM 2
; Pattern $25, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $9a	; Set frequency '11162' (octave 5 semitone 922) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2b, $20	; Set frequency '11040' (octave 5 semitone 800) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $2a, $a6	; Set frequency '10918' (octave 5 semitone 678) for channel FM 2
; Pattern $25, Row 26; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $b0	; Set frequency '9392' (octave 4 semitone 1200) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $24, $36	; Set frequency '9270' (octave 4 semitone 1078) for channel FM 2
; Pattern $25, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $bc	; Set frequency '9148' (octave 4 semitone 956) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $42	; Set frequency '9026' (octave 4 semitone 834) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $c8	; Set frequency '8904' (octave 4 semitone 712) for channel FM 2
; Pattern $25, Row 28; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $41, $41	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $81	; Note C-4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $25, Row 29; 
; Pattern $25, Row 30; 
	dc.b $fe, $05	; Delay
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
; Pattern $25, Row 31; 
; Pattern $25, Row 32; 
	dc.b $fe, $05	; Delay
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $41, $3d	; Set instrument for channel FM 2
	dc.b $21, $00	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $02, $af	; Note G-5 on channel FM 3
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 34; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 36; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $05, $af	; Note G-5 on channel FM 5
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 38; 
	dc.b $04, $af	; Note G-5 on channel FM 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 40; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 42; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 44; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $07	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
; Pattern $25, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
; Pattern $25, Row 46; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
; Pattern $25, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
; Pattern $25, Row 48; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $08, $3e	; Note G-2 on channel PSG 1
	dc.b $2b, $03	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $32, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $32, $2b, $c6	; Set frequency '11206' (octave 5 semitone 966) for channel FM 3
	dc.b $38, $0d, $08	; Set frequency '141' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $32, $2b, $c7	; Set frequency '11207' (octave 5 semitone 967) for channel FM 3
	dc.b $38, $0c, $08	; Set frequency '140' for channel PSG 1
; Pattern $25, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $2b, $c8	; Set frequency '11208' (octave 5 semitone 968) for channel FM 3
	dc.b $38, $0b, $08	; Set frequency '139' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $32, $2b, $c9	; Set frequency '11209' (octave 5 semitone 969) for channel FM 3
	dc.b $38, $0a, $08	; Set frequency '138' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $32, $2b, $ca	; Set frequency '11210' (octave 5 semitone 970) for channel FM 3
	dc.b $38, $09, $08	; Set frequency '137' for channel PSG 1
; Pattern $25, Row 50; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $32, $2b, $cb	; Set frequency '11211' (octave 5 semitone 971) for channel FM 3
	dc.b $38, $08, $08	; Set frequency '136' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $2b, $cc	; Set frequency '11212' (octave 5 semitone 972) for channel FM 3
	dc.b $38, $07, $08	; Set frequency '135' for channel PSG 1
; Pattern $25, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $32, $2b, $cd	; Set frequency '11213' (octave 5 semitone 973) for channel FM 3
	dc.b $38, $06, $08	; Set frequency '134' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $32, $2b, $ce	; Set frequency '11214' (octave 5 semitone 974) for channel FM 3
	dc.b $38, $05, $08	; Set frequency '133' for channel PSG 1
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $32, $2b, $cf	; Set frequency '11215' (octave 5 semitone 975) for channel FM 3
	dc.b $38, $04, $08	; Set frequency '132' for channel PSG 1
; Pattern $25, Row 52; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $0f	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $09, $2e	; Note B-1 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $32, $2b, $d0	; Set frequency '11216' (octave 5 semitone 976) for channel FM 3
	dc.b $35, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $32, $2b, $d1	; Set frequency '11217' (octave 5 semitone 977) for channel FM 3
	dc.b $35, $2b, $c6	; Set frequency '11206' (octave 5 semitone 966) for channel FM 5
	dc.b $39, $00, $0e	; Set frequency '224' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $32, $2b, $d2	; Set frequency '11218' (octave 5 semitone 978) for channel FM 3
	dc.b $35, $2b, $c7	; Set frequency '11207' (octave 5 semitone 967) for channel FM 5
	dc.b $39, $0f, $0d	; Set frequency '223' for channel PSG 2
; Pattern $25, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $2b, $d3	; Set frequency '11219' (octave 5 semitone 979) for channel FM 3
	dc.b $35, $2b, $c8	; Set frequency '11208' (octave 5 semitone 968) for channel FM 5
	dc.b $39, $0e, $0d	; Set frequency '222' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $32, $2b, $d4	; Set frequency '11220' (octave 5 semitone 980) for channel FM 3
	dc.b $35, $2b, $c9	; Set frequency '11209' (octave 5 semitone 969) for channel FM 5
	dc.b $39, $0d, $0d	; Set frequency '221' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $32, $2b, $d5	; Set frequency '11221' (octave 5 semitone 981) for channel FM 3
	dc.b $35, $2b, $ca	; Set frequency '11210' (octave 5 semitone 970) for channel FM 5
	dc.b $39, $0c, $0d	; Set frequency '220' for channel PSG 2
; Pattern $25, Row 54; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $02	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $32, $2b, $d6	; Set frequency '11222' (octave 5 semitone 982) for channel FM 3
	dc.b $34, $2b, $c5	; Set frequency '11205' (octave 5 semitone 965) for channel FM 4
	dc.b $35, $2b, $cb	; Set frequency '11211' (octave 5 semitone 971) for channel FM 5
	dc.b $39, $0b, $0d	; Set frequency '219' for channel PSG 2
; Pattern $25, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $2b, $d7	; Set frequency '11223' (octave 5 semitone 983) for channel FM 3
	dc.b $34, $2b, $c6	; Set frequency '11206' (octave 5 semitone 966) for channel FM 4
	dc.b $35, $2b, $cc	; Set frequency '11212' (octave 5 semitone 972) for channel FM 5
	dc.b $39, $0a, $0d	; Set frequency '218' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $32, $2b, $d8	; Set frequency '11224' (octave 5 semitone 984) for channel FM 3
	dc.b $34, $2b, $c7	; Set frequency '11207' (octave 5 semitone 967) for channel FM 4
	dc.b $35, $2b, $cd	; Set frequency '11213' (octave 5 semitone 973) for channel FM 5
	dc.b $39, $09, $0d	; Set frequency '217' for channel PSG 2
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $32, $2b, $d9	; Set frequency '11225' (octave 5 semitone 985) for channel FM 3
	dc.b $34, $2b, $c8	; Set frequency '11208' (octave 5 semitone 968) for channel FM 4
	dc.b $35, $2b, $ce	; Set frequency '11214' (octave 5 semitone 974) for channel FM 5
	dc.b $39, $08, $0d	; Set frequency '216' for channel PSG 2
; Pattern $25, Row 56; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $2b, $01	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $0a, $3c	; Note F#2 on channel PSG 3
	dc.b $32, $2b, $da	; Set frequency '11226' (octave 5 semitone 986) for channel FM 3
	dc.b $34, $2b, $c9	; Set frequency '11209' (octave 5 semitone 969) for channel FM 4
	dc.b $35, $2b, $cf	; Set frequency '11215' (octave 5 semitone 975) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $32, $2b, $db	; Set frequency '11227' (octave 5 semitone 987) for channel FM 3
	dc.b $34, $2b, $ca	; Set frequency '11210' (octave 5 semitone 970) for channel FM 4
	dc.b $35, $2b, $d0	; Set frequency '11216' (octave 5 semitone 976) for channel FM 5
	dc.b $3a, $05, $09	; Set frequency '149' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $32, $2b, $dc	; Set frequency '11228' (octave 5 semitone 988) for channel FM 3
	dc.b $34, $2b, $cb	; Set frequency '11211' (octave 5 semitone 971) for channel FM 4
	dc.b $35, $2b, $d1	; Set frequency '11217' (octave 5 semitone 977) for channel FM 5
	dc.b $3a, $04, $09	; Set frequency '148' for channel PSG 3
; Pattern $25, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $2b, $dd	; Set frequency '11229' (octave 5 semitone 989) for channel FM 3
	dc.b $34, $2b, $cc	; Set frequency '11212' (octave 5 semitone 972) for channel FM 4
	dc.b $35, $2b, $d2	; Set frequency '11218' (octave 5 semitone 978) for channel FM 5
	dc.b $3a, $03, $09	; Set frequency '147' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $32, $2b, $de	; Set frequency '11230' (octave 5 semitone 990) for channel FM 3
	dc.b $34, $2b, $cd	; Set frequency '11213' (octave 5 semitone 973) for channel FM 4
	dc.b $35, $2b, $d3	; Set frequency '11219' (octave 5 semitone 979) for channel FM 5
	dc.b $3a, $02, $09	; Set frequency '146' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $32, $2b, $df	; Set frequency '11231' (octave 5 semitone 991) for channel FM 3
	dc.b $34, $2b, $ce	; Set frequency '11214' (octave 5 semitone 974) for channel FM 4
	dc.b $35, $2b, $d4	; Set frequency '11220' (octave 5 semitone 980) for channel FM 5
	dc.b $3a, $01, $09	; Set frequency '145' for channel PSG 3
; Pattern $25, Row 58; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $32, $2b, $e0	; Set frequency '11232' (octave 5 semitone 992) for channel FM 3
	dc.b $34, $2b, $cf	; Set frequency '11215' (octave 5 semitone 975) for channel FM 4
	dc.b $35, $2b, $d5	; Set frequency '11221' (octave 5 semitone 981) for channel FM 5
	dc.b $3a, $00, $09	; Set frequency '144' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $2b, $e1	; Set frequency '11233' (octave 5 semitone 993) for channel FM 3
	dc.b $34, $2b, $d0	; Set frequency '11216' (octave 5 semitone 976) for channel FM 4
	dc.b $35, $2b, $d6	; Set frequency '11222' (octave 5 semitone 982) for channel FM 5
	dc.b $3a, $0f, $08	; Set frequency '143' for channel PSG 3
; Pattern $25, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $9e	; Set frequency '5278' (octave 2 semitone 1182) for channel FM 2
	dc.b $32, $2b, $e2	; Set frequency '11234' (octave 5 semitone 994) for channel FM 3
	dc.b $34, $2b, $d1	; Set frequency '11217' (octave 5 semitone 977) for channel FM 4
	dc.b $35, $2b, $d7	; Set frequency '11223' (octave 5 semitone 983) for channel FM 5
	dc.b $3a, $0e, $08	; Set frequency '142' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $14, $1f	; Set frequency '5151' (octave 2 semitone 1055) for channel FM 2
	dc.b $32, $2b, $e3	; Set frequency '11235' (octave 5 semitone 995) for channel FM 3
	dc.b $34, $2b, $d2	; Set frequency '11218' (octave 5 semitone 978) for channel FM 4
	dc.b $35, $2b, $d8	; Set frequency '11224' (octave 5 semitone 984) for channel FM 5
	dc.b $3a, $0d, $08	; Set frequency '141' for channel PSG 3
	dc.b $fe, $01	; Delay
	dc.b $31, $13, $a0	; Set frequency '5024' (octave 2 semitone 928) for channel FM 2
	dc.b $32, $2b, $e4	; Set frequency '11236' (octave 5 semitone 996) for channel FM 3
	dc.b $34, $2b, $d3	; Set frequency '11219' (octave 5 semitone 979) for channel FM 4
	dc.b $35, $2b, $d9	; Set frequency '11225' (octave 5 semitone 985) for channel FM 5
	dc.b $3a, $0c, $08	; Set frequency '140' for channel PSG 3
; Pattern $25, Row 60; 
	dc.b $00, $57	; Note B-2 on channel FM 1
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $01, $8d	; Note F#4 on channel FM 2
	dc.b $09, $38	; Note E-2 on channel PSG 2
	dc.b $2b, $07	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $32, $2b, $e5	; Set frequency '11237' (octave 5 semitone 997) for channel FM 3
	dc.b $34, $2b, $d4	; Set frequency '11220' (octave 5 semitone 980) for channel FM 4
	dc.b $35, $2b, $da	; Set frequency '11226' (octave 5 semitone 986) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $23, $0f	; Set frequency '8975' (octave 4 semitone 783) for channel FM 2
	dc.b $32, $2b, $e6	; Set frequency '11238' (octave 5 semitone 998) for channel FM 3
	dc.b $34, $2b, $d5	; Set frequency '11221' (octave 5 semitone 981) for channel FM 4
	dc.b $35, $2b, $db	; Set frequency '11227' (octave 5 semitone 987) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $22, $90	; Set frequency '8848' (octave 4 semitone 656) for channel FM 2
	dc.b $32, $2b, $e7	; Set frequency '11239' (octave 5 semitone 999) for channel FM 3
	dc.b $34, $2b, $d6	; Set frequency '11222' (octave 5 semitone 982) for channel FM 4
	dc.b $35, $2b, $dc	; Set frequency '11228' (octave 5 semitone 988) for channel FM 5
; Pattern $25, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $95	; Set frequency '7317' (octave 3 semitone 1173) for channel FM 2
	dc.b $32, $2b, $e8	; Set frequency '11240' (octave 5 semitone 1000) for channel FM 3
	dc.b $34, $2b, $d7	; Set frequency '11223' (octave 5 semitone 983) for channel FM 4
	dc.b $35, $2b, $dd	; Set frequency '11229' (octave 5 semitone 989) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1c, $16	; Set frequency '7190' (octave 3 semitone 1046) for channel FM 2
	dc.b $32, $2b, $e9	; Set frequency '11241' (octave 5 semitone 1001) for channel FM 3
	dc.b $34, $2b, $d8	; Set frequency '11224' (octave 5 semitone 984) for channel FM 4
	dc.b $35, $2b, $de	; Set frequency '11230' (octave 5 semitone 990) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $97	; Set frequency '7063' (octave 3 semitone 919) for channel FM 2
	dc.b $32, $2b, $ea	; Set frequency '11242' (octave 5 semitone 1002) for channel FM 3
	dc.b $34, $2b, $d9	; Set frequency '11225' (octave 5 semitone 985) for channel FM 4
	dc.b $35, $2b, $df	; Set frequency '11231' (octave 5 semitone 991) for channel FM 5
; Pattern $25, Row 62; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $0b, $06	; Note F#0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $31, $1b, $18	; Set frequency '6936' (octave 3 semitone 792) for channel FM 2
	dc.b $32, $2b, $eb	; Set frequency '11243' (octave 5 semitone 1003) for channel FM 3
	dc.b $34, $2b, $da	; Set frequency '11226' (octave 5 semitone 986) for channel FM 4
	dc.b $35, $2b, $e0	; Set frequency '11232' (octave 5 semitone 992) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $2b, $ec	; Set frequency '11244' (octave 5 semitone 1004) for channel FM 3
	dc.b $34, $2b, $db	; Set frequency '11227' (octave 5 semitone 987) for channel FM 4
	dc.b $35, $2b, $e1	; Set frequency '11233' (octave 5 semitone 993) for channel FM 5
; Pattern $25, Row 63; 
	dc.b $fe, $03	; Delay
	dc.b $fc	; Goto loop
	dc.b $ff	; The End

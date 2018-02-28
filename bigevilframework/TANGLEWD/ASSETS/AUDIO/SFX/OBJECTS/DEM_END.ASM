	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $cd	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $4b, $ce	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' (octave 0 semitone 13) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $87	; Set frequency '2695' (octave 1 semitone 647) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8d	; Set frequency '2701' (octave 1 semitone 653) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $90	; Set frequency '2704' (octave 1 semitone 656) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $93	; Set frequency '2707' (octave 1 semitone 659) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $99	; Set frequency '2713' (octave 1 semitone 665) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9c	; Set frequency '2716' (octave 1 semitone 668) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a2	; Set frequency '2722' (octave 1 semitone 674) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a5	; Set frequency '2725' (octave 1 semitone 677) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a8	; Set frequency '2728' (octave 1 semitone 680) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ab	; Set frequency '2731' (octave 1 semitone 683) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a9	; Set frequency '2729' (octave 1 semitone 681) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a7	; Set frequency '2727' (octave 1 semitone 679) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a5	; Set frequency '2725' (octave 1 semitone 677) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a3	; Set frequency '2723' (octave 1 semitone 675) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a1	; Set frequency '2721' (octave 1 semitone 673) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9d	; Set frequency '2717' (octave 1 semitone 669) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9b	; Set frequency '2715' (octave 1 semitone 667) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $99	; Set frequency '2713' (octave 1 semitone 665) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $97	; Set frequency '2711' (octave 1 semitone 663) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $95	; Set frequency '2709' (octave 1 semitone 661) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $93	; Set frequency '2707' (octave 1 semitone 659) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $91	; Set frequency '2705' (octave 1 semitone 657) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8f	; Set frequency '2703' (octave 1 semitone 655) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8d	; Set frequency '2701' (octave 1 semitone 653) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8b	; Set frequency '2699' (octave 1 semitone 651) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $89	; Set frequency '2697' (octave 1 semitone 649) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $87	; Set frequency '2695' (octave 1 semitone 647) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $85	; Set frequency '2693' (octave 1 semitone 645) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $bc	; Set frequency '1212' (octave 0 semitone 1212) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ba	; Set frequency '1210' (octave 0 semitone 1210) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b8	; Set frequency '1208' (octave 0 semitone 1208) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b6	; Set frequency '1206' (octave 0 semitone 1206) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b4	; Set frequency '1204' (octave 0 semitone 1204) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b2	; Set frequency '1202' (octave 0 semitone 1202) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ae	; Set frequency '1198' (octave 0 semitone 1198) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ac	; Set frequency '1196' (octave 0 semitone 1196) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $aa	; Set frequency '1194' (octave 0 semitone 1194) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a8	; Set frequency '1192' (octave 0 semitone 1192) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a6	; Set frequency '1190' (octave 0 semitone 1190) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a2	; Set frequency '1186' (octave 0 semitone 1186) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a0	; Set frequency '1184' (octave 0 semitone 1184) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9c	; Set frequency '1180' (octave 0 semitone 1180) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9a	; Set frequency '1178' (octave 0 semitone 1178) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $96	; Set frequency '1174' (octave 0 semitone 1174) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $94	; Set frequency '1172' (octave 0 semitone 1172) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $92	; Set frequency '1170' (octave 0 semitone 1170) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8e	; Set frequency '1166' (octave 0 semitone 1166) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8c	; Set frequency '1164' (octave 0 semitone 1164) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8a	; Set frequency '1162' (octave 0 semitone 1162) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $88	; Set frequency '1160' (octave 0 semitone 1160) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $86	; Set frequency '1158' (octave 0 semitone 1158) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $84	; Set frequency '1156' (octave 0 semitone 1156) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $82	; Set frequency '1154' (octave 0 semitone 1154) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $80	; Set frequency '1152' (octave 0 semitone 1152) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7c	; Set frequency '1148' (octave 0 semitone 1148) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7a	; Set frequency '1146' (octave 0 semitone 1146) for channel FM 6
	dc.b $ff	; The End

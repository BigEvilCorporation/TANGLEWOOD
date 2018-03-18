	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $46, $b2	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
; Pattern $00, Row 1; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $bc	; Set frequency '1212' (octave 0 semitone 1212) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ba	; Set frequency '1210' (octave 0 semitone 1210) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b8	; Set frequency '1208' (octave 0 semitone 1208) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b6	; Set frequency '1206' (octave 0 semitone 1206) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b4	; Set frequency '1204' (octave 0 semitone 1204) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b2	; Set frequency '1202' (octave 0 semitone 1202) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ae	; Set frequency '1198' (octave 0 semitone 1198) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ac	; Set frequency '1196' (octave 0 semitone 1196) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $aa	; Set frequency '1194' (octave 0 semitone 1194) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a8	; Set frequency '1192' (octave 0 semitone 1192) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $4b, $b3	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' (octave 0 semitone 13) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a6	; Set frequency '1190' (octave 0 semitone 1190) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a2	; Set frequency '1186' (octave 0 semitone 1186) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a0	; Set frequency '1184' (octave 0 semitone 1184) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9c	; Set frequency '1180' (octave 0 semitone 1180) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9a	; Set frequency '1178' (octave 0 semitone 1178) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $96	; Set frequency '1174' (octave 0 semitone 1174) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $94	; Set frequency '1172' (octave 0 semitone 1172) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $92	; Set frequency '1170' (octave 0 semitone 1170) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8e	; Set frequency '1166' (octave 0 semitone 1166) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8c	; Set frequency '1164' (octave 0 semitone 1164) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8a	; Set frequency '1162' (octave 0 semitone 1162) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $88	; Set frequency '1160' (octave 0 semitone 1160) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $86	; Set frequency '1158' (octave 0 semitone 1158) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $84	; Set frequency '1156' (octave 0 semitone 1156) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $82	; Set frequency '1154' (octave 0 semitone 1154) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $80	; Set frequency '1152' (octave 0 semitone 1152) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7c	; Set frequency '1148' (octave 0 semitone 1148) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7a	; Set frequency '1146' (octave 0 semitone 1146) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $78	; Set frequency '1144' (octave 0 semitone 1144) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $76	; Set frequency '1142' (octave 0 semitone 1142) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $74	; Set frequency '1140' (octave 0 semitone 1140) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $72	; Set frequency '1138' (octave 0 semitone 1138) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $75	; Set frequency '1141' (octave 0 semitone 1141) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $78	; Set frequency '1144' (octave 0 semitone 1144) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7b	; Set frequency '1147' (octave 0 semitone 1147) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $7e	; Set frequency '1150' (octave 0 semitone 1150) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $81	; Set frequency '1153' (octave 0 semitone 1153) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $84	; Set frequency '1156' (octave 0 semitone 1156) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $87	; Set frequency '1159' (octave 0 semitone 1159) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8a	; Set frequency '1162' (octave 0 semitone 1162) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $8d	; Set frequency '1165' (octave 0 semitone 1165) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $93	; Set frequency '1171' (octave 0 semitone 1171) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $96	; Set frequency '1174' (octave 0 semitone 1174) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $99	; Set frequency '1177' (octave 0 semitone 1177) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9c	; Set frequency '1180' (octave 0 semitone 1180) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9f	; Set frequency '1183' (octave 0 semitone 1183) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a2	; Set frequency '1186' (octave 0 semitone 1186) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a5	; Set frequency '1189' (octave 0 semitone 1189) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a8	; Set frequency '1192' (octave 0 semitone 1192) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ab	; Set frequency '1195' (octave 0 semitone 1195) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ae	; Set frequency '1198' (octave 0 semitone 1198) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b1	; Set frequency '1201' (octave 0 semitone 1201) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b4	; Set frequency '1204' (octave 0 semitone 1204) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b7	; Set frequency '1207' (octave 0 semitone 1207) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ba	; Set frequency '1210' (octave 0 semitone 1210) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $bd	; Set frequency '1213' (octave 0 semitone 1213) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $87	; Set frequency '2695' (octave 1 semitone 647) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8d	; Set frequency '2701' (octave 1 semitone 653) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $90	; Set frequency '2704' (octave 1 semitone 656) for channel FM 6
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $93	; Set frequency '2707' (octave 1 semitone 659) for channel FM 6
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 6
; Pattern $01, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $99	; Set frequency '2713' (octave 1 semitone 665) for channel FM 6
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9c	; Set frequency '2716' (octave 1 semitone 668) for channel FM 6
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9f	; Set frequency '2719' (octave 1 semitone 671) for channel FM 6
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a2	; Set frequency '2722' (octave 1 semitone 674) for channel FM 6
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a5	; Set frequency '2725' (octave 1 semitone 677) for channel FM 6
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a8	; Set frequency '2728' (octave 1 semitone 680) for channel FM 6
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ab	; Set frequency '2731' (octave 1 semitone 683) for channel FM 6
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ae	; Set frequency '2734' (octave 1 semitone 686) for channel FM 6
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b1	; Set frequency '2737' (octave 1 semitone 689) for channel FM 6
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 6
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b7	; Set frequency '2743' (octave 1 semitone 695) for channel FM 6
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ba	; Set frequency '2746' (octave 1 semitone 698) for channel FM 6
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $bd	; Set frequency '2749' (octave 1 semitone 701) for channel FM 6
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $c0	; Set frequency '2752' (octave 1 semitone 704) for channel FM 6
; Pattern $01, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $be	; Set frequency '2750' (octave 1 semitone 702) for channel FM 6
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $bc	; Set frequency '2748' (octave 1 semitone 700) for channel FM 6
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ba	; Set frequency '2746' (octave 1 semitone 698) for channel FM 6
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b8	; Set frequency '2744' (octave 1 semitone 696) for channel FM 6
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b6	; Set frequency '2742' (octave 1 semitone 694) for channel FM 6
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b4	; Set frequency '2740' (octave 1 semitone 692) for channel FM 6
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b2	; Set frequency '2738' (octave 1 semitone 690) for channel FM 6
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $b0	; Set frequency '2736' (octave 1 semitone 688) for channel FM 6
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ae	; Set frequency '2734' (octave 1 semitone 686) for channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $ac	; Set frequency '2732' (octave 1 semitone 684) for channel FM 6
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $aa	; Set frequency '2730' (octave 1 semitone 682) for channel FM 6
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a8	; Set frequency '2728' (octave 1 semitone 680) for channel FM 6
; Pattern $01, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a6	; Set frequency '2726' (octave 1 semitone 678) for channel FM 6
; Pattern $01, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a4	; Set frequency '2724' (octave 1 semitone 676) for channel FM 6
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a2	; Set frequency '2722' (octave 1 semitone 674) for channel FM 6
; Pattern $01, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $a0	; Set frequency '2720' (octave 1 semitone 672) for channel FM 6
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9e	; Set frequency '2718' (octave 1 semitone 670) for channel FM 6
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9c	; Set frequency '2716' (octave 1 semitone 668) for channel FM 6
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $9a	; Set frequency '2714' (octave 1 semitone 666) for channel FM 6
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $98	; Set frequency '2712' (octave 1 semitone 664) for channel FM 6
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $96	; Set frequency '2710' (octave 1 semitone 662) for channel FM 6
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $94	; Set frequency '2708' (octave 1 semitone 660) for channel FM 6
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $92	; Set frequency '2706' (octave 1 semitone 658) for channel FM 6
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $90	; Set frequency '2704' (octave 1 semitone 656) for channel FM 6
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8e	; Set frequency '2702' (octave 1 semitone 654) for channel FM 6
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8c	; Set frequency '2700' (octave 1 semitone 652) for channel FM 6
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $8a	; Set frequency '2698' (octave 1 semitone 650) for channel FM 6
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $88	; Set frequency '2696' (octave 1 semitone 648) for channel FM 6
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $86	; Set frequency '2694' (octave 1 semitone 646) for channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0a, $84	; Set frequency '2692' (octave 1 semitone 644) for channel FM 6
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $be	; Set frequency '1214' (octave 0 semitone 1214) for channel FM 6
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $bc	; Set frequency '1212' (octave 0 semitone 1212) for channel FM 6
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ba	; Set frequency '1210' (octave 0 semitone 1210) for channel FM 6
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b8	; Set frequency '1208' (octave 0 semitone 1208) for channel FM 6
; Pattern $01, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b6	; Set frequency '1206' (octave 0 semitone 1206) for channel FM 6
; Pattern $01, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b4	; Set frequency '1204' (octave 0 semitone 1204) for channel FM 6
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b2	; Set frequency '1202' (octave 0 semitone 1202) for channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $b0	; Set frequency '1200' (octave 0 semitone 1200) for channel FM 6
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ae	; Set frequency '1198' (octave 0 semitone 1198) for channel FM 6
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $ac	; Set frequency '1196' (octave 0 semitone 1196) for channel FM 6
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $aa	; Set frequency '1194' (octave 0 semitone 1194) for channel FM 6
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a8	; Set frequency '1192' (octave 0 semitone 1192) for channel FM 6
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a6	; Set frequency '1190' (octave 0 semitone 1190) for channel FM 6
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a4	; Set frequency '1188' (octave 0 semitone 1188) for channel FM 6
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a2	; Set frequency '1186' (octave 0 semitone 1186) for channel FM 6
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $a0	; Set frequency '1184' (octave 0 semitone 1184) for channel FM 6
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9e	; Set frequency '1182' (octave 0 semitone 1182) for channel FM 6
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9c	; Set frequency '1180' (octave 0 semitone 1180) for channel FM 6
; Pattern $01, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $9a	; Set frequency '1178' (octave 0 semitone 1178) for channel FM 6
; Pattern $01, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $98	; Set frequency '1176' (octave 0 semitone 1176) for channel FM 6
; Pattern $01, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $96	; Set frequency '1174' (octave 0 semitone 1174) for channel FM 6
; Pattern $01, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $94	; Set frequency '1172' (octave 0 semitone 1172) for channel FM 6
; Pattern $01, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $92	; Set frequency '1170' (octave 0 semitone 1170) for channel FM 6
; Pattern $01, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $04, $90	; Set frequency '1168' (octave 0 semitone 1168) for channel FM 6
	dc.b $ff	; The End

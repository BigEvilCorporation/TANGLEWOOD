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
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $aa	; Set frequency '3242' (octave 1 semitone 1194) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $4b, $b3	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' (octave 0 semitone 13) for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a8	; Set frequency '3240' (octave 1 semitone 1192) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a2	; Set frequency '3234' (octave 1 semitone 1186) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a0	; Set frequency '3232' (octave 1 semitone 1184) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9c	; Set frequency '3228' (octave 1 semitone 1180) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9a	; Set frequency '3226' (octave 1 semitone 1178) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $98	; Set frequency '3224' (octave 1 semitone 1176) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $96	; Set frequency '3222' (octave 1 semitone 1174) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $90	; Set frequency '3216' (octave 1 semitone 1168) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8e	; Set frequency '3214' (octave 1 semitone 1166) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8a	; Set frequency '3210' (octave 1 semitone 1162) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $88	; Set frequency '3208' (octave 1 semitone 1160) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $86	; Set frequency '3206' (octave 1 semitone 1158) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $84	; Set frequency '3204' (octave 1 semitone 1156) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $82	; Set frequency '3202' (octave 1 semitone 1154) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $80	; Set frequency '3200' (octave 1 semitone 1152) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7e	; Set frequency '3198' (octave 1 semitone 1150) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7c	; Set frequency '3196' (octave 1 semitone 1148) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7a	; Set frequency '3194' (octave 1 semitone 1146) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $78	; Set frequency '3192' (octave 1 semitone 1144) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $76	; Set frequency '3190' (octave 1 semitone 1142) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $74	; Set frequency '3188' (octave 1 semitone 1140) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $77	; Set frequency '3191' (octave 1 semitone 1143) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7a	; Set frequency '3194' (octave 1 semitone 1146) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $7d	; Set frequency '3197' (octave 1 semitone 1149) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $80	; Set frequency '3200' (octave 1 semitone 1152) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $83	; Set frequency '3203' (octave 1 semitone 1155) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $86	; Set frequency '3206' (octave 1 semitone 1158) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $89	; Set frequency '3209' (octave 1 semitone 1161) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8c	; Set frequency '3212' (octave 1 semitone 1164) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $8f	; Set frequency '3215' (octave 1 semitone 1167) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $95	; Set frequency '3221' (octave 1 semitone 1173) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $98	; Set frequency '3224' (octave 1 semitone 1176) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9b	; Set frequency '3227' (octave 1 semitone 1179) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a1	; Set frequency '3233' (octave 1 semitone 1185) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a7	; Set frequency '3239' (octave 1 semitone 1191) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $aa	; Set frequency '3242' (octave 1 semitone 1194) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ad	; Set frequency '3245' (octave 1 semitone 1197) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b3	; Set frequency '3251' (octave 1 semitone 1203) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b9	; Set frequency '3257' (octave 1 semitone 1209) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 6
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 6
; Pattern $01, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 6
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a2	; Set frequency '4770' (octave 2 semitone 674) for channel FM 6
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a5	; Set frequency '4773' (octave 2 semitone 677) for channel FM 6
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 6
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ae	; Set frequency '4782' (octave 2 semitone 686) for channel FM 6
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b1	; Set frequency '4785' (octave 2 semitone 689) for channel FM 6
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b4	; Set frequency '4788' (octave 2 semitone 692) for channel FM 6
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b7	; Set frequency '4791' (octave 2 semitone 695) for channel FM 6
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 6
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bd	; Set frequency '4797' (octave 2 semitone 701) for channel FM 6
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c0	; Set frequency '4800' (octave 2 semitone 704) for channel FM 6
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c3	; Set frequency '4803' (octave 2 semitone 707) for channel FM 6
; Pattern $01, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $c1	; Set frequency '4801' (octave 2 semitone 705) for channel FM 6
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bf	; Set frequency '4799' (octave 2 semitone 703) for channel FM 6
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bd	; Set frequency '4797' (octave 2 semitone 701) for channel FM 6
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bb	; Set frequency '4795' (octave 2 semitone 699) for channel FM 6
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b9	; Set frequency '4793' (octave 2 semitone 697) for channel FM 6
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b7	; Set frequency '4791' (octave 2 semitone 695) for channel FM 6
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b5	; Set frequency '4789' (octave 2 semitone 693) for channel FM 6
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b3	; Set frequency '4787' (octave 2 semitone 691) for channel FM 6
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b1	; Set frequency '4785' (octave 2 semitone 689) for channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $af	; Set frequency '4783' (octave 2 semitone 687) for channel FM 6
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ad	; Set frequency '4781' (octave 2 semitone 685) for channel FM 6
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ab	; Set frequency '4779' (octave 2 semitone 683) for channel FM 6
; Pattern $01, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a9	; Set frequency '4777' (octave 2 semitone 681) for channel FM 6
; Pattern $01, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a7	; Set frequency '4775' (octave 2 semitone 679) for channel FM 6
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a5	; Set frequency '4773' (octave 2 semitone 677) for channel FM 6
; Pattern $01, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a3	; Set frequency '4771' (octave 2 semitone 675) for channel FM 6
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a1	; Set frequency '4769' (octave 2 semitone 673) for channel FM 6
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9f	; Set frequency '4767' (octave 2 semitone 671) for channel FM 6
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9d	; Set frequency '4765' (octave 2 semitone 669) for channel FM 6
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9b	; Set frequency '4763' (octave 2 semitone 667) for channel FM 6
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $99	; Set frequency '4761' (octave 2 semitone 665) for channel FM 6
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $97	; Set frequency '4759' (octave 2 semitone 663) for channel FM 6
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $95	; Set frequency '4757' (octave 2 semitone 661) for channel FM 6
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $93	; Set frequency '4755' (octave 2 semitone 659) for channel FM 6
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 6
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 6
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 6
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 6
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 6
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 6
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 6
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 6
; Pattern $01, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 6
; Pattern $01, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b6	; Set frequency '3254' (octave 1 semitone 1206) for channel FM 6
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b4	; Set frequency '3252' (octave 1 semitone 1204) for channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b2	; Set frequency '3250' (octave 1 semitone 1202) for channel FM 6
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b0	; Set frequency '3248' (octave 1 semitone 1200) for channel FM 6
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ae	; Set frequency '3246' (octave 1 semitone 1198) for channel FM 6
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ac	; Set frequency '3244' (octave 1 semitone 1196) for channel FM 6
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $aa	; Set frequency '3242' (octave 1 semitone 1194) for channel FM 6
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a8	; Set frequency '3240' (octave 1 semitone 1192) for channel FM 6
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a6	; Set frequency '3238' (octave 1 semitone 1190) for channel FM 6
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a4	; Set frequency '3236' (octave 1 semitone 1188) for channel FM 6
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a2	; Set frequency '3234' (octave 1 semitone 1186) for channel FM 6
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $a0	; Set frequency '3232' (octave 1 semitone 1184) for channel FM 6
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9e	; Set frequency '3230' (octave 1 semitone 1182) for channel FM 6
; Pattern $01, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9c	; Set frequency '3228' (octave 1 semitone 1180) for channel FM 6
; Pattern $01, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $9a	; Set frequency '3226' (octave 1 semitone 1178) for channel FM 6
; Pattern $01, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $98	; Set frequency '3224' (octave 1 semitone 1176) for channel FM 6
; Pattern $01, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $96	; Set frequency '3222' (octave 1 semitone 1174) for channel FM 6
; Pattern $01, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $94	; Set frequency '3220' (octave 1 semitone 1172) for channel FM 6
; Pattern $01, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $92	; Set frequency '3218' (octave 1 semitone 1170) for channel FM 6
	dc.b $ff	; The End

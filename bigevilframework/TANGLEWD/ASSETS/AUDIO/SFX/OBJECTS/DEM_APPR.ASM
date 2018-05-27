	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $e6		; Lock channel FM 6
	dc.b $ea		; Lock channel PSG 3
	dc.b $eb		; Lock channel PSG 4
; Pattern $00, Row 0; 
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $46, $ca	; Set instrument for channel FM 6
	dc.b $26, $17	; Set volume for channel FM 6
	dc.b $f6, $e1	; Set pan/AMS/FMS for channel FM 6
	dc.b $06, $41	; Note C-2 on channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 6
; Pattern $00, Row 1; 
	dc.b $26, $15	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 6
; Pattern $00, Row 2; 
	dc.b $26, $13	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 6
; Pattern $00, Row 3; 
	dc.b $26, $11	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $00	; Set frequency '3328' (octave 1 semitone 1280) for channel FM 6
; Pattern $00, Row 4; 
	dc.b $26, $0f	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fe	; Set frequency '3326' (octave 1 semitone 1278) for channel FM 6
; Pattern $00, Row 5; 
	dc.b $26, $0d	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fc	; Set frequency '3324' (octave 1 semitone 1276) for channel FM 6
; Pattern $00, Row 6; 
	dc.b $26, $0b	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fa	; Set frequency '3322' (octave 1 semitone 1274) for channel FM 6
; Pattern $00, Row 7; 
	dc.b $26, $09	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f8	; Set frequency '3320' (octave 1 semitone 1272) for channel FM 6
; Pattern $00, Row 8; 
	dc.b $26, $07	; Set volume for channel FM 6
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f6	; Set frequency '3318' (octave 1 semitone 1270) for channel FM 6
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f4	; Set frequency '3316' (octave 1 semitone 1268) for channel FM 6
; Pattern $00, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f2	; Set frequency '3314' (octave 1 semitone 1266) for channel FM 6
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f0	; Set frequency '3312' (octave 1 semitone 1264) for channel FM 6
; Pattern $00, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 6
; Pattern $00, Row 13; 
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $4b, $cb	; Set instrument for channel PSG 4
	dc.b $2b, $05	; Set volume for channel PSG 4
	dc.b $3a, $0d, $00	; Set frequency '13' for channel PSG 3
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ec	; Set frequency '3308' (octave 1 semitone 1260) for channel FM 6
; Pattern $00, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ea	; Set frequency '3306' (octave 1 semitone 1258) for channel FM 6
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e8	; Set frequency '3304' (octave 1 semitone 1256) for channel FM 6
; Pattern $00, Row 16; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e6	; Set frequency '3302' (octave 1 semitone 1254) for channel FM 6
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e4	; Set frequency '3300' (octave 1 semitone 1252) for channel FM 6
; Pattern $00, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e2	; Set frequency '3298' (octave 1 semitone 1250) for channel FM 6
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e0	; Set frequency '3296' (octave 1 semitone 1248) for channel FM 6
; Pattern $00, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $de	; Set frequency '3294' (octave 1 semitone 1246) for channel FM 6
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $dc	; Set frequency '3292' (octave 1 semitone 1244) for channel FM 6
; Pattern $00, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $da	; Set frequency '3290' (octave 1 semitone 1242) for channel FM 6
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d8	; Set frequency '3288' (octave 1 semitone 1240) for channel FM 6
; Pattern $00, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d6	; Set frequency '3286' (octave 1 semitone 1238) for channel FM 6
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d4	; Set frequency '3284' (octave 1 semitone 1236) for channel FM 6
; Pattern $00, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d2	; Set frequency '3282' (octave 1 semitone 1234) for channel FM 6
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d0	; Set frequency '3280' (octave 1 semitone 1232) for channel FM 6
; Pattern $00, Row 28; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ce	; Set frequency '3278' (octave 1 semitone 1230) for channel FM 6
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $cc	; Set frequency '3276' (octave 1 semitone 1228) for channel FM 6
; Pattern $00, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 6
; Pattern $00, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c8	; Set frequency '3272' (octave 1 semitone 1224) for channel FM 6
; Pattern $00, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c6	; Set frequency '3270' (octave 1 semitone 1222) for channel FM 6
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c4	; Set frequency '3268' (octave 1 semitone 1220) for channel FM 6
; Pattern $00, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c2	; Set frequency '3266' (octave 1 semitone 1218) for channel FM 6
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c0	; Set frequency '3264' (octave 1 semitone 1216) for channel FM 6
; Pattern $00, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bc	; Set frequency '3260' (octave 1 semitone 1212) for channel FM 6
; Pattern $00, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ba	; Set frequency '3258' (octave 1 semitone 1210) for channel FM 6
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $b8	; Set frequency '3256' (octave 1 semitone 1208) for channel FM 6
; Pattern $00, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $bb	; Set frequency '3259' (octave 1 semitone 1211) for channel FM 6
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $be	; Set frequency '3262' (octave 1 semitone 1214) for channel FM 6
; Pattern $00, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c1	; Set frequency '3265' (octave 1 semitone 1217) for channel FM 6
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c4	; Set frequency '3268' (octave 1 semitone 1220) for channel FM 6
; Pattern $00, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $c7	; Set frequency '3271' (octave 1 semitone 1223) for channel FM 6
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ca	; Set frequency '3274' (octave 1 semitone 1226) for channel FM 6
; Pattern $00, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $cd	; Set frequency '3277' (octave 1 semitone 1229) for channel FM 6
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d0	; Set frequency '3280' (octave 1 semitone 1232) for channel FM 6
; Pattern $00, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d3	; Set frequency '3283' (octave 1 semitone 1235) for channel FM 6
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d6	; Set frequency '3286' (octave 1 semitone 1238) for channel FM 6
; Pattern $00, Row 50; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d9	; Set frequency '3289' (octave 1 semitone 1241) for channel FM 6
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $dc	; Set frequency '3292' (octave 1 semitone 1244) for channel FM 6
; Pattern $00, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $df	; Set frequency '3295' (octave 1 semitone 1247) for channel FM 6
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e2	; Set frequency '3298' (octave 1 semitone 1250) for channel FM 6
; Pattern $00, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e5	; Set frequency '3301' (octave 1 semitone 1253) for channel FM 6
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e8	; Set frequency '3304' (octave 1 semitone 1256) for channel FM 6
; Pattern $00, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $eb	; Set frequency '3307' (octave 1 semitone 1259) for channel FM 6
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 6
; Pattern $00, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f1	; Set frequency '3313' (octave 1 semitone 1265) for channel FM 6
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f4	; Set frequency '3316' (octave 1 semitone 1268) for channel FM 6
; Pattern $00, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f7	; Set frequency '3319' (octave 1 semitone 1271) for channel FM 6
; Pattern $00, Row 61; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fa	; Set frequency '3322' (octave 1 semitone 1274) for channel FM 6
; Pattern $00, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fd	; Set frequency '3325' (octave 1 semitone 1277) for channel FM 6
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $00	; Set frequency '3328' (octave 1 semitone 1280) for channel FM 6
; Pattern $00, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 6
; Pattern $00, Row 65; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 6
; Pattern $00, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 6
; Pattern $00, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 6
; Pattern $00, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 6
; Pattern $00, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 6
; Pattern $01, Row 0; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 6
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 6
; Pattern $01, Row 2; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $97	; Set frequency '4759' (octave 2 semitone 663) for channel FM 6
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 6
; Pattern $01, Row 4; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9d	; Set frequency '4765' (octave 2 semitone 669) for channel FM 6
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a0	; Set frequency '4768' (octave 2 semitone 672) for channel FM 6
; Pattern $01, Row 6; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a3	; Set frequency '4771' (octave 2 semitone 675) for channel FM 6
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 6
; Pattern $01, Row 8; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a9	; Set frequency '4777' (octave 2 semitone 681) for channel FM 6
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ac	; Set frequency '4780' (octave 2 semitone 684) for channel FM 6
; Pattern $01, Row 10; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $af	; Set frequency '4783' (octave 2 semitone 687) for channel FM 6
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b2	; Set frequency '4786' (octave 2 semitone 690) for channel FM 6
; Pattern $01, Row 12; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b5	; Set frequency '4789' (octave 2 semitone 693) for channel FM 6
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b8	; Set frequency '4792' (octave 2 semitone 696) for channel FM 6
; Pattern $01, Row 14; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bb	; Set frequency '4795' (octave 2 semitone 699) for channel FM 6
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $be	; Set frequency '4798' (octave 2 semitone 702) for channel FM 6
; Pattern $01, Row 16; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $bc	; Set frequency '4796' (octave 2 semitone 700) for channel FM 6
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ba	; Set frequency '4794' (octave 2 semitone 698) for channel FM 6
; Pattern $01, Row 18; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b8	; Set frequency '4792' (octave 2 semitone 696) for channel FM 6
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b6	; Set frequency '4790' (octave 2 semitone 694) for channel FM 6
; Pattern $01, Row 20; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b4	; Set frequency '4788' (octave 2 semitone 692) for channel FM 6
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b2	; Set frequency '4786' (octave 2 semitone 690) for channel FM 6
; Pattern $01, Row 22; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $b0	; Set frequency '4784' (octave 2 semitone 688) for channel FM 6
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ae	; Set frequency '4782' (octave 2 semitone 686) for channel FM 6
; Pattern $01, Row 24; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $ac	; Set frequency '4780' (octave 2 semitone 684) for channel FM 6
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $aa	; Set frequency '4778' (octave 2 semitone 682) for channel FM 6
; Pattern $01, Row 26; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a8	; Set frequency '4776' (octave 2 semitone 680) for channel FM 6
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a6	; Set frequency '4774' (octave 2 semitone 678) for channel FM 6
; Pattern $01, Row 28; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a4	; Set frequency '4772' (octave 2 semitone 676) for channel FM 6
; Pattern $01, Row 29; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a2	; Set frequency '4770' (octave 2 semitone 674) for channel FM 6
; Pattern $01, Row 30; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $a0	; Set frequency '4768' (octave 2 semitone 672) for channel FM 6
; Pattern $01, Row 31; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9e	; Set frequency '4766' (octave 2 semitone 670) for channel FM 6
; Pattern $01, Row 32; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9c	; Set frequency '4764' (octave 2 semitone 668) for channel FM 6
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $9a	; Set frequency '4762' (octave 2 semitone 666) for channel FM 6
; Pattern $01, Row 34; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $98	; Set frequency '4760' (octave 2 semitone 664) for channel FM 6
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $96	; Set frequency '4758' (octave 2 semitone 662) for channel FM 6
; Pattern $01, Row 36; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $94	; Set frequency '4756' (octave 2 semitone 660) for channel FM 6
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $92	; Set frequency '4754' (octave 2 semitone 658) for channel FM 6
; Pattern $01, Row 38; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 6
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 6
; Pattern $01, Row 40; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 6
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 6
; Pattern $01, Row 42; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 6
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 6
; Pattern $01, Row 44; 
	dc.b $fe, $01	; Delay
	dc.b $36, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 6
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 6
; Pattern $01, Row 46; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 6
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 6
; Pattern $01, Row 48; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0d, $00	; Set frequency '3328' (octave 1 semitone 1280) for channel FM 6
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fe	; Set frequency '3326' (octave 1 semitone 1278) for channel FM 6
; Pattern $01, Row 50; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fc	; Set frequency '3324' (octave 1 semitone 1276) for channel FM 6
; Pattern $01, Row 51; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $fa	; Set frequency '3322' (octave 1 semitone 1274) for channel FM 6
; Pattern $01, Row 52; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f8	; Set frequency '3320' (octave 1 semitone 1272) for channel FM 6
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f6	; Set frequency '3318' (octave 1 semitone 1270) for channel FM 6
; Pattern $01, Row 54; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f4	; Set frequency '3316' (octave 1 semitone 1268) for channel FM 6
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f2	; Set frequency '3314' (octave 1 semitone 1266) for channel FM 6
; Pattern $01, Row 56; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $f0	; Set frequency '3312' (octave 1 semitone 1264) for channel FM 6
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ee	; Set frequency '3310' (octave 1 semitone 1262) for channel FM 6
; Pattern $01, Row 58; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ec	; Set frequency '3308' (octave 1 semitone 1260) for channel FM 6
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $ea	; Set frequency '3306' (octave 1 semitone 1258) for channel FM 6
; Pattern $01, Row 60; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e8	; Set frequency '3304' (octave 1 semitone 1256) for channel FM 6
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e6	; Set frequency '3302' (octave 1 semitone 1254) for channel FM 6
; Pattern $01, Row 62; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e4	; Set frequency '3300' (octave 1 semitone 1252) for channel FM 6
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e2	; Set frequency '3298' (octave 1 semitone 1250) for channel FM 6
; Pattern $01, Row 64; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $e0	; Set frequency '3296' (octave 1 semitone 1248) for channel FM 6
; Pattern $01, Row 65; 
	dc.b $0b, $07	; Note G-0 on channel PSG 4
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $de	; Set frequency '3294' (octave 1 semitone 1246) for channel FM 6
; Pattern $01, Row 66; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $dc	; Set frequency '3292' (octave 1 semitone 1244) for channel FM 6
; Pattern $01, Row 67; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $da	; Set frequency '3290' (octave 1 semitone 1242) for channel FM 6
; Pattern $01, Row 68; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d8	; Set frequency '3288' (octave 1 semitone 1240) for channel FM 6
; Pattern $01, Row 69; 
	dc.b $fe, $01	; Delay
	dc.b $36, $0c, $d6	; Set frequency '3286' (octave 1 semitone 1238) for channel FM 6
	dc.b $ff	; The End

	dc.b $f8, $22, $08	; Set FM register 34 to value 8
	dc.b $f8, $26, $bd	; Set FM register 38 to value 189
	dc.b $fd	; Set loop
; Pattern $00, Row 0; 
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $45, $28	; Set instrument for channel FM 5
	dc.b $25, $17	; Set volume for channel FM 5
	dc.b $f5, $a3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $12, $83	; Set frequency '4739' (octave 2 semitone 643) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 1
	dc.b $31, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 2
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 1
	dc.b $31, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 2
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $00, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 1
	dc.b $31, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 2
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 1
	dc.b $31, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 2
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 1
	dc.b $31, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 2
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $01	; Set frequency '3329' (octave 1 semitone 1281) for channel FM 1
	dc.b $31, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 2
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $00, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 1
	dc.b $31, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 2
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 1
	dc.b $31, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 2
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $00, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 1
	dc.b $31, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 2
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 1
	dc.b $31, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 2
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 1
	dc.b $31, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 2
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $07	; Set frequency '3335' (octave 1 semitone 1287) for channel FM 1
	dc.b $31, $12, $91	; Set frequency '4753' (octave 2 semitone 657) for channel FM 2
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $00, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $44, $28	; Set instrument for channel FM 4
	dc.b $24, $17	; Set volume for channel FM 4
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $0d, $08	; Set frequency '3336' (octave 1 semitone 1288) for channel FM 1
	dc.b $31, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 1
	dc.b $31, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 1
	dc.b $31, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $00, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 1
	dc.b $31, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 1
	dc.b $31, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 1
	dc.b $31, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 1
	dc.b $31, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 1
	dc.b $31, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 1
	dc.b $31, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 1
	dc.b $31, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 1
	dc.b $31, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 1
	dc.b $31, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $90	; Set frequency '4752' (octave 2 semitone 656) for channel FM 1
	dc.b $31, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8f	; Set frequency '4751' (octave 2 semitone 655) for channel FM 1
	dc.b $31, $0d, $07	; Set frequency '3335' (octave 1 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8e	; Set frequency '4750' (octave 2 semitone 654) for channel FM 1
	dc.b $31, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $00, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8d	; Set frequency '4749' (octave 2 semitone 653) for channel FM 1
	dc.b $31, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8c	; Set frequency '4748' (octave 2 semitone 652) for channel FM 1
	dc.b $31, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8b	; Set frequency '4747' (octave 2 semitone 651) for channel FM 1
	dc.b $31, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $8a	; Set frequency '4746' (octave 2 semitone 650) for channel FM 1
	dc.b $31, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $00, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $89	; Set frequency '4745' (octave 2 semitone 649) for channel FM 1
	dc.b $31, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $88	; Set frequency '4744' (octave 2 semitone 648) for channel FM 1
	dc.b $31, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $00, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $87	; Set frequency '4743' (octave 2 semitone 647) for channel FM 1
	dc.b $31, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $86	; Set frequency '4742' (octave 2 semitone 646) for channel FM 1
	dc.b $31, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $85	; Set frequency '4741' (octave 2 semitone 645) for channel FM 1
	dc.b $31, $0d, $07	; Set frequency '3335' (octave 1 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $12, $84	; Set frequency '4740' (octave 2 semitone 644) for channel FM 1
	dc.b $31, $0d, $08	; Set frequency '3336' (octave 1 semitone 1288) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $00, Row 12; 
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $41, $28	; Set instrument for channel FM 2
	dc.b $21, $17	; Set volume for channel FM 2
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $0d, $07	; Set frequency '3335' (octave 1 semitone 1287) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $06	; Set frequency '3334' (octave 1 semitone 1286) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $05	; Set frequency '3333' (octave 1 semitone 1285) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $00, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $04	; Set frequency '3332' (octave 1 semitone 1284) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $03	; Set frequency '3331' (octave 1 semitone 1283) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $02	; Set frequency '3330' (octave 1 semitone 1282) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $01	; Set frequency '3329' (octave 1 semitone 1281) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $00, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $0d, $00	; Set frequency '3328' (octave 1 semitone 1280) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $ff	; Set frequency '3327' (octave 1 semitone 1279) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $00, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $fe	; Set frequency '3326' (octave 1 semitone 1278) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $fd	; Set frequency '3325' (octave 1 semitone 1277) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $fc	; Set frequency '3324' (octave 1 semitone 1276) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $0c, $fb	; Set frequency '3323' (octave 1 semitone 1275) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $00, Row 16; 
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $40, $28	; Set instrument for channel FM 1
	dc.b $20, $17	; Set volume for channel FM 1
	dc.b $f0, $e3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $00, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $00, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $00, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $00, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $00, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $00, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $00, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $00, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $00, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $00, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $00, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $00, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $00, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
; Pattern $00, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $00, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $00, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $00, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $00, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $00, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $00, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $00, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $00, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $00, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $00, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $00, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $00, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $00, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $00, Row 56; 
	dc.b $f1, $e3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $00, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $00, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $00, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $00, Row 60; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $00, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $00, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $00, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $a3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $01, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $01, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $01, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $01, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $01, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $01, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $01, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $01, Row 12; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $01, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $01, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $01, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $01, Row 16; 
	dc.b $f0, $e3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $01, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $01, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $01, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $01, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $01, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $01, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $01, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $01, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $01, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $01, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $01, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
; Pattern $01, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $01, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $01, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $01, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $01, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $01, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $01, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $01, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $01, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $31, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $31, $14, $f1	; Set frequency '5361' (octave 2 semitone 1265) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $31, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $01, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $01, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $01, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $01, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $01, Row 56; 
	dc.b $f1, $e3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $01, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $01, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $01, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $01, Row 60; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $01, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $01, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $01, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $02, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $02, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $02, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $02, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $02, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 12; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $02, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $02, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $02, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $02, Row 16; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $02, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $02, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $02, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $02, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $02, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $02, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $02, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $02, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
; Pattern $02, Row 36; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $02, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $02, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $02, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $02, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $02, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $02, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $e3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $02, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $02, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $02, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $02, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $02, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $02, Row 56; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $02, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $02, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $02, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $02, Row 60; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $02, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $02, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $02, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $03, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $03, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $03, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $03, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $03, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $03, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $03, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $03, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $03, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $03, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $03, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $03, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $03, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $03, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $03, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $03, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
; Pattern $03, Row 36; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $03, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $03, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 1
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $30, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f6	; Set frequency '7414' (octave 3 semitone 1270) for channel FM 1
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $03, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $03, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $30, $1d, $08	; Set frequency '7432' (octave 3 semitone 1288) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $03, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $30, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 1
	dc.b $30, $22, $86	; Set frequency '8838' (octave 4 semitone 646) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $08	; Set frequency '7432' (octave 3 semitone 1288) for channel FM 1
	dc.b $30, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 1
	dc.b $30, $22, $87	; Set frequency '8839' (octave 4 semitone 647) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $03, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $e3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $75	; Note A#3 on channel FM 4
	dc.b $30, $22, $84	; Set frequency '8836' (octave 4 semitone 644) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $03, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $31, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $31, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $03, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $03, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $30, $1c, $f5	; Set frequency '7413' (octave 3 semitone 1269) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f6	; Set frequency '7414' (octave 3 semitone 1270) for channel FM 1
	dc.b $30, $1c, $f4	; Set frequency '7412' (octave 3 semitone 1268) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $03, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $30, $1c, $f5	; Set frequency '7413' (octave 3 semitone 1269) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $30, $1c, $f7	; Set frequency '7415' (octave 3 semitone 1271) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $03, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $f9	; Set frequency '7417' (octave 3 semitone 1273) for channel FM 1
	dc.b $30, $1c, $f8	; Set frequency '7416' (octave 3 semitone 1272) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fa	; Set frequency '7418' (octave 3 semitone 1274) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fb	; Set frequency '7419' (octave 3 semitone 1275) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $03, Row 56; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $03, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $03, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $03, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $08	; Set frequency '7432' (octave 3 semitone 1288) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $22, $85	; Set frequency '8837' (octave 4 semitone 645) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $7b	; Set frequency '7291' (octave 3 semitone 1147) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $03, Row 60; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $7a	; Set frequency '7290' (octave 3 semitone 1146) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $79	; Set frequency '7289' (octave 3 semitone 1145) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $78	; Set frequency '7288' (octave 3 semitone 1144) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $03, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $77	; Set frequency '7287' (octave 3 semitone 1143) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $76	; Set frequency '7286' (octave 3 semitone 1142) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1c, $75	; Set frequency '7285' (octave 3 semitone 1141) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1c, $74	; Set frequency '7284' (octave 3 semitone 1140) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $03, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1c, $73	; Set frequency '7283' (octave 3 semitone 1139) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1c, $72	; Set frequency '7282' (octave 3 semitone 1138) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $03, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1c, $71	; Set frequency '7281' (octave 3 semitone 1137) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1c, $70	; Set frequency '7280' (octave 3 semitone 1136) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1c, $6f	; Set frequency '7279' (octave 3 semitone 1135) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1c, $6e	; Set frequency '7278' (octave 3 semitone 1134) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $04, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $a3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1c, $6d	; Set frequency '7277' (octave 3 semitone 1133) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1c, $6c	; Set frequency '7276' (octave 3 semitone 1132) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1c, $6b	; Set frequency '7275' (octave 3 semitone 1131) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $04, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1c, $6a	; Set frequency '7274' (octave 3 semitone 1130) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1c, $69	; Set frequency '7273' (octave 3 semitone 1129) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1c, $68	; Set frequency '7272' (octave 3 semitone 1128) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1c, $67	; Set frequency '7271' (octave 3 semitone 1127) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $04, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1c, $66	; Set frequency '7270' (octave 3 semitone 1126) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1c, $65	; Set frequency '7269' (octave 3 semitone 1125) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $04, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1c, $64	; Set frequency '7268' (octave 3 semitone 1124) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1c, $63	; Set frequency '7267' (octave 3 semitone 1123) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1c, $62	; Set frequency '7266' (octave 3 semitone 1122) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1c, $61	; Set frequency '7265' (octave 3 semitone 1121) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $04, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $04, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $04, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $04, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $04, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $04, Row 12; 
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $04, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $04, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $04, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $04, Row 16; 
	dc.b $f0, $e3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $04, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $04, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $04, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $04, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $04, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $04, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $04, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $04, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $04, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $04, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $04, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $04, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $04, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
; Pattern $04, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $04, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $04, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $04, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $04, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $04, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $04, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $04, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $04, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $04, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $04, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $04, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $04, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $04, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $04, Row 56; 
	dc.b $f1, $e3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $04, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $04, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $04, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $04, Row 60; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $04, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $04, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $04, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $a3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $05, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $05, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $05, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $05, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $05, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $05, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $05, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $05, Row 12; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $05, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $05, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $05, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $05, Row 16; 
	dc.b $f0, $e3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $05, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $05, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $05, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $05, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $05, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $05, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $05, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $05, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $05, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $05, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $05, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 5
; Pattern $05, Row 36; 
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
; Pattern $05, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $05, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
; Pattern $05, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $61	; Note C-3 on channel FM 5
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
; Pattern $05, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
; Pattern $05, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $05, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
; Pattern $05, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $6f	; Note G-3 on channel FM 4
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $05, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $31, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $31, $14, $f1	; Set frequency '5361' (octave 2 semitone 1265) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 2
	dc.b $31, $14, $f2	; Set frequency '5362' (octave 2 semitone 1266) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $31, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
; Pattern $05, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
; Pattern $05, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
; Pattern $05, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
; Pattern $05, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 5
; Pattern $05, Row 56; 
	dc.b $f1, $e3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $61	; Note C-3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 5
; Pattern $05, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 5
; Pattern $05, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 5
; Pattern $05, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 1
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $c5	; Set frequency '7109' (octave 3 semitone 965) for channel FM 4
	dc.b $35, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 5
; Pattern $05, Row 60; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $6f	; Note G-3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
; Pattern $05, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 4
	dc.b $35, $14, $f3	; Set frequency '5363' (octave 2 semitone 1267) for channel FM 5
; Pattern $05, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 4
	dc.b $35, $14, $f4	; Set frequency '5364' (octave 2 semitone 1268) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 4
	dc.b $35, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 5
; Pattern $05, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 4
	dc.b $35, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 4
	dc.b $35, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 4
	dc.b $35, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 4
	dc.b $35, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 5
; Pattern $06, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $06, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $06, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $06, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $34, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $31, $15, $08	; Set frequency '5384' (octave 2 semitone 1288) for channel FM 2
	dc.b $34, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $06, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $15, $07	; Set frequency '5383' (octave 2 semitone 1287) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $15, $06	; Set frequency '5382' (octave 2 semitone 1286) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $15, $05	; Set frequency '5381' (octave 2 semitone 1285) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $15, $04	; Set frequency '5380' (octave 2 semitone 1284) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $15, $03	; Set frequency '5379' (octave 2 semitone 1283) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $15, $02	; Set frequency '5378' (octave 2 semitone 1282) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $15, $01	; Set frequency '5377' (octave 2 semitone 1281) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $15, $00	; Set frequency '5376' (octave 2 semitone 1280) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $ff	; Set frequency '5375' (octave 2 semitone 1279) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $fe	; Set frequency '5374' (octave 2 semitone 1278) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $fd	; Set frequency '5373' (octave 2 semitone 1277) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fc	; Set frequency '5372' (octave 2 semitone 1276) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c4	; Set frequency '7108' (octave 3 semitone 964) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c3	; Set frequency '7107' (octave 3 semitone 963) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c2	; Set frequency '7106' (octave 3 semitone 962) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c1	; Set frequency '7105' (octave 3 semitone 961) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $c0	; Set frequency '7104' (octave 3 semitone 960) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bf	; Set frequency '7103' (octave 3 semitone 959) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $be	; Set frequency '7102' (octave 3 semitone 958) for channel FM 1
	dc.b $31, $14, $f5	; Set frequency '5365' (octave 2 semitone 1269) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bd	; Set frequency '7101' (octave 3 semitone 957) for channel FM 1
	dc.b $31, $14, $f6	; Set frequency '5366' (octave 2 semitone 1270) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bc	; Set frequency '7100' (octave 3 semitone 956) for channel FM 1
	dc.b $31, $14, $f7	; Set frequency '5367' (octave 2 semitone 1271) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $bb	; Set frequency '7099' (octave 3 semitone 955) for channel FM 1
	dc.b $31, $14, $f8	; Set frequency '5368' (octave 2 semitone 1272) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ba	; Set frequency '7098' (octave 3 semitone 954) for channel FM 1
	dc.b $31, $14, $f9	; Set frequency '5369' (octave 2 semitone 1273) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b9	; Set frequency '7097' (octave 3 semitone 953) for channel FM 1
	dc.b $31, $14, $fa	; Set frequency '5370' (octave 2 semitone 1274) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b8	; Set frequency '7096' (octave 3 semitone 952) for channel FM 1
	dc.b $31, $14, $fb	; Set frequency '5371' (octave 2 semitone 1275) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 12; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $b7	; Set frequency '7095' (octave 3 semitone 951) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b6	; Set frequency '7094' (octave 3 semitone 950) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b5	; Set frequency '7093' (octave 3 semitone 949) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $06, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b4	; Set frequency '7092' (octave 3 semitone 948) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b3	; Set frequency '7091' (octave 3 semitone 947) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b2	; Set frequency '7090' (octave 3 semitone 946) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b1	; Set frequency '7089' (octave 3 semitone 945) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $06, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $b0	; Set frequency '7088' (octave 3 semitone 944) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $af	; Set frequency '7087' (octave 3 semitone 943) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $06, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ae	; Set frequency '7086' (octave 3 semitone 942) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ad	; Set frequency '7085' (octave 3 semitone 941) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ac	; Set frequency '7084' (octave 3 semitone 940) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ab	; Set frequency '7083' (octave 3 semitone 939) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $06, Row 16; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $06, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $06, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $06, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $06, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $06, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $06, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $06, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $06, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
; Pattern $06, Row 36; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $06, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $06, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $06, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $06, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $06, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $06, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $e3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $06, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $06, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $06, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $06, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $06, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $06, Row 56; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $06, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $06, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $06, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $06, Row 60; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $06, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $06, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $06, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 0; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $e3	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $07, Row 1; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $07, Row 2; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $07, Row 3; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $07, Row 4; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $a3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 5; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 6; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 7; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 8; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 9; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 10; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 11; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 12; 
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $07, Row 13; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $07, Row 14; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $07, Row 15; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $07, Row 16; 
	dc.b $00, $71	; Note G#3 on channel FM 1
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 17; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $07, Row 18; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 19; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 20; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 21; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 22; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 23; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 24; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $07, Row 25; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $07, Row 26; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $07, Row 27; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fe	; Set frequency '7166' (octave 3 semitone 1022) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $07, Row 28; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f4, $63	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $71	; Note G#3 on channel FM 4
	dc.b $30, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 29; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 30; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 31; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 32; 
	dc.b $f1, $a3	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 1
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $07, Row 33; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $07, Row 34; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $07, Row 35; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $35, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 5
; Pattern $07, Row 36; 
	dc.b $f0, $63	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $67	; Note D#3 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
; Pattern $07, Row 37; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 38; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
; Pattern $07, Row 39; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $1b, $fd	; Set frequency '7165' (octave 3 semitone 1021) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 40; 
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $1b, $fc	; Set frequency '7164' (octave 3 semitone 1020) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fb	; Set frequency '7163' (octave 3 semitone 1019) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 41; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 1
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $1b, $fa	; Set frequency '7162' (octave 3 semitone 1018) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $f9	; Set frequency '7161' (octave 3 semitone 1017) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $30, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $f8	; Set frequency '7160' (octave 3 semitone 1016) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 1
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $1b, $f7	; Set frequency '7159' (octave 3 semitone 1015) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 42; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $1b, $f6	; Set frequency '7158' (octave 3 semitone 1014) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f5	; Set frequency '7157' (octave 3 semitone 1013) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 43; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $1b, $f4	; Set frequency '7156' (octave 3 semitone 1012) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $31, $1a, $a9	; Set frequency '6825' (octave 3 semitone 681) for channel FM 2
	dc.b $34, $1b, $f3	; Set frequency '7155' (octave 3 semitone 1011) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f2	; Set frequency '7154' (octave 3 semitone 1010) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $31, $1a, $aa	; Set frequency '6826' (octave 3 semitone 682) for channel FM 2
	dc.b $34, $1b, $f1	; Set frequency '7153' (octave 3 semitone 1009) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 44; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $f5, $63	; Set pan/AMS/FMS for channel FM 5
	dc.b $05, $63	; Note C#3 on channel FM 5
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $1b, $f0	; Set frequency '7152' (octave 3 semitone 1008) for channel FM 4
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $1b, $ef	; Set frequency '7151' (octave 3 semitone 1007) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $1b, $ee	; Set frequency '7150' (octave 3 semitone 1006) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
; Pattern $07, Row 45; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $1b, $ed	; Set frequency '7149' (octave 3 semitone 1005) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $ec	; Set frequency '7148' (octave 3 semitone 1004) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $eb	; Set frequency '7147' (octave 3 semitone 1003) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $ea	; Set frequency '7146' (octave 3 semitone 1002) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
; Pattern $07, Row 46; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $1b, $e9	; Set frequency '7145' (octave 3 semitone 1001) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e8	; Set frequency '7144' (octave 3 semitone 1000) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $07, Row 47; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $30, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e7	; Set frequency '7143' (octave 3 semitone 999) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $30, $1a, $ff	; Set frequency '6911' (octave 3 semitone 767) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e6	; Set frequency '7142' (octave 3 semitone 998) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $30, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $1b, $e5	; Set frequency '7141' (octave 3 semitone 997) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 1
	dc.b $30, $1b, $00	; Set frequency '6912' (octave 3 semitone 768) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $1b, $e4	; Set frequency '7140' (octave 3 semitone 996) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
; Pattern $07, Row 48; 
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $42, $2a	; Set instrument for channel FM 3
	dc.b $22, $0f	; Set volume for channel FM 3
	dc.b $02, $81	; Note C-4 on channel FM 3
	dc.b $f4, $e3	; Set pan/AMS/FMS for channel FM 4
	dc.b $04, $83	; Note C#4 on channel FM 4
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $32, $1c, $89	; Set frequency '7305' (octave 3 semitone 1161) for channel FM 3
	dc.b $34, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $32, $1c, $0a	; Set frequency '7178' (octave 3 semitone 1034) for channel FM 3
	dc.b $34, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
; Pattern $07, Row 49; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $31, $1a, $93	; Set frequency '6803' (octave 3 semitone 659) for channel FM 2
	dc.b $34, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $31, $1a, $92	; Set frequency '6802' (octave 3 semitone 658) for channel FM 2
	dc.b $34, $22, $a3	; Set frequency '8867' (octave 4 semitone 675) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 50; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $42, $29	; Set instrument for channel FM 3
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 2
	dc.b $31, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 2
	dc.b $34, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 51; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
; Pattern $07, Row 52; 
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
; Pattern $07, Row 53; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $30, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $eb	; Set frequency '6891' (octave 3 semitone 747) for channel FM 1
	dc.b $30, $1a, $e9	; Set frequency '6889' (octave 3 semitone 745) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $22, $97	; Set frequency '8855' (octave 4 semitone 663) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
; Pattern $07, Row 54; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $30, $1a, $ea	; Set frequency '6890' (octave 3 semitone 746) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $22, $98	; Set frequency '8856' (octave 4 semitone 664) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $30, $1a, $ec	; Set frequency '6892' (octave 3 semitone 748) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $22, $99	; Set frequency '8857' (octave 4 semitone 665) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
; Pattern $07, Row 55; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ee	; Set frequency '6894' (octave 3 semitone 750) for channel FM 1
	dc.b $30, $1a, $ed	; Set frequency '6893' (octave 3 semitone 749) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $22, $9a	; Set frequency '8858' (octave 4 semitone 666) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $ef	; Set frequency '6895' (octave 3 semitone 751) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $22, $9b	; Set frequency '8859' (octave 4 semitone 667) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f0	; Set frequency '6896' (octave 3 semitone 752) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $22, $9c	; Set frequency '8860' (octave 4 semitone 668) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f1	; Set frequency '6897' (octave 3 semitone 753) for channel FM 1
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 4
	dc.b $35, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 5
; Pattern $07, Row 56; 
	dc.b $f1, $63	; Set pan/AMS/FMS for channel FM 2
	dc.b $01, $63	; Note C#3 on channel FM 2
	dc.b $22, $00	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $30, $1a, $f2	; Set frequency '6898' (octave 3 semitone 754) for channel FM 1
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $34, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 4
	dc.b $35, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f3	; Set frequency '6899' (octave 3 semitone 755) for channel FM 1
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $31, $1a, $a8	; Set frequency '6824' (octave 3 semitone 680) for channel FM 2
	dc.b $34, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 4
	dc.b $35, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f4	; Set frequency '6900' (octave 3 semitone 756) for channel FM 1
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $31, $1a, $a7	; Set frequency '6823' (octave 3 semitone 679) for channel FM 2
	dc.b $34, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 4
	dc.b $35, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 5
; Pattern $07, Row 57; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f5	; Set frequency '6901' (octave 3 semitone 757) for channel FM 1
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $31, $1a, $a6	; Set frequency '6822' (octave 3 semitone 678) for channel FM 2
	dc.b $34, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 4
	dc.b $35, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f6	; Set frequency '6902' (octave 3 semitone 758) for channel FM 1
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $31, $1a, $a5	; Set frequency '6821' (octave 3 semitone 677) for channel FM 2
	dc.b $34, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 4
	dc.b $35, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f7	; Set frequency '6903' (octave 3 semitone 759) for channel FM 1
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $31, $1a, $a4	; Set frequency '6820' (octave 3 semitone 676) for channel FM 2
	dc.b $34, $22, $a3	; Set frequency '8867' (octave 4 semitone 675) for channel FM 4
	dc.b $35, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f8	; Set frequency '6904' (octave 3 semitone 760) for channel FM 1
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $31, $1a, $a3	; Set frequency '6819' (octave 3 semitone 675) for channel FM 2
	dc.b $34, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 4
	dc.b $35, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 5
; Pattern $07, Row 58; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $f9	; Set frequency '6905' (octave 3 semitone 761) for channel FM 1
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $1a, $a2	; Set frequency '6818' (octave 3 semitone 674) for channel FM 2
	dc.b $34, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 4
	dc.b $35, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fa	; Set frequency '6906' (octave 3 semitone 762) for channel FM 1
	dc.b $31, $1a, $a1	; Set frequency '6817' (octave 3 semitone 673) for channel FM 2
	dc.b $34, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 4
	dc.b $35, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 5
; Pattern $07, Row 59; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fb	; Set frequency '6907' (octave 3 semitone 763) for channel FM 1
	dc.b $31, $1a, $a0	; Set frequency '6816' (octave 3 semitone 672) for channel FM 2
	dc.b $34, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 4
	dc.b $35, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fc	; Set frequency '6908' (octave 3 semitone 764) for channel FM 1
	dc.b $31, $1a, $9f	; Set frequency '6815' (octave 3 semitone 671) for channel FM 2
	dc.b $34, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 4
	dc.b $35, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fd	; Set frequency '6909' (octave 3 semitone 765) for channel FM 1
	dc.b $31, $1a, $9e	; Set frequency '6814' (octave 3 semitone 670) for channel FM 2
	dc.b $34, $22, $a9	; Set frequency '8873' (octave 4 semitone 681) for channel FM 4
	dc.b $35, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1a, $fe	; Set frequency '6910' (octave 3 semitone 766) for channel FM 1
	dc.b $31, $1a, $9d	; Set frequency '6813' (octave 3 semitone 669) for channel FM 2
	dc.b $34, $22, $aa	; Set frequency '8874' (octave 4 semitone 682) for channel FM 4
	dc.b $35, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 5
; Pattern $07, Row 60; 
	dc.b $f0, $a3	; Set pan/AMS/FMS for channel FM 1
	dc.b $00, $81	; Note C-4 on channel FM 1
	dc.b $22, $0b	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $22, $a9	; Set frequency '8873' (octave 4 semitone 681) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $07	; Set frequency '7431' (octave 3 semitone 1287) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $22, $a8	; Set frequency '8872' (octave 4 semitone 680) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $06	; Set frequency '7430' (octave 3 semitone 1286) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $22, $a7	; Set frequency '8871' (octave 4 semitone 679) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
; Pattern $07, Row 61; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $05	; Set frequency '7429' (octave 3 semitone 1285) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $22, $a6	; Set frequency '8870' (octave 4 semitone 678) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $04	; Set frequency '7428' (octave 3 semitone 1284) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $22, $a5	; Set frequency '8869' (octave 4 semitone 677) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $03	; Set frequency '7427' (octave 3 semitone 1283) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $22, $a4	; Set frequency '8868' (octave 4 semitone 676) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $02	; Set frequency '7426' (octave 3 semitone 1282) for channel FM 1
	dc.b $31, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 2
	dc.b $34, $22, $a3	; Set frequency '8867' (octave 4 semitone 675) for channel FM 4
	dc.b $35, $1a, $94	; Set frequency '6804' (octave 3 semitone 660) for channel FM 5
; Pattern $07, Row 62; 
	dc.b $22, $07	; Set volume for channel FM 3
	dc.b $02, $61	; Note C-3 on channel FM 3
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $01	; Set frequency '7425' (octave 3 semitone 1281) for channel FM 1
	dc.b $31, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 2
	dc.b $34, $22, $a2	; Set frequency '8866' (octave 4 semitone 674) for channel FM 4
	dc.b $35, $1a, $95	; Set frequency '6805' (octave 3 semitone 661) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1d, $00	; Set frequency '7424' (octave 3 semitone 1280) for channel FM 1
	dc.b $31, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 2
	dc.b $34, $22, $a1	; Set frequency '8865' (octave 4 semitone 673) for channel FM 4
	dc.b $35, $1a, $96	; Set frequency '6806' (octave 3 semitone 662) for channel FM 5
; Pattern $07, Row 63; 
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $ff	; Set frequency '7423' (octave 3 semitone 1279) for channel FM 1
	dc.b $31, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 2
	dc.b $34, $22, $a0	; Set frequency '8864' (octave 4 semitone 672) for channel FM 4
	dc.b $35, $1a, $97	; Set frequency '6807' (octave 3 semitone 663) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fe	; Set frequency '7422' (octave 3 semitone 1278) for channel FM 1
	dc.b $31, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 2
	dc.b $34, $22, $9f	; Set frequency '8863' (octave 4 semitone 671) for channel FM 4
	dc.b $35, $1a, $98	; Set frequency '6808' (octave 3 semitone 664) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fd	; Set frequency '7421' (octave 3 semitone 1277) for channel FM 1
	dc.b $31, $1a, $9b	; Set frequency '6811' (octave 3 semitone 667) for channel FM 2
	dc.b $34, $22, $9e	; Set frequency '8862' (octave 4 semitone 670) for channel FM 4
	dc.b $35, $1a, $99	; Set frequency '6809' (octave 3 semitone 665) for channel FM 5
	dc.b $fe, $01	; Delay
	dc.b $30, $1c, $fc	; Set frequency '7420' (octave 3 semitone 1276) for channel FM 1
	dc.b $31, $1a, $9c	; Set frequency '6812' (octave 3 semitone 668) for channel FM 2
	dc.b $34, $22, $9d	; Set frequency '8861' (octave 4 semitone 669) for channel FM 4
	dc.b $35, $1a, $9a	; Set frequency '6810' (octave 3 semitone 666) for channel FM 5
	dc.b $fc	; Goto loop
	dc.b $ff	; The End
